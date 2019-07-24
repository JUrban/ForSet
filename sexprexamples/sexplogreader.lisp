(setq *goalstack* nil)

(setq *freshvarcount* 0)
(defun fresh-var ()
  (intern (format nil "v~d" (incf *freshvarcount*))))

(setq *freshthmcount* 0)
(defun fresh-thm-name ()
  (intern (format nil "thm~d" (incf *freshthmcount*))))

(setq *freshhypcount* 0)
(defun fresh-hyp-name ()
  (intern (format nil "A~d" (incf *freshhypcount*))))

(setq *freshassumecount* 0)
(defun fresh-assume-name ()
  (intern (format nil "H~d" (incf *freshassumecount*))))

(setq *freshclaimcount* 0)
(defun fresh-claim-name ()
  (intern (format nil "L~d" (incf *freshclaimcount*))))

(defun extract-keyword (l)
  (let ((r nil)
	(i 0)
	(ll (length l)))
    (loop while (and (< i ll) (not r)) do
	  (dolist (k '("assume" "hypothesis." "conjecture." "proof." "contradiction." "qed."))
	    (when (and (<= (+ i (length k)) ll)
		       (equal (subseq l i (+ i (length k))) k))
	      (setq r k)))
	  (incf i))
    r))

(defun read-sexprs (fn)
  (let ((f (open fn :direction :input))
	(inmain nil)
	(l nil)
	(rl nil))
    (loop while (setq l (read f nil nil)) do (push l rl))
    (close f)
    (reverse rl)))

(defun nss-frees (p)
  (if (consp p)
      (if (eq (cadr p) 'TAG)
	  (nss-frees (caddr p))
	(case (car p)
	  ((FORALL EXISTS LAMBDA CHOICE) (nss-frees (cadr p)))
	  (DB nil)
	  (t (apply #'append (mapcar #'nss-frees (cdr p))))))
    (if (stringp p)
	(list p)
      nil)))

(defun nss-constrs (p)
  (if (consp p)
      (if (eq (cadr p) 'TAG)
	  (nss-constrs (caddr p))
	(case (car p)
	  ((FORALL EXISTS LAMBDA CHOICE) (nss-constrs (cadr p)))
	  (DB nil)
	  (t (if (stringp (car p))
		 (cons (car p) (apply #'append (mapcar #'nss-constrs (cdr p))))
	       (apply #'append (mapcar #'nss-constrs (cdr p)))))))
    nil))

(defun nss-headterms (p)
  (if (consp p)
      (if (eq (cadr p) 'TAG)
	  (if (eq (car p) 'HEADTERM)
	      (cons (caddr p)
		    (nss-headterms (caddr p)))
	    (nss-headterms (caddr p)))
	(case (car p)
	  ((FORALL EXISTS LAMBDA CHOICE) (nss-headterms (cadr p)))
	  (DB nil)
	  (t (apply #'append (mapcar #'nss-headterms (cdr p))))))
    nil))

(defun reln-tp (n)
  (let ((r "prop"))
    (dotimes (i n r)
      (setq r (format nil "set -> ~d" r)))))

(defun func-tp (n)
  (let ((r "set"))
    (dotimes (i n r)
      (setq r (format nil "set -> ~d" r)))))

(defun nss-db-shift (m i j)
  (if (consp m)
      (if (eq (cadr m) 'TAG)
	  (list (car m) (cadr m) (nss-db-shift (caddr m) i j))
	(case (car m)
	  ((FORALL EXISTS LAMBDA CHOICE) ; incr j
	   (list (car m) (cadr m) (nss-db-shift (caddr m) i (1+ j))))
	  (DB
	   (if (< (cadr m) j)
	       m
	     (list 'DB (+ (cadr m) i))))
	  (t (cons (car m) (mapcar #'(lambda (z) (nss-db-shift z i j)) (cdr m))))))
    m))

(defun nss-db-ssubst (m theta)
  (if (consp m)
      (if (eq (cadr m) 'TAG)
	  (list (car m) (cadr m) (nss-db-ssubst (caddr m) theta))
	(case (car m)
	  ((FORALL EXISTS LAMBDA CHOICE) ; move the subst
	   (list (car m)
		 (nss-db-ssubst (cadr m) (mapcar #'(lambda (x) (cons (1+ (car x)) (nss-db-shift (cdr x) 1 0))) theta))))
	  (DB
	   (let ((a (assoc (cadr m) theta :test #'equal)))
	     (if a
		 (cdr a)
	       m)))
	  (t (cons (car m) (mapcar #'(lambda (z) (nss-db-ssubst z theta)) (cdr m))))))
    m))

(defun nss-trm (m &optional theta)
  (if (consp m)
      (if (eq (cadr m) 'TAG)
	  (nss-trm (caddr m))
	(case (car m)
	  ((FORALL EXISTS LAMBDA CHOICE)
	   (let ((v (fresh-var)))
	     (list (car m) v
		   (nss-trm (cadr m)
			    (acons 0 v (mapcar #'(lambda (x) (cons (1+ (car x)) (nss-db-shift (cdr x) 1 0))) theta))))))
	  (DB
	   (let ((a (assoc (cadr m) theta :test #'equal)))
	     (if a
		 (cdr a)
	       (throw 'dangling-db m))))
	  (t
	   (if (equal m '("#TH#"))
	       (caar *goalstack*)
	     (cons (if (stringp (car m)) (intern (car m)) (car m)) (mapcar #'(lambda (n) (nss-trm n theta)) (cdr m)))))))
    (case m
	  (TRUTH '(TRUTH))
	  (FALSE '(FALSE))
	  (t
	   (if (stringp m) (intern m) m)))))

(defun nss-trm-outerex-prop (vl p &optional theta)
  (if vl
      (if (stringp (car vl))
	  (list 'EXISTS (car vl) (nss-trm-outerex-prop (cdr vl) p theta))
	(let ((v (fresh-var)))
	  (list 'EXISTS v (nss-trm-outerex-prop (cdr vl) p (acons (cadar vl) v theta)))))
    (elab-prop (nss-trm p theta))))

(defun nss-trm-outerall-prop (vl p &optional theta)
  (if vl
      (if (stringp (car vl))
	  (list 'FORALL (car vl) (nss-trm-outerall-prop (cdr vl) p theta))
	(let ((v (fresh-var)))
	  (list 'FORALL v (nss-trm-outerall-prop (cdr vl) p (acons (cadar vl) v theta)))))
    (elab-prop (nss-trm p theta))))

(defun nss-trm-outerlam-prop (vl p &optional theta)
  (if vl
      (if (stringp (car vl))
	  (list 'LAMBDA (car vl) (nss-trm-outerlam-prop (cdr vl) p theta))
	(let ((v (fresh-var)))
	  (list 'LAMBDA v (nss-trm-outerlam-prop (cdr vl) p (acons (cadar vl) v theta)))))
    (elab-prop (nss-trm p theta))))

(defun nss-trm-outerlam-set (vl p &optional theta)
  (if vl
      (if (stringp (car vl))
	  (list 'LAMBDA (car vl) (nss-trm-outerlam-set (cdr vl) p theta))
	(let ((v (fresh-var)))
	  (list 'LAMBDA v (nss-trm-outerlam-set (cdr vl) p (acons (cadar vl) v theta)))))
    (elab-set (nss-trm p theta))))

(defun frees (m)
  (if (consp m)
      (case (car m)
	(SEP (append (frees (caddr m)) (remove (cadr m) (frees (cadddr m)))))
	((LAMBDA CHOICE FORALL EXISTS) (remove (cadr m) (frees (caddr m))))
	(t (apply #'append (mapcar #'frees (cdr m)))))
    (list m)))

(defun trm-str (m)
  (if (consp m)
      (case (car m)
	(LAMBDA
	 (format nil "(fun ~d => ~d)" (cadr m) (trm-str (caddr m))))
	(SEP
	 (format nil "{~d :e ~d | ~d}" (cadr m) (trm-str (caddr m)) (trm-str (cadddr m))))
	(CHOICE
	 (format nil "(Eps set (fun ~d => ~d))" (cadr m) (trm-str (caddr m))))
	(FORALL
	 (format nil "(forall ~d, ~d)" (cadr m) (trm-str (caddr m))))
	(EXISTS
	 (format nil "(exists ~d, ~d)" (cadr m) (trm-str (caddr m))))
	(TRUTH "Truth")
	(FALSE "False")
	(NOT
	 (format nil "(~~ ~d)" (trm-str (cadr m))))
	(AND
	 (format nil "(~d /\\ ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(OR
	 (format nil "(~d \\/ ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(IMPLIES
	 (format nil "(~d -> ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(IFF
	 (format nil "(~d <-> ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(=
	 (format nil "(~d = ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(|aElementOf|
	 (format nil "(~d :e ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(|szDzozmlpdtrp|
	 (format nil "(Dom ~d)" (trm-str (cadr m))))
	(|szRzaznlpdtrp|
	 (format nil "(Ran ~d)" (trm-str (cadr m))))
	(|sdtlbdtrb|
	 (format nil "(funap ~d ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	(t
	 (if (cdr m)
	     (format nil "(~d~d)" (car m) (spine-str (cdr m)))
	   (format nil "~d" (car m)))))
    (format nil "~d" m)))

(defun spine-str (sp)
  (if sp
      (format nil " ~d~d" (trm-str (car sp)) (spine-str (cdr sp)))
    ""))

(defun elab-prop (m)
  (if (consp m)
      (case (car m)
	(SEP (throw 'fail "Sep cannot be a prop"))
	(LAMBDA (throw 'fail "Lambda cannot be a prop probably"))
	(CHOICE (throw 'fail "Choice cannot be a prop probably"))
	(FORALL (list 'FORALL (cadr m) (elab-prop (caddr m))))
	(EXISTS (list 'EXISTS (cadr m) (elab-prop (caddr m))))
	((AND OR IMPLIES IFF NOT)
	 (cons (car m) (mapcar #'elab-prop (cdr m))))
	(t
	 (cons (car m) (mapcar #'elab-set (cdr m)))))
    m))

(defun simplify-choice (x p)
  (cond ((and (consp p)
	      (eq (car p) '=)
	      (eq (cadr p) x)
	      (not (member x (frees (caddr p)))))
	 (caddr p))
	((and (consp p)
	      (eq (car p) '=)
	      (eq (caddr p) x)
	      (not (member x (frees (cadr p)))))
	 (cadr p))
	((and (consp p)
	      (eq (car p) 'AND)
	      (consp (cadr p))
	      (eq (car (cadr p)) '|aSet|)
	      (eq (cadr (cadr p)) x)
	      (consp (caddr p))
	      (eq (car (caddr p)) '=)
	      (eq (cadr (caddr p)) x)
	      (not (member x (frees (caddr (caddr p))))))
	 (caddr (caddr p)))
	(t (list 'CHOICE x p))))

(defun elab-set (m)
  (if (consp m)
      (case (car m)
	(LAMBDA ; need to turn this into a set level binder somehow
	 (let ((p (elab-prop (caddr m))))
	   (format t "LAMBDA: ~S~%" p)
	   (cond
	    ((and (consp p)
		  (eq (car p) '|aElementOf|)
		  (eq (cadr p) (cadr m))
		  (not (member (cadr m) (frees (caddr p)))))
	     (elab-set (caddr p)))
	    ((and (consp p)
		  (eq (car p) '|aSubsetOf|)
		  (eq (cadr p) (cadr m))
		  (not (member (cadr m) (frees (caddr p)))))
	     (list '|Power| (elab-set (caddr p))))
	    ((and (consp p)
		  (eq (car p) 'AND)
		  (consp (cadr p))
		  (eq (caadr p) '|aElementOf|)
		  (eq (cadr (cadr p)) (cadr m))
		  (not (member (cadr m) (frees (caddr (cadr p))))))
	     (list 'SEP (cadr (cadr p)) (elab-set (caddr (cadr p))) (elab-prop (caddr p))))
	    ((and (consp p)
		  (eq (car p) 'AND)
		  (consp (cadr p))
		  (eq (caadr p) '|aSubsetOf|)
		  (eq (cadr (cadr p)) (cadr m))
		  (not (member (cadr m) (frees (caddr (cadr p))))))
	     (list 'SEP (cadr (cadr p)) (cons '|Power| (elab-set (caddr (cadr p)))) (elab-prop (caddr p))))
	    (t ; fallback use of choice to choose a set defined by the general comprehension scheme, if there is one
	     (let ((v (fresh-var)))
	       (list 'CHOICE (cadr m)
		     (list 'AND
			   (list '|aSet| (cadr m))
			   (list 'FORALL v
				 (list 'IFF (list '|aElementOf| v (cadr m)) p)))))))))
	(CHOICE (simplify-choice (cadr m) (elab-prop (caddr m))))
	(SEP (list 'SEP (cadr m) (elab-set (caddr m)) (elab-prop (cadddr m))))
	((FORALL EXISTS AND OR IMPLIES IFF =) (throw 'fail (format nil "~d cannot be set" (car m))))
	(t
	 (cons (car m) (mapcar #'elab-set (cdr m)))))
    m))

(defun extract-reln-defn (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-reln-defn (caddr w) (1+ d)))
	    ((and (eq (car w) 'IFF) (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG))
	     (let ((n (caddr (cadr w)))
		   (p (caddr w)))
	       (if (and (consp n) (stringp (car n)))
		   (let ((args (cdr n))
			 (alldbs t)
			 (badargs nil))
		     (dotimes (i d) (unless (member (list 'DB i) args :test #'equal) (setq alldbs nil)))
		     (if alldbs
			 (let ((argvars nil)
			       (dbused nil))
			   (dolist (arg args)
			     (if (and (stringp arg) (not (member arg argvars :test #'equal)))
				 (push arg argvars)
			       (if (and (consp arg) (eq (car arg) 'DB) (< (cadr arg) d))
				   (if (member (cadr arg) dbused :test #'equal)
				       (setq badargs t)
				     (push (cadr arg) dbused))
				 (setq badargs t))))
			   (if badargs
			       nil
			     (let ((fvl (nss-frees p)))
			       (if (subsetp fvl argvars :test #'equal)
				   (values (car n) (reln-tp (length args)) (nss-trm-outerlam-prop args p))
				 nil))))
		       nil))
		 nil)))
	    (t nil))
    nil))

(defun extract-reln-decl (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-reln-decl (caddr w) (1+ d)))
	    ((and (eq (car w) 'IMPLIES)
		  (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG)
		  (or (equal (caddr w) '(TRUTH)) (eq (caddr w) 'TRUTH)))
	     (let ((n (caddr (cadr w)))
		   (tp "prop"))
	       (dolist (a (cdddr (cadr w)))
		 (setq tp (format nil "set -> ~d" tp)))
	       (values n tp)))
	    (t nil))
    nil))
	     
(defun extract-func-defn (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-func-defn (caddr w) (1+ d)))
	    ((and (eq (car w) 'IFF) (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG))
	     (let ((n (caddr (cadr w)))
		   (p (caddr w)))
	       (if (and (> d 0) (consp n) (equal (car n) "=") (equal (cadr n) '(DB 0)) (consp (caddr n)) (stringp (caaddr n)))
		   (let* ((n2 (caddr n))
			  (args (cdr n2))
			  (alldbs t)
			  (badargs nil))
		     (dotimes (i d) (when (> i 0) (unless (member (list 'DB i) args :test #'equal) (setq alldbs nil))))
		     (if alldbs
			 (let ((argvars nil)
			       (dbused nil))
			   (dolist (arg args)
			     (if (and (stringp arg) (not (member arg argvars :test #'equal)))
				 (push arg argvars)
			       (if (and (consp arg) (eq (car arg) 'DB) (> (cadr arg) 0) (< (cadr arg) d))
				   (if (member (cadr arg) dbused :test #'equal)
				       (setq badargs t)
				     (push (cadr arg) dbused))
				 (setq badargs t))))
			   (if badargs
			       nil
			     (let ((fvl (nss-frees p)))
			       (if (subsetp fvl argvars :test #'equal)
				   (values (car n2) (func-tp (length args)) (nss-trm-outerlam-set args (list 'CHOICE 'FAKE p))) ; rethink this -- p is not the right thing to use here
				 nil))))
		       nil))
		 nil)))
	    (t nil))
    nil))

(defun extract-func-decl (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-func-decl (caddr w) (1+ d)))
	    ((and (eq (car w) 'IMPLIES)
		  (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG))
	     (let ((n (caddr (cadr w)))
		   (p (caddr w))
		   (tp "set"))
	       (if (and (> d 0) (consp n) (equal (car n) "=") (equal (cadr n) '(DB 0)) (consp (caddr n)) (stringp (caaddr n)))
		   (let* ((n2 (caddr n))
			  (args (cdr n2)))
		     (dolist (a args)
		       (setq tp (format nil "set -> ~d" tp)))
		     (values (car n2) n2 tp p))
		 nil)))
	    (t nil))
    nil))
	     
(defun nss-to-egal (fs gs)
  (let ((f (open fs :direction :input))
	(g (if gs (open gs :direction :output :if-exists :supersede :if-does-not-exist :create) t))
	(inhyp nil)
	(inconj nil)
	(diddef nil)
	(fvl nil)
	(hl nil)
	(l nil)
	(prving nil)
	(pflev nil))
    (loop while (setq l (read f nil nil)) do
					;	  (format t "=== ~S~%inhyp ~d~%inconj ~d~%fvl ~d~%hl ~d~%pflev ~d~%" l inhyp inconj fvl hl pflev)
	  (unless (or (equal l "proof.") (not pflev))
	    (loop while (and *goalstack* (equal (car *goalstack*) '(SUBPROOF))) do
		  (pop *goalstack*)
		  (pop *goalstack*)
		  (dotimes (i pflev) (format g " "))
		  (format g "admit.~%")
		  (when (and *goalstack* (eq (caar *goalstack*) 'CONTINUEPF))
		    (when (cadar *goalstack*) (format g "~d~%" (cadar *goalstack*)))
		    (pop *goalstack*))))
	  (loop while (and *goalstack* (eq (caar *goalstack*) 'CONTINUEPF)) do
		(when (cadar *goalstack*) (format g "~d~%" (cadar *goalstack*)))
		(pop *goalstack*))
	  (if (consp l)
	      (cond ((eq (car l) 'HYPOTHESIS)
		     (when (and inhyp hl (not diddef)) ; treat the last hl as conclusion of a previous hypothesis
		       (let ((w (car hl))
			     (hr (cdr hl)))
			 (dolist (h hr) (setq w (list 'IMPLIES h w)))
			 (let ((w2 (nss-trm-outerall-prop fvl w)))
			   (format g "Hypothesis ~d : ~d.~%"
				   (if (equal inhyp "") (fresh-hyp-name) inhyp)
				   (trm-str w2)))))
		     (setq fvl nil hl nil diddef nil)
		     (setq inhyp (cadr l) inconj nil))
		    ((eq (car l) 'CONJECTURE)
		     (setq fvl nil hl nil diddef nil)
		     (setq inconj (cadr l) inhyp nil))
		    ((equal (car l) "assume")
		     (let* ((w (cadr l))
			    (wvl (remove-duplicates (nss-frees w) :test #'equal))
			    (wcl (remove-duplicates (nss-constrs w) :test #'equal))
			    (whl (remove-duplicates (nss-headterms w) :test #'equal)))
		       (cond (inhyp
			      (if whl
				  (if (cdr whl)
				      (format t "~d probably defining ~d but surprised more than one~%" inhyp whl)
				    (progn
				      (setq diddef t)
				      (let ((fail
					     (catch 'fail
					       (multiple-value-bind
						(reln tp def)
						(extract-reln-defn w)
						(if reln
						    (format g "Definition ~d : ~d := ~d.~%" reln tp (trm-str def))
						  (throw 'fail "foo"))))))
					(when fail
					  (let ((fail
						 (catch 'fail
						   (multiple-value-bind
						    (func tp def)
						    (extract-func-defn w)
						    (if func
							(format g "Definition ~d : ~d := ~d.~%" func tp (trm-str def))
						      (throw 'fail "foo"))))))
					    (when fail
					      (let ((fail
						     (catch 'fail
						       (multiple-value-bind
							(reln tp)
							(extract-reln-decl w)
							(if reln
							    (format g "Variable ~d: ~d.~%" reln tp)
							  (throw 'fail "foo"))))))
						(when fail
						  (let ((fail
							 (catch 'fail
							   (multiple-value-bind
							    (func funcap tp p)
							    (extract-func-decl w)
							    (if func
								(let ((w2 nil))
								  (setq w (nss-db-ssubst w (acons '0 funcap nil)))
								  (dolist (x wvl) (unless (member x fvl :test #'equal) (push x fvl)))
								  (dolist (h hl) (setq w (list 'IMPLIES h w)))
								  (setq w2 (nss-trm-outerall-prop fvl w))
								  (format g "Variable ~d: ~d.~%" func tp)
								  (unless (equal p '(TRUTH))
								    (format g "Hypothesis ~d: ~d.~%"
									    (if (equal inhyp "") (fresh-hyp-name) inhyp)
									    (trm-str w2))))
							      (throw 'fail "foo"))))))
						    (when fail
						      (format t "Unknown defn pattern ~d in ~d probably defining ~d~%" w inhyp whl)))))))))))
				(progn
				  (dolist (x wvl) (unless (member x fvl :test #'equal) (push x fvl)))
				  (push w hl))))
			     (inconj
			      (dolist (x wvl) (unless (member x fvl :test #'equal) (push x fvl)))
			      (push w hl))
			     (pflev
			      (if (equal w '(NOT ("#TH#")))
				  (let ((hn (fresh-assume-name))
					(gth (caar *goalstack*))
					(gvl (cadar *goalstack*))
					(gll (caddar *goalstack*)))
				    (setq *goalstack*
					  (cons (list '(FALSE)
						      gvl
						      (acons hn (list 'NOT gth) gll))
						(cdr *goalstack*)))
				    (dotimes (i pflev) (format g " "))
				    (format g "apply NNPP. assume ~d.~%" hn))
				(progn
				  (dotimes (i pflev) (format g " "))
				  (format g "assume ~d: ~d.~%" (fresh-assume-name) (trm-str (nss-trm-outerall-prop nil w))))))
			     (t nil))))
		    ((eq (car l) 'FORMULA)
		     (let* ((w (cadr l))
			    (wvl (remove-duplicates (nss-frees w) :test #'equal))
			    (wcl (remove-duplicates (nss-constrs w) :test #'equal))
			    (whl (remove-duplicates (nss-headterms w) :test #'equal)))
		       (cond (inhyp
			      (format t "Surprise formula ~d in hyp ~d~%" w inhyp))
			     (inconj
			      (dolist (x wvl) (unless (member x fvl :test #'equal) (push x fvl)))
			      (dolist (h hl) (setq w (list 'IMPLIES h w)))
			      (let ((w2 (nss-trm-outerall-prop fvl w))
				    (gvl nil)
				    (gll nil))
				(format g "Theorem ~d : ~d.~%"
					(if (equal inconj "") (fresh-thm-name) inconj)
					(trm-str w2))
				(setq *freshassumecount* 0)
				(setq *freshclaimcount* 0)
				(when fvl
				  (format g "let")
				  (dolist (x fvl)
				    (if (and (consp w2) (eq (car w2) 'FORALL))
					(progn
					  (format g " ~d" (cadr w2))
					  (push (cadr w2) gvl)
					  (setq w2 (caddr w2)))
				      (throw 'fail (format nil "let problem at beginning of pf: ~S~%~S~%~S~%" x fvl w2))))
				  (format g ".~%"))
				(dolist (h hl)
				  (if (and (consp w2) (eq (car w2) 'IMPLIES))
				      (let ((hn (fresh-assume-name)))
					(push (cons hn (cadr w2)) gll)
					(format g "assume ~d: ~d.~%" hn (trm-str (cadr w2)))
					(setq w2 (caddr w2)))
				    (throw 'fail (format nil "assume problem at beginning of pf: ~S~%~S~%~S~%" h hl w2))))
				(push (list w2 gvl gll) *goalstack*)))
			     (pflev
			      (let* ((cn (fresh-claim-name))
				     (cn3 cn)
				     (nvl nil)
				     (nvl2 nil)
				     (ppl nil)
				     (gth (caar *goalstack*))
				     (gvl (cadar *goalstack*))
				     (gvl2 gvl)
				     (gll (caddar *goalstack*)))
				(dolist (x wvl)
				  (unless (or (member x gvl :test #'equal) (member x nvl :test #'equal)) (push x nvl)))
				(let ((w2 (nss-trm-outerex-prop nvl w)))
				  (dotimes (i pflev) (format g " "))
				  (format g "claim ~d: ~d.~%" cn (trm-str w2))
				  (let ((w3 w2))
				    (dolist (x nvl)
				      (if (and (consp w3) (eq (car w3) 'EXISTS))
					  (progn
					    (push x gvl2)
					    (push x nvl2)
					    (setq w3 (caddr w3))
					    (if ppl
						(let ((hn (fresh-assume-name)))
						  (setq ppl (format nil "~d apply ~d. let ~d. assume ~d." ppl cn3 x hn))
						  (setq cn3 hn))
					      (let ((hn (fresh-assume-name)))
						(setq ppl "")
						(dotimes (i pflev) (setq ppl (format nil "~d " ppl)))
						(setq ppl (format nil "~dapply ~d. let ~d. assume ~d." ppl cn x hn))
						(setq cn3 hn))))
					(throw 'fail "claim exists problem")))
				    (setq *goalstack*
					  (append (list (list 'SUBPROOF)
							(list w2 gvl gll)
							(list 'CONTINUEPF ppl)
							(list gth gvl2 (acons cn3 w3 gll)))
						  (cdr *goalstack*)))))))
			     (t nil))))
		    (t (format t "% Skipping ~d~%" l)))
	    (cond ((equal l "hypothesis.") (setq inhyp "" inconj nil))
		  ((equal l "conjecture.") (setq inhyp nil inconj ""))
		  ((equal l "contradiction.")
		   (let* ((cn (fresh-claim-name))
			  (ppl "")
			  (gth (caar *goalstack*))
			  (gvl (cadar *goalstack*))
			  (gll (caddar *goalstack*)))
		     (dotimes (i pflev) (format g " ") (setq ppl (format nil "~d " ppl)))
		     (format g "prove False.~%")
		     (setq *goalstack*
			   (append (list (list 'SUBPROOF)
					 (list '(FALSE) gvl gll))
				   (cdr *goalstack*)))))
		  ((equal l "proof.")
		   (when (equal (car *goalstack*) '(SUBPROOF)) (pop *goalstack*))
		   (if pflev
		       (progn
			 (dotimes (i pflev) (format g " "))
			 (format g "{~%")
			 (incf pflev))
		     (progn
		       (setq pflev 0 prving inconj)
		       (setq inconj nil)
		       )))
		  ((equal l "qed.")
		   (if pflev
		       (if (> pflev 0)
			   (progn
			     (decf pflev)
			     (dotimes (i pflev) (format g " "))
			     (format g "}~%"))
			 (progn
			   (format g "Qed.~%~%")
			   (setq pflev nil prving nil)))))
		  (t
		   (format t "% Skipping ~d~%" l)))))
    (close f)
    (when gs (close g))))

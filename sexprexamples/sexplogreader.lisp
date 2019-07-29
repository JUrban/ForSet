(defvar *skipproofs* nil)
(defvar *ctx* nil)
(defvar *sig* nil)
(defvar *goalstack* nil)

(defvar *genericbuiltin*
      '(
	(|aSet| |aSet| ("set" . "prop"))
	(|aElementOf| |aElementOf| ("set" "set" . "prop"))
	(|aPowerset| |aPowerset| ("set" . "set"))
	(|Separ| |Separ| ("set" ("set" . "prop") . "set"))
	(|Replac| |Replac| ("set" ("set" . "set") . "set"))
	(|Replac2| |Replac2| ("set" ("set" . "set") ("set" "set" . "set") . "set"))
;	(|ReplSepar| |ReplSepar| ("set" ("set" . "set") ("set" . "prop") . "set"))
;	(|ReplSepar2| |ReplSepar2| ("set" ("set" . "set") ("set" "set" . "set") ("set" "set" . "prop") . "set"))
	(|Pair| |Pair| ("set" "set" . "set"))
	(|aFunction| |aFunction| ("set" . "prop"))
	(|szDzozmlpdtrp| |Dom| ("set" . "set"))
	(|sdtlbdtrb| |funap| ("set" "set" . "set"))
	(|iLess| |iLess| ("set" "set" . "prop"))
	))

(defvar *genericaxioms*
  '(("aPowerset_ax" "forall X, aSet (aPowerset X) /\\ (forall Y, aElementOf Y (aPowerset X) <-> aSet Y /\\ forall Z, aElementOf Z Y -> aElementOf Z X)")))


(defvar *freshvarcount* 0)
(defun fresh-var ()
  (intern (format nil "v~d" (incf *freshvarcount*))))

(defvar *freshthmcount* 0)
(defun fresh-thm-name ()
  (intern (format nil "thm~d" (incf *freshthmcount*))))

(defvar *freshhypcount* 0)
(defun fresh-hyp-name ()
  (intern (format nil "A~d" (incf *freshhypcount*))))

(defvar *freshassumecount* 0)
(defun fresh-assume-name ()
  (intern (format nil "H~d" (incf *freshassumecount*))))

(defvar *freshclaimcount* 0)
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
	  (nss-trm (caddr m) theta)
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
	  (CONTRADICTION '(FALSE))
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
	(REPL (append (frees (caddr m)) (remove (cadr m) (frees (cadddr m)))))
	(REPLSEP (append (frees (caddr m)) (remove (cadr m) (append (frees (cadddr m)) (frees (nth 4 m))))))
	(REPL2 (append (frees (cadddr m)) (remove (cadr m) (frees (nth 4 m))) (set-difference (frees (nth 5 m)) (list (cadr m) (caddr m)))))
	(REPLSEP2 (append (frees (cadddr m)) (remove (cadr m) (frees (nth 4 m))) (set-difference (append (frees (nth 5 m)) (frees (nth 6 m))) (list (cadr m) (caddr m)))))
	((LAMBDA CHOICE FORALL EXISTS) (remove (cadr m) (frees (caddr m))))
	(t (apply #'append (mapcar #'frees (cdr m)))))
    (list m)))

(defun tp-str (m &optional p)
  (if (consp m)
      (if p
	  (format nil "(~d -> ~d)" (tp-str (car m) t) (tp-str (cdr m) nil))
	(format nil "~d -> ~d" (tp-str (car m) t) (tp-str (cdr m) nil)))
    (format nil "~d" m)))

(defun trm-str (m)
  (if (consp m)
      (let ((z (find-if #'(lambda (z) (and (consp z) (eq (car z) (car m)))) *genericbuiltin*)))
	(if z
	    (if (cdr m)
		(format nil "(~d~d)" (cadr z) (spine-str (cdr m)))
	      (format nil "~d" (cadr z)))
	  (if (find-if #'(lambda (z) (and (consp z) (eq (car z) 'DECL) (eq (cadr z) (car m)))) *sig*)
	      (if (cdr m)
		  (format nil "(~d~d)" (car m) (spine-str (cdr m)))
		(format nil "~d" (car m)))
	    (case (car m)
	      (LAMBDA
	       (format nil "(fun ~d => ~d)" (cadr m) (trm-str (caddr m))))
	      (SEP
	       (format nil "Separ ~d (fun ~d => ~d)" (trm-str (caddr m)) (cadr m) (trm-str (cadddr m))))
	      (REPL
	       (format nil "Replac ~d (fun ~d => ~d)" (trm-str (caddr m)) (cadr m) (trm-str (cadddr m))))
	      (REPL2
	       (format nil "Replac2 ~d (fun ~d => ~d) (fun ~d ~d => ~d)" (trm-str (cadddr m)) (cadr m) (trm-str (nth 4 m)) (cadr m) (caddr m) (trm-str (nth 5 m))))
	      (REPLSEP
	       (format nil "ReplSepar ~d (fun ~d => ~d) (fun ~d => ~d)" (trm-str (caddr m)) (cadr m) (trm-str (cadddr m)) (cadr m) (trm-str (nth 4 m))))
	      (REPLSEP2
	       (format nil "ReplSepar2 ~d (fun ~d => ~d) (fun ~d ~d => ~d) (fun ~d ~d => ~d)" (trm-str (cadddr m)) (cadr m) (trm-str (nth 4 m)) (cadr m) (caddr m) (trm-str (nth 5 m)) (cadr m) (caddr m) (trm-str (nth 6 m))))
	      (CHOICE
	       (format nil "(some ~d:set, ~d)" (cadr m) (trm-str (caddr m))))
	      (FORALL
	       (format nil "(forall ~d, ~d)" (cadr m) (trm-str (caddr m))))
	      (EXISTS
	       (format nil "(exists ~d, ~d)" (cadr m) (trm-str (caddr m))))
	      (TRUTH "True")
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
	       (format nil "(aElementOf ~d ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	      (|slpdtcmdtrp|
	       (format nil "(Pair ~d ~d)" (trm-str (cadr m)) (trm-str (caddr m))))
	      (t
	       (if (cdr m)
		   (format nil "(~d~d)" (car m) (spine-str (cdr m)))
		 (format nil "~d" (car m))))))))
    (format nil "~d" m)))
  
(defun spine-str (sp)
  (if sp
      (format nil " ~d~d" (trm-str (car sp)) (spine-str (cdr sp)))
    ""))

(defun elab-prop (m)
  (if (consp m)
      (case (car m)
	((SEP REPL REPLSEP REPL2 REPLSEP2) (throw 'fail "Set comprehension cannot be a prop"))
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

(defun nss-conjs (p)
  (if (and (consp p) (eq (car p) 'AND))
      (append (nss-conjs (cadr p)) (nss-conjs (caddr p)))
    (list p)))

(defun nss-ex-conjs (p)
  (if (and (consp p) (eq (car p) 'AND))
      (multiple-value-bind
	  (yl1 cl1)
	  (nss-ex-conjs (cadr p))
	(multiple-value-bind
	    (yl2 cl2)
	    (nss-ex-conjs (caddr p))
	  (if (intersection yl1 yl2)
	      (throw 'nss-ex-conjs-fail 'nss-ex-conjs-fail)
	    (values (append yl1 yl2) (append cl1 cl2)))))
    (if (and (consp p) (eq (car p) 'EXISTS))
	(multiple-value-bind
	    (yl1 cl1)
	    (nss-ex-conjs (caddr p))
	  (if (member (cadr p) yl1)
	      (throw 'nss-ex-conjs-fail 'nss-ex-conjs-fail)
	    (values (cons (cadr p) yl1) cl1)))
      (values nil (list p)))))
  
(defun classify-setcomprehension (x p)
  (if (consp p)
      (case (car p)
	(|aElementOf|
	 (if (and (eq (cadr p) x) (not (member x (frees (caddr p)))))
	     (list 'SEP (caddr p) nil)
	   (list 'OTHER p)))
	(|aSubsetOf|
	 (if (and (eq (cadr p) x) (not (member x (frees (caddr p)))))
	     (list 'SEPPOWER (caddr p) nil)
	   (list 'OTHER p)))
	(AND
	 (let* ((cl (nss-conjs p))
		(eltof (find-if #'(lambda (q) (and (consp q) (eq (car q) '|aElementOf|) (eq (cadr q) x) (not (member x (frees (caddr q)))))) cl))
		(subof (find-if #'(lambda (q) (and (consp q) (eq (car q) '|aSubsetOf|) (eq (cadr q) x) (not (member x (frees (caddr q)))))) cl)))
	   (if eltof
	       (list 'SEP (caddr eltof) (remove eltof cl))
	     (if subof
		 (list 'SEPPOWER (caddr subof) (remove eltof cl))
	       (list 'OTHER p)))))
	(EXISTS
	 (let ((z
		(catch 'nss-ex-conjs-fail
		  (multiple-value-bind
		      (yl cl)
		      (nss-ex-conjs p)
		    (if (member x yl)
			'nss-ex-conjs-fail
		      (let ((eqto (find-if #'(lambda (q) (and (consp q) (eq (car q) '=) (eq (cadr q) x) (not (member x (frees (caddr q)))))) cl)))
			(if (find-if #'(lambda (q) (and (not (eq q eqto)) (member x (frees (caddr q))))) cl)
			    'nss-ex-conjs-fail
			  (let ((ybdl nil)
				(yl2 yl))
			    (loop while yl2 do
				  (let* ((y (car yl2))
					 (ybd (or (find-if #'(lambda (q) (and (consp q) (eq (car q) '|aElementOf|) (eq (cadr q) y) (not (intersection yl2 (frees (caddr q)))))) cl)
						  (find-if #'(lambda (q) (and (consp q) (eq (car q) '|aSubsetOf|) (eq (cadr q) y) (not (intersection yl2 (frees (caddr q)))))) cl))))
				    (unless ybd (throw 'nss-ex-conjs-fail 'nss-ex-conjs-fail))
				    (push (list y ybd) ybdl)
				    (pop yl2)))
			    (if (not (member (length ybdl) '(1 2) :test #'equal))
				(throw 'nss-ex-conjs-fail 'nss-ex-conjs-fail)
			      (list 'REPLSEP (reverse ybdl) eqto
				    (set-difference cl (cons eqto (mapcar #'cadr ybdl)) :test #'equal)))))))))))
	   (if (eq z 'nss-ex-conjs-fail)
	       (list 'OTHER p)
	     z)))
	(t (list 'OTHER p)))
    (list 'OTHER p)))

(defun conj-props (pl)
  (if pl
      (if (cdr pl)
	  (list 'AND (car pl) (conj-props (cdr pl)))
	(car pl))
    '(TRUTH)))

(defun elab-set (m)
  (if (consp m)
      (case (car m)
	(LAMBDA ; need to turn this into a set level binder somehow
	 (let* ((p (elab-prop (caddr m)))
		(cla (classify-setcomprehension (cadr m) p)))
	   (case (if (consp cla) (car cla) 'OTHER)
	     (SEP
	      (let ((bd (cadr cla))
		    (cl (caddr cla)))
		(if cl
		    (list 'SEP (cadr m) (elab-set bd) (elab-prop (conj-props cl)))
		  (elab-set bd))))
	     (SEPPOWER
	      (let ((bd (cadr cla))
		    (cl (caddr cla)))
		(if cl
		    (list 'SEP (cadr m) (list '|aPowerset| (elab-set bd)) (elab-prop (conj-props cl)))
		  (list '|aPowerset| (elab-set bd)))))
	     (REPLSEP
	      (let* ((ybdl (cadr cla))
		     (eqto (caddr cla))
		     (cl (cadddr cla))
		     (n (length ybdl)))
		(cond ((= n 1)
		       (if cl
			   (list 'REPLSEP (caar ybdl)
				 (if (eq (caadar ybdl) 'aElementOf)
				     (elab-set (caddr (cadar ybdl)))
				   (list '|aPowerset| (elab-set (caddr (cadar ybdl)))))
				 (elab-set (caddr eqto))
				 (elab-prop (conj-props cl)))
			 (list 'REPL (caar ybdl)
			       (if (eq (caadar ybdl) 'aElementOf)
				   (elab-set (caddr (cadar ybdl)))
				 (list '|aPowerset| (elab-set (caddr (cadar ybdl)))))
			       (elab-set (caddr eqto)))))
		      ((= n 2)
		       (if cl
			   (list 'REPLSEP2 (caar ybdl) (caadr ybdl)
				 (if (eq (caadar ybdl) 'aElementOf)
				     (elab-set (caddr (cadar ybdl)))
				   (list '|aPowerset| (elab-set (caddr (cadar ybdl)))))
				 (if (eq (caadr (cadr ybdl)) 'aElementOf)
				     (elab-set (caddr (cadadr ybdl)))
				   (list '|aPowerset| (elab-set (caddr (cadadr ybdl)))))
				 (elab-set (caddr eqto))
				 (elab-prop (conj-props cl)))
			 (list 'REPL2 (caar ybdl) (caadr ybdl)
				 (if (eq (caadar ybdl) 'aElementOf)
				     (elab-set (caddr (cadar ybdl)))
				   (list '|aPowerset| (elab-set (caddr (cadar ybdl)))))
				 (if (eq (caadr (cadr ybdl)) 'aElementOf)
				     (elab-set (caddr (cadadr ybdl)))
				   (list '|aPowerset| (elab-set (caddr (cadadr ybdl)))))
				 (elab-set (caddr eqto)))))
		      (t (break)))))
	     (t ; fallback use of choice to choose a set defined by the general comprehension scheme, if there is one
	      (format t "LAMBDA: ~S~%" p)
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
	     (extract-reln-defn (cadr w) (1+ d)))
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

(defun trivial-prop-p (w)
  (if (consp w)
      (case (car w)
	(FORALL (trivial-prop-p (caddr w)))
	(IMPLIES (trivial-prop-p (caddr w)))
	(TRUTH t)
	(t nil))
    nil))

(defun extract-reln-decl (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-reln-decl (cadr w) (1+ d)))
	    ((and (eq (car w) 'IMPLIES)
		  (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG)
		  (or (equal (caddr w) '(TRUTH)) (eq (caddr w) 'TRUTH)))
	     (let ((n (caddr (cadr w)))
		   (tp "prop"))
	       (dolist (a (cdr n))
		 (setq tp (cons "set" tp)))
	       (values (car n) tp nil)))
	    ((and (eq (car w) 'IMPLIES)
		  (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG))
	     (let ((n (caddr (cadr w)))
		   (tp "prop"))
	       (dolist (a (cdr n))
		 (setq tp (cons "set" tp)))
	       (values (car n) tp t)))
	    (t nil))
    nil))
	     
(defun extract-func-defn (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-func-defn (cadr w) (1+ d)))
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
				   (values (car n2) (func-tp (length args)) (nss-trm-outerlam-set args (list 'CHOICE p))) ; rethink this -- p is not the right thing to use here
				 nil))))
		       nil))
		 nil)))
	    (t nil))
    nil))

(defun extract-func-decl (w &optional (d 0))
  (if (consp w)
      (cond ((eq (car w) 'FORALL)
	     (extract-func-decl (cadr w) (1+ d)))
	    ((and (eq (car w) 'IMPLIES)
		  (consp (cadr w)) (eq (caadr w) 'HEADTERM) (eq (cadadr w) 'TAG))
	     (let ((n (caddr (cadr w)))
		   (tp "set"))
	       (if (and (> d 0) (consp n) (equal (car n) "=") (equal (cadr n) '(DB 0)) (consp (caddr n)) (stringp (caaddr n)))
		   (let* ((n2 (caddr n))
			  (args (cdr n2)))
		     (dolist (a args)
		       (setq tp (cons "set" tp)))
		     (values (car n2) n2 tp t))
		 nil)))
	    (t nil))
    nil))

(defun nss-assumption (nm decl w)
  (dolist (x (cdr decl)) (push (list 'VAR x) *ctx*))
  (let ((hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm)))
    (push (list 'HYP hn (elab-prop (nss-trm w))) *ctx*)))

(defun nss-posit-axiom (g nm decl w)
  (dolist (x (cdr decl)) (push (list 'VAR x) *ctx*))
  (let ((w2 (elab-prop (nss-trm w))))
    (dolist (h *ctx*)
      (case (car h)
	    (VAR (setq w2 (list 'FORALL (cadr h) w2)))
	    (HYP (setq w2 (list 'IMPLIES (caddr h) w2)))
	    (t (throw 'fail (list 'fail "bad ctx entry" h)))))
    (let ((hn (if (or (not nm) (equal nm "__")) (fresh-hyp-name) nm)))
      (push (list 'AX hn w2) *sig*)
      (format g "Hypothesis ~d: ~d.~%" hn (trm-str w2)))))

(defun nss-posit-signature (g nm decl w)
  (dolist (x (cdr decl)) (push (list 'VAR x) *ctx*))
  (let ((htl (nss-headterms w)))
    (if htl
	(if (cdr htl)
	    (throw 'fail (list 'fail "multiple headterm in posit of defn" htl nm w))
	  (let ((fail
		 (catch 'fail
		   (multiple-value-bind
		    (func n2 tp p)
		    (extract-func-decl w)
		    (if func
			(let ((w2 (elab-prop (nss-trm w))))
			  (dolist (h *ctx*)
			    (case (car h)
				  (VAR (setq w2 (list 'FORALL (cadr h) w2)))
				  (HYP (setq w2 (list 'IMPLIES (caddr h) w2)))
				  (t (throw 'fail (list 'fail "bad ctx entry" h)))))
			  (push (list 'DECL func tp) *sig*)
			  (format g "Variable ~d : ~d.~%" func (tp-str tp))
			  (unless (trivial-prop-p w2)
			    (let ((hn (fresh-assume-name)))
			      (push (list 'HYP hn w2) *sig*)
			      (format g "Hypothesis ~d : ~d.~%" hn (trm-str w2)))))
		      (throw 'fail "not a known func decl"))))))
	    (when fail
	      (let ((fail
		     (catch 'fail
		       (multiple-value-bind
			(reln tp p)
			(extract-reln-decl w)
			(if reln
			    (let ((w2 (elab-prop (nss-trm w))))
			      (dolist (h *ctx*)
				(case (car h)
				      (VAR (setq w2 (list 'FORALL (cadr h) w2)))
				      (HYP (setq w2 (list 'IMPLIES (caddr h) w2)))
				      (t (throw 'fail (list 'fail "bad ctx entry" h)))))
			      (push (list 'DECL reln tp) *sig*)
			      (format g "Variable ~d : ~d.~%" reln (tp-str tp))
			      (unless (trivial-prop-p w2)
				(let ((hn (fresh-assume-name)))
				  (push (list 'HYP hn w2) *sig*)
				  (format g "Hypothesis ~d : ~d.~%" hn (trm-str w2)))))
			  (throw 'fail "not a known reln decl"))))))
		(when fail
		  (throw 'fail (list 'fail "Unknown signature posit form" nm decl w))))))))))

(defun nss-posit-definition (g nm decl w)
  (dolist (x (cdr decl)) (push (list 'VAR x) *ctx*))
  (let ((htl (nss-headterms w)))
    (if htl
	(if (cdr htl)
	    (throw 'fail (list 'fail "multiple headterm in posit of defn" htl nm w))
	  (let ((fail
		 (catch 'fail
		   (multiple-value-bind
		    (reln tp def)
		    (extract-reln-defn w)
		    (if reln
			(progn
			  (push (list 'DEF reln tp def) *sig*)
			  (format g "Definition ~d : ~d := ~d.~%" reln (tp-str tp) (trm-str def))
			  )
		      (throw 'fail "not a known reln defn"))))))
	    (when fail
	      (let ((fail
		     (catch 'fail
		       (multiple-value-bind
			(func tp def)
			(extract-func-defn w)
			(if func
			    (progn
			      (push (list 'DEF func tp def) *sig*)
			      (format g "Definition ~d : ~d := ~d.~%" func (tp-str tp) (trm-str def))
			      )
			  (throw 'fail "foo"))))))
		(when fail
		  (throw 'fail (list 'FAIL "not a known defn pattern" nm w)))))))
      (throw 'fail (list 'fail "no headterm in posit of defn" w)))))

(defun nss-axiom-body (g outernm body)
  (if body
      (if (and (consp (car body)) (eq (caar body) 'BLOCK))
	  (let ((k (nth 2 (car body)))
		(nm (nth 4 (car body)))
		(decl (nth 1 (car body)))
		(w (nth 3 (car body)))
		(subbody (cdr (nth 5 (car body)))))
	    (if (cdr body) ; all but the last one should be ASSUMPTION
		(if (eq k 'ASSUMPTION)
		    (if subbody
			(throw 'fail (list 'FAIL "nonempty subbody in assumption in axiom" body))
		      (progn
			(nss-assumption nm decl w)
			(nss-axiom-body g outernm (cdr body))))
		  (throw 'fail (list 'FAIL "non assumption before last in axiom" body)))
	      (if (eq k 'POSIT) ; last one should be a POSIT
		  (if subbody
		      (throw 'fail (list 'FAIL "nonempty subbody in posit in axiom" body))
		    (nss-posit-axiom g outernm decl w))
		(throw 'fail (list 'FAIL "end of axiom body was not a POSIT" body)))))
	(throw 'fail (list 'FAIL "end of axiom body was not a block" body)))
    (throw 'fail (list 'FAIL "axiom with empty body?"))))
  
(defun nss-signature-body (g outernm body)
  (if body
      (if (and (consp (car body)) (eq (caar body) 'BLOCK))
	  (let ((k (nth 2 (car body)))
		(nm (nth 4 (car body)))
		(decl (nth 1 (car body)))
		(w (nth 3 (car body)))
		(subbody (cdr (nth 5 (car body)))))
	    (if (cdr body) ; all but the last one should be ASSUMPTION
		(if (eq k 'ASSUMPTION)
		    (if subbody
			(throw 'fail (list 'FAIL "nonempty subbody in assumption in signature" body))
		      (progn
			(nss-assumption nm decl w)
			(nss-signature-body g outernm (cdr body))))
		  (throw 'fail (list 'FAIL "non assumption before last in signature" body)))
	      (if (eq k 'POSIT) ; last one should be a POSIT
		  (if subbody
		      (throw 'fail (list 'FAIL "nonempty subbody in posit in signature" body))
		    (nss-posit-signature g outernm decl w))
		(throw 'fail (list 'FAIL "end of signature body was not a POSIT" body)))))
	(throw 'fail (list 'FAIL "end of signature body was not a block" body)))
    (throw 'fail (list 'FAIL "signature with empty body?"))))

(defun nss-definition-body (g outernm body)
  (if body
      (if (and (consp (car body)) (eq (caar body) 'BLOCK))
	  (let ((k (nth 2 (car body)))
		(nm (nth 4 (car body)))
		(decl (nth 1 (car body)))
		(w (nth 3 (car body)))
		(subbody (cdr (nth 5 (car body)))))
	    (if (cdr body) ; all but the last one should be ASSUMPTION
		(if (eq k 'ASSUMPTION)
		    (if subbody
			(throw 'fail (list 'FAIL "nonempty subbody in assumption in definition" body))
		      (progn
			(nss-assumption nm decl w)
			(nss-definition-body g outernm (cdr body))))
		  (throw 'fail (list 'FAIL "non assumption before last in definition" body)))
	      (if (eq k 'POSIT) ; last one should be a POSIT
		  (if subbody
		      (throw 'fail (list 'FAIL "nonempty subbody in posit in definition" body))
		    (nss-posit-definition g outernm decl w))
		(throw 'fail (list 'FAIL "end of definition body was not a POSIT" body)))))
	(throw 'fail (list 'FAIL "end of definition body was not a block" body)))
    (throw 'fail (list 'FAIL "definition with empty body?"))))

(defun indent (g d)
  (dotimes (i d) (format g " ")))

(defun nss-proof (g pf goalstack d)
  (if pf
      (if (not (and (consp pf) (consp (car pf)) (eq (caar pf) 'BLOCK)))
	  (throw 'fail (list 'fail "non block in pf" pf))
	(let ((k (nth 2 (car pf)))
	      (nm (nth 4 (car pf)))
	      (decl (nth 1 (car pf)))
	      (w (nth 3 (car pf)))
	      (subpf (cdr (nth 5 (car pf)))))
	  (if (not (and (consp goalstack) (consp (car goalstack)) (eq (caar goalstack) 'SUBGOAL)))
	      (throw 'fail (list 'fail "pf step without a subgoal" pf goalstack))
	    (let ((gth (nth 1 (car goalstack)))
		  (gctx (nth 2 (car goalstack))))
	      (case k
		    (ASSUMPTION
		     (let ((nvl (cdr decl)))
		       (when nvl
			 (indent g d)
			 (format g "let")
			 (dolist (x nvl)
			   (format g " ~d" x)
			   (if (and (consp gth) (eq (car gth) 'FORALL))
			       (if (eq (cadr gth) x)
				   (setq gth (caddr gth))
				 (progn
				   (format t "WARNING: Too lazy to implement capture avoiding substitution, so using fake thesis.")
				   (setq gth 'FAKE)))
			     (progn
			       (format t "WARNING: Cannot see ~S as forall, so fake using thesis.~%" gth)
			       (setq gth 'FAKE)))
			   (push (list 'VAR x) gctx)
			   )
			 (format g ".~%")))
		     (if (equal w '(NOT ("#TH#")))
			 (let ((hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm)))
			   (indent g d)
			   (format g "apply NNPP. assume ~d.~%" hn)
			   (nss-proof
			    g
			    (cdr pf)
			    (cons (list 'SUBGOAL '(FALSE) (cons (list 'HYP hn (list 'NOT gth)) gctx))
				  (cdr goalstack))
			    d))
		       (let ((hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm)))
			 (indent g d)
			 (if (and w (not (equal w "?")))
			     (format g "assume ~d: ~d.~%" hn (trm-str (elab-prop (nss-trm w))))
			   (format g "assume ~d.~%"))
			 (if (and (consp gth) (eq (car gth) 'IMPLIES))
			     (nss-proof
			      g
			      (cdr pf)
			      (cons (list 'SUBGOAL (caddr gth) (cons (list 'HYP hn (cadr gth)) gctx))
				    (cdr goalstack))
			      d)
			   (progn
			     (format t "WARNING: Cannot see ~S as implication matching assume in pf so setting thesis and assumption to fake.~%" gth)
			     (nss-proof
			      g
			      (cdr pf)
			      (cons (list 'SUBGOAL 'FAKE (cons (list 'HYP hn 'FAKE) gctx))
				    (cdr goalstack))
			      d))))))
		    (SELECTION
		     (let ((svl (cdr decl)))
		       (unless svl
			 (throw 'fail (list 'FAIL "selection step has no variables to select" pf)))
		       (let* ((w2 (elab-prop (nss-trm w)))
			      (w3 w2)
			      (gctx2 gctx)
			      (hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm))
			      (cn (fresh-claim-name)))
			 (dolist (x (reverse svl)) (setq w3 (list 'EXISTS x w3)))
			 (indent g d)
			 (format g "claim ~d: ~d.~%" cn (trm-str w3))
			 (if subpf
			     (progn
			       (indent g d)
			       (format g "{~%")
			       (nss-proof g subpf (list (list 'SUBGOAL w3 gctx)) (1+ d))
			       (indent g d)
			       (format g "}~%"))
			   (progn
			     (indent g d)
			     (format g "admit.~%")))
			 (indent g d)
			 (format g "apply ~d." cn)
			 (dolist (x svl) (push (list 'VAR x) gctx2) (format g " let ~d. assume ~d." x hn))
			 (format g "~%")
			 (nss-proof
			  g
			  (cdr pf)
			  (cons (list 'SUBGOAL gth (cons (list 'HYP hn w2) gctx2))
				(cdr goalstack))
			  d))))
		    (LOWDEFINITION
		     (let ((svl (cdr decl)))
		       (unless svl
			 (throw 'fail (list 'FAIL "lowdefinition step has no variables to define" pf)))
		       (let* ((w2 (elab-prop (nss-trm w)))
			      (w3 w2)
			      (gctx2 gctx)
			      (hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm))
			      (cn (fresh-claim-name)))
			 (dolist (x (reverse svl)) (setq w3 (list 'EXISTS x w3)))
			 (indent g d)
			 (format g "claim ~d: ~d.~%" cn (trm-str w3))
			 (if subpf
			     (progn
			       (indent g d)
			       (format g "{~%")
			       (nss-proof g subpf (list (list 'SUBGOAL w3 gctx)) (1+ d))
			       (indent g d)
			       (format g "}~%"))
			   (progn
			     (indent g d)
			     (format g "admit.~%")))
			 (indent g d)
			 (format g "apply ~d." cn)
			 (dolist (x svl) (push (list 'VAR x) gctx2) (format g " let ~d. assume ~d." x hn))
			 (format g "~%")
			 (nss-proof
			  g
			  (cdr pf)
			  (cons (list 'SUBGOAL gth (cons (list 'HYP hn w2) gctx2))
				(cdr goalstack))
			  d))))
		    (AFFIRMATION
		     (let ((svl (cdr decl)))
		       (when svl
			 (throw 'fail (list 'FAIL "cannot handle affirmation with new vars")))
		       (if (eq w 'CONTRADICTION)
			   (if (equal gth '(FALSE))
			       (nss-proof g (cdr pf) goalstack d)
			     (progn
			       (indent g d)
			       (format g "prove False.~%")
			       (nss-proof g (cdr pf)
					  (cons
					   (list 'SUBGOAL '(FALSE) gctx)
					   (cdr goalstack)) d)))
			 (let* ((w2 (elab-prop (nss-trm w)))
				(hn (if (or (not nm) (equal nm "__")) (fresh-assume-name) nm)))
			   (indent g d)
			   (format g "claim ~d: ~d.~%" hn (trm-str w2))
			   (if subpf
			       (progn
				 (indent g d)
				 (format g "{~%")
				 (nss-proof g subpf (list (list 'SUBGOAL w2 gctx)) (1+ d))
				 (indent g d)
				 (format g "}~%"))
			     (progn
			       (indent g d)
			       (format g "admit.~%")))
			   (nss-proof
			    g
			    (cdr pf)
			    (cons (list 'SUBGOAL gth (cons (list 'HYP hn w2) gctx))
				  (cdr goalstack))
			    d)))))
		    (t (throw 'fail (list 'fail "unhandled pf kind" pf))))))))
    ; no more steps in the proof left. for each remaining subgoal, close it with admit.
    (dolist (sg goalstack)
      (indent g d)
      (format g "admit.~%"))))

(defun nss-affirmation-theorem (g nm decl w subbody)
  (dolist (x (cdr decl)) (push (list 'VAR x) *ctx*))
  (let* ((w2 (elab-prop (nss-trm w)))
	 (goalstack (list (list 'SUBGOAL w2 *ctx*))))
    (dolist (h *ctx*)
      (case (car h)
	    (VAR (setq w2 (list 'FORALL (cadr h) w2)))
	    (HYP (setq w2 (list 'IMPLIES (caddr h) w2)))
	    (t (throw 'fail (list 'fail "bad ctx entry" h)))))
    (let ((thmname (if (or (not nm) (equal nm "__")) (fresh-thm-name) nm)))
      (format g "Theorem ~d: ~d.~%" thmname (trm-str w2))
      (if (and (not *skipproofs*) subbody) ; proof given
	  (let ((lets nil))
	    (dolist (h (reverse *ctx*))
	      (case (car h)
		    (VAR (push (cadr h) lets))
		    (HYP
		     (when lets
		       (format g "let")
		       (dolist (x (reverse lets)) (format g " ~d" x))
		       (format g ".~%")
		       (setq lets nil))
		     (format g "assume ~d: ~d.~%" (cadr h) (trm-str (caddr h))))
		    (t (throw 'fail (list 'fail "bad ctx entry" h)))))
	    (when lets
	      (format g "let")
	      (dolist (x (reverse lets)) (format g " ~d" x))
	      (format g ".~%")
	      (setq lets nil))
	    (nss-proof g subbody goalstack 0)
	    (format g "Qed.~%"))
	(format g "Admitted.~%~%"))))) ; no proof given
  
(defun nss-theorem-body (g outernm body)
  (if body
      (if (and (consp (car body)) (eq (caar body) 'BLOCK))
	  (let ((k (nth 2 (car body)))
		(nm (nth 4 (car body)))
		(decl (nth 1 (car body)))
		(w (nth 3 (car body)))
		(subbody (cdr (nth 5 (car body)))))
	    (if (cdr body) ; all but the last one should be ASSUMPTION
		(if (eq k 'ASSUMPTION)
		    (if subbody
			(throw 'fail (list 'FAIL "nonempty subbody in assumption in theorem" body))
		      (progn
			(nss-assumption nm decl w)
			(nss-theorem-body g outernm (cdr body))))
		  (throw 'fail (list 'FAIL "non assumption before last in theorem" body)))
	      (if (eq k 'AFFIRMATION) ; last one should be a AFFIRMATION
		  (nss-affirmation-theorem g outernm decl w subbody)
		(throw 'fail (list 'FAIL "end of theorem body was not an AFFIRMATION" body)))))
	(throw 'fail (list 'FAIL "end of theorem body was not a block" body)))
    (throw 'fail (list 'FAIL "theorem with empty body?"))))
  
(defun nss-toplevel-block (g k nm decl w body)
  (setq *ctx* nil)
  (case k
	(AXIOM
	 (if (and (not (cdr decl)) body)
	     (nss-axiom-body g nm body)
	   (throw 'fail (list 'FAIL "unexpected axiom case" decl body))))
	(SIGNATURE
	 (if (and (not (cdr decl)) body)
	      (nss-signature-body g nm body)
	    (throw 'fail (list 'FAIL "unexpected signature case" decl body))))
	(DEFINITION
	  (if (and (not (cdr decl)) body)
	      (nss-definition-body g nm body)
	    (throw 'fail (list 'FAIL "unexpected definition case" decl body))))
	(THEOREM
	  (if (and (not (cdr decl)) body)
	      (nss-theorem-body g nm body)
	    (throw 'fail (list 'FAIL "unexpected theorem case" decl body))))
	(t
	 (throw 'fail (list 'FAIL (format nil "To do top level kind ~d~%nm ~S~%decl ~S~%formula ~S~%body ~S~%" k nm decl w body))))))
	     
(defun nss-to-egal (fs gs)
  (setq *sig* nil)
  (setq *freshvarcount* 0)
  (setq *freshthmcount* 0)
  (setq *freshhypcount* 0)
  (setq *freshassumecount* 0)
  (setq *freshclaimcount* 0)
  (let ((f (open fs :direction :input))
	(g (if gs (open gs :direction :output :if-exists :supersede :if-does-not-exist :create) t)))
    (format g "(*** Generic Header ***)~%")
    (dolist (x *genericbuiltin*)
      (format g "Variable ~d: ~d.~%" (cadr x) (tp-str (caddr x))))
    (dolist (x *genericaxioms*)
      (format g "Hypothesis ~d: ~d.~%" (car x) (cadr x)))
    (format g "~%(*** Main ***)~%")
    (let ((fail
	   (catch 'fail
	     (loop while (setq l (read f nil nil)) do
		   (if (and (consp l) (eq (car l) 'BLOCK))
		       (nss-toplevel-block g (nth 2 l) (nth 4 l) (nth 1 l) (nth 3 l) (cdr (nth 5 l)))
		     (format t "Skipping nonblock ~S~%" l))))))
      (when fail (format t "~S~%" fail))
      (close f)
      (when gs (close g)))))

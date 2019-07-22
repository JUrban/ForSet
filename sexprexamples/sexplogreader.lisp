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
    (loop while (setq l (read-line f nil nil)) do
	  (cond ((and (> (length l) 9) (equal (subseq l 0 9) "[Parser] "))
		 (push (list 'PARSER (read-from-string (subseq l 9))) rl))
		(t
		 (dotimes (i (length l)
			     (let ((k (extract-keyword l)))
			       (when k (push k rl))))
		   (when (eq (aref l i) #\()
		     (let ((k (extract-keyword (subseq l 0 i))))
		       (if k
			   (push (list k (read-from-string (subseq l i))) rl)
			 (push (list 'FORMULA (read-from-string (subseq l i))) rl)))
		     (return nil))))))
    (close f)
    (reverse rl)))

      

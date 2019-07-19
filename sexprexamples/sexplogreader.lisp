(defun read-sexprs (fn)
  (let ((f (open fn :direction :input))
	(l nil)
	(rl nil))
    (loop while (setq l (read-line f nil nil)) do
	  (cond ((and (> (length l) 9) (equal (subseq l 0 9) "[Parser] "))
		 (push (list 'PARSER (read-from-string (subseq l 9))) rl))
		(t
		 (dotimes (i (length l))
		   (when (eq (aref l i) #\()
		     (push (read-from-string (subseq l i)) rl)
		     (return nil))))))
    (close f)
    (reverse rl)))

      

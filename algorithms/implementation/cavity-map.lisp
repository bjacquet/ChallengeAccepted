
(defun max.digit.in.number (number)
  (labels ((aux (num max)
	     (if (<= num 0)
		 max
		 (aux (floor num 10) (max max (mod num 10))))))
    (aux number 0)))

(defun cavity.map ()
  (let ((lines (read))
	(output))
    (flet ((digit.char (digit) (code-char (+ 48 digit))))
      (loop for l from 1 to lines
	    for line = (read)
	    maximizing (max.digit.in.number line) into max.cavity
	    do         (setf output
			     (format nil "~@[~a~%~]~a" output line))
	    finally    (setf output
			     (substitute #\X (digit.char max.cavity) output))))
    (pprint output)))

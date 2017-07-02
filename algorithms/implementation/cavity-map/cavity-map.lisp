
(defun max.digit (number)
  (labels ((max.digit.aux (num max)
	     (if (< num 10)
		 max
		 (max.digit.aux (floor num 10) (max max (mod num 10))))))
    (max.digit.aux (floor number 10) 0)))

(defun cross.cavities (lines max.cavity nr.lines)
  (loop for line in lines
	for l from 1 upto nr.lines
	if (< 1 l nr.lines)
	  collect (substitute #\X max.cavity (write-to-string line) :start 1 :end (1- nr.lines))
	    into crossed.lines
	else
	  collect (write-to-string line) into crossed.lines
	finally (return (format nil "~{~a~%~}" crossed.lines)) ))

(defun cavity.map ()
  (let ((lines (read))
	output)
    (flet ((digit.char (digit) (code-char (+ 48 digit))))
      (loop for l from 1 to lines
	    for line = (read)
	    when (< 1 l lines)
	      maximize (max.digit line) into max.cavity
	    collecting line into cavity.lines
	    finally (setf output (cross.cavities cavity.lines (digit.char max.cavity) lines))))
    (write output)))


(defun parse-integers (string)
  "This should go into a library of some sort."
  (let ((start 0)
        (end (length string))
        (result '()))
    (loop
      (when (>= start end)
        (return (nreverse result)))
      (multiple-value-bind (number pos)
          (parse-integer string :start start :junk-allowed t)
        (cond (number
               (push number result)
               (setf start pos))
              (t
               (setf start end)))))))

(defun mini-max-sum (numbers)
  (let ((max (reduce #'+ numbers)))
    (multiple-value-bind (min max)
        (loop for n in numbers
              when n
                minimize (- max n) into minimal
                and maximize (- max n) into maximal
              finally (return (values minimal maximal)))
      (format t "~d ~d~%" min max))))

(mini-max-sum (parse-integers (read-line)))

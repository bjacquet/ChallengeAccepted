(defpackage #:leap
  (:use #:common-lisp)
  (:export #:leap-year-p))
(in-package #:leap)

(defun leap-year-p (year)
  (flet ((divisible? (number divisor)
           (multiple-value-bind (quotient remainder)
               (floor number divisor)
             (declare (ignore quotient))
             (= 0 remainder))))
    (and (divisible? year 4)
         (or (not (divisible? year 100))
             (divisible? year 400)))))

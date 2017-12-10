(in-package #:cl-user)
(defpackage #:acronym
  (:use #:common-lisp)
  (:export #:acronym))

(in-package #:acronym)

(defun acronym (string)
  (coerce (loop for char1 across (concatenate 'string " " string)
                for char2 across string
                when (upper-case-p char1)
                  collect char1
                when (char= char1 #\:)
                  do (loop-finish)
                when (and (not (alpha-char-p char1))
                          (lower-case-p char2))
                  collect (char-upcase char2))
          'string))

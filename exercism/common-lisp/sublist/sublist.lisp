(defpackage #:sublist
  (:use #:common-lisp)
  (:export #:sublist))

(in-package #:sublist)


(defun sublistp (a b)
  (cond ((null a)             t)
        ((null b)             nil)
        ((eq (car a) (car b)) (sublistp (rest a) (rest b)))
        (t                    nil)))

(defun sublist-aux (a b)
  (dotimes (i (length b))
    (when (sublistp a (subseq b i))
      (return t))))

(defun sublist (a b)
  "what is a of b (sublist, superlist, equal or unequal)"
  (cond ((equal a b)
         "equal")
        ((or (null a)
             (and (< (length a) (length b))
                  (sublist-aux a b)))
         "sublist")
        ((or (null b)
             (sublist-aux b a))
         "superlist")
        (t
         "unequal")))

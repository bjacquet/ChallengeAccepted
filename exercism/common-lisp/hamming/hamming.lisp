(defpackage #:hamming
  (:use #:cl)
  (:export #:distance))

(in-package #:hamming)

(defun distance (dna1 dna2)
  "Number of positional differences in two equal length dna strands."
  (when (= (length dna1) (length dna2))
    (loop for s1 across dna1
          for s2 across dna2
          when (char/= s1 s2)
            collect 1 into diffs
          finally (return (length diffs)))))

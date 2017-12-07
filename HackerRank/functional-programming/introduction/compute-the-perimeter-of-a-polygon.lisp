(defun absolute-distance (a b)
  (abs (- a b)))


(defun segment-length (a b)
  (let ((a (absolute-distance (car a) (car b)))
        (b (absolute-distance (cadr a) (cadr b))))
    (sqrt (+ (* a a) (* b b)))))


(defun compute-perimeter (edges)
  (loop for a in edges
        and b in (append (rest edges) (list (car edges)))
        sum (segment-length a b)))


(defun get-edges ()
  (loop for i from 1 upto (read)
        collect (list (read) (read))))


(let* ((edges (get-edges))
       (perimeter (compute-perimeter edges)))
  (format t "~d~%" perimeter))


(defun sock-merchant (socks)
  (dolist (sock socks)
    (format t ":~d" sock))
  socks)

(read-line)
(sock-merchant (parse-integer (read-line)))

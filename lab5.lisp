;; Samuel Savage
;; CIS667 Fall 2016
;; Lab 05 20161008

(defun decode (number)
   (cond
      ((<= number 0) nil)
      (t (cons (mod number 9) (decode (/ (- number (mod number 9)) 9))))
   )
)

(defun custom-print (puzrow)
   (dolist (x puzrow)
      (cond
         ((eq (car puzrow) nil) nil)
         ((eq (car puzrow) 0) princ ".")
         (t (princ (car puzrow)))
      )
   )
)

(defun display (puzlist)
   (print (subseq puzlist 0 3))
   (print (subseq puzlist 3 6))
   (print (subseq puzlist 6 9))
   puzlist
)
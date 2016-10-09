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
         ((equal x nil) (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*))
         ((eq x 0) (princ "."))
         (t (princ x))
      )
      (princ "  ")
   )
)

(defun display (puzlist)
   (custom-print (subseq puzlist 0 3))
   (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
   (custom-print (subseq puzlist 3 6))
   (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
   (custom-print (subseq puzlist 6 9))
   (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
   puzlist
)

(defun show-puz (number)
   (display (decode number))
)

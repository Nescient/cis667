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
   (let ((l (decode number)))
      (if (< (length l) 9) (setq l (nconc l (list 0))))
      (display l)
   )
)

(defvar *lab5case1* '(
34160732
120136076
120346028
86911172
91162700
93816260
93775436
88999028
12471524
184422212
184776020
184776236
184769684
175216868
196474508
200189492
200195316
200195308
200182204
199867276
27916588
219235348
247893796
))

(defvar *lab5case2*
'(274878620
260549396
277555508
281270492
281276316
281276308
281256652
281151676
281446516
281446732
281433628
262327996
32745484
247683844
247893796)
)

(defun lab5 ()
   (dolist (x *lab5case1*)
      (print x)
      (princ ":")
      (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
      (show-puz x)
      (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
      (write-char #\return *standard-output*)(write-char #\linefeed *standard-output*)
   )
)

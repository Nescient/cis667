;; Samuel Savage
;; CIS667 Fall 2016
;; Lab 02 20160916

;; written by Professor Lee for AI-16
(defun my-list (&rest args)
   (cond
   	  ((eq args nil) nil)
      (t (cons (car args) (cdr args)))
   )
)


(defun my-reverse (arg)
   (if arg
       (cons (my-reverse (cdr arg)) (car arg))
       arg
   )
)

(defun my-append-two (l1 l2)
   (if l1
       (my-append-two (cdr l1) (cons (car l1) l2))
       l2
   )
)

(defun my-append (l1 l2 &rest ls)
   (princ ls)
   (princ (length ls))
   (princ (car ls))
   (princ (cdr ls))
   (write-char #\linefeed *standard-output*)
   (let ((l (my-append-two l1 l2))))
   (dolist (i ls ol) (my-append-two l i)
   ;;(if (and (> (length ls) 0) (car ls))
   ;;    (my-append (my-append-two (reverse l1) l2) (car ls) (cdr ls))
   ;;    (my-append-two (reverse l1) l2)
   )
)

;; takes a list L of atoms and an atom A, removing A from L
(defun my-remove (L A)
   ;;(princ L)
   (if L
      (if (equal (car L) A)
          (my-remove (cdr L) A)
          (cons (car L) (my-remove (cdr L) A))
      )
      '()
   )
)

;; takes a list L of atoms, an atom A, and an atom B
;; replacing all occurrences of A with B
(defun my-replace (L A B)
   (if L
      (if (equal (car L) A)
          (my-replace (cons B (cdr L)) A B)
          (cons (car L) (my-replace (cdr L) A B))
      )
      '()
   )
)

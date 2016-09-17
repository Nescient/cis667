;; Samuel Savage
;; CIS667 Fall 2016
;; Lab 02 20160916

(defun my-list (l1 &rest ls)
   (labels ((my-list-recur (arg1 args)
      (if args
          (cons arg1 (my-list-recur (car args) (cdr args)))
          arg1
      )
   ))
   (my-list-recur l1 ls))
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
          (cons B (cdr L))
          (cons (car L) (my-replace (cdr L) A B))
      )
      '()
   )
)

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

;; skeleton written by Professor Lee for AI-16
(defun my-reverse (arg)
   (cond
      ((eq arg nil) nil)
      ((eq (cdr arg) nil) (cons (car arg) nil))
      ( t (append (my-reverse (cdr arg)) (cons (car arg) nil)))
   )
)

;; skeleton written by Professor Lee for AI-16
(defun my-append (lst1 lst2)
   (cond
      ((eq lst1 nil) lst2)
      ((eq lst2 nil) lst1)
      ( t (cons (car lst1) (my-append (cdr lst1) lst2)))
   )
)

;; takes a list L of atoms and an atom A, removing A from L
(defun my-remove (L A)
   (cond
      ((eq L nil) '())
      ((eq (car L) A) (my-remove (cdr L) A))
      ( t (cons (car L) (my-remove (cdr L) A)))
   )
)

;; takes a list L of atoms, an atom A, and an atom B
;; replacing all occurrences of A with B
(defun my-replace (L A B)
   (cond
      ((eq L nil) '())
      ((eq (car L) A) (my-replace (cons B (cdr L)) A B))
      ( t (cons (car L) (my-replace (cdr L) A B)))
   )
)

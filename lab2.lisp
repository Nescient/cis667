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
   (if (> (length ls) 0)
       (my-append (my-append l1 l2) ls)
       (my-append-two (reverse l1) l2)
   )
)


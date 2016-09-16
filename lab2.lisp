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


(defun my-reverse ()
   ()
)

(defun my-append ()
   ()
)


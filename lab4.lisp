;; Samuel Savage
;; CIS667 Fall 2016
;; Lab 04 20161001

(defun get-city-coords (city city-map)
   (cadr (find-city city city-map))
)

(defun get-add-norm (city1 city2 city-map)
   (x+y-distance (city-loc (find-city city1 city-map)) (city-loc (find-city city2 city-map)))
)

;; based on x+y-distance from lisp utilities
(defun get-max-norm (city1 city2 city-map)
   (let ((p (city-loc (find-city city1 city-map)))
         (q (city-loc (find-city city2 city-map)))
        )
      (max (abs (- (xy-x p) (xy-x q)))
           (abs (- (xy-y p) (xy-y q)))
      )
   )
)


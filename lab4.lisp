;; Samuel Savage
;; CIS667 Fall 2016
;; Lab 04 20161001

(defun get-add-norm (city1 city2)
   (x+y-distance (city-loc city1) (city-loc city2))
)

;; based on x+y-distance from lisp utilities
(defun get-max-norm (city1 city2)
   (let ((p (city-loc city1))
         (q (city-loc city2))
        )
      (max (abs (- (xy-x p) (xy-x q)))
           (abs (- (xy-y p) (xy-y q)))
      )
   )
)

;; h1 is the 1-norm heuristic for romanian map
(defmethod h1-cost ((problem route-finding-problem) city-name)
   (get-add-norm (find-city city-name problem)
                 (find-city (problem-goal problem) problem)
   )
)

;; h2 is the max-norm heuristic for romanian map
(defmethod h2-cost ((problem route-finding-problem) city-name)
   (get-max-norm (find-city city-name problem)
                 (find-city (problem-goal problem) problem)
   )
)

;; (SETQ SEARCHERS '(TREE-A*-SEARCH A*-SEARCH TREE-IDA*-SEARCH))
;; (COMPARE-SEARCH-ALGORITHMS #'(LAMBDA NIL (MAKE-ROMANIAN-PROBLEM :initial-state 'Timisoara :GOAL 'IASI)) SEARCHERS)

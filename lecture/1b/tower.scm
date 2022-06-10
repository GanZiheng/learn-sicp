; Recursive solution.
(define (move_recursive n from to spare)
  (if (<= n 1)
    n
    (+
      (move_recursive (+ -1 n) from spare to)
      (move_recursive 1 from to spare)
      (move_recursive (+ -1 n) spare to from))))

; Iterative solution.
; TODO, not quite easy :(

(define (pow base exp)
  (if (= 0 exp)
    1
    (*
      (pow base (- exp 1))
      base)))

(define (result n)
  (- (pow 2 n) 1))

(= (move_recursive 2 1 2 3) (result 2))
(= (move_recursive 3 1 2 3) (result 3))
(= (move_recursive 10 1 2 3) (result 10))

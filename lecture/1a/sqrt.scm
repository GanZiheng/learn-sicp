(define (square x)
  (* x x))

(define (avg a b)
  (/ (+ a b) 2))

(define (abs x)
  (cond 
    ((< x 0) (- x))
    ((= x 0) 0)
    ((> x 0) x)))

(define (good_enough? guess x)
  (< (abs (- (square guess) x))
     0.001 ))

(define (improve guess x)
  (avg guess (/ x guess)))

(define (try guess x)
  (if (good_enough? guess x)
    guess
    (try (improve guess x) x)))

(define (sqrt x)
  (try 1 x))

(sqrt 9)

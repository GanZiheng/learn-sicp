(define (fib n)
  (if (< n 2)
    n
    (+
      (fib (+ -1 n))
      (fib (+ -1 n)))))

(fib 1)
(fib 2)
(fib 3)
(fib 10)
(fib 20)

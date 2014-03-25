(define (double x)
  (+ x x))

(define (halve x)
  (quotient x 2))

(define (fast-mult x y)
  (cond ((or (= x 0) (= y 0))
         0)
        ((= x 1)
         y)
        ((= y 1)
         x)
        ((even? y)
         (fast-mult (double x) (halve y)))
        (else
         (+ x (fast-mult (double x) (halve (- y 1)))))))

(define (double x)
  (+ x x))

(define (halve x)
  (quotient x 2))

(define (fast-mult-it x y)
  (letrec ((fast-mult-acc
             (lambda (x y a)
               (cond ((or (= x 0) (= y 0))
                      a)
                     ((even? y)
                      (fast-mult-acc (double x) (halve y) a))
                     (else
                      (fast-mult-acc (double x) (halve (- y 1)) (+ a x)))))))
    (fast-mult-acc x y 0)))

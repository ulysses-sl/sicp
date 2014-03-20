(define (sqrt-new x)
  (sqrt-iter (/ x 2.0) x x))

(define (sqrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
    guess
    (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess old-guess)
  (<=  (abs (/ (- guess old-guess) old-guess)) 0.001))

(define (improve guess x)
  (/ (+ guess (/ x guess)) 2))

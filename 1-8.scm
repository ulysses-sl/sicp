(define (cbrt-new x)
  (cbrt-iter (/ x 3.0) x x))

(define (cbrt-iter guess old-guess x)
  (if (good-enough? guess old-guess)
    guess
    (cbrt-iter (improve guess x) guess x)))

(define (good-enough? guess old-guess)
  (<= (abs (/ (- guess old-guess) old-guess)) 0.001))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))

(define (square x)
  (* x x))

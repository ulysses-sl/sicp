(define cube
  (lambda (x)
    (* x x x)))

(define simpson
  (lambda (f a b n)
    (define h (/ (- b a) n))
    (define (next k) (cube (+ a (* k h))))
    (define (term x k)
      (cond ((or (= k 0) (= k n))
             x)
            ((= (remainder k 2) 0)
             (* 2 x))
            (else
             (* 4 x))))
    (define (sum f a b k)
      (if (> a b)
        0
        (+ (term a k)
           (sum term (next (+ k 1)) b (+ k 1)))))
    (* (/ h 3) (sum term a b 0))))

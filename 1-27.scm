(define (square x)
  (* x x))

(define (expmod base expn m)
  (cond ((= expn 0)
         1)
        ((even? expn)
         (remainder
           (square
             (expmod base (/ expn 2) m))
           m))
        (else
         (remainder
           (* base
              (expmod base (- expn 1) m))
           m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

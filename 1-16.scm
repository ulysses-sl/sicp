(define (square x) (* x x))

(define (fast-expt-it b n)
  (letrec
    ((fast-expt-acc 
       (lambda (b m a)
         (cond ((= m 0) a)
               ((even? m) (fast-expt-acc (square b) (/ m 2) a))
               (else (fast-expt-acc b (- m 1) (* a b)))))))
    (fast-expt-acc b n 1)))

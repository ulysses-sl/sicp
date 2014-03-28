;a0 = a
;b0 = b
;
;a1 = bq + aq + ap
;b1 = bp + aq
;
;a2 = (bp + aq)q + (bq + aq + ap)(q + p)
;   = bpq + aq2 + bq2 + aq2 + apq + bpq + apq + ap2
;   = b(2pq + q2) + a(2pq + q2) + a(p2 + q2)
;b2 = (bp + aq)p + (bq + aq + ap)q
;   = bp2 + apq + bq2 + aq2 + apq
;   = b(p2 + q2) + a(2pq + q2)
;
;p' = p2 + q2
;q' = 2pq + q2

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))
                   (+ (* 2 p q) (* q q))
                   (/ count 2)))
        (else
         (fib-iter (+ (* b q) (* a q) (* a p))
                   (+ (* b p) (* a q))
                   p
                   q
                   (- count 1)))))

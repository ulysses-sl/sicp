(define (f-rec n)
  (if (< n 3)
    n
    (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))

(define (f-it n)
  (define (f-iter w x y z)
    (if (= w n)
      x
      (f-iter (+ w 1) (+ x (* 2 y) (* 3 z)) x y)))
  (if (< n 3)
    n
    (f-iter 2 2 1 0)))

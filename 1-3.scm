(define (sum-sq-of-two-max x y z)
  (receive (a b) (large-two x y z)
           (+ (square a) (square b))))

(define (large-two x y z)
  (if (> x y)
    (if (> y z)
      (values x y)
      (values x z))
    (if (> x z)
      (values x y)
      (values y z))))

(define (square x)
  (* x x))

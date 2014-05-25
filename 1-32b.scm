(define (accumulate combiner null-value term a next b)
  (define (accrec acc a)
    (if (> a b)
        acc
        (accrec (combiner acc (term a)) (next a))))
  (accrec null-value a))

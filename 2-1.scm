(define (make-rat n d)
  (let* ((g (gcd n d))
        (sign (if (> d 0)
                  1
                  -1)))
    (cons (* (/ n g) sign) (* (/ d g) sign))))

(define (for-each f l)
  (if (null? l)
    nil
    (lambda ()
      (f (car l))
      (for-each f (cdr l)))))

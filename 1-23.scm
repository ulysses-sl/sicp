(use numbers)

(define (square x) (* x x))

(define (smallest-divisor n) (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor-fast n) (find-divisor-fast n 2))

(define (find-divisor-fast n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (next x)
  (if (= x 2) 3 (+ x 2)))

(define (divides? a b) (= (remainder b a) 0))

(define (timed-prime-test n)
  (newline) (display n) (start-prime-test n (current-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
    (report-prime (- (current-milliseconds) start-time))))

(define (report-prime elapsed-time)
  (display " *** ") (display elapsed-time))

(define (prime? n) (= (smallest-divisor;-fast
                        n) n))

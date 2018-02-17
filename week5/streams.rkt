#lang racket

;  1 1 1 1   1 1 1
(define ones (lambda () (cons 1 ones)))

;doesn;'t work
(define ones-really-bad (cons 1 ones-really-bad))

;doesn;t work - evaluates thunk in second position and creates infinite loop
(define ones-bad (lambda () (cons 1 (ones bad))))

; 1 2 3 4 5
(define (f x) (cons x (lambda () (f (+ x 1)))))
(define nats1 (lambda () (f 1)))

(define nats
  (letrec ([f (lambda (x) (cons x (lambda () (f (+ x 1)))))])
    (lambda () (f 1))))

(define powers-of-two
  (letrec ([f (lambda (x) (cons x (lambda () (f (* x 2)))))])
    (lambda () (f 2))))

;; build stream maler helper function
(define (stream-maker fn arg) ...)

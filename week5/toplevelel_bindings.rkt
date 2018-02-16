#lang racket

(provide (all-defined-out))

(define (f x) (+ x (* x b))) ;forward reference ok here
(define b 3)
(define c (+ b 4)) ; backword reference ok
;(define d ( + e 4)) ; not ok
(define e 5)
;(define f 17) ; not ok,: f already defined in this module


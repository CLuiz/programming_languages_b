#lang racket

(provide (all-defined-out))

(define (sum3 xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum3(cdr xs)))]
        [#t (+ (car xs)) (sum3 (car xs))]))


(define (sum4 xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum4(cdr xs)))]
        [(list? (car xs)) (+ (car xs) (sum4(cdr xs)))]
        [#t (sum4 (car xs))]))

(define (count-falses xs)
  (cond [(null? xs) 0]
        [(car xs) (count-falses (cdr xs))]
        [#t (+ 1 (count-falses (cdr xs)))]))
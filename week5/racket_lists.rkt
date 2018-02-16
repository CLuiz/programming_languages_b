#lang racket

; empty list: null
; cons constructor: cons
; access head of list: car
; access tail of list: cdr
; Check for empty; null?

; '() works for null
; (list e1 e2 e3) for building lists
; names car and cdr are historical accident

(provide (all-defined-out))

; sum numbers in a list
(define (sum xs)
  (if (null? xs)
      0
      (+ (car xs) (sum (cdr xs)))))

;append
(define (my-append xs ys)
  (if (null? xs)
      ys
      (cons (car xs) (my-append (cdr xs) ys))))

; map
(define (my-map f xs)
  (if (null? xs)
      null
      (cons (f (car xs))
            (my-map f (cdr xs)))))
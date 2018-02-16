#lang racket
(provide (all-defined-out))

; first big differnece from ML (and Jave) parnes matter!

; works
(define (fact n) (if (= n 0) 1 (* n (fact (- n 1)))))

; doesn;t work
(define (fact1 n) (if (= n 0) (1) (* n (fact1 (- n 1)))))

(define (fact1b n) (if (= n 0) (1) (* n (fact (- n 1)))))

;(define (fact2 n) (if (= n 0 1 (* n (fact2 (- n 1))))))

;(define fact3 (n) (if (= n 0) (1) (* n (fact (- n 1)))))

(define (fact4 n) (if (= n 0) 1 (* n fact4 (- n 1))))

(define (fact5 n) (if (= n 0) 1 (* n (fact5) (- n 1))))

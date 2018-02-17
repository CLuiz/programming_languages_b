#lang racket

(provide (all-defined-out))

(define (sequence low high stride)
  (if (> low high)
      null
      (cons low (sequence (+ low stride) high stride))))

(define (string-append-map xs suffix)
  (map (lambda(x) (string-append x suffix)) xs))
       
(define (list-nth-mod xs n)
  (cond [(< n 0)
         (error "list-nth-mod: negative number")]
        [(null? xs)
         (error "list-nth-mod: empty list")])
   (car (list-tail xs (remainder n (length xs)))))

(define (stream-for-n-steps s n)
  (if (= n 0)
      null
      (cons (car (s)) (stream-for-n-steps (cdr (s)) (- n 1)))))

(define funny-number-stream 
  (letrec ([f (lambda (x)
                (if (= (remainder x 5) 0)
                    (cons (- x) (lambda () (f (+ x 1))))
                    (cons x (lambda () (f (+ x 1))))))])
           (lambda () (f 1))))

(define dan-then-dog
  (letrec ([f (lambda (x)
               (if (= (remainder x 2) 0)
                   (cons "dan.jpg" (lambda () (f (+ x 1))))
                   (cons "dog.jpg" (lambda () (f (+ x 1))))))])
  (lambda () (f 0))))

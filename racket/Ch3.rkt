#lang racket

(define (pair x y)
  (cons x (cons y '())))

(define (first-of x)
  (car x))

(define (second-of x)
  (car (cdr x)))

(define (first-of-pair a b)
  (equal? (first-of (pair a b)) a))

(define (secon-of-pair a b)
  (equal? (second-of (pair a b)) b))

(define (in-pair xs e)
  (if (equal? (first-of xs) e)
      #t
      (equal? (second-of xs) e)))

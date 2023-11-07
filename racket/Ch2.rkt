#lang racket

(require "Ch1.rkt")

;; The Axioms of If (initial)
(define (if-true x y)
  (equal? (if #t x y) x))

(define (if-false x y)
  (equal? (if #f x y) y))

(define (if-same x y)
  (equal? (if x y y) y))

;; The Axioms of Equal (final)
(define (equal-if x y)
  (if (equal? x y) (equal? x y) #t))

;; The Axioms of Cons (final)
(define (cons/car+cdr x)
  (if (atom x) #t (equal? (cons (car x) (cdr x)) x)))

;; The Axioms of If (final)
(define (if-nest-A x y z)
  (if x (equal? (if x y z) y) #t))

(define (if-nest-E x y z)
  (if x #t (equal? (if x y z) z)))
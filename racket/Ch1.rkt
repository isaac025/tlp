#lang racket

(provide atom)
(provide car/cons)
(provide cdr/cons)
(provide equal-same)
(provide equal-swap)

(define (atom x)
  (equal? x '()))

;; The Axioms of Cons (initial)
(define (atom/cons x y)
  (equal? (atom (cons x y)) #f))

(define (car/cons x y)
  (equal? (car (cons x y)) x))

(define (cdr/cons x y)
  (equal? (cdr (cons x y)) y))

;; The Axioms of Equal (initial)
(define (equal-same x)
  (equal? (equal? x x) #t))

(define (equal-swap x y)
  (equal? (equal? x y) (equal? y x)))
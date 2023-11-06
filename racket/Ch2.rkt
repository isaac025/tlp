#lang racket

;; The Axioms of If (initial)
(define (if-true x y)
  (equal? (if #t x y) x))

(define (if-false x y)
  (equal? (if #f x y) y))

(define (if-same x y)
  (equal? (if x y y) y))
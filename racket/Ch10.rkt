#lang racket

(require "Ch1.rkt")
(require "Ch4.rkt")

(define (rotate x)
  (cons (car (car x))
        (cons (cdr (car x)) (cdr x))))

(define (rotate/cons x y z)
  (equal? (rotate (cons (cons x y) z))
          (cons (x (cons y z)))))

(define (align x)
  (if (atom x)
      x
      (if (atom (car x))
          (cons (car x) (align (cdr x)))
          (align (rotate x)))))

(define (wt x)
  (if (atom x)
      1
      (+ (+ (wt (car x)) (wt (car x)))
         (wt (cdr x)))))

(define (natp/wt x)
  (equal? (natp (wt x)) #t))

;; The axioms of + and <

(define (identity-+ x)
  (if (natp x)
      (equal? (+ 0 x) x)
      #t))

(define (commute-+ x y)
  (equal? (+ x y) (+ y x)))

(define (associate-+ x y z)
  (equal? (+ (+ x y) z) (+ x (+ y z))))

(define (positives-+ x y)
  (if (< 0 x)
      (if (< 0 y)
          (equal? (< 0 (+ x y)) #t)
          #t)
      #t))

(define (natp/+ x y)
  (if (natp x)
      (if (natp y)
          (equal? (natp (+ x y)) #t)
          #t)
      #t))

(define (common-addends-< x y z)
  (equal? (< (+ x z) (+ y z)) (< x y)))

(define (positive/wt x)
  (equal? (< 0 (wt x)) #t))

(define (align/align x)
  (equal? (align (align x)) (align x)))
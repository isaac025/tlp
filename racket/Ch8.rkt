#lang racket

(require "Ch1.rkt")

(provide set?)
(provide atoms)
(provide add-atoms)

(define (member? x ys)
  (if (atom ys)
      #f
      (if (equal? x (car ys))
          #t
          (member? x (cdr ys)))))

(define (set? xs)
  (if (atom xs)
      #t
      (if (member? (car xs) (cdr xs))
          #f
          (set (cdr xs)))))

(define (add-atoms x ys)
  (if (atom x)
      (if (member? x ys)
          ys
          (cons x ys))
      (add-atoms (car x)
                 (add-atoms (cdr x) ys))))

(define (atoms x)
  (add-atoms x '()))
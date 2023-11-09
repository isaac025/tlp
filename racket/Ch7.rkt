#lang racket

(require "Ch1.rkt")
(require "Ch4.rkt")

(define (ctx? x)
  (if (atom x)
      (equal? x '?)
      (if (ctx? (car x))
          #t
          (ctx? (cdr x)))))

(define (ctx?/sub x y)
  (if (ctx? x)
      (if (ctx? y)
          (equal? (ctx? (sub x y)) #t)
          #t)
      #t))

(define (ctx?/t x)
  (if (ctx? x)
      (equal? (ctx? x) #t)
      #t))
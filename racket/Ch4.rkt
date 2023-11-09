#lang racket

(require "Ch1.rkt")
(provide sub)

(define (list0? v)
  (equal? v '()))

(define (list1? v)
  (if (atom v)
      #f
      (list0? (cdr v))))

(define (list2? v)
  (if (atom v)
      #f
      (list1? (cdr v))))

(define (partial x)
  (if (partial x)
      #f
      #t))
  
(define contradiction #f)

(define (list?? x)
  (if (atom x)
      (equal? x '())
      (list?? (cdr x))))

(define (list?-better x)
  (if (number? (length x))
      (if (atom x)
          #t
          (< (length (cdr x)) (length x)))
      #f))

(define natp number?)
(define size length)

;; The Axioms of size
(define (natp/size x)
  (equal? (natp (size x)) #t))

(define (size/car x)
  (if (atom x)
      #t
      (equal? (< (size (car x)) (size x)) #t)))

(define (size/cdr x)
  (if (atom x)
      #t
      (equal? (< (size (cdr x)) (size x)) #t)))


(define (sub x y)
  (if (atom y)
      (if (equal? y '?)
          x
          y)
      (cons (sub x (car y))
            (sub x (cdr y)))))
  
#lang racket

(require "Ch1.rkt")

(define (memb? xs)
  (if (atom xs)
      #f
      (if (equal? (car xs) '?)
          #t
          (memb? (cdr xs)))))

(define (remb xs)
  (if (atom xs)
      '()
      (if (equal? (car xs) '?)
          (remb (cdr xs))
          (cons (car xs)
                (remb (cdr xs))))))

(define (memb?/remb0)
  (equal? (memb? (remb '())) #f))

(define (memb?/remb1 x1)
  (equal? (memb? (remb (cons x1 '()))) #f))

(define (memb?/remb2 x1 x2)
  (equal? (memb?
           (remb
            (cons x2
                  (cons x1 '()))))
          #f))

(define (memb?/remb3 x1 x2 x3)
  (equal?
   (memb?
    (remb
     (cons x3
           (cons x2
                 (cons x1 '())))))
   #f))
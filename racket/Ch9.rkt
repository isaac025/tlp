#lang racket

(require "Ch1.rkt")
(require "Ch8.rkt")

(define (set?/atoms a)
  (equal? (set? (atoms a)) #t))

(define (set?/addAtoms a bs)
  (if (set? bs)
      (equal? (set? (add-atoms a bs)) #t)
      #t))

(define (list-induction x)
  (if (atom x)
      '()
      (cons (car x)
            (list-induction (cdr x)))))

(define (star-induction x)
  (if (atom x)
      x
      (cons (star-induction (car x))
            (star-induction (cdr x)))))

(define (set?/t xs)
  (if (set? xs)
      (equal? (set? xs) #t)
      #t))

(define (set?/f xs)
  (if (set? xs)
      #t
      (equal? (set? xs) #f)))

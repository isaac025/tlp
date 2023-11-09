#lang racket

(require "Ch5.rkt")

(define (memb?/remb xs)
  (equal? (memb? (remb xs)) #f))
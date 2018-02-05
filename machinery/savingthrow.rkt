#lang racket

(require "rng.rkt")

;; So, I never played rpg's as a kid, despite devouring the rulebooks and such.
; My original model of saving throws was wrong.
; I'm using Call of Cthulhu stats, too, so it was not even wrong.

;; Given an attribute or skill, roll a d100. If the result is lower, success.
;; But, I started off backwards and upside down. 

(provide savingthrow)

(define (savingthrow numbertobeat)
  (define result (rolld100))
  (< result numbertobeat))


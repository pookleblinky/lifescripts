#lang racket

(require "rng.rkt")

;; So, I never played rpg's as a kid, despite devouring the rulebooks and such.
; My original model of saving throws was wrong.
; I'm using Call of Cthulhu stats, too, so it was not even wrong.

(provide savingthrow)

(define (savingthrow numbertobeat)
  (define result (rolld20))
  (> result numbertobeat))

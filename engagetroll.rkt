#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "savingthrow.rkt")

(define fuckslevel 17)

(define (engage)
  (define result (savingthrow fuckslevel))
  (printf "You needed to roll a ~a to respond. You ~a!" fuckslevel result))


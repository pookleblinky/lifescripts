#lang racket

(require "../machinery/savingthrow.rkt"
         "../stats.rkt")

(provide drink?)

(define (drink?)
  (define result (savingthrow thirst))
  (if (not result)
    (printf "Guzzle a cupful.~n")
    (printf "You're good.~n")))

(drink?)


#lang racket

(require "../machinery/savingthrow.rkt")

(provide drink?)

;; Add this as a githook or something

(define thirst 10)

(define (drink?)
  (define result (savingthrow thirst))
  (if (equal? #f result)
    (printf "Guzzle a cupful.~n")
    (printf "You're good.~n")))


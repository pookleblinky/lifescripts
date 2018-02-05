#lang racket

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide drink?)

(define (drink?)
  (define result (skillcheck thirst))
  (if (equal? #t result)
    (printf "Guzzle a cupful.~n")
    (printf "You're good.~n")))

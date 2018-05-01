#lang racket

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide hydrate)

(define drink? (skillcheck laziness))

(define (hydrate)
  (if (equal? #t drink?)
    "Guzzle a cupful"
    "You're good"))

(hydrate)

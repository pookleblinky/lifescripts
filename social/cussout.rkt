#lang racket

(require "../machinery/savingthrow.rkt")

(provide cussout?)

(define profanity 12)

(define (cussout?)
  (define result (savingthrow profanity))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

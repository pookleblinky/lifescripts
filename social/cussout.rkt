#lang racket

(require "../machinery/savingthrow.rkt")

(provide cussout?)

(define cusses 12)

(define (cussout?)
  (define result (savingthrow cusses))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

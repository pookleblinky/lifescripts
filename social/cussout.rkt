#lang racket

(require "../machinery/savingthrow.rkt")

(provide cussout?)

(define cusslevel 12)

(define (cussout?)
  (define result (savingthrow cusslevel))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

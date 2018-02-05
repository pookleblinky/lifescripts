#lang racket

(require "../machinery/savingthrow.rkt"
         "../stats.rkt")

(provide cussout?)

(define (cussout?)
  (define result (savingthrow profanity))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

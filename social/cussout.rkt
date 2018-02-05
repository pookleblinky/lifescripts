#lang racket

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide cussout?)

(define (cussout?)
  (define result (skillcheck profanity))
  (define output (if (equal? #t result) "Cuss em out" "Be civil"))
  (printf "~a~n" output))

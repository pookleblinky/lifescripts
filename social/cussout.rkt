#lang racket

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide cussout?)

(define (cussout?)
  (define result (skillcheck profanity))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

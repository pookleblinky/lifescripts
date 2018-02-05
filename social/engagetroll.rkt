#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide engage?)

(define (engage?)
  (define result (skillcheck fucks))
  (define output (if (equal? #t result) "Engage" "Ignore"))
  (printf "~a~n" output))

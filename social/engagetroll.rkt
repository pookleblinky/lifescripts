#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "../machinery/savingthrow.rkt")

(provide engage?)

(define fucks 4)

(define (engage?)
  (define result (savingthrow fucks))
    (if (not result) "Engage" "Ignore"))

(printf "~a~n" (engage?))

#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "../machinery/savingthrow.rkt")

(provide engage?)

(define fuckslevel 4)

(define (engage?)
  (define result (savingthrow fuckslevel))
    (if (not result) "Engage" "Ignore"))

(printf "~a~n" (engage?))

#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "../machinery/savingthrow.rkt"
         "../stats.rkt")

(provide engage?)

(define (engage?)
  (define result (savingthrow fucks))
    (if (not result) "Engage" "Ignore"))

(printf "~a~n" (engage?))

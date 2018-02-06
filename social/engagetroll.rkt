#lang racket

;; Roll a saving throw to determine whether to respond to an argument.

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide engage?)

(define parry (skillcheck fucks))

(define (engage)
  (if (equal? #t parry) "Engage" "Ignore"))

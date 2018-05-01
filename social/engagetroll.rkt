#lang racket

;; Roll a saving throw to determine whether to respond to an argument, and how.

(require "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide engage cussout)

(define parry? (skillcheck hubris))

(define cuss? (skillcheck impatience))

(define (engage)
  (if (equal? #t parry?) "Engage" "Ignore"))

(define (cussout)
  (if (equal? #t (and parry? cuss?))
    "Cuss em out" "Ignore/mute"))

(cussout)

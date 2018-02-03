#lang racket

;; I have a problem when coding. I have a hard time deciding whether to do new
;stuff, or clean up and refactor what I've already done. Sometimes my
;productivity just crashes because I'm torn between trying to do both at once,
;and I end up getting absolutely nothing done.

(require "../machinery/rng.rkt" "../machinery/savingthrow.rkt")

(provide dotask)

(define neatness 7)

(define (refactor?)
  (define result (savingthrow neatness))
  (if (equal? #t result) #t #f))

(define (dotask)
  (if (equal? #t (refactor?))
    (printf "Clean up some code.~n")
    (printf "Write some new code.~n")))

(dotask)

#lang racket

(require "../machinery/rng.rkt" "../machinery/savingthrow.rkt")

;; Idea: Roll to see whether to do a set of grippers, and which one to do.

(define laziness 7)

(define (gripper?)
  (define result (savingthrow laziness))
  (if (equal? #t result) #t #f))

(define (reps)
  (roll2d6))

(define (resistance)
  (define result (roll2d6))
  (if (> result laziness) "low resistance" "high resistance"))

(define (crush)
  (if (equal? #t (gripper?)) 
  (printf "Do ~a reps at ~a~n" (reps) (resistance))
  (printf "Relax")))

(crush)

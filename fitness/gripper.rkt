#lang racket

(require "../machinery/rng.rkt"
         "../machinery/savingthrow.rkt"
         "../stats.rkt")

(provide crush)

;; Idea: Roll to see whether to do a set of grippers, and which one to do.
;; Actually, why not generalize this. A script to assign N reps in M activities:
;pullups, swings, gripper, band pull aparts, etc.

(define laziness 7)

(define (gripper?)
  (define result (savingthrow laziness))
  (if (equal? #t result) #t #f))

(define (reps)
  (roll2d6))

(define (crush)
  (if (equal? #t (gripper?)) 
  (printf "Do ~a reps~n" (reps))
  (printf "Relax~n")))

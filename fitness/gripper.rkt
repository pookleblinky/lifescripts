#lang racket

(require "../machinery/rng.rkt"
         "../machinery/skillcheck.rkt"
         "../stats.rkt")

(provide crush)

;; Idea: Roll to see whether to do a set of grippers, and which one to do.
;; Actually, why not generalize this. A script to assign N reps in M activities:
;pullups, swings, gripper, band pull aparts, etc.

(define (reps)
  (roll2d6))

(define (crush)
  (define (gripper?)
    (define result (skillcheck laziness))
    result)
  (if (equal? #t (gripper?)) 
  (printf "Do ~a reps~n" (reps))
  (printf "Relax~n")))

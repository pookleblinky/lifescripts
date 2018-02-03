#lang racket

(require "machinery/rng.rkt"
         "fitness/hydrate.rkt"
         "fitness/gripper.rkt")

;; Right now: sip some water or squeeze a gripper?

(define (bored)
  (define result (coinflip))
  (if (equal? result "HEADS")
    (drink?)
    (crush)))

(bored)
;; TODO: Make it easy to extend to such as a round of swings, pullups, etc

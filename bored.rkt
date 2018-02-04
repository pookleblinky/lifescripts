#lang racket

(require "machinery/rng.rkt"
         "fitness/hydrate.rkt"
         "fitness/gripper.rkt")

(provide bored)

;; TODO: Have hydrate/gripper/etc pipe into activities

(define activities
  (list
    "Do 20 kettlebell swings"
    "Do 10 pullups"
    "Do 20 band pull aparts"
    "Do 10 goblet squats"
    "Make a cup of coffee"
    "Clean something"
    "Take a nice hot shower"))

(define (bored)
  (define result (random (length activities)))
  ; Don't like this kludge
  (printf "~a~n" (list-ref activities result)))

(bored)
;; TODO: Make it easy to extend to such as a round of swings, pullups, etc

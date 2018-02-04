#lang racket

(require "machinery/rng.rkt")

(provide bored)

;; TODO: Have hydrate/gripper/etc pipe into activities

(define activities
  (list
    "Do 20 kettlebell swings"
    "Do 10 pullups"
    "Do 20 band pull aparts"
    "Do 10 goblet squats"
    "Hop on bike, ride 5km fast as possible"
    "Make a cup of coffee"
    "Make a cup of tea"
    "Look up a good recipe"
    "Put on some different music"
    "Read a book"
    "Log heart rate"
    "Play some guitar"
    "Play some bongo"
    "Pet a cat"
    "Take a selfie"
    "Do some gtypist exercises"
    "Study some code"
    "Go down a wikipedia rabbit hole"
    "Get trapped in TVTropes"
    "Clean something"
    "Summon an elder god"
    "Take a nice hot shower"))

(define (bored)
  (define activity (randomchoice activities))
  (printf "~a~n" activity))

(bored)
;; TODO: Make it easy to extend to such as a round of swings, pullups, etc

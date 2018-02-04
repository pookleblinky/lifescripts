#lang racket

(provide bored)

;; TODO: Have hydrate/gripper/etc pipe into activities

(define activities
  (list
    "Do 20 kettlebell swings"
    "Do 10 pullups"
    "Do 20 band pull aparts"
    "Do 10 goblet squats"
    "Make a cup of coffee"
    "Make a cup of tea"
    "Look up a good recipe"
    "Put on some different music"
    "Read a book"
    "Play some guitar"
    "Play some bongo"
    "Pet a cat"
    "Do some gtypist exercises"
    "Study some code"
    "Go down a wikipedia rabbit hole"
    "Get trapped in TVTropes"
    "Clean something"
    "Summon an elder god"
    "Take a nice hot shower"))

(define (bored)
  (define result (random (length activities)))
  ; Don't like this kludge
  (printf "~a~n" (list-ref activities result)))

(bored)
;; TODO: Make it easy to extend to such as a round of swings, pullups, etc

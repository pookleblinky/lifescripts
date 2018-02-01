#lang racket

;; Make a coin, make a bunch of d6. That's good enough for now.
(provide coinflip diceroll)

(define (coinflip)
  (if (zero? (random 2)) "HEADS" "TAILS"))

(define (diceroll)
  (random 1 6))

;; Nd6
;; TODO: generalize to d20 etc
(define (die n)
  (* n (diceroll)))

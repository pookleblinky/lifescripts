#lang racket

;; I've been doing a stochastic intermittent fast, based on coinflips.
;; Each morning, flip a coin. Heads, eat. Tails, fast.
;; The EV of heads over 7 days is 3.5, same as scheduled ADF.

(require "../machinery/rng.rkt")

(provide feast?)

;; I want to be able to easily change the meaning, so that say at maintenance
;heads becomes tdee+15%, etc.
(define rules "Heads feast, tails fast.")

(define (feast?)
    (printf "~a You got: ~a ~n" rules (coinflip)))

;; TODO: save to a ring buffer of last 7 days


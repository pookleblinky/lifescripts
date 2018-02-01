#lang racket

;; I've been determining kettlebell swings by rolling 2d6 and multiplying by 10.

(require "rng.rkt")

(provide doswings)

;; TODO: Make multipler toggle based on day's coinflip
(define multiplier 10)

(define swings (* multiplier (diceroll)))

(define (doswings)
    (printf "Do ~a swings today~n" swings))


;; TODO: Save to ring buffer of last 7 days. Decouple the dice roll.

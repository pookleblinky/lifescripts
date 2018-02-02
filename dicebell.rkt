#lang racket

;; I've been determining kettlebell swings by rolling 2d6 and multiplying by
;10. But, I may as well simplify a bit. Instead, n*d6. 40 gives a minimum of 40
;swings, an average of 140, and a max of 240. Go up to 50 and the max hits
;300.

(require "machinery/rng.rkt")

(provide doswings)

;; TODO: Make multipler toggle based on day's coinflip
(define multiplier 40)

(define swings (* multiplier (rolld6)))

(define (doswings)
    (printf "Do ~a swings today~n" swings))


(doswings)
;; TODO: Save to ring buffer of last 7 days. Decouple the dice roll.

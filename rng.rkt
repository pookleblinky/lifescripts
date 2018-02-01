#lang racket

(provide coinflip rolld6)

(define (coinflip)
  (if (zero? (random 2)) "HEADS" "TAILS"))

(define (rolld6)
  (random 1 7))

(define (roll2d6)
  (random 1 13))

(define (rolld20)
  (random 1 21))

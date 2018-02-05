#lang racket

(provide coinflip
         rolld6 
         roll2d6 
         rolld20 
         rolld100 
         randomchoice)

(define (coinflip)
  (if (zero? (random 2)) "HEADS" "TAILS"))

(define (rolld6)
  (random 1 7))

(define (roll2d6)
  (random 1 13))

(define (rolld20)
  (random 1 21))

(define (rolld100)
  (random 1 101))

(define (randomchoice lst)
  (define selection (random (length lst)))
  (list-ref lst selection))

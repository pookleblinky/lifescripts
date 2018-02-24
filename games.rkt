#lang racket

;; I hate games, and can usually only stand to play about 20 minutes total per
;year.

(require "machinery/rng.rkt")

(provide playthis)

(define games
  (list
    'cataclysm
    'dwarf-fortress)) 

(define (playthis)
  (define game (randomchoice games))
  (printf "Play ~a~n" game))

(playthis)

#lang racket

;; I hate games, and can usually only stand to play about 20 minutes total per
;year.

(require "machinery/rng.rkt")

(provide playthis)

(define games
  (list
    'DCSS
    'angband
    'brogue
    'dwarf-fortress
    'cataclysm
    'quake
    'amnesia
    'halflife2
    'l4d2
    'moria
    'nethack
    'ToME))

(define (playthis)
  (define game (randomchoice games))
  (printf "Play ~a~n" game))

(playthis)

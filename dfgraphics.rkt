#lang racket

; Randomly decide which graphics pack to use for Dwarf Fortress

(require "machinery/rng.rkt")

(provide choose-graphic)

(define graphics
  (list
    'ascii
    'bisasam_20x20_ascii
    'mayday
    'obsidian
    'spacefox
    'taffer
    'tergel
    'wanderlust))

(define (choose-graphic)
  (define graphic (randomchoice graphics))
  (printf "Use this Dwarf Fortress graphics pack: ~a~n" graphic))

; Semantic satiation for a 100, Alex.

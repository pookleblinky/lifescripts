#lang racket

;; I may as well go all in after making stats.
;; skill = x. Roll < x to succeed. Roll > x to increase
;; http://the-call-of-cthulhu.obsidianportal.com/wikis/occupation-and-skills

;; Pick 8 skills. Points = (* 20 education) to distribute

(require "stats.rkt")

(define points (* 20 education))

(define basechance 15) ; A decent base chance

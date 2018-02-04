#lang racket

;; The various scripts all end up invoked here.

(require "fitness/coinfast.rkt"
         "fitness/dicebell.rkt"
         "social/attention.rkt"
         "music.rkt")

(feast?)
(doswings)
(listen)
(boost-topic)

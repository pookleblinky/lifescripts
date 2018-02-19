#lang racket

;; The various scripts can all end up invoked here.

(require "dfgraphics.rkt" 
         "fitness/coinfast.rkt"
         "fitness/dicebell.rkt"
         "social/attention.rkt"
         "music.rkt"
         "tasks.rkt")

(feast?)
(doswings)
(listen)
(boost-topic)
(choose-graphic)
(dotask day-tasks)

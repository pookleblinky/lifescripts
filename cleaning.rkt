#lang racket

;; 1. Make a list of things to clean that takes a short amount of time.
;; 2. Randomly choose one to do at intervals. Every hour, every 3, once a day, 
;; etc.
;; 3. Once that list's crossed off, make another list of tasks that's a bit more
;; effortful. Rinse and repeat.
;; Spoon-conserving, flexible, outsources executive functioning.

(require "machinery/rng.rkt"
         "machinery/skillcheck.rkt"
         "stats.rkt")

(provide cleanthis)


#lang racket

;; 1. Make a list of things to clean that takes a short amount of time.
;; 2. Randomly choose one to do at intervals. Every hour, every 3, once a day, 
;; etc.
;; 3. Once that list's crossed off, make another list of tasks that's a bit more
;; effortful. Rinse and repeat.
;; Spoon-conserving, flexible, outsources executive functioning.

;; For now, just randomly spit out a task with no concern for tracking or
;; anything. Not even an argv or nice way to add tasks.

(require "machinery/rng.rkt"
         "machinery/skillcheck.rkt"
         "stats.rkt")

(provide cleanthis day-tasks)

(define (cleanthis tasks-list)
  (define task (randomchoice tasks-list))
  (printf "Unfuck this thing: ~a~n" task))

;; Tasks from "clean this cup" to "move that couch"
(define instant-tasks (list "Clean off coffee table" 
                            "Clean off desk"
                            "Fill water bottles"
                            "Put away rice jars"
                            "Plop dwarf therapist appimage in turtle tarballs"
                            "Rebuild vape coil"
                            "Sweep bedroom floor"
                            "Set terminator color profiles to be nicer w/ vim"))

;; This gets collated into todayscript
(define day-tasks (list 'stuff))

;; These can all wait
(define short-tasks (list 'foo 'bar 'baz))
(define medium-tasks (list 'quux 'gibble))
(define big-tasks (list 'ugh 'ew 'argh))


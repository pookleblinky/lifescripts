#lang racket

;; tasks.rkt

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

(provide dotask instant-tasks day-tasks)

(define (dotask tasks-list)
  (define task (randomchoice tasks-list))
  (printf "Unfuck this thing: ~a~n" task))

;; Quick tasks, <5 minutes or so.
(define instant-tasks (list "Clean off coffee table" 
                            "Clean off desk"
                            "Fill water bottles"
                            "Put away rice jars"
                            "Plop dwarf therapist appimage in turtle tarballs"
                            "Rebuild vape coil"
                            "Sweep bedroom floor"
                            "Set terminator color profiles to be nicer w/ vim"))

;; This gets collated into todayscript. Bigger tasks, that need to get done a
;; few times a week.
(define day-tasks (list "Laundry"
                        "Clean litter boxes"
                        "Sweep & mop kitchen"))



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

;; Reads task lists from instant-tasks and day-tasks files.

(require "machinery/rng.rkt"
         "machinery/skillcheck.rkt"
         "stats.rkt"
         "tasklists/day-tasks.rkt" 
         "tasklists/instant-tasks.rkt") 

(provide dotask instant-tasks day-tasks)

(define (dotask tasks-list)
  (define task (randomchoice tasks-list))
  (printf "Unfuck this thing: ~a~n" task))

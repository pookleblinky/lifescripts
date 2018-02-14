#lang racket

(provide day-tasks)

; Tasks.rkt uses this list to choose day tasks

;; These are tasks that take a bit longer than instant-tasks to do, ~15 minutes.

(define day-tasks (list
                    "laundry"
                    "clean litter boxes"
                    "sweep and mop kitchen"))

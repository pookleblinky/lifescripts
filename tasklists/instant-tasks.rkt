#lang racket

(provide instant-tasks)

;; tasks.rkt uses this list to choose small tasks

;; These are easy, small tasks, generally only taking a few minutes to do.

(define instant-tasks (list
                        "clean off coffee table"
                        "clean off desk"
                        "rebuild vape coil"
                        "organize underneath coffee table"
                        "pretty up terminator color profiles for vim"))

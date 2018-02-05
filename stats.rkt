#lang racket

;; Existing stats
(define fucks 4)
(define cusses 12)

;; Cardinal stats (CoC)

; Primary
(define strength 0)
(define constitution 0)
(define dexterity 0)
(define size 0)
(define intelligence 0)
(define power 0)
(define appearance 0)
(define education 0)

; Secondary
(define idea (* 5 intelligence))
(define knowledge (*5 education))
(define luck (* 5 power))
(define hitpoints (ceiling (/ (+ size constitution) 2)))
(define sanity (* 5 power))

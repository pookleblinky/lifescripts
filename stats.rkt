#lang racket

;; Existing stats
; fucks 4
; profanity 12

;; Cardinal stats (CoC)

; Primary
(define strength 13)
(define constitution 18)
(define dexterity 6)
(define size 12)
(define intelligence 8)
(define power 10)
(define appearance 10)
(define education 6)

; Secondary
(define idea (* 5 intelligence))
(define knowledge (* 5 education))
(define luck (* 5 power))
(define hitpoints (ceiling (/ (+ size constitution) 2)))
(define sanity (* 5 power))

;; Reverse engineering fucks and profanity as secondary attributes
;; It just has to sound somewhat plausible, and be close to current value

(define smarts (+ intelligence education))
(define fucks (ceiling (/ sanity smarts)))
(define profanity (* 2 education))

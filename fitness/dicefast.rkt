#lang racket

;; Going to switch from coin to 2d6. Rolling a 6- will happen ~41% of the time,
;; or about 3/7 days. A bit under the EV of a coin. 7-9 will happen about 42% of
;; the time. 10+ about 16.6% of the time.

;; This'd give more range of gradations, and room for using a stat to adjust the
;; frequency in a single spot (say, start with -1 and over time increase it to
;; +1). 

(require "../machinery/rng.rkt")

(provide fast?)

(define threshold 6)

(define (fast?)
  (if (<= (roll2d6) threshold)
    (printf "Fast") 
    (printf "Eat")))

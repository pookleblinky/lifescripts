#lang racket

;;; tiny proof of concept. What I want now is to simply choose, at random, one
;issue/news event to focus on at a time. 

(require "../machinery/rng.rkt")

(provide boost-topic)

(define topics
  (list
    'foo
    'bar
    'baz))

(define (boost-topic)
  (define topic (randomchoice topics))
  (printf "Today's topic to boost: ~a~n" topic))

(boost-topic)

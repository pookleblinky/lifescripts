#lang racket

(require "rng.rkt")

(provide savingthrow)

(define (savingthrow numbertobeat)
  (define result (rolld20))
  (> result numbertobeat))
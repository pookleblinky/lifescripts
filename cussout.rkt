#lang racket

(require "rng.rkt")

;; If engagetroll throw won, determine whether to cuss em out.

(define cusslevel 12)

(define (cussout)
  (define result (rolld20))
  (if (> result cusslevel) "Cuss em out" "Be civil"))

(cussout)

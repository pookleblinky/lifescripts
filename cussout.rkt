#lang racket

(require "savingthrow.rkt")

;; If engagetroll throw won, determine whether to cuss em out.

(define cusslevel 12)

(define (cussout)
  (define result (rolld20))
  (if (> result cusslevel) "Cuss em out" "Be civil"))

(define (cussout1)
  (define result (savingthrow cusslevel))
  (if (false? result) "Be civil" "Cuss em out"))

(cussout)

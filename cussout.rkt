#lang racket

(require "savingthrow.rkt")

;; If engagetroll throw won, determine whether to cuss em out.

(define cusslevel 12)

(define (cussout)
  (if (string=? "WIN" (savingthrow cusslevel)) "Cuss em" "Be civil"))

(cussout)

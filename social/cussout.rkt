#lang racket

(require "../machinery/savingthrow.rkt")

(provide cussout?)

;; If engagetroll throw won, determine whether to cuss em out.

(define cusslevel 12)

(define (cussout?)
  (define result (savingthrow cusslevel))
  (if (not result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout?))

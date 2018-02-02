#lang racket

(require "../machinery/savingthrow.rkt")

;; If engagetroll throw won, determine whether to cuss em out.

(define cusslevel 12)

(define (cussout)
  (define result (savingthrow cusslevel))
  (if (equal? #f result) "Cuss em out" "Be civil"))

(printf "~a~n" (cussout))

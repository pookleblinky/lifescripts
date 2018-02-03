#lang racket

(require "../machinery/savingthrow.rkt")

(provide drink?)

;; Add this as a githook or something

(define thirst 10)

(define (drink?)
  (define result (savingthrow thirst))
  (if (equal? #f result) "Guzzle a cupful" "You're good"))

(printf "~a~n" (drink?))

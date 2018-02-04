#lang racket

;; Idea: randomly determine the music of the day

(provide listen)

(define genres
  (list
    'bebop
    'bluegrass
    'chicagoblues
    'classical
    'deltablues
    'dubstep
    'griot
    'hendrix
    'indian
    'jazz
    'klezmer
    'metal
    'nightvale
    'paganini
    'poetry
    'sufi
    'tomwaits
    'vocals))

(define (listen)
  (define genre (random (length genres)))
  (printf "Today's genre: ~a~n" (list-ref genres genre)))

(listen)

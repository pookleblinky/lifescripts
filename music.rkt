#lang racket

;; Idea: randomly determine the music of the day

(require "machinery/rng.rkt")

(provide listen)

;; These are all valid genres.
(define genres
  (list
    'MFDOOM
    'OST
    'bebop
    'biggie
    'bluegrass
    'boardsofcanada
    'cake
    'chaos
    'chicagoblues
    'classical
    'deltablues
    'dubstep
    'femalejazzvocals
    'glitchcore
    'gorillaz
    'griot
    'hendrix
    'hiphop
    'indian
    'jazz
    'klezmer
    'metal
    'nightcore
    'nightvale
    'numetal
    'paganini
    'poetry
    'sufi
    'surf
    'theloniousmonk
    'tomwaits
    'vocals
    'witchhouse
    'wutang))

(define (listen)
  (define genre (randomchoice genres))
  (printf "Today's genre: ~a~n" genre))

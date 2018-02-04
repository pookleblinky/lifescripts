#lang racket

;; Idea: randomly determine the music of the day

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
    'theloniousmonk
    'tomwaits
    'vocals
    'witchhouse
    'wutang))

(define (listen)
  (define genre (random (length genres)))
  (printf "Today's genre: ~a~n" (list-ref genres genre)))

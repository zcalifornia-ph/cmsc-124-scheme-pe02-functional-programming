#lang racket

; California_Adeva_PE02.rkt
; CMSC 124 Programming Exercise 02
; Current implemented scope: Unit U1 / Bolt U1-B1 (`T-Ice`)

; T-Ice
; Displays values from 1 to n, replacing values divisible by:
; - 2 with T
; - 3 with ICE
; - both 2 and 3 with T-ICE
; Example:
;   (T-Ice 8) ; displays: 1 T ICE T 5 T-ICE 7 T
(define (T-Ice n)
  (define (token-for value)
    (cond
      [(zero? (remainder value 6)) "T-ICE"]
      [(zero? (remainder value 2)) "T"]
      [(zero? (remainder value 3)) "ICE"]
      [else (number->string value)]))
  (define (emit current first-token?)
    (cond
      [(> current n) (void)]
      [else
       (unless first-token? (display " "))
       (display (token-for current))
       (emit (add1 current) #f)]))
  (when (>= n 1)
    (emit 1 #t))
  (newline))

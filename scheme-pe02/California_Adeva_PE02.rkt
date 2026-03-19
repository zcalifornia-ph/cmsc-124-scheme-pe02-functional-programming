#lang racket

; California_Adeva_PE02.rkt
; CMSC 124 Programming Exercise 02
; Current implemented scope: Unit U1 / Bolts U1-B1 (`T-Ice`), U1-B2 (`Sumprimes`), and U1-B3 (`count-factors`)

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

; Sumprimes
; Displays the sum of all prime numbers from 1 to n.
; The visible output is the contract being validated for this bolt.
; Examples:
;   (Sumprimes 1)  ; displays: 0
;   (Sumprimes 10) ; displays: 17
(define (Sumprimes n)
  (define (prime? candidate)
    (cond
      [(<= candidate 1) #f]
      [else
       (define (has-divisor? divisor)
         (cond
           [(> (* divisor divisor) candidate) #f]
           [(zero? (remainder candidate divisor)) #t]
           [else (has-divisor? (add1 divisor))]))
       (not (has-divisor? 2))]))
  (define (sum-primes current total)
    (cond
      [(> current n) total]
      [(prime? current) (sum-primes (add1 current) (+ total current))]
      [else (sum-primes (add1 current) total)]))
  (display (sum-primes 1 0))
  (newline))

; count-factors
; Returns how many times m divides n while the quotient stays an integer.
; If m is not a factor of n, the procedure displays "None" and returns 0.
; Examples:
;   (count-factors 4 48) ; returns: 2
;   (count-factors 5 48) ; displays: None, returns: 0
(define (count-factors m n)
  (define (count-divisions current count)
    (cond
      [(zero? (remainder current m))
       (count-divisions (quotient current m) (add1 count))]
      [else count]))
  (cond
    [(zero? (remainder n m))
     (count-divisions n 0)]
    [else
     (display "None")
     (newline)
     0]))

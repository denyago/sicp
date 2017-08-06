#lang sicp

#|Exercise 1.12. The following pattern of numbers is called Pascal's triangle.

             0 col
             ↓
   1       | 1 0 0 0 ← 0 row
  1 1      | 1 1 0 0
 1 2 1     | 1 2 1 0
1 3 3 1    | 1 3 3 1

The numbers at the edge of the triangle are all 1,
and each number inside the triangle is the sum of the two numbers above it.

Write a procedure that computes elements of Pascal's triangle
by means of a recursive process. If a number lies outside of the triangle,
return 0 (this makes sense if we view pascal as the combination function).
Start counting rows and columns from 0.

|#

(define (pascal row col)
  (cond ((< col 0) 0)
        ((= col 0) 1)
        ((< row 1) 0)
        (else
         (+ (pascal (- row 1) (- col 1) ) (pascal (- row 1) col)))
    )
)

#| Some schugar to have nice printing. Lame ;) |#

(define (s row col)
  (string-append
   (number->string
    (pascal row col))
   " "))

(string-append (s 0 0) (s 0 1) (s 0 2) (s 0 3) (s 0 4))
(string-append (s 1 0) (s 1 1) (s 1 2) (s 1 3) (s 1 4))
(string-append (s 2 0) (s 2 1) (s 2 2) (s 2 3) (s 2 4))
(string-append (s 3 0) (s 3 1) (s 3 2) (s 3 3) (s 3 4))
(string-append (s 4 0) (s 4 1) (s 4 2) (s 4 3) (s 4 4))

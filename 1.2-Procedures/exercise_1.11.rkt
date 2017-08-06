#lang sicp

#| Exercise 1.11.

A function f is defined by the rule
that f(n)=n if n<3
and  f(n)=f(n-1)+2f(n-2)+3f(n-3) if n>3.

Write a procedure that computes f by means of a recursive process.|#

(define (f-recursive n)
  (if (< n 3)
      n
      (+
       (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))
      )
  )

(define (f-iterative n)
  (define (Iter n1 n2 n3 count)
      (if (= count 0)
          n1
          (Iter n2
                n3
                (+ n3
                   (* 2 n2)
                   (* 3 n1)
                 )
                (dec count)
           )
        )
    )
  (Iter 0 1 2 n)
)

;(f-recursive 5 )
(f-iterative 5 )

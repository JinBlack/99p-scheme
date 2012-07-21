#lang scheme
(define (element-at l n)
  (if 
   (= 1 n)
   (car l)
   (element-at (cdr l) (- n 1))
  )
  )

;test
(display (element-at '(a b c d e) 3))
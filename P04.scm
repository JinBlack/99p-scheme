#lang scheme
(define (count l)
  (if
   (null? l)
   0
   (+ 1 (count (cdr l)))
   )
  )

;test
(display (count '(a b c d e)))
(newline)
(display (count '(a)))
(newline)
(display (count '()))
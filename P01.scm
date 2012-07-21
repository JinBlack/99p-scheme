#lang scheme
(define (my-last l)
  (if 
   (null? (cdr l))
   (car l)
   (my-last (cdr l))
   )
  )

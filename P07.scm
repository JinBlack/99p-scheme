#lang scheme
(define (append l a)
  (if
   (null? l)
   a
   (cons (car l) (append (cdr l) a))
  )
  )

(define (my-flatten l)
  (if 
   (pair? l)
   (let
       (
        (x (car l))
        (y (cdr l))
        )
     (if
      (pair? x)
      (append (my-flatten x) (my-flatten y))
      (cons x (my-flatten y))
      )
     )
   l
   )
  )
  
;test
(display (my-flatten  '((c d) e)))
(display (my-flatten  '(a (b (c d) e))))
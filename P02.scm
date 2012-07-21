#lang scheme
(define (my-but-last l)
  (if
   (null? (cdr l))
   l
   (if 
    (null? (cdr (cdr l)))
    l
    (my-but-last (cdr l))
    )
   )
  )

;test
(display (my-but-last '(1 2 3 a fd  fd)))
(newline)
(display (my-but-last '(1)))
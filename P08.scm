#lang scheme
(define (compress-aux l a)
  (if
   (pair? l)
   (if
    (equal? a (car l))
    (compress-aux (cdr l) a)
    (cons a (compress-aux (cdr l) (car l)))
    )
   l
   )
  )
(define (compress l)
   (compress-aux (cdr l) (car l))
  )
  
;test
 (compress '(d a a a a b c c a a d e e e e))
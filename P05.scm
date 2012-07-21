#lang scheme
(define (append l a)
  (if
   (null? l)
   (cons a '())
   (cons (car l) (append (cdr l) a))
  )
  )
  
(define (revese l)
  (if
   (null? (cdr l))
   (car l)
   (append (reverse (cdr l)) (car l)) 
  )
)
;test
(display (append '(a b c d e) 'f))
(newline)
(display (reverse '(a b c d e)))

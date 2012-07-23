#lang scheme
(define (decode l)
  (if (null? l)
      l
   (append 
      (if
       (pair? (car l))
       (block-decode (car l)) 
       (cons (car l) '())
       )
       (decode (cdr l)))
  )
  )
(define (block-decode l)
  (let (
        (n (car l))
        )
    (if 
     (> n 0)
     (cons (car (cdr l)) (block-decode (cons (- n 1) (cdr l))))
     null
     )
    )
  )

  
;;test
(display (block-decode '(4 a)))
(newline)
(display (decode '((4 a) b (3 c) d e)))
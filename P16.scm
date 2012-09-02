#lang scheme
(define (drop l n)
  (drop-aux l n n))
(define (drop-aux l n q)
  (if (equal? n 1)
      (drop-aux (cdr l) q q)
      (if (pair? l)
          (cons (car l) (drop-aux (cdr l) (- n 1) q))
          '()
      ))
  )
      
;;test
(drop '(1 2 3 4 5 6 7 8 9 0) 3)
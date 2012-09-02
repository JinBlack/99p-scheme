#lang scheme
(define (split l n)
  (if (equal? n 1)
      n
      (cons (cons (car l) (car (split (cdr l) (- n1)))) (cdr (split (cdr l) (- n1))))
      )
;;test

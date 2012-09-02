#lang scheme
(define (split l n)
  (if (equal? n 0)
      (cons '() (cons l '()))
      (cons (cons (car l) 
                  (car (split (cdr l) (- n 1)))) (cdr (split (cdr l) (- n 1))))
      )
  )

;;test
(split '(a b c d e f g h i) 3)
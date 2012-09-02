#lang scheme
(define (dupli l)
  (if (pair? l)
      (cons (car l) (cons (car l) (dupli (cdr l))))
     '()))

;;test
(dupli '(a b c d d e))
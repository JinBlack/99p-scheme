#lang scheme
(define (encode l)
  (if (null? l)
      l
      (cons (pacco l) (encode (resto l)))
      )
  )
(define (pacco l)
  (cons (pacco-count l) (cons (car l) '()))
  )
(define (pacco-count l)
  (if (pair? (cdr l))
      (if (equal? (car l) (car (cdr l)))
          (+ 1 (pacco-count (cdr l)))
          1
          )
       1
    )
  )
(define (resto l)
    (if (and (pair? l) (pair? (cdr l)))
        
        (if (equal? (car l) (car (cdr l)))
            (resto (cdr l))
            (cdr l)
            )
        '()
    )
  )

;;test
(display (pacco '(a)))
(newline)
(display (resto '(r)))
(newline)
(display (pacco '(a a a a b b b)))
(newline)
(display (resto '(a a a a b b b c d e)))
(newline)
(display (encode '(a a a b b b c c d e r r r)))
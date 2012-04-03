#lang plai

(define-type Binding
  [binding (name symbol?) (named-expr WAE?)])

(define-type WAE
  [num (n number?)]
  [add (lhs WAE?) (rhs WAE?)]
  [sub (lhs WAE?) (rhs WAE?)]
  [with (lob (listof Binding?)) (body WAE?)]
  [id (name symbol?)])

;; parse : s-exp -> WAE
(define (parse sexp)
  (num 0))

;; unparse: WAE -> s-exp
(define (unparse a-wae)
  '0)

;; random-wae : number -> WAE
(define (random-wae depth)
  (num 0))

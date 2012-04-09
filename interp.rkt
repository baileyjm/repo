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
  (num 3))

;; unparse: WAE -> s-exp
(define (unparse sexp)
  (num 0))

;; random-wae : number -> WAE
;; Jeff is working on this
(define (random-wae depth)
  (num 0))

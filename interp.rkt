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
(define (unparse an-wae)
  (type-case WAE an-wae
    [num (n) n]
    [id (n) n]
    [with (n e b)
          (list 'with
                (list n (unparse e))
                (unparse b))]
    [add (l r)
         (list '+ (unparse l) (unparse r))]
    [sub (l r)
         (list '- (unparse l) (unparse r))]))  
(test (unparse (num 3)) '3)
(test (unparse (add (num 3) (num 7)))
      (list '+ 3 7))
(test (unparse (with 'x (num 1) (add (id 'x) (num 7))))
      (list 'with (list 'x 1) (list '+ 'x 7)))
(test (unpar

;; random-wae : number -> WAE
(define (random-wae depth)
  (num 0))

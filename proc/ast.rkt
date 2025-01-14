#lang racket

(provide (prefix-out ast: (all-defined-out)))

#| The AST of PROC language

Exp ::= INT | VAR
     |  ZERO? Exp | DIF Exp Exp
     |  IF Exp Exp Exp | LET VAR Exp Exp
     | PROC VAR Expr | CALL Expr Expr

or, in a list notation

Exp ::= INT | VAR
     |  (ZERO? Exp) | (DIF Exp Exp)
     |  (IF Exp Exp Exp) | (LET VAR Exp Exp)
     |  (PROC VAR Exp)   | (CALL Exp Exp)

|#

;;  leaves

; INT
(struct int (value) #:transparent)

; BOOL, althought we don't have the concrete syntax for boolean literals
(struct bool (value) #:transparent)

; VAR
(struct var (name) #:transparent)

;; internal nodes

; ZERO? Exp
(struct zero? (exp) #:transparent)

; DIF Exp Exp
(struct dif (lexp rexp) #:transparent)

; ADD Exp Exp
(struct add (lexp rexp) #:transparent)
  
; IF Exp Exp Exp
(struct if (guard-exp then-exp else-exp) #:transparent)

; LET VAR Exp Exp
(struct let (var iexp vexp) #:transparent)

; PROC VAR Exp
(struct proc (var body) #:transparent)

; CALL Exp Exp
(struct call (lexp rexp) #:transparent)
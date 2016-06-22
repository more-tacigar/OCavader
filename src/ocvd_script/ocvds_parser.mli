
(* The type of tokens. *)

type token = 
  | TRUE
  | THEN
  | STRING_LITERAL of (string)
  | SEMISEMI
  | SEMI
  | RPAREN
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NUMERIC_LITERAL of (float)
  | NIL
  | NE
  | MULT
  | MINUS
  | LT
  | LPAREN
  | LET
  | LE
  | LBRACKET
  | LBRACE
  | IN
  | IF
  | IDENTIFIER of (string)
  | GT
  | GE
  | FUN
  | FALSE
  | EQ
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ocvds_syntax.program)

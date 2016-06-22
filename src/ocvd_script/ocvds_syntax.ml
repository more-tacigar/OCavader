(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

type identifier = string

type binary_operation =
  | Plus | Mult | Minus | Div | Lt
  | Le | Gt | Ge | Ne | Eq | And | Or

type expression =
  | Nil
  | Variable           of identifier
  | Number             of float
  | String             of string
  | Boolean            of bool
  | If_else_expression of expression * expression list * expression list
  | Let_expression     of identifier * expression * expression list
  | Fun_expression     of identifier list * expression list
  | Apply_expression   of identifier * expression list
  | List_constructor   of expression list 
  | Binary_operation   of binary_operation * expression * expression
  | Assign_expression  of identifier * expression
                                              
type toplevel =
  | Expression of expression
  | Let_declaration of identifier * expression

type program =
  Program of toplevel list

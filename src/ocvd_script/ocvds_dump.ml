(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvds_syntax 

let print_depth depth message =
  let empty_string = String.make (depth * 2) ' ' in
  print_endline (empty_string ^ message)
                
let rec dump_toplevel depth = function
  | Expression (expr) ->
     print_depth depth "expression";
     dump_expression (depth + 1) expr
  | Let_declaration (id, expr) ->
     print_depth depth "let declaration";
     print_depth (depth + 1) ("variable : " ^ id);
     print_depth (depth + 1) "expression";
     dump_expression (depth + 2) expr
                
and dump_toplevel_list depth = function
  | [] -> ()
  | hd :: tl ->
     dump_toplevel depth hd;
     dump_toplevel_list depth tl
                
and dump_program depth = function
  | Program (lst) ->
     print_depth depth "program";
     dump_toplevel_list (depth + 1) lst

and dump_parameter_list depth = function
  | [] -> ()
  | hd :: tl ->
     print_depth depth ("variable : " ^ hd);
     dump_parameter_list depth tl
                        
and dump_expression_list depth = function
  | [] -> ()
  | hd :: tl ->
     dump_expression depth hd;
     dump_expression_list depth tl
                        
and dump_expression depth = function
  | Nil ->
     print_depth depth "nil"
  | Variable (id) ->
     print_depth depth ("variable : " ^ id);
  | Number (n) ->
     print_depth depth ("number : " ^ (string_of_float n))
  | String (s) ->
     print_depth depth ("string : " ^ s)
  | Boolean (b) ->
     print_depth depth ("boolean : " ^ (string_of_bool b))
  | If_else_expression (cond, tblock, fblock) ->
     print_depth depth "if else expression";
     print_depth (depth + 1) "condition";
     dump_expression (depth + 2) cond;
     print_depth (depth + 1) "true block";
     dump_expression_list (depth + 2) tblock;
     print_depth (depth + 1) "false block";
     dump_expression_list (depth + 2) fblock
  | Let_expression (id, expr, block) -> 
     print_depth depth "let expression";
     print_depth (depth + 1) ("variable : " ^ id);
     print_depth (depth + 1) "expression";
     dump_expression (depth + 2) expr;
     print_depth (depth + 1) "block";
     dump_expression_list (depth + 2) block
  | Fun_expression (id_list, block) ->
     print_depth depth "fun expression";
     print_depth (depth + 1) "parameter list";
     dump_parameter_list (depth + 2) id_list;
     print_depth (depth + 1) "function body";
     dump_expression_list (depth + 2) block
  | Apply_expression (id, args) ->
     print_depth depth "apply";
     print_depth (depth + 1) ("function name : " ^ id);
     print_depth (depth + 1) "arguments";
     dump_expression_list (depth + 2) args
  | List_constructor (explist) ->
     print_depth depth "list constructor";
     dump_expression_list (depth + 1) explist
  | Binary_operation (op, lhs, rhs) -> () (* mendoi *)
  | Assign_expression (id, exp) ->
     print_depth depth "assign expression";
     print_depth (depth + 1) ("variable : " ^ id);
     print_depth (depth + 1) "expression";
     dump_expression (depth + 2) exp


(* dump AST *)
       
let dump_ast tree = dump_program 0 tree


(* dump environment *)

let rec dump_environment env =
  let open Ocvds in
  match env with
  | [] -> ()
  | (id, value) :: tl ->
     Printf.printf "(%s : " id;
     begin
       match !value with
       | Ocvds_nil -> Printf.printf "nil"
       | Ocvds_number (n) -> Printf.printf "%f" n
       | Ocvds_string (s) -> Printf.printf "%s" s
       | Ocvds_bool (b) -> Printf.printf "%B" b
       | Ocvds_list (lst) -> Printf.printf "list"
       | Ocvds_closure (cl) -> Printf.printf "closure"
     end;
     Printf.printf ")\n";
     dump_environment tl
          
          

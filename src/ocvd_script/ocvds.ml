(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

(* Ocvds's object definitions *)

type ocvds_object =
  | Ocvds_nil
  | Ocvds_number   of float
  | Ocvds_string   of string
  | Ocvds_bool     of bool
  | Ocvds_list     of ocvds_object list
  | Ocvds_closure  of ocvds_closure

and ocvds_closure =
  | Ocvds_function of string list * Ocvds_syntax.expression list * ocvds_environment
  | OCaml_function of (ocvds_state -> unit)

and ocvds_environment =
  (Ocvds_syntax.identifier * (ocvds_object ref)) list

and ocvds_state = ocvds_environment

(* Parameter stack *)
                    
let parameter_stack = Stack.create ()

let push_parameter_stack value = Stack.push value parameter_stack
                                   
let rec push_parameter_stack_by_list value_list =
  match value_list with
  | [] -> ()
  | hd :: tl ->
     Stack.push hd parameter_stack;
     push_parameter_stack_by_list tl

let pop_parameter_stack () = Stack.pop parameter_stack

let clear_parameter_stack () = Stack.clear parameter_stack

(* Interpreter *)

let extend_environment id value env = (id, value) :: env
                                      
let lookup id env = List.assoc id env

let rec eval_block explist env =
  match explist with
  | hd :: [] -> eval_expression hd env
  | hd :: tl ->
     ignore(eval_expression hd env);
     eval_block tl env
  | _ -> failwith "block error"

and apply_binary_operation op lhs rhs =
  let open Ocvds_syntax in
  match op, lhs, rhs with
  | Plus,  Ocvds_number n1, Ocvds_number n2 -> Ocvds_number (n1 +. n2)
  | Minus, Ocvds_number n1, Ocvds_number n2 -> Ocvds_number (n1 -. n2)
  | Mult,  Ocvds_number n1, Ocvds_number n2 -> Ocvds_number (n1 *. n2)
  | Div,   Ocvds_number n1, Ocvds_number n2 -> Ocvds_number (n1 /. n2)
  | Lt,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 <  n2)
  | Le,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 <= n2)
  | Gt,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 >  n2)
  | Ge,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 >= n2)
  | Eq,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 =  n2)
  | Ne,    Ocvds_number n1, Ocvds_number n2 -> Ocvds_bool   (n1 != n2)
  | And,   Ocvds_bool   b1, Ocvds_bool   b2 -> Ocvds_bool   (b1 && b2)
  | Or,    Ocvds_bool   b1, Ocvds_bool   b2 -> Ocvds_bool   (b1 || b2)
  | _, _, _ -> failwith "binary operation error"
                  
and eval_expression exp env =
  let open Ocvds_syntax in
  match exp with
  | Nil -> Ocvds_nil
  | Variable (id) -> let value = lookup id env in !value
  | Number(n) -> Ocvds_number (n)
  | String(s) -> Ocvds_string (s)
  | Boolean(b) -> Ocvds_bool (b)
  | If_else_expression(cond, tblock, fblock) ->
     let test = eval_expression cond env in
     begin
       match test with
       | Ocvds_bool (true) -> eval_block tblock env
       | Ocvds_bool (false) -> eval_block fblock env
       | _ -> failwith "cond must be boolean"
     end
  | Let_expression(id, exp, block) ->
     let value = eval_expression exp env in
     eval_block block (extend_environment id (ref value) env)
  | Fun_expression(idlist, block) ->
     Ocvds_closure (Ocvds_function (idlist, block, env))
  | Apply_expression (id, explist) ->
     let func = lookup id env in
     begin
       match !func with
       | Ocvds_closure (Ocvds_function (idlist, block, env')) ->
          let new_env = extend_environment_by_list idlist explist env' in
          eval_block block new_env
       | Ocvds_closure (OCaml_function (func)) ->
          let value_list = eval_expression_list explist env in
          push_parameter_stack_by_list value_list;
          func (env);
          let value = pop_parameter_stack () in
          clear_parameter_stack ();
          value
       | _ -> failwith "function must be function"
     end
  | List_constructor (explist) ->
     Ocvds_list (eval_expression_list explist env)
  | Binary_operation (op, lhs, rhs) ->
     let lvalue = eval_expression lhs env in
     let rvalue = eval_expression rhs env in
     apply_binary_operation op lvalue rvalue
  | Assign_expression (id, exp) ->
     let value = lookup id env in
     value := eval_expression exp env;
     !value

and extend_environment_by_list idlist explist env =
  let newenv = ref env in
  List.iter2
    (fun id exp ->
      let value = eval_expression exp !newenv in
      newenv := (id, (ref value)) :: !newenv)
    idlist explist;
  !newenv

and eval_expression_list explist env =
  match explist with
  | [] -> []
  | hd :: tl ->
     (eval_expression hd env) :: (eval_expression_list tl env)

let rec eval_toplevel toplevel env =
  let open Ocvds_syntax in
  match toplevel with
  | Expression (exp) ->
     ignore(eval_expression exp env);
     env
  | Let_declaration (id, exp) ->
     let value = eval_expression exp env in
     extend_environment id (ref value) env

and eval_toplevel_list lst env =
  match lst with
  | [] -> env
  | hd :: tl ->
     let newenv = eval_toplevel hd env in
     eval_toplevel_list tl newenv
                                              
let eval_program program env =
  let open Ocvds_syntax in
  match program with
  | Program (lst) ->
     eval_toplevel_list lst env
     
let create_new_state () = ([] : ocvds_state)

let load_file filename env =
  let lexbuf = Lexing.from_channel (open_in filename) in
  let result = Ocvds_parser.program Ocvds_lexer.main lexbuf in
  let newenv = eval_program result env in
  newenv

let add_global name value env =
  extend_environment name (ref value) env

let get_global name env =
  let value = lookup name env in
  !value

let number_of_object value =
  match value with
  | Ocvds_number (n) -> n
  | _ -> failwith "this is not number"

let list_of_object value =
  match value with
  | Ocvds_list (lst) -> lst
  | _ -> failwith "this is not list"
                  
let create_ocaml_function func = Ocvds_closure (OCaml_function (func))

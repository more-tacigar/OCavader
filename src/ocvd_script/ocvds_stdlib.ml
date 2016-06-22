(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

let sin env =
  let value = Ocvds.pop_parameter_stack () in
  let number = Ocvds.number_of_object value in
  let result = sin number in
  Ocvds.push_parameter_stack (Ocvds.Ocvds_number (result))

let cos env =
  let value = Ocvds.pop_parameter_stack () in
  let number= Ocvds.number_of_object value in
  let result = cos number in
  Ocvds.push_parameter_stack (Ocvds.Ocvds_number (result))

let car env =
  let value = Ocvds.pop_parameter_stack () in
  let lst = Ocvds.list_of_object value in
  let result = List.hd lst in
  Ocvds.push_parameter_stack result

let cdr env =
  let value = Ocvds.pop_parameter_stack () in
  let lst = Ocvds.list_of_object value in
  let result = List.tl lst in
  Ocvds.push_parameter_stack (Ocvds.Ocvds_list (result))
                             
let load_stdlib env =
  let newenv = ref env in
  newenv := Ocvds.add_global "sin" (Ocvds.create_ocaml_function sin) !newenv;
  newenv := Ocvds.add_global "cos" (Ocvds.create_ocaml_function cos) !newenv;
  newenv := Ocvds.add_global "car" (Ocvds.create_ocaml_function car) !newenv;
  newenv := Ocvds.add_global "cdr" (Ocvds.create_ocaml_function cdr) !newenv;
  !newenv

   
  
  

(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

let register_missile state =
  let value = Ocvds.pop_parameter_stack () in
  let value_list = Ocvds.list_of_value in
  let name = Ocvds.string_of_value (List.nth value_list 0) in
  let update = Ocvds.function_of_value (List.nth value_list 1) in
  Ocvd_missile_manager.add_missile name update

let initialize () =
  
  
  

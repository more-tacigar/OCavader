(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

type enemy_definition =
  {
    size         : Ocvd_size.t         ;
    velocity     : Ocvd_vector.t       ;
    acceleration : Ocvd_vector.t       ;
    img_name     : string              ;
    update       : Ocvds.ocvds_closure ;
  }


let enemy_table = Hashtbl.create 10

let enemies = ref []
                                 

let register_enemy value_list =
  let name    = Ocvds.string_of_object   (List.nth value_list 0) in
  let sizew   = Ocvds.number_of_object   (List.nth value_list 1) in
  let sizeh   = Ocvds.number_of_object   (List.nth value_list 2) in
  let velx    = Ocvds.number_of_object   (List.nth value_list 3) in
  let vely    = Ocvds.number_of_object   (List.nth value_list 4) in
  let accx    = Ocvds.number_of_object   (List.nth value_list 5) in
  let accy    = Ocvds.number_of_object   (List.nth value_list 6) in
  let img     = Ocvds.string_of_object   (List.nth value_list 7) in
  let update  = Ocvds.function_of_object (List.nth value_list 8) in
  let new_enemy =
    {
      size          = Ocvd_size.create sizew sizeh ;
      velocity      = Ocvd_vector.create velx vely ;
      acceleration  = Ocvd_vector.create accx accy ;
      img_name      = img                          ;
      update        = update                       ;
    }
  in
  Hashtbl.add enemy_table name new_enemy;
  enemies := name :: !enemies


let get_definition name =
  try
    Hashtbl.find enemy_table name
  with
    _ -> failwith "Not found enemy"


                  
let get_enemies () =
  !enemies
                  

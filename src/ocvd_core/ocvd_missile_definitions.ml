(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

type missile_definition =
  {
    size     : Ocvd_size.t         ;
    velocity : Ocvd_vector.t       ;
    img_name : string              ;
    update   : Ocvds.ocvds_closure ;
  }

    
let missile_table = Hashtbl.create 10

                                   
let register_missile value_list =
  let name   = Ocvds.string_of_object   (List.nth value_list 0) in
  let size_w = Ocvds.number_of_object   (List.nth value_list 1) in
  let size_h = Ocvds.number_of_object   (List.nth value_list 2) in
  let vel_x  = Ocvds.number_of_object   (List.nth value_list 3) in
  let vel_y  = Ocvds.number_of_object   (List.nth value_list 4) in
  let img    = Ocvds.string_of_object   (List.nth value_list 5) in
  let update = Ocvds.function_of_object (List.nth value_list 6) in
  let new_missile =
    {
      size     = Ocvd_size.create size_w size_h ;
      velocity = Ocvd_vector.create vel_x vel_y ;
      img_name = img                            ; 
      update   = update                         ;
    }
  in  
  Hashtbl.add missile_table name new_missile
  

let get_definition name =
  try
    Hashtbl.find missile_table name
  with
    _ -> failwith "Not found missile"

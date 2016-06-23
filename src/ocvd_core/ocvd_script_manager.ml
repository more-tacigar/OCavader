(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

(* -------------------------------------------------- 
 * This module manage the OCVD scripts 
 * Provide OCavader API to OCVDS engine. 
 * -------------------------------------------------- *)

let register_missile state =
  let value = Ocvds.pop_parameter_stack () in
  let value_list = Ocvds.list_of_object value in
  Ocvd_missile_definitions.register_missile value_list


let register_enemy state =
  let value = Ocvds.pop_parameter_stack () in
  let value_list = Ocvds.list_of_object value in
  Ocvd_enemy_definitions.register_enemy value_list
                                            
                                        
let env = ref (Ocvds.create_new_state ())

(* All object must call set_current_object,     *)
(* when call their associated closure of OCVDS. *)
(* This is for identifying current object in    *)
(* get_current_* functions.                     *)
let current_object = (ref None : Ocvd_object.ocvd_object option ref)

                       
let set_current_object (new_object : Ocvd_object.ocvd_object) =
  current_object := Some new_object

(* get position of current object *)
let get_current_position_x state =
  match !current_object with
  | None -> ()
  | Some obj ->
     let posx = obj#get_position_x in
     Ocvds.push_parameter_stack (Ocvds.object_of_number posx)

let get_current_position_y state =
  match !current_object with
  | None -> ()
  | Some obj ->
     let posy = obj#get_position_y in
     Ocvds.push_parameter_stack (Ocvds.object_of_number posy)

(* set position of current object *)
let set_current_position_x state =
  match !current_object with
  | None -> ()
  | Some obj ->
     let value = Ocvds.pop_parameter_stack () in
     obj#set_position_x (Ocvds.number_of_object value) 

let set_current_position_y state = 
  match !current_object with
  | None -> ()
  | Some obj ->
     let value = Ocvds.pop_parameter_stack () in
     obj#set_position_y (Ocvds.number_of_object value) 

(* get velocity of current object *)
let get_current_velocity_x state = 
  match !current_object with
  | None -> ()
  | Some obj ->
     let velx = obj#get_velocity_x in
     Ocvds.push_parameter_stack (Ocvds.object_of_number velx)
                                     
let get_current_velocity_y state =
  match !current_object with
  | None -> ()
  | Some obj ->
     let vely = obj#get_velocity_y in
     Ocvds.push_parameter_stack (Ocvds.object_of_number vely)


                                
let call_ocvds_function f value_list =
  Ocvds.call_ocvd_function f value_list
                                
                                
let initialize () =
  env := Ocvds_stdlib.load_stdlib !env;
  
  (* register functions *)
  env := Ocvds.add_global "@registerMissile"
                          (Ocvds.create_ocaml_function register_missile)
                          !env;
  env := Ocvds.add_global "@registerEnemy"
                          (Ocvds.create_ocaml_function register_enemy)
                          !env;
  env := Ocvds.add_global "@getCurrentPositionX"
                          (Ocvds.create_ocaml_function get_current_position_x)
                          !env;
  env := Ocvds.add_global "@getCurrentPositionY"
                          (Ocvds.create_ocaml_function get_current_position_y)
                          !env;
  env := Ocvds.add_global "@getCurrentVelocityX"
                          (Ocvds.create_ocaml_function get_current_velocity_x)
                          !env;
  env := Ocvds.add_global "@getCurrentVelocityY"
                          (Ocvds.create_ocaml_function get_current_velocity_y)
                          !env;
  env := Ocvds.add_global "@setCurrentPositionX"
                          (Ocvds.create_ocaml_function set_current_position_x)
                          !env;
  env := Ocvds.add_global "@setCurrentPositionY"
                          (Ocvds.create_ocaml_function set_current_position_y)
                          !env;

  
  (* load all files in resource directory *)
  env := Ocvds.load_file "../scripts/missile01.ocvd" !env;
  env := Ocvds.load_file "../scripts/enemy01.ocvd" !env;
  
  

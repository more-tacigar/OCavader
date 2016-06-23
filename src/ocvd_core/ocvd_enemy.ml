(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvd_object

class ocvd_enemy (init_position   : Ocvd_vector.t)
                 (init_enemy_name : string       ) =
  let enemy_def'        = Ocvd_enemy_definitions.get_definition init_enemy_name in
  let init_velocity     = Ocvd_enemy_definitions.(enemy_def'.velocity) in
  let init_acceleration = Ocvd_enemy_definitions.(enemy_def'.acceleration) in
  let init_size         = Ocvd_enemy_definitions.(enemy_def'.size) in
  let init_img_surface  = Ocvd_image_manager.get_image
                            Ocvd_enemy_definitions.(enemy_def'.img_name) in
object (self)
  inherit ocvd_object init_position init_size init_img_surface as super

  val enemy_name = init_enemy_name
  val enemy_def = enemy_def'

  method update dtime =
    let update_cl = Ocvd_enemy_definitions.(enemy_def.update) in
    Ocvd_script_manager.set_current_object (self :> Ocvd_object.ocvd_object);
    ignore (Ocvd_script_manager.call_ocvds_function
              update_cl [Ocvds.object_of_number dtime])
           
  initializer
    super#set_velocity init_velocity;
    super#set_acceleration init_acceleration
                      
end

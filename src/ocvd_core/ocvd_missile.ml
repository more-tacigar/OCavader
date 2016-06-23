(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvd_object

class ocvd_missile (init_position     : Ocvd_vector.t )
                   (init_missile_name : string        ) =
  let missile_def'     = Ocvd_missile_definitions.get_definition init_missile_name in
  let init_velocity    = Ocvd_missile_definitions.(missile_def'.velocity) in
  let init_size        = Ocvd_missile_definitions.(missile_def'.size) in
  let init_img_surface = Ocvd_image_manager.get_image
                           Ocvd_missile_definitions.(missile_def'.img_name) in
  
object (self)
  inherit ocvd_object init_position init_size init_img_surface as super

  val missile_name = init_missile_name
  val missile_def = Ocvd_missile_definitions.get_definition init_missile_name
                                                                    
  method update dtime =
    let update_cl = Ocvd_missile_definitions.(missile_def.update) in
    Ocvd_script_manager.set_current_object (self :> Ocvd_object.ocvd_object);
    ignore (Ocvd_script_manager.call_ocvds_function
              update_cl [Ocvds.object_of_number dtime])

  initializer
    super#set_velocity init_velocity
end

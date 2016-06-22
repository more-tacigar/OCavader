(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvd_object

class ocvd_player (init_position : Ocvd_vector.t)
                  (init_size : Ocvd_size.t)
                  (init_img_surface : Sdlvideo.surface) =
  let move_distance = 2 in
  
object (self)
  inherit ocvd_object init_position init_size init_img_surface as super

  val mutable missile_name = "missile_01"
                                                                    
  method move_up =
    super#move (Ocvd_vector.create 0 (-move_distance))
  method move_down =
    super#move (Ocvd_vector.create 0 move_distance)
  method move_right =
    super#move (Ocvd_vector.create move_distance 0)
  method move_left =
    super#move (Ocvd_vector.create (-move_distance) 0)
end


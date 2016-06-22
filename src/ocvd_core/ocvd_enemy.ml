(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvd_object

class ocvd_enemy (init_position : Ocvd_vector.t)
                  (init_size : Ocvd_size.t)
                  (init_img_surface : Sdlvideo.surface) =
object (self)
  inherit ocvd_object init_position init_size init_img_surface as super
end

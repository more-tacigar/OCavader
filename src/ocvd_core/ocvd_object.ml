(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

class ocvd_object (init_position : Ocvd_vector.t)
                  (init_size : Ocvd_size.t)
                  (init_img_surface : Sdlvideo.surface) =
object (self)
  val mutable position = init_position
  val mutable size = init_size
  val img_surface =
    Ocvd_image_manager.resize_image
      init_img_surface Ocvd_size.(init_size.w) Ocvd_size.(init_size.h)
                       
  method set_position new_position =
    position <- new_position
  method set_size new_size =
    size <- new_size
              
  method get_position = position
  method get_size = size
              
  method move diff_vector =
    position <- Ocvd_vector.add position diff_vector

  method draw =
    let open Ocvd_vector in
    let open Ocvd_size in
    let screen = Sdlvideo.get_video_surface () in
    let img_pos = Sdlvideo.rect position.x position.y size.w size.h in
    Sdlvideo.blit_surface ~dst_rect:img_pos ~src:img_surface ~dst:screen ()
end
                          

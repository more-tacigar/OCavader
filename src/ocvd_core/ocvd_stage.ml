(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

class ocvd_stage (init_size : Ocvd_size.t)
                 (init_img_surface : Sdlvideo.surface) =
object (self)
  val size = init_size
  val img_surface =
    Ocvd_image_manager.resize_image
      init_img_surface Ocvd_size.(init_size.w) Ocvd_size.(init_size.h)

  method get_size = size
      
  method draw =
    let screen = Sdlvideo.get_video_surface () in
    let img_pos = Sdlvideo.rect 0 0 0 0 in
    Sdlvideo.blit_surface ~dst_rect:img_pos ~src:img_surface ~dst:screen ()
end

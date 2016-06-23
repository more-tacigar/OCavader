(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)


(* --------------------------------------------------
 * Base game object class.
 * This class is inherited by player enemy, and missile class.
 * -------------------------------------------------- *)
class virtual ocvd_object
                (init_position    : Ocvd_vector.t    )
                (init_size        : Ocvd_size.t      )
                (init_img_surface : Sdlvideo.surface ) =
object (self)
  val mutable position = init_position
  val mutable size = init_size
  val mutable velocity = Ocvd_vector.create 0. 0.
  val mutable acceleration = Ocvd_vector.create 0. 0.

  val img_surface =
    Ocvd_image_manager.resize_image
      init_img_surface
      (int_of_float Ocvd_size.(init_size.w))
      (int_of_float Ocvd_size.(init_size.h))

  (* getter setter methods *)
  method set_position new_position =
    position <- new_position
                  
  method set_position_x posx =
    let posy = Ocvd_vector.(position.y) in
    position <- Ocvd_vector.create posx posy

  method set_position_y posy =
    let posx = Ocvd_vector.(position.x) in
    position <- Ocvd_vector.create posx posy

  method set_velocity new_velocity =
    velocity <- new_velocity

  method set_velocity_x velx =
    let vely = Ocvd_vector.(velocity.y) in
    velocity <- Ocvd_vector.create velx vely

  method set_velocity_y vely =
    let velx = Ocvd_vector.(velocity.x) in
    velocity <- Ocvd_vector.create velx vely

  method set_acceleration new_acceleration =
    acceleration <- new_acceleration
                  
  method set_size new_size =
    size <- new_size

              
  method get_position = position
                          
  method get_position_x = Ocvd_vector.(position.x)
                            
  method get_position_y = Ocvd_vector.(position.y)
                            
  method get_velocity = velocity
                          
  method get_velocity_x = Ocvd_vector.(velocity.x)
                            
  method get_velocity_y = Ocvd_vector.(velocity.y)

  method get_acceleration = acceleration
                                     
  method get_size = size


  method move diff_vector =
    position <- Ocvd_vector.add position diff_vector

  method draw =
    let open Ocvd_vector in
    let open Ocvd_size in
    let screen = Sdlvideo.get_video_surface () in
    let img_pos =
      Sdlvideo.rect
        (int_of_float position.x)
        (int_of_float position.y)
        (int_of_float size.w)
        (int_of_float size.h) in
    Sdlvideo.blit_surface ~dst_rect:img_pos ~src:img_surface ~dst:screen ()
                          
                          
  (* Subclass must override 'update *)
  method virtual update : float -> unit
end
                          

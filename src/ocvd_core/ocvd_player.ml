(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

open Ocvd_object

class ocvd_player (init_position    : Ocvd_vector.t    )
                  (init_size        : Ocvd_size.t      )
                  (init_img_surface : Sdlvideo.surface ) =
  (* move distance when keyboard pressed 1 time *)
  let move_distance = 2. in
  
object (self)
  inherit ocvd_object init_position init_size init_img_surface as super

  val mutable missile_name = "missile01"
                                                                    
  method move_up =
    super#move (Ocvd_vector.create 0. (-.move_distance))
  method move_down =
    super#move (Ocvd_vector.create 0. move_distance)
  method move_right =
    super#move (Ocvd_vector.create move_distance 0.)
  method move_left =
    super#move (Ocvd_vector.create (-.move_distance) 0.)

  method launch_missile =
    let pos = super#get_position in
    let size = super#get_size in
    let mpos = Ocvd_vector.create
                 (Ocvd_vector.(pos.x) +. Ocvd_size.(size.w) /. 2.)
                 (Ocvd_vector.(pos.y) +. Ocvd_size.(size.h) /. 2.) in
    new Ocvd_missile.ocvd_missile mpos missile_name

  method change_missile new_missile_name =
    missile_name <- new_missile_name
        
  (* player object do nothing when update is called *)
  method update dtime = ()
end


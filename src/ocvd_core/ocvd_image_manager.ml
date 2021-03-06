(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

let image_table = Hashtbl.create 10

let initialize () =
  let resource_dir = "../resources/" in
  let background_img = resource_dir ^ "background.png" in
  let player_img = resource_dir ^ "player.png" in
  let missile_img = resource_dir ^ "missile01.png" in
  let pre_missile_imgs =
    [ "missile01" ] in
  let pre_enemy_imgs =
    [ "enemy01" ; "enemy02" ] in
  let register_img_list name_list =
    ignore(List.map
             (fun pre_name ->
               let image_name = resource_dir ^ pre_name ^ ".png" in
               Hashtbl.add image_table pre_name (Sdlloader.load_image image_name))
             name_list);
  in
  Hashtbl.add image_table "background" (Sdlloader.load_image background_img);
  Hashtbl.add image_table "player" (Sdlloader.load_image player_img);
  register_img_list pre_missile_imgs;
  register_img_list pre_enemy_imgs

                    
let resize_image img_surface width height =
  let img_rect = Sdlvideo.get_clip_rect img_surface in
  let img_width = (float width) /. (float Sdlvideo.(img_rect.r_w)) in
  let img_height = (float height) /. (float Sdlvideo.(img_rect.r_h)) in
  Sdlgfx.zoomSurface img_surface img_width img_height false

                     
let get_image key_str =
  try
    Hashtbl.find image_table key_str
  with
    _ -> failwith ("Not found image : " ^ key_str)
              
      
                                   

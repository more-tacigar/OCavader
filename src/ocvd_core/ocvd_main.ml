(* ==================================================
 * Copyright (c) 2016 tacigar
 * https://github.com/tacigar/OCavader
 * ================================================== *)

let game_title           = "OCavader Project"
let window_width         = 600
let window_height        = 800
let wait_ticks_interval  = 16
let delay_time           = wait_ticks_interval / 2
let key_delay_time       = delay_time
let generate_enemy_time  = 1000

                             
type game_state =
  {
    mutable stage           : Ocvd_stage.ocvd_stage          ;
    mutable player          : Ocvd_player.ocvd_player        ;
    mutable player_missiles : Ocvd_missile.ocvd_missile list ;
    mutable enemies         : Ocvd_enemy.ocvd_enemy list     ;
  }
    
                       
let update game dtime =
  List.iter (fun player_missile -> player_missile#update dtime)
            game.player_missiles;
  List.iter (fun enemy -> enemy#update dtime)
            game.enemies


let generate_random_enemy () =
  let enemies = Ocvd_enemy_definitions.get_enemies () in
  let length  = List.length enemies in
  let index   = Random.int length in
  let posx    = Random.int window_width in
  new Ocvd_enemy.ocvd_enemy
      (Ocvd_vector.create (float posx) 0.)
      (List.nth enemies index)

      
let draw_scene game =
  game.stage#draw;
  game.player#draw;
  List.iter (fun player_missile -> player_missile#draw)
            game.player_missiles;
  List.iter (fun enemy -> enemy#draw)
            game.enemies;
  let screen = Sdlvideo.get_video_surface () in
  Sdlvideo.flip screen

                
let finalize_game () =
  Sdl.quit ();
  exit 1

       
let add_player_missile game new_missile =
  game.player_missiles <- new_missile :: game.player_missiles

                                           
let execute_keydown_event game event =
  match Sdlevent.(event.keysym) with
  | Sdlkey.KEY_w -> game.player#move_up
  | Sdlkey.KEY_s -> game.player#move_down
  | Sdlkey.KEY_a -> game.player#move_left
  | Sdlkey.KEY_d -> game.player#move_right
  | Sdlkey.KEY_i ->
     let new_missile = game.player#launch_missile in
     game.player_missiles <- new_missile :: game.player_missiles
  | Sdlkey.KEY_ESCAPE -> finalize_game ()
  | _ -> ()

           
let execute_keyup_event game event =
  ()

    
let rec execute_events game =
  match Sdlevent.poll () with
  | None -> () (* All events were polled *)
  | Some event -> 
     (match event with
      | Sdlevent.KEYDOWN key_event -> execute_keydown_event game key_event 
      | Sdlevent.KEYUP key_event -> execute_keyup_event game key_event
      | _ -> () (* Else do nothing *));
     execute_events game

                    
let execute game =
  let pre_time = ref (Sdltimer.get_ticks ()) in
  let next_frame = ref (Sdltimer.get_ticks ()) in
  let next_frame_gen_enemy = ref (Sdltimer.get_ticks ()) in
  let rec mainloop () =
    execute_events game;
    let current_time = Sdltimer.get_ticks () in
    if current_time >= !next_frame then
      begin
        update game (float (current_time - !pre_time));
        let current_time = Sdltimer.get_ticks () in
        if current_time < !next_frame + wait_ticks_interval then
          draw_scene game;
        next_frame := !next_frame + wait_ticks_interval;
        Sdltimer.delay 0
      end;

    if current_time >= !next_frame_gen_enemy then
      begin
        let new_enemy = generate_random_enemy () in
        game.enemies <- new_enemy :: game.enemies;
        next_frame_gen_enemy := !next_frame_gen_enemy + generate_enemy_time
      end;
    
    Sdltimer.delay delay_time;
    pre_time := current_time;
    mainloop ()
  in
  mainloop ()

           
let initialize_game () =
  Random.init 134132947;
  Sdl.init [`VIDEO; `AUDIO; `TIMER];
  Sdlwm.set_caption ~title:game_title ~icon:game_title;
  ignore(Sdlvideo.set_video_mode ~w:window_width ~h:window_height [`DOUBLEBUF]);
  Sdlkey.enable_key_repeat ~delay:key_delay_time ~interval:key_delay_time ();
  Ocvd_image_manager.initialize ();
  Ocvd_script_manager.initialize ()

                                 
let create_game () =
  {
    stage = new Ocvd_stage.ocvd_stage
                (Ocvd_size.create 600. 800.)
                (Ocvd_image_manager.get_image "background") ;
    player = new Ocvd_player.ocvd_player
                 (Ocvd_vector.create 250. 650.)
                 (Ocvd_size.create 50. 50.)
                 (Ocvd_image_manager.get_image "player") ;
    player_missiles = [];
    enemies         = [];
  }

    
let main () =
  initialize_game ();
  let game = create_game () in
  execute game

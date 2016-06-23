OCAMLYACC = menhir --infer
RESULT    = ocavader.native
SOURCES   = ocvd_script/ocvds_syntax.mll \
            ocvd_script/ocvds_parser.mly \
            ocvd_script/ocvds_parser.mli \
            ocvd_script/ocvds_lexer.mll \
            ocvd_script/ocvds.ml \
            ocvd_script/ocvds_dump.ml \
            ocvd_script/ocvds_stdlib.ml \
            ocvd_util/ocvd_vector.ml \
            ocvd_util/ocvd_size.ml \
            ocvd_core/ocvd_image_manager.ml \
            ocvd_core/ocvd_object.ml \
            ocvd_core/ocvd_missile_definitions.ml \
            ocvd_core/ocvd_enemy_definitions.ml \
            ocvd_core/ocvd_script_manager.ml \
            ocvd_core/ocvd_missile.ml \
            ocvd_core/ocvd_enemy.ml \
            ocvd_core/ocvd_player.ml \
            ocvd_core/ocvd_stage.ml \
            ocvd_core/ocvd_main.ml \
            ocavader.ml
LIBS      = bigarray sdl sdlloader sdlgfx
INCDIRS   = +sdl

include OCamlMakefile

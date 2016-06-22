open Ocvds;;

let sin env =
  let value = Ocvds.pop_parameter_stack () in
  let n = Ocvds.get_number value in
  let res = sin n in
  Ocvds.push_parameter_stack (Ocvds.Ocvds_number (res))

let () =
  let env = ref (Ocvds.create_new_state ()) in
  env := Ocvds.add_global
           "sin"
           (Ocvds.Ocvds_closure (Ocvds.OCaml_function (sin)))
           !env;
  env := Ocvds.load_file "test.ocvd" !env;
  Ocvds_dump.dump_environment !env

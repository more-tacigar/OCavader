let () =
  let env = ref (Ocvds.create_new_state ()) in
  env := Ocvds_stdlib.load_stdlib !env;
  env := Ocvds.load_file "test.ocvd" !env;
  Ocvds_dump.dump_environment !env

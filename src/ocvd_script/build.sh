ocamlc -c       ocvds_syntax.ml
ocamllex        ocvds_lexer.mll
menhir --infer  ocvds_parser.mly
ocamlc -c       ocvds_parser.mli
ocamlc -c       ocvds_lexer.ml
ocamlc -c       ocvds_parser.ml
ocamlc -c       ocvds.ml
ocamlc -c       ocvds_stdlib.ml
ocamlc -c       ocvds_dump.ml
ocamlc -c       test.ml
ocamlc \
  ocvds_syntax.cmo \
  ocvds_lexer.cmo \
  ocvds_parser.cmo \
  ocvds.cmo \
  ocvds_stdlib.cmo \
  ocvds_dump.cmo \
  test.cmo

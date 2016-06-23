
exception Error

let _eRR =
  Error

type token = 
  | TRUE
  | THEN
  | STRING_LITERAL of (
# 15 "ocvd_script/ocvds_parser.mly"
       (string)
# 14 "ocvd_script/ocvds_parser.ml"
)
  | SEMISEMI
  | SEMI
  | RPAREN
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NUMERIC_LITERAL of (
# 14 "ocvd_script/ocvds_parser.mly"
       (float)
# 26 "ocvd_script/ocvds_parser.ml"
)
  | NIL
  | NE
  | MULT
  | MINUS
  | LT
  | LPAREN
  | LET
  | LE
  | LBRACKET
  | LBRACE
  | IN
  | IF
  | IDENTIFIER of (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 43 "ocvd_script/ocvds_parser.ml"
)
  | GT
  | GE
  | FUN
  | FALSE
  | EQ
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | ASSIGN
  | AND

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState91
  | MenhirState88
  | MenhirState82
  | MenhirState79
  | MenhirState72
  | MenhirState70
  | MenhirState67
  | MenhirState64
  | MenhirState56
  | MenhirState54
  | MenhirState52
  | MenhirState50
  | MenhirState48
  | MenhirState46
  | MenhirState44
  | MenhirState42
  | MenhirState40
  | MenhirState38
  | MenhirState36
  | MenhirState34
  | MenhirState30
  | MenhirState21
  | MenhirState20
  | MenhirState16
  | MenhirState14
  | MenhirState12
  | MenhirState10
  | MenhirState9
  | MenhirState8
  | MenhirState5
  | MenhirState0

let rec _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENTIFIER_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv393 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 106 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv391 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 114 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_ = 
# 218 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 123 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv395) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENTIFIER__ = 
# 131 "/usr/share/menhir/standard.mly"
    ( x )
# 138 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)) : 'freshtv398)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_toplevel -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv389 * _menhir_state * 'tv_toplevel) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LET ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState91 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState91
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState91) : 'freshtv390)

and _menhir_run82 : _menhir_env -> ((('ttv_tail * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 189 "ocvd_script/ocvds_parser.ml"
))) * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState82
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState82

and _menhir_goto_separated_nonempty_list_COLON_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COLON_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COLON_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : 'tv_separated_nonempty_list_COLON_expression_) = _v in
        ((let _v : 'tv_list_elements = 
# 139 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 217 "ocvd_script/ocvds_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv379) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_elements) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_elements) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_list_elements) = _v in
        ((let _v : 'tv_option_list_elements_ = 
# 103 "/usr/share/menhir/standard.mly"
    ( Some x )
# 234 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_option_list_elements_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)) : 'freshtv380)) : 'freshtv382)) : 'freshtv384)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COLON_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv385 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COLON_expression_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COLON_expression_ = 
# 218 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 251 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COLON_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
    | _ ->
        _menhir_fail ()

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let _v : 'tv_argument_list = 
# 144 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 305 "ocvd_script/ocvds_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_argument_list) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (x : 'tv_argument_list) = _v in
        ((let _v : 'tv_option_argument_list_ = 
# 103 "/usr/share/menhir/standard.mly"
    ( Some x )
# 322 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_option_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv362)) : 'freshtv364)) : 'freshtv366)) : 'freshtv368)) : 'freshtv370)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv373 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let (xs : 'tv_separated_nonempty_list_COMMA_expression_) = _v in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 218 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 339 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)) : 'freshtv374)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMI_expression_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv355 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv351 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv349 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_block = 
# 44 "ocvd_script/ocvds_parser.mly"
   ( _2 )
# 367 "ocvd_script/ocvds_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv347) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_block) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState20 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv319 * _menhir_state)) * _menhir_state * 'tv_parameter_list)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv317 * _menhir_state)) * _menhir_state * 'tv_parameter_list)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, _3), _, _5) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_fun_expression = 
# 111 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Fun_expression (_3, _5) )
# 387 "ocvd_script/ocvds_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv315) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_fun_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_fun_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv311) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_1 : 'tv_fun_expression) = _v in
                ((let _v : 'tv_expression = 
# 52 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 404 "ocvd_script/ocvds_parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv312)) : 'freshtv314)) : 'freshtv316)) : 'freshtv318)) : 'freshtv320)
            | MenhirState70 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv325 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ELSE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv321 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | LBRACE ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState72
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72) : 'freshtv322)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv323 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
            | MenhirState72 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv335 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv333 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_if_else_expression = 
# 101 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.If_else_expression (_2, _4, _6) )
# 444 "ocvd_script/ocvds_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv331) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_if_else_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_if_else_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv327) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_1 : 'tv_if_else_expression) = _v in
                ((let _v : 'tv_expression = 
# 48 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 461 "ocvd_script/ocvds_parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)) : 'freshtv330)) : 'freshtv332)) : 'freshtv334)) : 'freshtv336)
            | MenhirState82 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv345 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 469 "ocvd_script/ocvds_parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv343 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 475 "ocvd_script/ocvds_parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block) = Obj.magic _menhir_stack in
                ((let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_let_expression = 
# 106 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Let_expression (_2, _4, _6) )
# 484 "ocvd_script/ocvds_parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv341) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_let_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_let_expression) = _v in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv337) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_1 : 'tv_let_expression) = _v in
                ((let _v : 'tv_expression = 
# 50 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 501 "ocvd_script/ocvds_parser.ml"
                 in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)) : 'freshtv342)) : 'freshtv344)) : 'freshtv346)
            | _ ->
                _menhir_fail ()) : 'freshtv348)) : 'freshtv350)) : 'freshtv352)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv353 * _menhir_state) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv359 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv357 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_separated_nonempty_list_SEMI_expression_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMI_expression_ = 
# 218 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 523 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMI_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv358)) : 'freshtv360)
    | _ ->
        _menhir_fail ()

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState34
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState40 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState40
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState40

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState42
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState36
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState44
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState46
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState48 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState48
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState48

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState50
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState52
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState54 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState54
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState54

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState38 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState38
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState38

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState56 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState56
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState56

and _menhir_goto_list_toplevel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_toplevel_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv295 * _menhir_state * 'tv_toplevel) * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv293 * _menhir_state * 'tv_toplevel) * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : 'tv_list_toplevel_ = 
# 188 "/usr/share/menhir/standard.mly"
    ( x :: xs )
# 926 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv309 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv305 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv303 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 26 "ocvd_script/ocvds_parser.mly"
      (Ocvds_syntax.program)
# 945 "ocvd_script/ocvds_parser.ml"
            ) = 
# 32 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Program (_1) )
# 949 "ocvd_script/ocvds_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv301) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "ocvd_script/ocvds_parser.mly"
      (Ocvds_syntax.program)
# 957 "ocvd_script/ocvds_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv299) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 26 "ocvd_script/ocvds_parser.mly"
      (Ocvds_syntax.program)
# 965 "ocvd_script/ocvds_parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv297) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 26 "ocvd_script/ocvds_parser.mly"
      (Ocvds_syntax.program)
# 973 "ocvd_script/ocvds_parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv298)) : 'freshtv300)) : 'freshtv302)) : 'freshtv304)) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv307 * _menhir_state * 'tv_list_toplevel_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv308)) : 'freshtv310)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_list_elements_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_list_elements_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv291 * _menhir_state) * _menhir_state * 'tv_option_list_elements_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv287 * _menhir_state) * _menhir_state * 'tv_option_list_elements_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv285 * _menhir_state) * _menhir_state * 'tv_option_list_elements_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_list_constructor = 
# 130 "ocvd_script/ocvds_parser.mly"
   (
	    match _2 with
	    | None   -> Ocvds_syntax.List_constructor ([])
	    | Some x -> Ocvds_syntax.List_constructor (x)
	  )
# 1010 "ocvd_script/ocvds_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_constructor) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_list_constructor) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : 'tv_list_constructor) = _v in
        ((let _v : 'tv_expression = 
# 60 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 1027 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)) : 'freshtv282)) : 'freshtv284)) : 'freshtv286)) : 'freshtv288)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv289 * _menhir_state) * _menhir_state * 'tv_option_list_elements_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv290)) : 'freshtv292)

and _menhir_goto_option_argument_list_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_option_argument_list_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv277 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1045 "ocvd_script/ocvds_parser.ml"
    ))) * _menhir_state * 'tv_option_argument_list_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv273 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1055 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_option_argument_list_) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv271 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1062 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_option_argument_list_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_apply_expression = 
# 116 "ocvd_script/ocvds_parser.mly"
   (
	    match _3 with
	    | None -> Ocvds_syntax.Apply_expression (_1, [])
	    | Some x -> Ocvds_syntax.Apply_expression (_1, x)
	  )
# 1074 "ocvd_script/ocvds_parser.ml"
         in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269) = _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_apply_expression) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_apply_expression) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_1 : 'tv_apply_expression) = _v in
        ((let _v : 'tv_expression = 
# 54 "ocvd_script/ocvds_parser.mly"
   ( _1 )
# 1091 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)) : 'freshtv270)) : 'freshtv272)) : 'freshtv274)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv275 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1101 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_option_argument_list_) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1118 "ocvd_script/ocvds_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv257 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1129 "ocvd_script/ocvds_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState8
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv258)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv259 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1167 "ocvd_script/ocvds_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv260)) : 'freshtv262)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENTIFIER__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv255) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_IDENTIFIER__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv253) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (xs0 : 'tv_loption_separated_nonempty_list_COMMA_IDENTIFIER__) = _v in
    ((let _v : 'tv_parameter_list = let lst =
      let xs = xs0 in
      
# 207 "/usr/share/menhir/standard.mly"
    ( xs )
# 1194 "ocvd_script/ocvds_parser.ml"
      
    in
    
# 125 "ocvd_script/ocvds_parser.mly"
   ( lst )
# 1200 "ocvd_script/ocvds_parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv251) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_parameter_list) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv249 * _menhir_state)) * _menhir_state * 'tv_parameter_list) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv245 * _menhir_state)) * _menhir_state * 'tv_parameter_list) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LBRACE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20) : 'freshtv246)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state)) * _menhir_state * 'tv_parameter_list) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv248)) : 'freshtv250)) : 'freshtv252)) : 'freshtv254)) : 'freshtv256)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1235 "ocvd_script/ocvds_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1247 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENTIFIER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv240)
    | RPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1263 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENTIFIER_ = 
# 216 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1269 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1279 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv107 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv101 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30) : 'freshtv102)
        | RBRACE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv103 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMI_expression_ = 
# 216 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1357 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMI_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv104)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv105 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv113 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv109 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 62 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Plus, _1, _3) )
# 1385 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv110)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)) : 'freshtv114)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv117 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expression = 
# 66 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Mult, _1, _3) )
# 1405 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv116)) : 'freshtv118)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv121 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv119 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_expression = 
# 68 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Div, _1, _3) )
# 1418 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv120)) : 'freshtv122)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | IN | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv123 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 84 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Or, _1, _3) )
# 1457 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv124)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv125 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)) : 'freshtv128)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv133 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv129 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 80 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Ne, _1, _3) )
# 1489 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv130)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv131 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)) : 'freshtv134)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv139 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv135 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 64 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Minus, _1, _3) )
# 1517 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv136)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)) : 'freshtv140)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 72 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Lt, _1, _3) )
# 1549 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv143 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv147 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 70 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Le, _1, _3) )
# 1581 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv149 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)) : 'freshtv152)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv153 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 76 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Gt, _1, _3) )
# 1613 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv155 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)) : 'freshtv158)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv163 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv159 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 74 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Ge, _1, _3) )
# 1645 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv161 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)) : 'freshtv164)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv165 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 78 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Eq, _1, _3) )
# 1677 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv167 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)) : 'freshtv170)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | IN | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_expression = 
# 82 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Binary_operation (Ocvds_syntax.And, _1, _3) )
# 1721 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv172)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)) : 'freshtv176)
    | MenhirState64 | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv183 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState64 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState64
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv178)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expression_ = 
# 216 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 1800 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)) : 'freshtv184)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv195 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1815 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | COLON | COMMA | IN | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1849 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_assign_expression = 
# 149 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Assign_expression (_1, _3) )
# 1856 "ocvd_script/ocvds_parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assign_expression) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_assign_expression) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv185) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : 'tv_assign_expression) = _v in
            ((let _v : 'tv_expression = 
# 58 "ocvd_script/ocvds_parser.mly"
          ( _1 )
# 1873 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv186)) : 'freshtv188)) : 'freshtv190)) : 'freshtv192)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv193 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 1883 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)) : 'freshtv196)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv201 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | THEN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv197 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState70
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv198)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv199 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)) : 'freshtv202)
    | MenhirState79 | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState79 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState79
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState79) : 'freshtv204)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COLON_expression_ = 
# 216 "/usr/share/menhir/standard.mly"
    ( [ x ] )
# 2005 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COLON_expression_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv206)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv208)) : 'freshtv210)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2020 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv211 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2058 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv212)) : 'freshtv214)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv221 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv217 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv215 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 56 "ocvd_script/ocvds_parser.mly"
   ( _2 )
# 2104 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv216)) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv219 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv229 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2119 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | IN ->
            _menhir_run82 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv225 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2155 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv223 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2162 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_toplevel = 
# 39 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Let_declaration (_2, _4) )
# 2171 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv227 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2181 "ocvd_script/ocvds_parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | MenhirState0 | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | EQ ->
            _menhir_run54 _menhir_env (Obj.magic _menhir_stack)
        | GE ->
            _menhir_run52 _menhir_env (Obj.magic _menhir_stack)
        | GT ->
            _menhir_run50 _menhir_env (Obj.magic _menhir_stack)
        | LE ->
            _menhir_run48 _menhir_env (Obj.magic _menhir_stack)
        | LT ->
            _menhir_run46 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | NE ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run40 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | SEMISEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv233 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv231 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_toplevel = 
# 37 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Expression (_1) )
# 2226 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv235 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState91 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state * 'tv_toplevel) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv41 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2252 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState82 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv43 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2261 "ocvd_script/ocvds_parser.ml"
        ))) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState79 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv45 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv47 * _menhir_state) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_block)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv49 * _menhir_state) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv51 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2285 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState56 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState54 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState48 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv69 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState40 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState38 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv73 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState30 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv81 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv83 * _menhir_state)) * _menhir_state * 'tv_parameter_list)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2374 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2388 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv93 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv95 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2407 "ocvd_script/ocvds_parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState5 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv100)

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_toplevel_ = 
# 186 "/usr/share/menhir/standard.mly"
    ( [] )
# 2426 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 90 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Boolean (true) )
# 2440 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "ocvd_script/ocvds_parser.mly"
       (string)
# 2447 "ocvd_script/ocvds_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv35) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 15 "ocvd_script/ocvds_parser.mly"
       (string)
# 2457 "ocvd_script/ocvds_parser.ml"
    )) = _v in
    ((let _v : 'tv_expression = 
# 88 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.String (_1) )
# 2462 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv36)

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 14 "ocvd_script/ocvds_parser.mly"
       (float)
# 2469 "ocvd_script/ocvds_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 14 "ocvd_script/ocvds_parser.mly"
       (float)
# 2479 "ocvd_script/ocvds_parser.ml"
    )) = _v in
    ((let _v : 'tv_expression = 
# 86 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Number (_1) )
# 2484 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 96 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Nil )
# 2498 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState5 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState5
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState5

and _menhir_run86 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv27 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2547 "ocvd_script/ocvds_parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ASSIGN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv23 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2558 "ocvd_script/ocvds_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState88
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv24)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv25 * _menhir_state) * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2596 "ocvd_script/ocvds_parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)) : 'freshtv28)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv29 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState9 in
        ((let _v : 'tv_option_list_elements_ = 
# 101 "/usr/share/menhir/standard.mly"
    ( None )
# 2643 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_option_list_elements_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LET ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState10
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2687 "ocvd_script/ocvds_parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2699 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | FUN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | IDENTIFIER _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LBRACKET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LET ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NIL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | NUMERIC_LITERAL _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | STRING_LITERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState67
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67) : 'freshtv12)
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv15 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2735 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | FALSE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | FUN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | IDENTIFIER _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LBRACKET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LET ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NIL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | NUMERIC_LITERAL _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | STRING_LITERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState12
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState12 in
            ((let _v : 'tv_option_argument_list_ = 
# 101 "/usr/share/menhir/standard.mly"
    ( None )
# 2769 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_option_argument_list_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12) : 'freshtv16)
    | AND | COLON | COMMA | DIV | EQ | GE | GT | IN | LE | LT | MINUS | MULT | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv17 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2781 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_expression = 
# 94 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Variable (_1) )
# 2787 "ocvd_script/ocvds_parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv19 * _menhir_state * (
# 16 "ocvd_script/ocvds_parser.mly"
       (string)
# 2797 "ocvd_script/ocvds_parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENTIFIER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv5) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState14 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENTIFIER__ = 
# 129 "/usr/share/menhir/standard.mly"
    ( [] )
# 2823 "ocvd_script/ocvds_parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv6)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv8)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv10)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expression = 
# 92 "ocvd_script/ocvds_parser.mly"
   ( Ocvds_syntax.Boolean (false) )
# 2848 "ocvd_script/ocvds_parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv4)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 26 "ocvd_script/ocvds_parser.mly"
      (Ocvds_syntax.program)
# 2867 "ocvd_script/ocvds_parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LET ->
        _menhir_run86 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 220 "/usr/share/menhir/standard.mly"
  


# 2919 "ocvd_script/ocvds_parser.ml"

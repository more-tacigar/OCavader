
exception Error

let _eRR =
  Error

type token = 
  | TRUE
  | THEN
  | STRING_LITERAL of (string)
  | SEMISEMI
  | SEMI
  | RPAREN
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NUMERIC_LITERAL of (float)
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
  | IDENTIFIER of (string)
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
  | MenhirState90
  | MenhirState87
  | MenhirState81
  | MenhirState78
  | MenhirState71
  | MenhirState69
  | MenhirState66
  | MenhirState62
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

let rec _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.identifier list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.identifier list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ocvds_syntax.identifier list) =     ( x ) in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_toplevel : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.toplevel) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FALSE ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | FUN ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | IDENTIFIER _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | IF ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LBRACKET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LET ->
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | LPAREN ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NIL ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | NUMERIC_LITERAL _v ->
        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | STRING_LITERAL _v ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
    | TRUE ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | EOF ->
        _menhir_reduce33 _menhir_env (Obj.magic _menhir_stack) MenhirState90
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90

and _menhir_run81 : _menhir_env -> ((('ttv_tail * _menhir_state) * (string))) * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LBRACE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState81
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState81

and _menhir_goto_separated_nonempty_list_COLON_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = _v in
        let _v : (Ocvds_syntax.expression list) =    ( _1 ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let x = _v in
        let _v : (Ocvds_syntax.expression list option) =     ( Some x ) in
        _menhir_goto_option_list_elements_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.expression list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COLON_expression_ _menhir_env _menhir_stack _menhir_s _v
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

and _menhir_goto_separated_nonempty_list_COMMA_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = _v in
        let _v : (Ocvds_syntax.expression list) =    ( _1 ) in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Apply_expression (_1, _3) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = _v in
            let _v : (Ocvds_syntax.expression) =    ( _1 ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let xs = _v in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.expression list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMI_expression_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.expression list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ocvds_syntax.expression list) =    ( _2 ) in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            (match _menhir_s with
            | MenhirState20 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _, _3), _, _5) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Fun_expression (_3, _5) ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _1 = _v in
                let _v : (Ocvds_syntax.expression) =    ( _1 ) in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | MenhirState69 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                (match _tok with
                | ELSE ->
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    (match _tok with
                    | LBRACE ->
                        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState71
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let _menhir_stack = Obj.magic _menhir_stack in
                    let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
            | MenhirState71 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _, _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.If_else_expression (_2, _4, _6) ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _1 = _v in
                let _v : (Ocvds_syntax.expression) =    ( _1 ) in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | MenhirState81 ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let ((((_menhir_stack, _menhir_s), _2), _, _4), _, _6) = _menhir_stack in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Let_expression (_2, _4, _6) ) in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _1 = _v in
                let _v : (Ocvds_syntax.expression) =    ( _1 ) in
                _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                _menhir_fail ())
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.expression list) =     ( x :: xs ) in
        _menhir_goto_separated_nonempty_list_SEMI_expression_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run34 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run40 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run42 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run36 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run44 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run46 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run48 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run50 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run52 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run54 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run38 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_run56 : _menhir_env -> 'ttv_tail * _menhir_state * (Ocvds_syntax.expression) -> 'ttv_return =
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

and _menhir_goto_list_toplevel_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.toplevel list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, x), _, xs) = _menhir_stack in
        let _v : (Ocvds_syntax.toplevel list) =     ( x :: xs ) in
        _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | EOF ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.program) =    ( Ocvds_syntax.Program (_1) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = _v in
            Obj.magic _1
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_list_elements_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.expression list option) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : (Ocvds_syntax.expression) =    (
	    match _2 with
	    | None   -> Ocvds_syntax.List_constructor ([])
	    | Some x -> Ocvds_syntax.List_constructor (x)
	  ) in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let _1 = _v in
        let _v : (Ocvds_syntax.expression) =    ( _1 ) in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.identifier list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = Obj.magic _menhir_stack in
    let _menhir_stack = Obj.magic _menhir_stack in
    let xs0 = _v in
    let _v : (Ocvds_syntax.identifier list) = let lst =
      let xs = xs0 in
          ( xs )
    in
       ( lst ) in
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_stack = Obj.magic _menhir_stack in
    assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | LBRACE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16)
    | RPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, x) = _menhir_stack in
        let _v : (Ocvds_syntax.identifier list) =     ( [ x ] ) in
        _menhir_goto_separated_nonempty_list_COMMA_IDENTIFIER_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ocvds_syntax.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState30 | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
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
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
        | RBRACE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (Ocvds_syntax.expression list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_SEMI_expression_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Plus, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Mult, _1, _3) ) in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Div, _1, _3) ) in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Or, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Ne, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | MINUS | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Minus, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Lt, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Le, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Gt, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Ge, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run44 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack)
        | AND | COLON | COMMA | EQ | GE | GT | IN | LE | LT | NE | OR | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.Eq, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Binary_operation (Ocvds_syntax.And, _1, _3) ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState62 | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COMMA ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (Ocvds_syntax.expression list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_COMMA_expression_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Assign_expression (_1, _3) ) in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = Obj.magic _menhir_stack in
            let _1 = _v in
            let _v : (Ocvds_syntax.expression) =           ( _1 ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | LBRACE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState78 | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AND ->
            _menhir_run56 _menhir_env (Obj.magic _menhir_stack)
        | COLON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState78
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, x) = _menhir_stack in
            let _v : (Ocvds_syntax.expression list) =     ( [ x ] ) in
            _menhir_goto_separated_nonempty_list_COLON_expression_ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : (Ocvds_syntax.expression) =    ( _2 ) in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            _menhir_run81 _menhir_env (Obj.magic _menhir_stack)
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : (Ocvds_syntax.toplevel) =    ( Ocvds_syntax.Let_declaration (_2, _4) ) in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState0 | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (Ocvds_syntax.toplevel) =    ( Ocvds_syntax.Expression (_1) ) in
            _menhir_goto_toplevel _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState90 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState87 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState81 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState78 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState71 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState69 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState66 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState62 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState56 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState54 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState52 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState48 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState46 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState44 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState42 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState40 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState38 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState36 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState34 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState21 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState14 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState10 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState9 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState5 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ocvds_syntax.toplevel list) =     ( [] ) in
    _menhir_goto_list_toplevel_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Boolean (true) ) in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.String (_1) ) in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (float) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = _v in
    let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Number (_1) ) in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Nil ) in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

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

and _menhir_run85 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENTIFIER _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ASSIGN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | FALSE ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | FUN ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | IDENTIFIER _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | IF ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LBRACKET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LET ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | LPAREN ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NIL ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | NUMERIC_LITERAL _v ->
                _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | STRING_LITERAL _v ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
            | TRUE ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState87
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

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
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_s = MenhirState9 in
        let _v : (Ocvds_syntax.expression list option) =     ( None ) in
        _menhir_goto_option_list_elements_ _menhir_env _menhir_stack _menhir_s _v
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

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (string) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ASSIGN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FALSE ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | FUN ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | IDENTIFIER _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | IF ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LBRACKET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LET ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | LPAREN ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NIL ->
            _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | NUMERIC_LITERAL _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | STRING_LITERAL _v ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
        | TRUE ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState66
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66)
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
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
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12)
    | AND | COLON | COMMA | DIV | EQ | GE | GT | IN | LE | LT | MINUS | MULT | NE | OR | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | SEMISEMI | THEN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Variable (_1) ) in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENTIFIER _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
        | RPAREN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_s = MenhirState14 in
            let _v : (Ocvds_syntax.identifier list) =     ( [] ) in
            _menhir_goto_loption_separated_nonempty_list_COMMA_IDENTIFIER__ _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _1 = () in
    let _v : (Ocvds_syntax.expression) =    ( Ocvds_syntax.Boolean (false) ) in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

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

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ocvds_syntax.program) =
  fun lexer lexbuf ->
    let _menhir_env = let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
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
        _menhir_run85 _menhir_env (Obj.magic _menhir_stack) MenhirState0
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
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)
  


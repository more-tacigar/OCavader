{
  let reserved_words = [
    ("if"     , Ocvds_parser.IF    ) ;
    ("else"   , Ocvds_parser.ELSE  ) ;
    ("true"   , Ocvds_parser.TRUE  ) ;
    ("false"  , Ocvds_parser.FALSE ) ;
    ("then"   , Ocvds_parser.THEN  ) ;
    ("fun"    , Ocvds_parser.FUN   ) ;
    ("in"     , Ocvds_parser.IN    ) ;
    ("let"    , Ocvds_parser.LET   ) ;
    ("and"    , Ocvds_parser.AND   ) ;
    ("or"     , Ocvds_parser.OR    ) ;
    ("nil"    , Ocvds_parser.NIL   ) ;
  ]
}

rule main = parse
  | [' ' '\009' '\012' '\n']+
    { main lexbuf }
  | "-"? ['0'-'9']+ ('.' ['0'-'9']+)?
    {
      let id = Lexing.lexeme lexbuf in
      let number = float_of_string id in
      Ocvds_parser.NUMERIC_LITERAL (number)
    }
  | "("   { Ocvds_parser.LPAREN   }
  | ")"   { Ocvds_parser.RPAREN   }
  | "["   { Ocvds_parser.LBRACKET }
  | "]"   { Ocvds_parser.RBRACKET }
  | "{"   { Ocvds_parser.LBRACE   }
  | "}"   { Ocvds_parser.RBRACE   }
  | ";;"  { Ocvds_parser.SEMISEMI }
  | ";"   { Ocvds_parser.SEMI     }
  | "+"   { Ocvds_parser.PLUS     }
  | "-"   { Ocvds_parser.MINUS    }
  | "*"   { Ocvds_parser.MULT     }
  | "/"   { Ocvds_parser.DIV      }
  | "||"  { Ocvds_parser.OR       }
  | "&&"  { Ocvds_parser.AND      }
  | "<="  { Ocvds_parser.LE       }
  | "<"   { Ocvds_parser.LT       }
  | ">="  { Ocvds_parser.GE       }
  | ">"   { Ocvds_parser.GT       }
  | "=="  { Ocvds_parser.EQ       }
  | "!="  { Ocvds_parser.NE       }
  | "="   { Ocvds_parser.ASSIGN   }
  | ":"   { Ocvds_parser.COLON    }
  | ","   { Ocvds_parser.COMMA    }
  | eof   { Ocvds_parser.EOF      }
  | '"' ['a'-'z' 'A'-'Z' '0'-'9' '.']* '"'
    {
      let str = Lexing.lexeme lexbuf in
      let len = String.length str in
      let res = String.sub str 1 (len - 2) in
      Ocvds_parser.STRING_LITERAL (res)
    }
  | ['a'-'z' 'A'-'Z' '@'] ['a'-'z' 'A'-'Z' '0'-'9' '_' '@']*
    {
      let id = Lexing.lexeme lexbuf in
      try
        List.assoc id reserved_words
      with
      _ -> Ocvds_parser.IDENTIFIER id
    }

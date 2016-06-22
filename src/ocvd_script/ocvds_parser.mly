%token SEMISEMI SEMI
%token PLUS MULT DIV MINUS
%token LT LE GT GE OR AND EQ NE
%token LET IN ASSIGN
%token LPAREN RPAREN
%token LBRACE RBRACE
%token LBRACKET RBRACKET
%token IF ELSE THEN
%token FUN
%token COLON COMMA
%token EOF
%token TRUE FALSE NIL

%token <float> NUMERIC_LITERAL
%token <string> STRING_LITERAL
%token <string> IDENTIFIER

%left ASSIGN
%left OR
%left AND
%left LT LE GT GE EQ NE
%left PLUS MINUS
%left MULT DIV

%start program
%type <Ocvds_syntax.program> program

%%

program
	: list(toplevel) EOF
	  { Ocvds_syntax.Program ($1) }
	;

toplevel
        : expression SEMISEMI
	  { Ocvds_syntax.Expression ($1) }
	| LET IDENTIFIER ASSIGN expression SEMISEMI
	  { Ocvds_syntax.Let_declaration ($2, $4) }
	;

block
	: LBRACE separated_nonempty_list(SEMI, expression) RBRACE
	  { $2 }

expression
	: if_else_expression
	  { $1 }
	| let_expression
	  { $1 }
	| fun_expression
	  { $1 }
	| apply_expression
	  { $1 }
	| LPAREN expression RPAREN
	  { $2 }
	| assign_expression (* variable = expression *)
          { $1 }
	| list_constructor
	  { $1 }
	| expression PLUS expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Plus, $1, $3) }
	| expression MINUS expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Minus, $1, $3) }
	| expression MULT expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Mult, $1, $3) }
	| expression DIV expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Div, $1, $3) }
  	| expression LE expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Le, $1, $3) }
	| expression LT expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Lt, $1, $3) }
	| expression GE expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Ge, $1, $3) }
	| expression GT expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Gt, $1, $3) }
	| expression EQ expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Eq, $1, $3) }
	| expression NE expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Ne, $1, $3) }
  	| expression AND expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.And, $1, $3) }
	| expression OR expression
	  { Ocvds_syntax.Binary_operation (Ocvds_syntax.Or, $1, $3) }
	| NUMERIC_LITERAL
	  { Ocvds_syntax.Number ($1) }
	| STRING_LITERAL
	  { Ocvds_syntax.String ($1) }
	| TRUE
	  { Ocvds_syntax.Boolean (true) }
	| FALSE
	  { Ocvds_syntax.Boolean (false) }
	| IDENTIFIER
	  { Ocvds_syntax.Variable ($1) }
	| NIL
	  { Ocvds_syntax.Nil }
	;

if_else_expression
	: IF expression THEN block ELSE block
	  { Ocvds_syntax.If_else_expression ($2, $4, $6) }
	;

let_expression
	: LET IDENTIFIER ASSIGN expression IN block
	  { Ocvds_syntax.Let_expression ($2, $4, $6) }
	;

fun_expression
	: FUN LPAREN parameter_list RPAREN block
	  { Ocvds_syntax.Fun_expression ($3, $5) }
	;

apply_expression
	: IDENTIFIER LPAREN argument_list RPAREN
	  { Ocvds_syntax.Apply_expression ($1, $3) }
	;

parameter_list
	: lst = separated_list (COMMA, IDENTIFIER)
	  { lst }
	;

list_constructor
	: LBRACKET option(list_elements) RBRACKET
	  {
	    match $2 with
	    | None   -> Ocvds_syntax.List_constructor ([])
	    | Some x -> Ocvds_syntax.List_constructor (x)
	  }
	;
	
list_elements
	: separated_nonempty_list(COLON, expression)
	  { $1 }
	;

argument_list
	: separated_nonempty_list(COMMA, expression)
	  { $1 }
	;

assign_expression
	: IDENTIFIER ASSIGN expression
	  { Ocvds_syntax.Assign_expression ($1, $3) }
	;
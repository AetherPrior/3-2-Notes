%{
    #include <stdio.h>
    int yylex(void);
    int yyerror(char *);
%}

%union {double dval;};
%token <dval> B
%type <dval> K L prog

%%

prog : L '.' K'\n'  { $$ = $1 + 0.5*$3;   printf("\nvalue=%f",$$); return 0;};
L : L B             { $$ = $1*2 + $2;     printf("\n bruh Lval = %f",$$);   }; 
  | B               { $$ = $1;            printf("\n bruh Lval = %f",$$);   };
K : B K             { $$ = $1 + $2*0.5;   printf("\n bruh kval = %f",$$);   }; 
  | B               { $$ = $1;            printf("\n bruh kval = %f",$$);   };

%%

int yyerror(char *msg){
    printf("invalid: %s", msg);
}
int main(void){
    yyparse();
    return 0;
}
%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%union {int val; char *string;}
%token <val> INTEGER
%token <string> STRING 
%type <val> equals  //we don't need this coz no $$, but yacc wants it

%%
equals: INTEGER'='INTEGER {if($1 == $3){printf("Equal");}else{printf("Not equal");} return 1;}
| STRING'='STRING { if(strcmp($1,$3) == 0){printf("Equal");}else{printf("Not equal");}return 1;}
;
%%

int main()
{
    yyparse();
    return 0;
}
int yyerror(){
    printf("Invalid token");
    return 1;
}
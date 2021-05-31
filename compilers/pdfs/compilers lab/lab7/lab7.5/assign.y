%{
    #include<stdlib.h>
    #include<stdio.h>
%}

%token <val> NUMBER;
%token <iden> IDENTIFIER;
%type <val> assign; 
%%
assign: IDENTIFIER'='IDENTIFIER {printf("valid"); return 1;} | IDENTIFIER'='NUMBER {printf("valid"); return 1;};
%%
yyerror(){
    printf("Invalid");
    return 1;
}
int main(){
    yyparse();
    return 0;
}
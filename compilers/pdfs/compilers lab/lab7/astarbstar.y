%{
    #include<stdio.h>
%}
%token A B N 
%%
Stmt: expr '\n' {print("accept"); return 1;}
expr: A expr B 
    | expr B
    | /*empty*/
    ;
%%
yyerror(){
    printf("Invalid"); return 1;
}
int main(){
    yyparse();
}
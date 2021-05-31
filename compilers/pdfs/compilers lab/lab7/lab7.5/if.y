%{
    #include<stdlib.h>
    #include<stdio.h>
%}

%token STMT COND IF THEN ELSE;

%% 

stmt1: conditional {printf("valid"); return 1;}
conditional: IF '(' COND ')' THEN STMT el  
el: /*empty*/ | ELSE STMT ;

%%

yyerror(){
    printf("Invalid");
    return 1;
}
int main(){
    yyparse();
    return 0;
}
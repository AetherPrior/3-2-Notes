%option noyywrap

%{
#include<stdio.h>
%}


%%

0 | [1-9][0-9]* { printf("%d is an integer \n", atoi(yytext)); return 1;}
0[0-9]* { printf("%d is an invalid integer \n", atoi(yyext)); return 1;}

(0 | [1-9][0-9]*)"."(0*[1-9]+)+ { printf("%d is an invalid integer \n", yytext); return 1;}
%%
int main(void){
yylex();
}

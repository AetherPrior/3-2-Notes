%option noyywrap
%{
#include<stdio.h>
%}
%% 
stop { return ; }
start { return ; }
%%
main(){
yylex();
printf("%s\n",yytext);
printf("%d",yyleng);
}

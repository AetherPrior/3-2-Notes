%option noyywrap
%{
#include<stdio.h>
%}
%%
a|ab|abc|abcd {ECHO; REJECT;}
.|\n {printf("XX%c",*yytext);}
%%
int main(void){
yylex();
}

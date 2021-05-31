%option noyywrap
%{
#include<stdio.h>
%}
%%
([//][.]*) | ([/*][.|\n]*[*/]) printf("comment");

a*b {printf("1");}
ca {printf("2");}
a*ca* {printf("3");} //aaacaaa
%%
int main(void){
yylex();}


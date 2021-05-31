%option noyywrap
%{
#include<stdio.h>
%}

%%
d*c printf(" is a valid string of d*c\n");
ab* printf(" is a valid string of ab*\n");
%%

int main(void){
yylex();
}

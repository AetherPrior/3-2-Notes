%option noyywrap
%{
#include<stdio.h>
%}
zero "0"
num [1-9][0-9]*
%%
{zero} {printf("int");return;}
{num} {printf("int");return;}
zero|{num}"."[0-9]+ {printf("float");return;}
%%
int main(){
yylex();
}

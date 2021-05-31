%{
#include<stdio.h>
%}
pat ab*

%%
(ab*) {printf(" is a valid string \n");return 0;}
%%

int yywrap(){
return 1;}
int main(){
yylex();
}

%option noyywrap
%{
#include<stdio.h>
int wc=0,nc=0;
%}
%%
[a-zA-Z]+ { wc++; }
(^0 |^[1-9]+[0-9]*) { nc++; }
%%

main(){
yylex();
printf("%d %d\n",wc,nc);
} 
  

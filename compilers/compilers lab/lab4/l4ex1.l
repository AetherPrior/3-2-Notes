%option noyywrap
%{
#include<stdio.h>
int el=0,lc=1;
%}
%%
\n {el++;}
(.)*\n {fprintf(yyout,"%d %s",lc,yytext);lc++;}
%%
int main(void){
yyout = fopen("out.txt","w");
yyin = fopen("in.txt","r");
yylex();
yyout = fopen("in.txt","a");
fprintf(yyout,"empty lines: %d",el);
}

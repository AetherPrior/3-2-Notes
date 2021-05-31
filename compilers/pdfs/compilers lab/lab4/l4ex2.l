%option noyywrap
%{
#include<stdio.h>
#include<string.h>
int sc=0;
char str[100];
%}
%%
[^ \n\t\r]+ {if(strlen(yytext) > sc){sc= strlen(yytext); strcpy(str,yytext);}}
%%
int main(void){
yyin = fopen("in.txt","a+");
yylex();
fprintf(yyin,"\n%s %d",str,sc);
}

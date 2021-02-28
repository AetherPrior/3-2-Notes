%option noyywrap
%{
#include<stdio.h>
%}

/*the input() function just reads a character and doesn't store it in yytext, so the output for this would just be the first double quote for the whole thing */
%%
\" {while(input() != '"');/*printf("%s\n",yytext);*/}
%%

/*
Input: "help" now
now
Input: "hi"fell"ok"
fell
Input: "ok""ol"
Input: "fell"ok"fox"kill
okkill
*/

int main(void){
yylex();
}

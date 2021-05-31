%option noyywrap
%{
#include<stdio.h>
%}
%% 
[a-zA-Z \t][a-zA-z]* { fprintf(yyout,"%s",yytext); }
%% 
main()
{

//yylex(); //after yyin
yyin=fopen("sample.txt","r");
yylex();
}

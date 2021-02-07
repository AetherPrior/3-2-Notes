%option noyywrap
%{
#include<stdio.h>
%}
%% 
[a-zA-Z\t][a-zA-z]* { fprintf(yyout,"%s",yytext); }
[0-9]* {} //to prevent an echo to yyout
[?%$#] {}
%% 
main()
{

//yylex(); //after yyin
yyin=fopen("sample.txt","r");
yyout=fopen("sample2.txt","w");
yylex();
}

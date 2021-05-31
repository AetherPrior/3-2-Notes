%option noyywrap
%{
    #include<stdio.h>
%}
%%
a*b* 
%%
int main(){
    yylex();
}
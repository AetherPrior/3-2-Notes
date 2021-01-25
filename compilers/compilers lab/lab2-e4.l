%option noyywrap
%{
#include<stdio.h>
int num=0;
int word=0;
%}

%%
[0123456789]+ {num=1;return;}
[0-9]*[a-zA-Z][0-9]*  {word=1; return;}
%%
main(){
yylex();
if(num == 1){printf("It is a number");}
else{
printf("it is a word!");
}
}

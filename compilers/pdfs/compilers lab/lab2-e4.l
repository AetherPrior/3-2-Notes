%option noyywrap
%{
#include<stdio.h>
int num=0;
int word=0;
%}

%%
[0123456789]+ {num=1;return;}
[a-zA-Z][a-zA-Z0-9]*  {word=1; return;} //123 -> number, abc-> word, abc123 -> word (first rule isn't matching)
%%
main(){
yylex();
if(num == 1){printf("It is a number");}
else{
printf("it is a word!");
}
}

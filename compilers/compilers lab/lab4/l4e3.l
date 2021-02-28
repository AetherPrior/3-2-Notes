%option noyywrap
%{
#include<stdio.h>
%}
%%
begin|beginning {ECHO; REJECT;} /*beginning matches, then rejected, so then begin is checked (beginning is already), then it's also echoed and rejected*/ 
(.)* {printf("xx%s",yytext);} /* //then for every character in input this happens.*/
%%
main(){
yylex();
}

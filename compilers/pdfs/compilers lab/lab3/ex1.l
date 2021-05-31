%option noyywrap
/* match to the rule to the longest substring match*/
%{
#include<stdio.h>
%}
%%
begin printf("Compiler");
[a-z]+ printf("Compi");
beginning printf("Compiler Design");

%% 
int main(void)
{
yylex();
}

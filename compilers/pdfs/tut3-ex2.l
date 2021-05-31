%option noyywrap 
{%
#include<stdio.h>
%}
%%
aa printf("1");
b?a+b? printf("2");
b?a*b? printf("3");
.|\n printf("4");
%%

int main(void){
yylex();
}

/*
2nd pattern encompasses the first one (not completely) so we can't get 123 
aababbb

aaa -> 2nd pattern
*/

/*
bbbabaa
bb -> 3
bab -> 2
aa -> 1
*/

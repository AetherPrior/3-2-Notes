%option noyywrap
%{
#include<stdio.h>
char ch;
%}
/*
fp-1 will get the unput char
fp is reset to fp-1
and sp is set to fp after all actions (by default xD)
*/
%%
"un" {printf("\nThe unput char is = ");
ECHO;}
[a-z]+ {printf("Lower case token is =");
ECHO;unput('n');unput('u');
printf("\nThe token after unput is =");
ECHO;
scanf("%c",&ch);
}

[a-zA-Z]+ {printf("Mixed case token = ");ECHO;}

%%
int main(){
yylex();
}



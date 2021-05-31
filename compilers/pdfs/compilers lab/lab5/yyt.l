%option noyywrap
%{
#include<stdio.h>
%}
%%
[a-z]+ {printf("lower case\n"); 
ECHO;
printf("Begin yyterminate\n");
yyterminate();
}
[a-zA-Z]+ {printf("Mixed case\n");ECHO;}
%%

int main(void){
	yylex();
return 0;
}

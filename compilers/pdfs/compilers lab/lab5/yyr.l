%option noyywrap
%{
#include<stdio.h>
%}
%%
[a-z]+ {printf("Lower case token: %s\n",yytext);
 /*ECHO;*/
return;}
[a-zA-Z]+ {ECHO;}

%%
int main(){
yylex();
FILE *fp;
fp = fopen("input.txt","r");
printf("\nSecond yylex();");
yyrestart(fp);
/*
yyin = fopen("input.txt","r");
yyrestart(yyin);
*/
/*
Or you can keep calling yylex after resetting yyin 
*/
yylex();
printf("\nEnd of second op");
} 

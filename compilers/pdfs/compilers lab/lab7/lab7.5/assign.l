%{
#include "y.tab.h"
#include<stdlib.h>
#include<string.h>
%}
%%
[0-9]+ {yylval.val = atoi(yytext); return NUMBER;}
[a-zA-Z]+ {printf("lex: %s\n",yytext); yylval.iden = strdup(yytext); /*to prevent a change from affecting ptr*/ return IDENTIFIER;}
"=" {return *yytext;}
%%
yywrap(){

}
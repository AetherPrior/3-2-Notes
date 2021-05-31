%option noyywrap
%{
    #include "y.tab.h"
%}
%%
[1-9]+"."[0-9]* {
    yylval.dval = atof(yytext);
    return NUMBER;
}
[0-9]+ {
    yylval.ival = atoi(yytext);
    return INTEGER;}
"+" return *yytext;
\n return yytext;
%%
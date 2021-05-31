%{
    #include<stdio.h>
    #include "y.tab.h"
%}

%%
[0] {yylval.dval = atof(yytext); printf("bin %c",*yytext); return B;};
[1] {yylval.dval = atof(yytext); printf("bin %c",*yytext); return B;};
['.''\n'] {printf("dot %c",yytext[0]); return yytext[0];};

%%


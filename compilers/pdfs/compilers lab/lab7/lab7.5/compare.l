%{
#include "y.tab.h"
#include<stdlib.h>
#include<string.h>
%}
%%
[0-9]+ {return INTEGER;}
[a-zA-Z]+ { return STRING;}
"=" {return *yytext;}
%%
yywrap(){

}
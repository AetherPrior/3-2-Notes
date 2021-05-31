%{
#include "y.tab.h"
#include<stdlib.h>
#include<string.h>
#include<math.h>
%}

CHAR [a-zA-Z]
%x CONDSTART 

%%
<*>[ ] {};
<*>[\t] {};
<*>[\n] return 0;

"IF" {return IF;};
"THEN" {return THEN;};
"ELSE" {return ELSE;};

\( {BEGIN(CONDSTART);return('(');};

<CONDSTART>{CHAR}+ return COND;
<CONDSTART>\) {BEGIN(INITIAL); return(')');}

{CHAR}+ return STMT;
%%
yywrap(){

}
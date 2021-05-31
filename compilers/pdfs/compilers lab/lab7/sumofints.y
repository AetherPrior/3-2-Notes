%{
#include<stdio.h>
#include<stdlib.h>
%}
%union {int ival; double dval;}
%token <ival> INTEGER
%token <dval> NUMBER
%type <dval> sum
%%
sum: INTEGER '+' INTEGER { $$ = ((double)($1 + $3)); printf("%ld\n",$$); return 1;}
| NUMBER '+' NUMBER { $$ = $1 + $3; printf("%lf\n",$$); return 1;}
| '\n' {}
%%
int main(){
yyparse();
return 0;
}
void yyerror(){
printf("Invalid statement");
exit(0);
}


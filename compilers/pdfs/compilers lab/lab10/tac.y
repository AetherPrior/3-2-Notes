 
//Yacc part
%{
#include<string.h>
#include<stdio.h>
#include<math.h>
#include<stdlib.h>
int count=0;
int qind=0;
int tos=-1;
int temp_char=0;
struct quadruple{
 char operator[5];
 char operand1[10];
 char operand2[10];
 char result[10];
} quad[25];
struct stack{
 char c[10]; } stk[25];
void addQuadruple(char op1[], char op[], char op2[], char result[])
{
strcpy (quad[qind].operator, op);
strcpy (quad[qind].operand1, op1);
strcpy (quad[qind].operand2, op2);
strcpy (quad[qind].result, result);qind++;
}
void display_Quad()
{
printf ("%s ", quad[qind-1].result);
printf("=");
printf ("%s " , quad[qind-1].operand1);
printf ("%s ", quad[qind-1].operator);
printf ("%s \n", quad[qind-1].operand2);
}
void push(char *c){
strcpy(stk[++tos].c, c);
}
char* pop()
{
 char* c=stk[tos].c;
tos=tos-1;
return c;
}
%}
%token <ival> NUM
%left '+' '-'
%left '*' '/'
%union{char cval[5];int ival;}
%type <cval> E%%
E:E '+' E{char str[5], str1[5]="t"; sprintf(str,"%d", temp_char++);
 strcat(str1, str); addQuadruple(pop(), "+", pop(), str1);
 display_Quad(); push(str1);}
 |E '*' E{ char str[5], str1[5]="t"; sprintf(str, "%d", temp_char++);
 strcat(str1, str); addQuadruple(pop(), "*", pop(), str1);
 display_Quad(); push(str1);}
 |E '-' E{ char str[5], str1[5]="t"; sprintf(str, "%d", temp_char++);
 strcat(str1, str); addQuadruple(pop(), "-", pop(), str1);
 display_Quad(); push(str1);}
 |E '/' E{ char str[5], str1[5]="t"; sprintf(str, "%d", temp_char++);
 strcat(str1, str); addQuadruple(pop(), "/", pop(), str1);
 display_Quad(); push(str1);}
 |NUM{char c[5]; sprintf(c,"%d",$1); push(c);}
%%
//Lex
void main()
{ printf("Type the expression: \n");
yyparse();
exit(0);
}
void yyerror() {
printf("Syntax error:\n");
exit(0);
}//Lex
%{
#include "y.tab.h"
%}
%%
[0-9]+ {yylval.ival= atoi(yytext); return NUM;}
[-+*/] {return *yytext;}
[\n] return;
%%

%option noyywrap
%{
#include<stdio.h>
int npink=0;
int npin=0;
int nink=0;
%}
%%
pink {npink++; REJECT;}
ink {nink++; REJECT;}
pin {npin++; REJECT;} /*after all 3 rejects, 
pink will first echo p, since it doesn't match, then ink, will be echoed
once something is echoed it's removed from input*/
\n return 0;
%%
int main(void){
yylex();
printf("Num of occurences of pink: %d\n",npink);
printf("Num of occurences of pin: %d\n",npin);
printf("Num of occurences of ink: %d\n",nink);
} 

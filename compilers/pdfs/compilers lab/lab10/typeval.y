%{
#include<stdlib.h>
#include<string.h>
#include<stdio.h>
%}

%token INT FLOAT CHAR NL

%union{
    struct{
        char type[10];
        union{
            int ival;
            float fval;
            char cval;
            } v;
        } t;
    }

%%

E : E '+' E NL { if(((strcmp($<t.type>1,"float")==0) && (strcmp($<t.type>3,"char")==0))!=0)

%{
    #include<stdio.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
S: E {printf("\n"); return 1;}
;
E: E '+' E {printf("+");}
    | E '*' E {printf("*");}
    | E '-' E {printf("-");}
    | E '/' E {printf("/");}
    | '(' E ')';
    | NUM {printf("%d",yylval);}
    ;
%%


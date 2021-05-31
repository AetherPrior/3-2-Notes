%{
    #include<stdio.h>
    int yylex(void);
    int yyerror(char*);
    int firstcount = 0;
    int c_plus = 0;
    int d_plus = 0;

%}
%token NL FIRST C D

%%
Z : S {printf("Valid parse"); return 0;} ;
S : FIRST C S { c_plus ++; firstcount++; } 
  | FIRST D S  {d_plus ++; firstcount++; }
  | C S { c_plus ++; } 
  | D S { d_plus++; } 
  | ;



/*K : K 'c' {printf("bruh c");};| K 'd' {printf("bruh d");} ;| ;*/
%%
int yyerror(char *msg){
    printf("%s",msg);
}
int main(){
    yyparse();
    printf("\nab* %d c %d d %d",firstcount, c_plus, d_plus);
}

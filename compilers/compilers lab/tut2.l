%{
int count=0;
%}
letter [a-zA-Z]
digit [0-9]

%%
{letter} {printf("alphabet");}
{digit} {printf("number");count++;}
= {printf("%d",count);}
%%

int yywrap()
{
return 1;
}
int main()
{
yylex();
}


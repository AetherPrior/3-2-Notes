letter [a-zA-Z]
digit [0-9]

%%

{letter} {printf("Alphabet");}
{digit} {printf("Number");}

%%
yywrap()
{return 1;}

int main(){

/*
IN RULES
letter {printf("Alphabet");} //here letter will be treated as a separate regular expression, so it'll print "Alphabet only when you type "letter"*/
	yylex();
}

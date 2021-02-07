%{
#include<stdio.h>
int vowels=0,cons=0;
%}
%%
[aeiouAEIOU] {vowels++;}
[a-zA-Z] {cons++;} //first rule first
//BITS Pilani, at space will cause the pointers to backup
%%
int main()
{
    printf("Enter the string.. at end press ^d\n");
    yylex(); //calls the pointers for lexical analysis
    // terminated, when input string is scanned or return statement is in rule;
    printf("No of vowels=%d\nNo of consonants=%d\n");
}

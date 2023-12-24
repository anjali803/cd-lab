%option noyywrap
%{
#include<stdio.h>
%}
%%
if {printf("\n%s is keyword",yytext);}
printf {printf("\n%s is keyword",yytext);}
[a-zA-Z]+ {printf("\n%s is words",yytext);}
[0-9]+ {printf("%s is number",yytext);}
.|\n {ECHO;}
%%
int main(){
	printf("Enter the string:");
	yylex();
	return 1;
}

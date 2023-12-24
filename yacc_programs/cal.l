%option noyywrap
%{
#include<stdlib.h>
#include 'yy.tab.h'
extern int yylval;
%}
%%
[0-9]+?		{
		yylval = atoi(yytext);
		return num;
		}
[-/+*\n]	return yytext[0];
"("		return yytext[0];
")"		return yytext[0];
.		;
%%

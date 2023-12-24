%{
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
void yyerror(char *msg);
%}

%token num id
%left '/' '*' '+' '-'
%%
S : E '\n' {
	printf("Valid experssion");
	exit(0);
	}
  ;
E:E'/'E
 |E'*'E
 |E'+'E
 |E'-'E
 |'('E')'
 |id
 |num
 ;
%%
void yyerror(char *error){
printf("ivalid experssion");
exit(0);

}
void main(){
printf("enter the experssion");
yyparse();
}


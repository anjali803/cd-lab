/*lex program to count number of words*/
%{ 
#include<stdio.h> 
#include<string.h> 
int i = 0; 
%} 

/* Rules Section*/
%% 
([a-zA-Z0-9])* {i++;} /* Rule for counting number of words*/

"\n" ;
%% 

int yywrap(void){} 

int main() 
{ 	printf("Enter the words");
	// The function that starts the analysis 
	yylex(); 
	{printf("%d\n", i); i = 0;}

	return 0; 
} 

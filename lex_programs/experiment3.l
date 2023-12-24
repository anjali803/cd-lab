%option noyywrap
%{
	int words;
	int lines;
	int chars;
%}
%%
[a-zA-z] {chars+=yyleng;words++;}
[\n] {chars++;lines++;}
%%
int main(){
	printf("enter the sentence : ");
	yylex();
	printf("Chars = %d\nLines = %d;Words = %d\n",chars,lines,words);
	return 0;
}

%option noyywrap
%{
preprocessor #.*;
punctuators [,\.;]
string \".*\";
singleLinecomment "//".*\n
multiLinecomment "/*".*\n*.*"*/"
keywords if|else|else if|printf 
identifiers [a-zA-Z][a-zA-Z0-9]*
numbers [+|-]?([0-9]*)
arthematic [+\-*/%]
relational "=="|">"|"<"|">="|"<="
 

%}
%%

{preprocessor} {printf("Preprocessor = %\ns",yytext);}
{punctuators] {printf("punctauators = %s\n",yytext);}


%%
int main(int argc,char* argv[]){
yyin = fopen(argv[1],"r");
yylex();
return 0;
}

%{
    #include "yfile.tab.h"
%}

%%

 // Recognize identifiers, numbers, operators and new line are valid tokens.

[0-9](\.[0-9]*)?        return num;
[_a-zA-Z][_a-zA-z0-9]*  return id;
[-/+*()\n]              return yytext[0];
.                       ;

%%

int yywrap() {
    return 1;
}

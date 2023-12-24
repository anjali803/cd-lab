%option noyywrap
%{
    #include <stdio.h>
    #include <ctype.h>

    int wordsStartingWithA = 0;  // Added variable for words starting with 'A'
%}

%%

[A-Z][a-zA-Z]* { wordsStartingWithA++; }  // Updated rule for words starting with 'A'

%%

int main(){
    char buffer[100];

    while (1) {
        printf("Enter a string (or type 'exit' to quit): ");
        if (fgets(buffer, sizeof(buffer), stdin) == NULL || strcmp(buffer, "exit\n") == 0) {
            break;  // Exit the loop if 'exit' is entered or EOF is encountered
        }

        yy_scan_string(buffer);
        yylex();

        printf("Number of words starting with capital 'A': %d\n", wordsStartingWithA);
        wordsStartingWithA = 0;  // Reset the count for the next input
    }

    return 0;
}

%option noyywrap 
%{ 
        #include<stdio.h> 
        #include<ctype.h> 
        int v=0; 
        int c=0; 
%} 
 
%% 
 
[aeiouAEIOU] {v++;c++;} 
[a-zA-Z] {c++;} 
 
 
%% 
int main(){ 
        char buffer[100]; 
        printf("Enter the string : "); 
        scanf("%s",buffer); 
        yy_scan_string(buffer); 
        yylex(); 
        printf("Number of vowels %d\tconsonants %d",v,c); 
        return 0; 
}

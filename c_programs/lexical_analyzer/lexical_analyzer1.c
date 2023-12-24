#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
#include<regex.h>

void skipLine(File *file);
int checkKeyword(char token[]);
int checkIdentifier(char token[]);
int isNumber(char token[], int size);
void muliLine(File *file);

void main(){
	FILE *file;
	char filename[50];

	printf("Enter the filename\n");
	scanf("%s",filename);

	file = fopen(filename,"r");
	if(file==NULL){
		printf("File doenot exist"):
		exit(0);
	}

	printf("Analysed output");

	int i = 0;
	char ch,token[50];
	while((ch=fgetc(file))!=EOF){
		switch(ch){
		    case '/':
			   ch = getc(file);
		           if(ch=="*"){
			       MuliLine(file);
			       break;
			}
		    case '#':
		           skipLine(file);
			   
		    case '(':
			token[i] = '\0';
			  if(strcmp(token,"main")==0)
				printf("\b\b\b\b");
			i = 0;
			token[i] = '\0';
			break;

		}
	}

}

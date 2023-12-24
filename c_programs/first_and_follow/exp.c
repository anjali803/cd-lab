#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>

int n;
char a[10][10];

void first(char ch);
void follow(char ch);

int main(){
int x;
char ch;
printf("Enter the number of expersion");
scanf("%d",&n);

printf("Enter the experssion");
for(int i=0;i<n;i++){
scanf("%s",a[i]);
}
getchar();
do{
printf("Enter the element for which first and follow should be computed:\n");
scanf("%c",&ch);
printf("first(%c)={",ch);
first(ch);
printf("}");
printf("follow(%c)={",ch);
follow(ch);
printf("}");
printf("Do you want to continue(0/1):");
scanf("%d",&x);
getchar();
}while(x==1);
return 1;
}

void first(char ch){
	if(islower(ch)){
		printf("%c",ch);
		return;
	}else {
		for(int i=0;i<n;i++){
		if(a[i][0]==ch){
			if(islower(a[i][2])){
			printf("%c",a[i][2]);
			}else{
			first(a[i][2]);
			}
		}
		}
	}
}


void follow(char ch){
if(a[0][0]==ch){
printf("$");
}

for(int i=0;i<n;i++){
	for(int j=2;j<strlen(a[i]);j++){
		if(a[i][j]==ch){
			 if(a[i][j+1]!='\0'){
			first(a[i][j+1]);
			}
		}else if(a[i][0]!=ch){
		follow(a[i][0]);
		}
	}
}



}

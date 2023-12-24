#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<ctype.h>

char input[20];
int i,error;
void E();
void Eprime();
void T();
void Tprime();
void F();

int main(){
int i=0;
int error = 0;
printf("Enter the experssion\n ");
scanf("%s",input);
E();
if(strlen(input)==i && error == 0){
printf("Valid expersion");
}
else{
printf("Invlaid experssion");
}
}

void E(){
T();
Eprime();
}

void Eprime(){
if(input[i]=='+' || input[i]=='-'){
i++;
T();
Eprime();
}
}

void T(){
F();
Tprime();
}

void Tprime(){
if(input[i]=='*' || input[i]=='/'){
i++;
T();
Tprime();
}
}

void F(){
if(isalnum(input[i])){
 i++;
}else if(input[i]=='('){
 i++;
 E();
 if(input[i]==')'){
 i++;
 }else{error=1;}
}else{error = 1;}
}

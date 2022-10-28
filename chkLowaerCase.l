%{
	#include<stdio.h>
%}

%%

[a-z] {printf("Yes");}

%%

int yywrap(){}

int main()

{

printf("Enter any corrector\n");
yylex();
return 0;

}
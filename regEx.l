%{
	#include<stdio.h>
%}

%%

([0-9])+[.]([0-9])+([A-Z])+[-]([0-9])+     {printf("Yes");}

%%

int yywrap(){}

int main()

{

printf("Enter any corrector\n");
yylex();
return 0;

}
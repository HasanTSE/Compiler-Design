%option noyywrap
%{
	#include<stdio.h>
%}
num [0-9]
%%
{num} {printf("This is a digit\n");}
%%
int main()
{
         yylex();
	return 0;
}
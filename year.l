%option noyywrap
%{
	#include<stdio.h>
	#include<string.h>
	int y;
%}
YR ([0-9])+
%%
{YR} {
     y=atoi(yytext);
     if(y%4==0)
     {
     printf(""%d is a leap yaer\n",y);
     }
     else
     {
     printf(""%d is not a leap yaer\n",y);
     }
%%
int yywrap(){}
int main()
{
	yylex();
	return 0;
}
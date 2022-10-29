%option noyywrap
%{
	#include<stdio.h>
	#include<string.h>
	int l = 0, s = 0, c = 0, w = 0;
%}

LN	\n
SP	([ ])+
CH	.
WR	([a-zA-Z0-9])*

END \n 
  
%%

{LN}	{l++;}
{SP}	{s++;}
{CH}	{c++;}
{WR}	{w++;}

{END} 

{printf("The number of Line : %d", l);
printf("The number of Space : %d", s);
printf("The number of Characters : %d", c);
printf("The number of Words : %d", w);}


%%
int yywrap(void){}
int main()
{
         yylex();
	return 0;
}
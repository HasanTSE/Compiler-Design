%{
	#include<stdio.h>
	int y;
%}
NUM ([0-9])+

%%
{NUM}		{
			y=atoi(yytext);
			if(y%2==0)
			{
			printf("%d is even",y);
			}
			else
			{
			printf("%d is odd",y);
			}

		}
%%
int yywrap(){}
int main()
{
        yylex();
	
}
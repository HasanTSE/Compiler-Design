%{

#include <stdio.h>
#include "YaccCodeCal.tab.h"	//yacc file included
extern int yylval;		//int yylex(void) call to invoke lexer, returns token and store the value of the integer in yylval

%}


%%

[0-9]+	{yylval = atoi(yytext) ; return Num ;}		//Convert the string into integer

"+"	{return Plus;}
"-"	{return Min;}
"*"	{return Mul;}
"/"	{return Div;}
"^"	{return Power;}

%%
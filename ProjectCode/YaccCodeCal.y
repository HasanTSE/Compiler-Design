%{
#include<stdio.h>	//Header file
#include<math.h>	//Header file
#define YYSTYPE int	//Header file that yylval is always declared to have type YYSTYPE.
extern FILE *yyin;	// for the file opened by fopen
extern FILE *yyout;	// for the file opened by fopen
int yylex();		//yylex() returns an integer value which represents a token type. This tells YACC what kind of token it has read.
void yyerror (char const *s);	//yyerror is called by the parser when there is an error
%}

%token Num Plus Min Mul Div Power	//declaration of Token

%%

exp: Num Plus Num	{$$ = $1+$3 ;printf("The result of %d and %d addition operation  : %d",$1,$3,$$);}
exp: Num Min Num 	{$$ = $1-$3 ;printf("The result of %d and %d  substraction operation : %d",$1,$3,$$);}
exp: Num Mul Num        {$$ = $1*$3 ;printf("The result of %d and %d  multiplication operation : %d",$1,$3,$$);}
exp: Num Div Num 	{$$ = $1/$3 ;printf("The result of %d and %d  division operation : %d",$1,$3,$$);}

exp: Num Power Num      {$$ = pow($1,$3)+0.5 ;printf("The result of %d and %d power operation : %d",$1,$3,$$);}

%%


int main()
{

printf("Calculating operation done, Please check the Output File.");

	yyin = freopen("input.txt","r",stdin);	//Read from input file
	yyout = freopen("output.txt","w",stdout);	//write in output file

yyparse();	//Called once from main(). Repeatedly calls yylex() until done.
return 0;

}


void yyerror (char const *s)
{
fprintf(stderr, "%s\n", s);
}

int yywrap()
{
return 1;
}


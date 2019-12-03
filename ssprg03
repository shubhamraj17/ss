//exp.l
%{
	#include "y.tab.h"
	#include<stdio.h>
	extern int yylaval;
%}

%%
[0-9]+ {	yylval=atoi(yytext);
			return NUMBER; }
[\t] ;
[\n] return NL;
. return yytext[0];
%%

//exp.y
/*
%{
	#include<stdio.h>
	int flag=0;
%}

%token NUMBER NL
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
VAE : E NL {$$=$1 ; printf("Result : %d\n",$$); return 0; }
E : E '+' E {$$=$1+$3;} | E '-' E {$$=$1-$3;} |  E '*' E {$$=$1*$3;} | E '/' E {$$=$1/$3;} | E '%' E {$$=$1%$3;} | '(' E ')' {$$=$2;} | NUMBER {$$=$1;}
;
%%

int main()
{
	printf("Enter the Arithmetic Expression: ");
	yyparse();
	if(flag==0)
		printf("Expression Valid !!\n");
	else
		printf("Expression Invalid !!\n");
	return 0;
}

int yyerror()
{
	flag=1;
	return 0;
}
*/

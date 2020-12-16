%{
	#include<stdio.h>
	int line= 1,key= 0,num= 0,id= 0;
%}

%%
int|auto|long|char|signed|void|default|character|print|else|float
	{fprintf(yyout, "Keyword %s at line : %d\n", yytext,line); key++;}
[a-zA-z][a-zA-Z0-9]* {fprintf(yyout, "Identifier %s at line : %d\n",yytext,line); id++;}
[0-9]+ {fprintf(yyout,"Number %s at line %d\n",yytext,line); num++;}
[\n] {line++;}
. ;
%%

int main()
{
	yyin=fopen("input.txt", "r");
	yyout=fopen("output.txt", "w");
	yylex();
	return 0;
}

int yywrap()
{

}


%{
	#include "y.tab.h"
	#include <stdio.h>
	extern int yylval;
%}

%%
[0-9]+ {
	yylval = atoi(yytext);
	return NUMBER;
}
[\t] ;
[\n] return NL;
. return yytext[0];
%%

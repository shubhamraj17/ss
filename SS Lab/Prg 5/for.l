%{
	#include <stdio.h>
	#include "y.tab.h"
%}

%%
[\t][\n]
[0-9]+ 	{return NUM;}
for 	{return FOR;}

[a-zA-Z][a-zA-Z0-9]* return ID;

"<=" 	{return LE;}
">=" 	{return GE;}
"==" 	{return EQ;}
"!=" 	{return NE;}
"||"	{return OR;}
"&&"	{return AND;}
. 		{return yytext[0];}
%%

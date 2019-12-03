%option noyywrap
%{
	#include "y.tab.h"
	#include <stdio.h>
	#include <string.h>
%}

%%
"LDA"|"STA"|"ADD"|"SUB"|"START"|"END"|"WORD"|"RESW" {yylval.string=strdup(yytext); return INSTRUCTION;}
[a-zA-Z]* {yylval.string=strdup(yytext); return SYMBOL;}
[0-9]* {yylval.num=atoi(yytext); return CONSTANT;}
[\n] ;
. ;
%%

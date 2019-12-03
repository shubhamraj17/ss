//opcode.l
%option noyywrap
%{
	#include "y.tab.h"
	#include<stdio.h>
	#include<string.h>
%}
%%
"LDA"|"STA"|"ADD"|"SUB"|"START"|"END"|"WORD"|"RESW" {yylval.string=strdup(yytext);	return INSTRUCTION;}
[a-zA-Z]* {yylval.string=strdup(yytext); return SYMBOL;}
[0-9]* {yylval.num=atoi(yytext); return CONSTANT;}
[\n] ;
. ;
%%
//opcode.y
/*
%{
	#include<stdio.h>
	#include<string.h>
	#include<stdlib.h>
	int valid=0;
	int line=1;
	
	void extract(char *str)
	{
		
		if(strcmp(str,"LDA")==0)
			printf("INSTRUCTION: %s\t OPCODE: 00\n",str);
		else if(strcmp(str,"ADD")==0)
			printf("INSTRUCTION: %s\t OPCODE: 18\n",str);
		else if(strcmp(str,"SUB")==0)
			printf("INSTRUCTION: %s\t OPCODE: 1C\n",str);
		else if(strcmp(str,"STA")==0)
			printf("INSTRUCTION: %s\t OPCODE: 0C\n",str);
		//else if(strcmp(str,"JLT")==0)
			//printf("INSTRUCTION: %s\t OPCODE: 38\n",str);
		//else if(strcmp(str,"WD")==0)
			//printf("INSTRUCTION: %s\t OPCODE: DC\n",str);
		//int yylex();
		//int yyerror();
	}
%}

%union {
		char *string;
		int num;
}
%token <string> INSTRUCTION
%token <string> SYMBOL
%token <int> CONSTANT

%%

STMT : INSTN STMT {valid=1;} | INSTN : LABEL INSTRUCTION SYM {printf("Instruction read: %s\n",$2); extract($2); line++;} | INSTRUCTION SYM {printf("Instruction read: %s\n",$1); extract($1); line++;}
LABEL : SYMBOL{;}
SYM : SYMBOL{;} | CONSTANT{;};

%%

int yyerror()
{
	printf("Invalid Synatx in line: %d\n",line);
	return 1;
}
extern FILE *yyin;
int main()
{
	FILE *fp;
	//fp=fopen("sic.txt","r");
	yyparse();
	if(valid==1)
		printf("ALL INSTRUCTIONS ARE VALID!!\n");
		return 0;
}
*/

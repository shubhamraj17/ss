%{
	#include <stdio.h>
	int flag = 0;
%}

%token NUMBER NL

%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
VAE: E NL { $$ = $1; printf("Result : %d\n", $$); return 0;}
E: E '+' E { $$ = $1 + $3;}
|E '-' E { $$ = $1 - $3;}
|E '*' E { $$ = $1 * $3;}
|E '/' E { $$ = $1 / $3;}
|E '%' E { $$ = $1 % $3;}
|'(' E ')' { $$ = $2;}
|NUMBER { $$ = $1;}
;
%%

int main() {
	printf("Enter the arithmetic exp : ");
	
	yyparse();
	
	if(flag == 0) printf("VALID\n");
	else printf("INVALID\n");
	
	return 0;
}

int yyerror() {
	flag = 1;
	return 0;
}

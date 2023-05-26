%{
#include "parser.tab.h"
%}

%option noyywrap

%%

"\n" return 0;
[ \t] ;

"private" {return PRIVATE;}
"public" {return PUBLIC;}
"protected" {return PROTECTED;}
"implenets" {return IMPLEMENTS;}
"extends" {return EXTENDS;}
"class" {return CLASS;}
"interface" {return INTERFACE;}
"if" {return IF;}
"while" {return WHILE;}
"return" {return RETURN;}
"true" {return BOOLEAN;}
"false" {return BOOLEAN;}

[A-z][a-z0-9]* {return NAME;}

"\""[A-z0-9]*"\"" {return STRING;}
"-"?[1-9][0-9]* {return INT;}

"+"|"-"|"*"|"/"|"="|"==" {return OPERATOR;}

%%

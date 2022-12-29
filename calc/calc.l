%{
    #include"y.tab.h"

    void yyerror(const char *);
%}
%%

"+"    { return ADD; }
"-"    { return SUB; }
"*"    { return MUL; }
"/"    { return DIV; }
"|"    { return ABS; }
[0-9]+ { yylval = atoi(yytext); return INT; }
\n     { return EOL; }

[ \t] {}  // do nothing

.   {printf("UNKNOWN : %c \n" , *yytext);}    // print not matching pattern 

%%

int yywrap()
{
    return 1 ;
}
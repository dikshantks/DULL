%{
    #include <stdlib.h>
    #include <stdio.h>
    #include <limits.h>
    %}
%%
"int"            {return INT;}
"long"           {return LONG;}
"for"            {return FOR;}
"while"          {return WHILE;}
"break"          {return BREAK;}
"continue"       {return CONTINUE;}
"if"             {return IF;}
"else"           {return ELSE;}
"return"         {return RETURN;}
"//"             {return COMMENT ;}
"--"			 {return DECREMENT;}
"++"			 {return INCREMENT;}
"-="             {return SUB_ASSIGN;}
"+="             {return ADD_ASSIGN;}
"*="             {return MUL_ASSIGN;}
"/="             {return DIV_ASSIGN;}
"%="             {return MOD_ASSIGN;}
"&&"             {return LOGICAL_AND;}
"||"             {return LOGICAL_OR;}
"<="             {return LS_EQ;}
">="             {return GR_EQ;}
"=="             {return EQ;}
"!="		     {return NOT_EQ;}
.                {return yytext[0];}

[]
%%
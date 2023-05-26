%{
#include <stdio.h>
int cond=0;
int loops=0;
int assigns=0;
int funcs=0;
int classes=0;
void yyerror(const char* msg){printf("Error: %s\n", msg);}
%}


%token PUBLIC
%token PRIVATE
%token PROTECTED
%token NAME
%token IMPLEMENTS
%token EXTENDS
%token CLASS
%token INTERFACE
%token IF
%token WHILE
%token STRING
%token BOOLEAN
%token OPERATOR
%token RETURN 
%token INT

%%

Code: Class Code | /*empty*/ {printf("classes: %d\n", classes); printf("functions: %d\n", funcs); printf("conditions: %d\n", cond);  printf("loops: %d\n", loops); printf("assign operations: %d\n", assigns);} ;
Class: Modifier ClassType NAME Extra '{' Functions '}' ;
Modifier: PUBLIC | PRIVATE | PROTECTED ;
ClassType: CLASS | INTERFACE ;
Extra: IMPLEMENTS NAME | EXTENDS NAME | /*empty*/ ;
Functions: Function Functions | /*empty*/ ;
Function: Type NAME '(' Arguments ')' '{' Commands '}' {funcs++;} ;
Arguments: Argument Arguments | /*empty*/ ;
Argument: Type NAME Separator ;
Type: STRING | INT | BOOLEAN ;
Separator: ',' | /*empty*/ ;
Commands: Command Commands | /*empty*/ ;
Command: Condition | Loop | Assignment | Return ;
Condition: IF '(' Comparison ')' '{' Commands '}' {cond++;} ;
Loop: WHILE '(' Comparison ')' '{' Commands '}' {loops++;} ;
Comparison: NAME OPERATOR INT | NAME OPERATOR NAME | INT OPERATOR NAME ;
Assignment: NAME '=' Type ';' {assigns++;} ;
Return: RETURN RetVal ';' ;
RetVal: NAME | Type ;

%%

int main()
{
   yyparse();
   return 0;
}
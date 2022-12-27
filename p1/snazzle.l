%{
  #include <iostream>
  using namespace std;
  extern int yylex();
%}
%option noyywrap



%% 
[ \t\n]         ;
[0-9]+\.[0-9]+  { cout << "Found a floating-point number:" << yytext << endl; }
[0-9]+          { cout << "Found an integer:" << yytext << endl; }
[a-zA-Z0-9]+    { cout << "Found a string: " << yytext << endl; }
%%


//gfhfjgjgj
int main(int, char**) {
    FILE *myfile = fopen("one.dull","r") ;

    if(!myfile)
    {
cout << "cant open the file " ; 
return -1;
    }

    yyin = myfile ; 
  // lex through the input:
  while (yylex());
}
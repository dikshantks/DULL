%{

    
    enum tokens{
    INTEGER = 258,
    ADD = 259,
    SUB = 260,
    MUL = 261,
    DIV = 262,
    ABS = 263,
    EOL = 264,

    } ;

    int yylval ;
%}
%%

"" {return ; }
"" {return ; }
"" {return ; }
"" {return ; }
"" {return ; }
"" {return ; }
"" {return ; }
. { cout << "MYSTERY" ; }

%%

main(int    argc ,char ** argv)
{
    int tok ;

    while(tok = yylex())
    {
        cout << tok ; 

        if(tok == number)
        {
            cout << ""
        }
    }
}
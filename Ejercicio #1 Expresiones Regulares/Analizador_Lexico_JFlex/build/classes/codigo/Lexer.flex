package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
W=[a-zA-Z_-]+
Z=[0-9]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
{W}({W}|{Z})* {lexeme=yytext(); return IdentificadorP;}
("(-"{Z}+")")|{Z}+ {lexeme=yytext(); return IdentificadorN;}
{Z}({W}|{Z})* {lexeme=yytext(); return NO;}
 . {return ERROR;}




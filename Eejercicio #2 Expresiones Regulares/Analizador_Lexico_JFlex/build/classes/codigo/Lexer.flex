package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
A1= a{1}[a-z]*a{1}
A2= b{1}[a-z]*b{1}
A3 = [a-zA-Z]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
{A1}|{A2} {lexeme=yytext(); return SI;}
{A3} {lexeme=yytext(); return NO;}




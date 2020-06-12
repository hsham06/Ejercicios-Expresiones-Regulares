package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
L = [Ii][Nn][Tt][Ee][Gg][Ee][Rr]
A = [Cc][Hh][Aa][Rr]
D = [Rr][Ee][Aa][Ll]
C = [a-zA-Z]+
espacio=[ ,\t,\r,\n]+
%{
    public String lexeme;
%}
%%
INTEGER|
REAL|
CHAR|
while {lexeme=yytext(); return Reservada;}
{espacio} {/*Ignore*/}
"//".* {/*Ignore*/}
 ({A}|{L}|{D})* {lexeme=yytext(); return Aceptada;}
 {C} {lexeme=yytext();return A ;}



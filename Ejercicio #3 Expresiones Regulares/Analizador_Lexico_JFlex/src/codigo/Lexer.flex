package codigo;
import static codigo.Tokens.*;
%%
%class Lexer
%type Tokens
A1 = 10{1}[0-9]{5}
A2 = [0-9]+
espacio=[ ,\t,\r,\n]+
%{
public String lexeme;
%}
%%
{espacio} {/*Ignore*/}
{A1} {lexeme=yytext(); return SI ;}
{A2} {lexeme=yytext(); return NO;}
. {return ERROR;}




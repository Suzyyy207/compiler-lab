%{
#include <stdio.h>
#include <string.h>
#include "TeaplAst.h"
#include "y.tab.h"
extern int line, col;
int c;
int calc(char *s, int len);
%}


%%
<INITIAL>"\t" { col+=4; }
<INITIAL>[1-9][0-9]* {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), calc(yytext, yyleng));
    col+=yyleng;
    return NUM;
}
<INITIAL>0 {
    yylval.tokenNum = A_TokenNum(A_Pos(line, col), 0);
    ++col;
    return NUM;
}
<INITIAL>[a-z_A-Z][a-z_A-Z0-9]* {
    yylval.tokenId = A_TokenId(A_Pos(line, col), yytext);
    col+=yyleng;
    return ID;
}
<INITIAL>"+" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return ADD;
}
<INITIAL>"-" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return SUB;
}
<INITIAL>"*" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return MUL;
}
<INITIAL>"/" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return MUL;
}
<INITIAL>";" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return SEMICOLON;
}
<INITIAL>"," {
    yylval.pos = A_Pos(line, col);
    ++col;
    return COMMA;
}
<INITIAL>"(" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LPAREN;
}
<INITIAL>")" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return RPAREN;
}
<INITIAL>"[" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LBRACKET;
}
<INITIAL>"]" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return RBRACKET;
}
<INITIAL>"." {
    yylval.pos = A_Pos(line, col);
    ++col;
    return DOT;
}
<INITIAL>"&&" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return AND;
}
<INITIAL>"||" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return OR;
}
<INITIAL>"!" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return NOT;
}
<INITIAL>">" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return GT;
}
<INITIAL>"<" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LT;
}
<INITIAL>">=" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return GE;
}
<INITIAL>"<=" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return LE;
}
<INITIAL>"==" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return EQ;
}
<INITIAL>"!=" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return NE;
}
<INITIAL>"=" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return ASS;
}
<INITIAL>":" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return COLON;
}
<INITIAL>"{" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LBRACE;
}
<INITIAL>"}" {
    yylval.pos = A_Pos(line, col);
    ++col;
    return RBRACE;
}
<INITIAL>"->" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return POINT;
}
<INITIAL>"let" {
    yylval.pos = A_Pos(line, col);
    col+=3;
    return LET;
}
<INITIAL>"int" {
    yylval.pos = A_Pos(line, col);
    col+=3;
    return INT;
}
<INITIAL>"struct" {
    yylval.pos = A_Pos(line, col);
    col+=6;
    return STRUCT;
}
<INITIAL>"fn" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return FN;
}
<INITIAL>"ret" {
    yylval.pos = A_Pos(line, col);
    col+=3;
    return RET;
}
<INITIAL>"break" {
    yylval.pos = A_Pos(line, col);
    col+=5;
    return BREAK;
}
<INITIAL>"continue" {
    yylval.pos = A_Pos(line, col);
    col+=8;
    return CONTINUE;
}
<INITIAL>"if" {
    yylval.pos = A_Pos(line, col);
    col+=2;
    return IF;
}
<INITIAL>"else" {
    yylval.pos = A_Pos(line, col);
    col+=4;
    return ELSE;
}
<INITIAL>"while" {
    yylval.pos = A_Pos(line, col);
    col+=5;
    return WHILE;
}
%%
%%

// This function takes a string of digits and its length as input, and returns the integer value of the string.
int calc(char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}
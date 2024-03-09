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
<INITIAL>[+] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return ADD;
}
<INITIAL>[-] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return SUB;
}
<INITIAL>[\*] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return MUL;
}
<INITIAL>[\/] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return MUL;
}
<INITIAL>[;] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return SEMICOLON;
}
<INITIAL>[(] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LPAREN;
}
<INITIAL>[)] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return RPAREN;
}
<INITIAL>[\[] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return LBRACKET;
}
<INITIAL>[\]] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return RBRACKET;
}
<INITIAL>[\.] {
    yylval.pos = A_Pos(line, col);
    ++col;
    return DOT;
}
%%

// This function takes a string of digits and its length as input, and returns the integer value of the string.
int calc(char *s, int len) {
    int ret = 0;
    for(int i = 0; i < len; i++)
        ret = ret * 10 + (s[i] - '0');
    return ret;
}
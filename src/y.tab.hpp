/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_HPP_INCLUDED
# define YY_YY_Y_TAB_HPP_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    NUM = 258,                     /* NUM  */
    ID = 259,                      /* ID  */
    LET = 260,                     /* LET  */
    INT = 261,                     /* INT  */
    STRUCT = 262,                  /* STRUCT  */
    FN = 263,                      /* FN  */
    RET = 264,                     /* RET  */
    IF = 265,                      /* IF  */
    ELSE = 266,                    /* ELSE  */
    WHILE = 267,                   /* WHILE  */
    BREAK = 268,                   /* BREAK  */
    CONTINUE = 269,                /* CONTINUE  */
    ADD = 270,                     /* ADD  */
    SUB = 271,                     /* SUB  */
    MUL = 272,                     /* MUL  */
    DIV = 273,                     /* DIV  */
    AND = 274,                     /* AND  */
    OR = 275,                      /* OR  */
    NOT = 276,                     /* NOT  */
    GT = 277,                      /* GT  */
    LT = 278,                      /* LT  */
    GE = 279,                      /* GE  */
    LE = 280,                      /* LE  */
    EQ = 281,                      /* EQ  */
    NE = 282,                      /* NE  */
    ASS = 283,                     /* ASS  */
    LPAREN = 284,                  /* LPAREN  */
    RPAREN = 285,                  /* RPAREN  */
    LBRACKET = 286,                /* LBRACKET  */
    RBRACKET = 287,                /* RBRACKET  */
    DOT = 288,                     /* DOT  */
    COMMA = 289,                   /* COMMA  */
    LBRACE = 290,                  /* LBRACE  */
    RBRACE = 291,                  /* RBRACE  */
    COLON = 292,                   /* COLON  */
    POINT = 293,                   /* POINT  */
    SEMICOLON = 294                /* SEMICOLON  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define NUM 258
#define ID 259
#define LET 260
#define INT 261
#define STRUCT 262
#define FN 263
#define RET 264
#define IF 265
#define ELSE 266
#define WHILE 267
#define BREAK 268
#define CONTINUE 269
#define ADD 270
#define SUB 271
#define MUL 272
#define DIV 273
#define AND 274
#define OR 275
#define NOT 276
#define GT 277
#define LT 278
#define GE 279
#define LE 280
#define EQ 281
#define NE 282
#define ASS 283
#define LPAREN 284
#define RPAREN 285
#define LBRACKET 286
#define RBRACKET 287
#define DOT 288
#define COMMA 289
#define LBRACE 290
#define RBRACE 291
#define COLON 292
#define POINT 293
#define SEMICOLON 294

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 21 "parser.yacc"

  A_pos pos;
  A_program program;
  A_programElementList programElementList;
  A_programElement programElement;
  A_arithExpr arithExpr;
  A_boolExpr boolExpr;
  A_exprUnit exprUnit;
  A_boolUnit boolUnit;
  A_varDeclList varDeclList;
  A_structDef structDef;
  A_varDeclStmt varDeclStmt;
  A_varDecl varDecl;
  A_varDef varDef;
  A_fnDecl fnDecl;
  A_fnDeclStmt fnDeclStmt;
  A_codeBlockStmt codeBlockStmt;
  A_codeBlockStmtList codeBlockStmtList;
  A_ifStmt ifStmt;
  A_whileStmt whileStmt;
  A_callStmt callStmt;
  A_returnStmt returnStmt;
  A_paramDecl paramDecl;
  A_fnDef fnDef;
  A_fnCall fnCall;
  A_leftVal leftVal;
  A_rightVal rightVal;
  A_rightValList rightValList;
  A_assignStmt assignStmt;
  A_type type;
  A_tokenNum tokenNum;
  A_tokenId tokenId;

#line 179 "y.tab.hpp"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_HPP_INCLUDED  */

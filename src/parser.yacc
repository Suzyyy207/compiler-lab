%{
#include <stdio.h>
#include "TeaplAst.h"

extern A_pos pos;
extern A_program root;

extern int yylex(void);
extern "C"{
extern void yyerror(char *s); 
extern int  yywrap();
}

%}

// TODO:
// your parser

%union {
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
  A_fnDeclStmt fnDeclStmt;
  A_fnDef fnDef;
  A_fnCall fnCall;
  A_leftVal leftVal;
  A_rightVal rightVal;
  A_rightValList rightValList;
  A_assignStmt assignStmt;
  A_tokenNum tokenNum;
  A_tokenId tokenId;
}

%token <tokenNum> NUM
%token <tokenId> ID

%token <pos> ADD
%token <pos> SUB
%token <pos> MUL
%token <pos> DIV
%token <pos> LPAREN
%token <pos> RPAREN
%token <pos> LBRACKET
%token <pos> RBRACKET
%token <pos> DOT
%token <pos> AND
%token <pos> OR
%token <pos> NOT
%token <pos> GT
%token <pos> LT
%token <pos> GE
%token <pos> LE
%token <pos> EQ
%token <pos> NE
%token <pos> ASS
%token <pos> COMMA
%token <pos> LET
%token <pos> LBRACE
%token <pos> RBRACE
%token <pos> INT
%token <pos> COLON
%token <pos> SEMICOLON // ;

%type <program> Program
%type <arithExpr> ArithExpr
%type <boolExpr> BoolExpr
%type <boolUnit> BoolUnit
%type <programElementList> ProgramElementList
%type <programElement> ProgramElement
%type <exprUnit> ExprUnit
%type <varDeclList> VarDeclList
%type <structDef> StructDef
%type <varDeclStmt> VarDeclStmt
%type <varDecl> VarDecl
%type <varDef> VarDef
%type <fnDeclStmt> FnDeclStmt
%type <fnDef> FnDef
%type <fnCall> FnCall
%type <leftVal> LeftVal
%type <rightVal> RightVal
%type <rightValList> RightValList
%type <assignStmt> AssignStmt

%start Program

%%                   /* beginning of rules section */

Program: ProgramElementList 
{  
  root = A_Program($1);
  $$ = A_Program($1);
}
;

ProgramElementList: ProgramElement ProgramElementList
{
  $$ = A_ProgramElementList($1, $2);
}
|
{
  $$ = nullptr;
}
;

ProgramElement: VarDeclStmt
{
  $$ = A_ProgramVarDeclStmt($1->pos, $1);
}
| StructDef
{
  $$ = A_ProgramStructDef($1->pos, $1);
}
| FnDeclStmt
{
  $$ = A_ProgramFnDeclStmt($1->pos, $1);
}
| FnDef
{
  $$ = A_ProgramFnDef($1->pos, $1);
}
| SEMICOLON
{
  $$ = A_ProgramNullStmt($1);
}
;

//arith expression
ArithExpr: ArithExpr ADD ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_add, $1, $3));
}
| ArithExpr SUB ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_sub, $1, $3));
}
| ArithExpr MUL ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_mul, $1, $3));
}
| ArithExpr DIV ArithExpr
{
  $$ = A_ArithBiOp_Expr($1->pos, A_ArithBiOpExpr($1->pos, A_div, $1, $3));
}
| ExprUnit
{
  $$ = A_ExprUnit($1->pos, $1);
}
;

//expression
ExprUnit: NUM
{
  $$ = A_NumExprUnit($1->pos, $1->num);
}
| ID
{
  $$ = A_IdExprUnit($1->pos, $1->id);
}
| LPAREN ArithExpr RPAREN
{
  //? $2->pos
  $$ = A_ArithExprUnit($1->pos, $2);
}
| FnCall
{
  $$ = A_CallExprUnit($1->pos, $1);
}
| LeftVal LBRACKET ID RBRACKET
{
  $$ = A_ArrayExprUnit($1->pos,A_ArrayExpr($1->pos, $1, A_IdIndexExpr($3->pos, $3->id)));
}
| LeftVal LBRACKET NUM RBRACKET
{
  $$ = A_ArrayExprUnit($1->pos,A_ArrayExpr($1->pos, $1, A_NumIndexExpr($3->pos, $3->num)));
}
| LeftVal DOT ID
{
  $$ = A_MemberExprUnit($1->pos, A_MemberExpr($1->pos, $1, $3->id));
}
| SUB ExprUnit
{
  $$ = A_ArithUExprUnit($1->pos, A_ArithUExpr($1->pos, A_neg, $2));
}
;

// boolen expression
BoolExpr: BoolExpr AND BoolExpr
{
  $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_and, $1, $3));
}
| BoolExpr OR BoolExpr
{
  $$ = A_BoolBiOp_Expr($1->pos, A_BoolBiOpExpr($1->pos, A_or, $1, $3));
}
| BoolUnit
{
  $$ = A_BoolExpr($1->pos, $1);
}
;

//boolen unit
BoolUnit: ExprUnit GT ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_gt, $1, $3));
}
| ExprUnit LT ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_lt, $1, $3));
}
| ExprUnit GE ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_ge, $1, $3));
}
| ExprUnit LE ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_le, $1, $3));
}
| ExprUnit EQ ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_eq, $1, $3));
}
| ExprUnit NE ExprUnit
{
  $$ = A_ComExprUnit($1->pos, A_ComExpr($1->pos, A_ne, $1, $3));
}
| LPAREN BoolExpr RPAREN
{
  $$ = A_BoolExprUnit($1->pos, $2);
}
| NOT BoolUnit
{
  $$ = A_BoolUOpExprUnit($1->pos, A_BoolUOpExpr($1->pos, A_not, $3));
}
;


// assign statement
AssignStmt: LeftVal ASS RightVal SEMICOLON
{
  $$ = A_AssignStmt($1->pos, $1, $3);
}
;

// right value
RightVal: ArithExpr
{
  $$ = A_ArithExprRVal($1->pos, $1);
}
| BoolExpr
{
  $$ = A_BoolExprRVal($1->pos, $1);
}
;

// left value
LeftVal: ID
{
  $$ = A_IdExprLVal($1->pos, $1->id);
}
| LeftVal LBRACKET ID RBRACKET
{
  $$ = A_ArrExprLVal($1->pos, A_ArrayExpr($1->pos, $1, A_IdIndexExpr($3->pos, $3->id)));
}
| LeftVal LBRACKET NUM RBRACKET
{
  $$ = A_ArrExprLVal($1->pos, A_ArrayExpr($1->pos, $1,A_NumIndexExpr($3->pos, $3->num)));
}
| LeftVal DOT ID
{
  $$ = A_MemberExprLVal($1->pos, A_MemberExpr($1->pos, $1, $3->id));
}
;

//right value list
RightValList: RightVal
{
  $$ = A_RightValList($1, nullptr);
}
| RightVal COMMA RightValList
{
  $$ = A_RightValList($1, $3);
}
;

// function call
FnCall: ID LPAREN RightValList RPAREN
{
  $$ = A_FnCall($1->pos, $1->id, $3);
}
;

// variable
VarDecl: ID COLON INT
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_NativeType($3->pos, A_intTypeKind)));
}
| ID COLON ID
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_StructType($3->pos,$3->id)));
}
| ID LBRACKET NUM RBRACKET COLON INT
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, A_NativeType($6->pos, A_intTypeKind)));
}
| ID LBRACKET NUM RBRACKET COLON ID
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num,A_StructType($6->pos,$6->id)));
}
| ID
{
  //default 类型？
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_NativeType(A_pos(nullptr, nullptr), A_intTypeKind)));
}
| ID LBRACKET NUM RBRACKET
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, A_NativeType(A_pos(nullptr, nullptr), A_intTypeKind)));
}
;

//variable definition
VarDef: ID COLON INT ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_NativeType($3->pos, A_intTypeKind), $5));
}
| ID COLON ID ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_StructType($3->pos,$3->id), $5));
}
| ID ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_NativeType(A_pos(nullptr, nullptr), A_intTypeKind), $3));
}
| ID LBRACKET NUM RBRACKET COLON INT ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_NativeType($6->pos, A_intTypeKind), $9));
}
| ID LBRACKET NUM RBRACKET COLON ID ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_StructType($6->pos,$6->id), $9));
}
| ID LBRACKET NUM RBRACKET ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_NativeType(nullptr, nullptr), $7));
}
;

//variable declare statement
VarDeclStmt: LET VarDecl SEMICOLON
{
  $$ = A_VarDeclStmt($1->pos, $2);
}
| LET VarDef SEMICOLON
{
  $$ = A_VarDefStmt($1->pos, $2);
}
;

// variable declare list
VarDeclList: VarDecl
{
  $$ = A_varDeclList($1, nullptr);
}
| VarDecl COMMA VarDeclList
{
  $$ = varDeclList($1, $3);
}
;
%%

extern "C"{
void yyerror(char * s)
{
  fprintf(stderr, "%s\n",s);
}
int yywrap()
{
  return(1);
}
}



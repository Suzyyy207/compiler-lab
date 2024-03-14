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
  A_fnDecl fnDecl;
  A_fnDeclStmt fnDeclStmt;
  A_codeBlockStmt codeBlockStmt;
  A_codeBlockStmtList codeBlockStmtList;
  A_ifStmt ifStmt;
  A_whileStmt whileStmt;
  A_callStmt callStmt;
  A_returnStmt returnStmt;
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

%token <pos> LET
%token <pos> INT
%token <pos> STRUCT
%token <pos> FN
%token <pos> RET
%token <pos> IF
%token <pos> ELSE
%token <pos> WHILE
%token <pos> BREAK
%token <pos> CONTINUE

%token <pos> ADD
%token <pos> SUB
%token <pos> MUL
%token <pos> DIV
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

%token <pos> LPAREN
%token <pos> RPAREN
%token <pos> LBRACKET
%token <pos> RBRACKET
%token <pos> DOT
%token <pos> COMMA
%token <pos> LBRACE
%token <pos> RBRACE
%token <pos> COLON
%token <pos> POINT
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
%type <fnDecl> FnDecl
%type <fnDeclStmt> FnDeclStmt
%type <codeBlockStmt> CodeBlockStmt
%type <codeBlockStmtList> CodeBlockStmtList
%type <ifStmt> IfStmt
%type <whileStmt> WhileStmt
%type <returnStmt> ReturnStmt
%type <callStmt> CallStmt
%type <fnDef> FnDef
%type <fnCall> FnCall
%type <leftVal> LeftVal
%type <rightVal> RightVal
%type <rightValList> RightValList
%type <assignStmt> AssignStmt

%left SEMICOLON
%left COMMA
%left WHILE
%left IF
%left ELSE
%left ASS
%left EQ
%left NE
%left GT
%left LT
%left GE
%left LE
%left OR
%left AND
%left ADD SUB
%left MUL DIV
%left NOT
%left DOT
%left POINT
%left LPAREN
%left RPAREN
%left LBRACKET
%left RBRACKET

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

//structure definition
StructDef: STRUCT ID LBRACE VarDeclList RBRACE
{
  $$ = A_StructDef($1, $2->id, $4);
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
  $$ = A_ArithExprUnit($2->pos, $2);
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
  $$ = A_ArithUExprUnit($1, A_ArithUExpr($1, A_neg, $2));
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
  $$ = A_BoolExprUnit($1, $2);
}
| NOT BoolUnit
{
  $$ = A_BoolUOpExprUnit($1, A_BoolUOpExpr($1, A_not, $2));
}
;


// assign statement
AssignStmt: LeftVal ASS RightVal SEMICOLON
{
  $$ = A_AssignStmt($1->pos, $1, $3);
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
RightValList: RightValList COMMA RightVal
{
  $$ = A_RightValList($3, $1);
}
| RightVal
{
  $$ = A_RightValList($1, nullptr);
}
|
{
  $$ = nullptr;
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

// function call
FnCall: ID LPAREN RightValList RPAREN
{
  $$ = A_FnCall($1->pos, $1->id, $3);
}
;

//variable declare statement
VarDeclStmt: LET VarDecl SEMICOLON
{
  $$ = A_VarDeclStmt($1, $2);
}
| LET VarDef SEMICOLON
{
  $$ = A_VarDefStmt($1, $2);
}
;

// variable declare list
VarDeclList: VarDeclList COMMA VarDecl
{
  $$ = A_VarDeclList($3, $1);
}
| VarDecl
{
  $$ = A_VarDeclList($1, nullptr);
}
|
{
  $$ = nullptr;
}
;

// variable
VarDecl: ID COLON INT
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_NativeType($3, A_intTypeKind)));
}
| ID COLON ID
{
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_StructType($3->pos,$3->id)));
}
| ID LBRACKET NUM RBRACKET COLON INT
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, A_NativeType($6, A_intTypeKind)));
}
| ID LBRACKET NUM RBRACKET COLON ID
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num,A_StructType($6->pos,$6->id)));
}
| ID
{
  //default 类型？
  $$ = A_VarDecl_Scalar($1->pos, A_VarDeclScalar($1->pos, $1->id, A_NativeType(nullptr, A_intTypeKind)));
}
| ID LBRACKET NUM RBRACKET
{
  $$ = A_VarDecl_Array($1->pos, A_VarDeclArray($1->pos, $1->id, $3->num, A_NativeType(nullptr, A_intTypeKind)));
}
;

//variable definition
VarDef: ID COLON INT ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_NativeType($3, A_intTypeKind), $5));
}
| ID COLON ID ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_StructType($3->pos,$3->id), $5));
}
| ID ASS RightVal
{
  $$ = A_VarDef_Scalar($1->pos, A_VarDefScalar($1->pos, $1->id, A_NativeType(nullptr, A_intTypeKind), $3));
}
| ID LBRACKET NUM RBRACKET COLON INT ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_NativeType($6, A_intTypeKind), $9));
}
| ID LBRACKET NUM RBRACKET COLON ID ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_StructType($6->pos,$6->id), $9));
}
| ID LBRACKET NUM RBRACKET ASS LBRACE RightValList RBRACE
{
  $$ = A_VarDef_Array($1->pos, A_VarDefArray($1->pos, $1->id, $3->num, A_NativeType(nullptr, A_intTypeKind), $7));
}
;


//function definition
FnDef: FnDecl LBRACE CodeBlockStmtList RBRACE
{
  $$ = A_FnDef($1->pos, $1, $3);
}
;

//function declare statement
FnDeclStmt: FnDecl SEMICOLON
{
  $$ = A_FnDeclStmt($1->pos, $1);
}  
;

//function declare
FnDecl: FN ID LPAREN VarDeclList RPAREN
{
  $$ = A_FnDecl($1, $2->id, A_ParamDecl($4), nullptr);
}
| FN ID LPAREN VarDeclList RPAREN POINT INT
{
  $$ = A_FnDecl($1, $2->id, A_ParamDecl($4), A_NativeType($7, A_intTypeKind));
}
| FN ID LPAREN VarDeclList RPAREN POINT ID
{
  $$ = A_FnDecl($1, $2->id, A_ParamDecl($4), A_StructType($7->pos,$7->id));
}
;



//code block statement list
CodeBlockStmtList: CodeBlockStmtList CodeBlockStmt
{
  $$ = A_CodeBlockStmtList($2, $1);
}
| CodeBlockStmt
{
  $$ = A_CodeBlockStmtList($1, nullptr);
}
| 
{
  $$ = nullptr;
}
;

//code block statement
CodeBlockStmt: VarDeclStmt
{
  $$ = A_BlockVarDeclStmt($1->pos, $1);
}
| AssignStmt
{
  $$ = A_BlockAssignStmt($1->pos, $1);
}
| CallStmt
{
  $$ = A_BlockCallStmt($1->pos, $1);
}
| IfStmt
{
  $$ = A_BlockIfStmt($1->pos, $1);
}
| WhileStmt
{
  $$ = A_BlockWhileStmt($1->pos, $1);
}
| ReturnStmt
{
  $$ = A_BlockReturnStmt($1->pos, $1);
}
| CONTINUE SEMICOLON
{
  $$ =A_BlockContinueStmt($1);
}
| BREAK SEMICOLON
{
  $$ = A_BlockBreakStmt($1);
}
| SEMICOLON
{
  $$ = A_BlockNullStmt($1);
}
;

// return statement
ReturnStmt: RET RightVal SEMICOLON
{
  $$ = A_ReturnStmt($1, $2);  //?
}
| RET SEMICOLON
{
  $$ = A_ReturnStmt($1, nullptr);
}
;

// call statement
CallStmt: FnCall SEMICOLON
{
  $$ = A_CallStmt($1->pos, $1);
}
;

// if statement
IfStmt: IF LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE ELSE LBRACE CodeBlockStmtList RBRACE
{
  $$ = A_IfStmt($1, $3, $6, $10);
}
| IF LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE
{
  $$ = A_IfStmt($1, $3, $6, nullptr);
}
//IF LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE LBRACE ELSE CodeBlockStmtList RBRACE
//{
//  $$ = A_IfStmt($1, $3, $6, $10);
//}
;

// while statement
WhileStmt: WHILE LPAREN BoolExpr RPAREN LBRACE CodeBlockStmtList RBRACE
{
  $$ = A_WhileStmt($1, $3, $6);
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



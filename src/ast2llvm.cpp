#include "ast2llvm.h"
#include <vector>
#include <unordered_map>
#include <string>
#include <cassert>
#include <list>
#include <iostream>

using namespace std;
using namespace LLVMIR;

static unordered_map<string,FuncType> funcReturnMap;
static unordered_map<string,StructInfo> structInfoMap;
static unordered_map<string,Name_name*> globalVarMap;
static unordered_map<string,Temp_temp*> localVarMap;
static list<L_stm*> emit_irs;

LLVMIR::L_prog* ast2llvm(aA_program p)
{
    auto defs = ast2llvmProg_first(p);
    auto funcs = ast2llvmProg_second(p);
    vector<L_func*> funcs_block;
    for(const auto &f : funcs)
    {
        funcs_block.push_back(ast2llvmFuncBlock(f));
    }
    for(auto &f : funcs_block)
    {
        ast2llvm_moveAlloca(f);
    }
    return new L_prog(defs,funcs_block);
}

int ast2llvmRightVal_first(aA_rightVal r)
{
    if(r == nullptr)
    {
        return 0;
    }
    switch (r->kind)
    {
    case A_arithExprValKind:
    {
        return ast2llvmArithExpr_first(r->u.arithExpr);
        break;
    }
    case A_boolExprValKind:
    {
        return ast2llvmBoolExpr_first(r->u.boolExpr);
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmBoolExpr_first(aA_boolExpr b)
{
    switch (b->kind)
    {
    case A_boolBiOpExprKind:
    {
        return ast2llvmBoolBiOpExpr_first(b->u.boolBiOpExpr);
        break;
    }
    case A_boolUnitKind:
    {
        return ast2llvmBoolUnit_first(b->u.boolUnit);
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmBoolBiOpExpr_first(aA_boolBiOpExpr b)
{
    int l = ast2llvmBoolExpr_first(b->left);
    int r = ast2llvmBoolExpr_first(b->right);
    if(b->op == A_and)
    {
        return l && r;
    }
    else
    {
        return l || r;
    }
}

int ast2llvmBoolUOpExpr_first(aA_boolUOpExpr b)
{
    if(b->op == A_not)
    {
        return !ast2llvmBoolUnit_first(b->cond);
    }
    return 0;
}

int ast2llvmBoolUnit_first(aA_boolUnit b)
{
    switch (b->kind)
    {
    case A_comOpExprKind:
    {
        return ast2llvmComOpExpr_first(b->u.comExpr);
        break;
    }
    case A_boolExprKind:
    {
        return ast2llvmBoolExpr_first(b->u.boolExpr);
        break;
    }
    case A_boolUOpExprKind:
    {
        return ast2llvmBoolUOpExpr_first(b->u.boolUOpExpr);
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmComOpExpr_first(aA_comExpr c)
{
    auto l = ast2llvmExprUnit_first(c->left);
    auto r = ast2llvmExprUnit_first(c->right);
    switch (c->op)
    {
    case A_lt:
    {
        return l < r;
        break;
    }
    case A_le:
    {
        return l <= r;
        break;
    }
    case A_gt:
    {
        return l > r;
        break;
    }
    case A_ge:
    {
        return l >= r;
        break;
    }
    case A_eq:
    {
        return l == r;
        break;
    }
    case A_ne:
    {
        return l != r;
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmArithBiOpExpr_first(aA_arithBiOpExpr a)
{
    auto l= ast2llvmArithExpr_first(a->left);
    auto r = ast2llvmArithExpr_first(a->right);
    switch (a->op)
    {
    case A_add:
    {
        return l + r;
        break;
    }
    case A_sub:
    {
        return l - r;
        break;
    }
    case A_mul:
    {
        return l * r;
        break;
    }
    case A_div:
    {
        return l / r;
        break;
    }
    default:
        break;
    }
    return 0;
}

int ast2llvmArithUExpr_first(aA_arithUExpr a)
{
    if(a->op == A_neg)
    {
        return -ast2llvmExprUnit_first(a->expr);
    }
    return 0;
}

int ast2llvmArithExpr_first(aA_arithExpr a)
{
    switch (a->kind)
    {
    case A_arithBiOpExprKind:
    {
        return ast2llvmArithBiOpExpr_first(a->u.arithBiOpExpr);
        break;
    }
    case A_exprUnitKind:
    {
        return ast2llvmExprUnit_first(a->u.exprUnit);
        break;
    }
    default:
        assert(0);
        break;
    }
    return 0;
}

int ast2llvmExprUnit_first(aA_exprUnit e)
{
    if(e->kind == A_numExprKind)
    {
        return e->u.num;
    }
    else if(e->kind == A_arithExprKind)
    {
        return ast2llvmArithExpr_first(e->u.arithExpr);
    }
    else if(e->kind == A_arithUExprKind)
    {
        return ast2llvmArithUExpr_first(e->u.arithUExpr);
    }
    else
    {
        assert(0);
    }
    return 0;
}

std::vector<LLVMIR::L_def*> ast2llvmProg_first(aA_program p)
{
    vector<L_def*> defs;
    defs.push_back(L_Funcdecl("getch",vector<TempDef>(),FuncType(ReturnType::INT_TYPE)));
    defs.push_back(L_Funcdecl("getint",vector<TempDef>(),FuncType(ReturnType::INT_TYPE)));
    defs.push_back(L_Funcdecl("putch",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("putint",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("putarray",vector<TempDef>{TempDef(TempType::INT_TEMP),TempDef(TempType::INT_PTR,-1)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("_sysy_starttime",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));
    defs.push_back(L_Funcdecl("_sysy_stoptime",vector<TempDef>{TempDef(TempType::INT_TEMP)},FuncType(ReturnType::VOID_TYPE)));

    // add to returnMap
    funcReturnMap["getch"] = FuncType(ReturnType::INT_TYPE);
    funcReturnMap["getint"] = FuncType(ReturnType::INT_TYPE);
    funcReturnMap["putch"] = FuncType(ReturnType::VOID_TYPE);
    funcReturnMap["putint"] = FuncType(ReturnType::VOID_TYPE);
    funcReturnMap["putarray"] = FuncType(ReturnType::VOID_TYPE);
    funcReturnMap["_sysy_starttime"] = FuncType(ReturnType::VOID_TYPE);
    funcReturnMap["_sysy_stoptime"] = FuncType(ReturnType::VOID_TYPE);

    for(const auto &v : p->programElements)
    {
        switch (v->kind)
        {
        case A_programNullStmtKind:
        {
            break;
        }
        case A_programVarDeclStmtKind:
        {
            if(v->u.varDeclStmt->kind == A_varDeclKind)
            {
                if(v->u.varDeclStmt->u.varDecl->kind == A_varDeclScalarKind)
                {
                    if(v->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,
                            Name_newname_struct(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declScalar->id),*v->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType));
                        TempDef def(TempType::STRUCT_TEMP,0,*v->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,
                            Name_newname_int(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declScalar->id)));
                        TempDef def(TempType::INT_TEMP,0);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declScalar->id,def,vector<int>()));
                    }
                }
                else if(v->u.varDeclStmt->u.varDecl->kind == A_varDeclArrayKind)
                {
                    if(v->u.varDeclStmt->u.varDecl->u.declArray->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declArray->id,
                            Name_newname_struct_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declArray->id),v->u.varDeclStmt->u.varDecl->u.declArray->len,*v->u.varDeclStmt->u.varDecl->u.declArray->type->u.structType));
                        TempDef def(TempType::STRUCT_PTR,v->u.varDeclStmt->u.varDecl->u.declArray->len,*v->u.varDeclStmt->u.varDecl->u.declArray->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declArray->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDecl->u.declArray->id,
                            Name_newname_int_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDecl->u.declArray->id),v->u.varDeclStmt->u.varDecl->u.declArray->len));
                        TempDef def(TempType::INT_PTR,v->u.varDeclStmt->u.varDecl->u.declArray->len);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDecl->u.declArray->id,def,vector<int>()));
                    }
                }
                else
                {
                    assert(0);
                }
            }
            else if(v->u.varDeclStmt->kind == A_varDefKind)
            {
                if(v->u.varDeclStmt->u.varDef->kind == A_varDefScalarKind)
                {
                    if(v->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defScalar->id,
                            Name_newname_struct(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defScalar->id),*v->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType));
                        TempDef def(TempType::STRUCT_TEMP,0,*v->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defScalar->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defScalar->id,
                            Name_newname_int(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defScalar->id)));
                        TempDef def(TempType::INT_TEMP,0);
                        vector<int> init;
                        init.push_back(ast2llvmRightVal_first(v->u.varDeclStmt->u.varDef->u.defScalar->val));
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defScalar->id,def,init));
                    }
                }
                else if(v->u.varDeclStmt->u.varDef->kind == A_varDefArrayKind)
                {
                    if(v->u.varDeclStmt->u.varDef->u.defArray->type->type == A_structTypeKind)
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defArray->id,
                            Name_newname_struct_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defArray->id),v->u.varDeclStmt->u.varDef->u.defArray->len,*v->u.varDeclStmt->u.varDef->u.defArray->type->u.structType));
                        TempDef def(TempType::STRUCT_PTR,v->u.varDeclStmt->u.varDef->u.defArray->len,*v->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defArray->id,def,vector<int>()));
                    }
                    else
                    {
                        globalVarMap.emplace(*v->u.varDeclStmt->u.varDef->u.defArray->id,
                            Name_newname_int_ptr(Temp_newlabel_named(*v->u.varDeclStmt->u.varDef->u.defArray->id),v->u.varDeclStmt->u.varDef->u.defArray->len));
                        TempDef def(TempType::INT_PTR,v->u.varDeclStmt->u.varDef->u.defArray->len);
                        vector<int> init;
                        for(auto &el : v->u.varDeclStmt->u.varDef->u.defArray->vals)
                        {
                            init.push_back(ast2llvmRightVal_first(el));
                        }
                        defs.push_back(L_Globaldef(*v->u.varDeclStmt->u.varDef->u.defArray->id,def,init));
                    }
                }
                else
                {
                    assert(0);
                }
            }
            else
            {
                assert(0);
            }
            break;
        }
        case A_programStructDefKind:
        {
            StructInfo si;
            int off = 0;
            vector<TempDef> members;
            for(const auto &decl : v->u.structDef->varDecls)
            {
                if(decl->kind == A_varDeclScalarKind)
                {
                    if(decl->u.declScalar->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_TEMP,0,*decl->u.declScalar->type->u.structType);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declScalar->id,info);
                        members.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_TEMP,0);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declScalar->id,info);
                        members.push_back(def);
                    }
                }
                else if(decl->kind == A_varDeclArrayKind)
                {
                    if(decl->u.declArray->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_PTR,decl->u.declArray->len,*decl->u.declArray->type->u.structType);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declArray->id,info);
                        members.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_PTR,decl->u.declArray->len);
                        MemberInfo info(off++,def);
                        si.memberinfos.emplace(*decl->u.declArray->id,info);
                        members.push_back(def);
                    }
                }
                else
                {
                    assert(0);
                }
            }
            structInfoMap.emplace(*v->u.structDef->id,std::move(si));
            defs.push_back(L_Structdef(*v->u.structDef->id,members));
            break;
        }
        case A_programFnDeclStmtKind:
        {
            FuncType type;
            if(v->u.fnDeclStmt->fnDecl->type == nullptr)
            {
                type.type = ReturnType::VOID_TYPE;
            }
            else if(v->u.fnDeclStmt->fnDecl->type->type == A_nativeTypeKind)
            {
                type.type = ReturnType::INT_TYPE;
            }
            else if(v->u.fnDeclStmt->fnDecl->type->type == A_structTypeKind)
            {
                type.type = ReturnType::STRUCT_TYPE;
                type.structname = *v->u.fnDeclStmt->fnDecl->type->u.structType;
            }
            else
            {
                assert(0);
            }
            if(funcReturnMap.find(*v->u.fnDeclStmt->fnDecl->id) == funcReturnMap.end())
                funcReturnMap.emplace(*v->u.fnDeclStmt->fnDecl->id,std::move(type));
            vector<TempDef> args;
            for(const auto & decl : v->u.fnDeclStmt->fnDecl->paramDecl->varDecls)
            {
                if(decl->kind == A_varDeclScalarKind)
                {
                    if(decl->u.declScalar->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_PTR,0,*decl->u.declScalar->type->u.structType);
                        args.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_TEMP,0);
                        args.push_back(def);
                    }
                }
                else if(decl->kind == A_varDeclArrayKind)
                {
                    if(decl->u.declArray->type->type == A_structTypeKind)
                    {
                        TempDef def(TempType::STRUCT_PTR,-1,*decl->u.declArray->type->u.structType);
                        args.push_back(def);
                    }
                    else
                    {
                        TempDef def(TempType::INT_PTR,-1);
                        args.push_back(def);
                    }
                }
                else
                {
                    assert(0);
                }
            }
            defs.push_back(L_Funcdecl(*v->u.fnDeclStmt->fnDecl->id,args,type));
            break;
        }
        case A_programFnDefKind:
        {
            if(funcReturnMap.find(*v->u.fnDef->fnDecl->id) == funcReturnMap.end())
            {
                FuncType type;
                if(v->u.fnDef->fnDecl->type == nullptr)
                {
                    type.type = ReturnType::VOID_TYPE;
                }
                else if(v->u.fnDef->fnDecl->type->type == A_nativeTypeKind)
                {
                    type.type = ReturnType::INT_TYPE;
                }
                else if(v->u.fnDef->fnDecl->type->type == A_structTypeKind)
                {
                    type.type = ReturnType::STRUCT_TYPE;
                    type.structname = *v->u.fnDef->fnDecl->type->u.structType;
                }
                else
                {
                    assert(0);
                }
                funcReturnMap.emplace(*v->u.fnDef->fnDecl->id,std::move(type));
            }
            break;
        }
        default:
            assert(0);
            break;
        }
    }
    return defs;
}

std::vector<Func_local*> ast2llvmProg_second(aA_program p)
{
    vector<Func_local*> funcs;
    for(const auto & v : p->programElements)
    {
        switch (v->kind)
        {
        case A_programNullStmtKind:
        {
            break;
        }
        case A_programVarDeclStmtKind:
        {
            break;
        }
        case A_programStructDefKind:
        {
            break;
        }
        case A_programFnDeclStmtKind:
        {
            break;
        }
        case A_programFnDefKind:
        {
            funcs.push_back(ast2llvmFunc(v->u.fnDef));
            break;
        }
        default:
            assert(0);
            break;
        }
    }
    return funcs;
}

AS_operand* get_dst(AS_operand* src){
    AS_operand* dst;
    TempType tempType;
    int len;
    string name;
    if (src->kind == OperandKind::ICONST){
        return AS_Operand_Const(src->u.ICONST);
    }
    else if(src->kind == OperandKind::NAME){
        tempType = src->u.NAME->type;
        len = src->u.NAME->len;
        name = src->u.NAME->structname;
    }
    else if(src->kind == OperandKind::TEMP){
        tempType = src->u.TEMP->type;
        len = src->u.TEMP->len;
        name = src->u.TEMP->structname;
    }

    if(tempType == TempType::INT_TEMP){
        dst = AS_Operand_Temp(Temp_newtemp_int());
    }
    else if(tempType == TempType::INT_PTR){
        dst = AS_Operand_Temp(Temp_newtemp_int_ptr(len));
    }
    else if(tempType == TempType::STRUCT_TEMP){
        dst = AS_Operand_Temp(Temp_newtemp_struct(name));
    }
    else if(tempType == TempType::STRUCT_PTR){
        dst = AS_Operand_Temp(Temp_newtemp_struct_ptr(len, name));
    }

    return dst;
}

Func_local* ast2llvmFunc(aA_fnDef f)
{
    emit_irs.clear();
    localVarMap.clear();
    string fun_name = *f->fnDecl->id;
    FuncType ret_type;
    if (!f->fnDecl->type){
        ret_type = FuncType(LLVMIR::ReturnType::VOID_TYPE);
    }
    else{
        if (f->fnDecl->type->type == A_dataType::A_nativeTypeKind){
            ret_type = FuncType();
        }
        else{
            ret_type = FuncType(LLVMIR::ReturnType::STRUCT_TYPE, *f->fnDecl->type->u.structType);
        }
    }

    std::vector<Temp_temp*> args;
    list<L_stm*> args_irs;
    for (int i = 0; i < f->fnDecl->paramDecl->varDecls.size(); i++)
    {
        if(f->fnDecl->paramDecl->varDecls[i]->kind == A_varDeclType::A_varDeclScalarKind){
            string arg_name = *f->fnDecl->paramDecl->varDecls[i]->u.declScalar->id;
            if (f->fnDecl->paramDecl->varDecls[i]->u.declScalar->type->type == A_dataType::A_nativeTypeKind){
                Temp_temp* temp = Temp_newtemp_int();
                Temp_temp* load = Temp_newtemp_int_ptr(0);
                args_irs.push_back(L_Alloca(AS_Operand_Temp(load)));
                args_irs.push_back(L_Store(AS_Operand_Temp(temp), AS_Operand_Temp(load)));
                args.push_back(temp);
                localVarMap.emplace(arg_name, load);
            }
            else{
                string struct_name = *f->fnDecl->paramDecl->varDecls[i]->u.declScalar->type->u.structType;
                StructInfo info = structInfoMap.find(struct_name)->second;
                Temp_temp* temp = Temp_newtemp_struct_ptr(0, struct_name);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
        }
        else{
            string arg_name = *f->fnDecl->paramDecl->varDecls[i]->u.declArray->id;
            if (f->fnDecl->paramDecl->varDecls[i]->u.declArray->type->type == A_dataType::A_nativeTypeKind){
                Temp_temp *temp = Temp_newtemp_int_ptr(-1);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
            else{
                string struct_name = *f->fnDecl->paramDecl->varDecls[i]->u.declArray->type->u.structType;
                Temp_temp *temp = Temp_newtemp_struct_ptr(-1, struct_name);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
        }
    }

    
    
    //产生ir
    Temp_label* start_label =  Temp_newlabel();
    if (args_irs.size() > 0){
        Temp_label* args_label = Temp_newlabel();
        emit_irs.push_back(L_Label(args_label));
        for (auto it = args_irs.begin(); it != args_irs.end(); ++it){
            emit_irs.push_back(*it);
        }
        emit_irs.push_back(L_Jump(start_label));
    }
    
    emit_irs.push_back(L_Label(start_label));
    for (int i = 0; i < f->stmts.size(); i++)
    {
        ast2llvmBlock(f->stmts[i],start_label);
    }
    if (emit_irs.back()->type != L_StmKind::T_RETURN && emit_irs.back()->type != L_StmKind::T_CJUMP && emit_irs.back()->type != L_StmKind::T_JUMP){
        if (ret_type.type == ReturnType::INT_TYPE){
            emit_irs.push_back(L_Ret(AS_Operand_Const(0)));
        }
        else{
            emit_irs.push_back(L_Ret(nullptr));
        }
    }    


    /*for (auto it = emit_irs.begin(); it != emit_irs.end(); ++it) {
        // 使用 switch 语句根据不同的枚举值打印对应的信息
        switch ((*it)->type) {
            case L_StmKind::T_BINOP:
                std::cout << "Type: T_BINOP" << std::endl;
                break;
            case L_StmKind::T_LOAD:
                std::cout << "Type: T_LOAD" << std::endl;
                break;
            case L_StmKind::T_STORE:
                std::cout << "Type: T_STORE" << std::endl;
                break;
            case L_StmKind::T_LABEL:
                std::cout << "Type: T_LABEL" << std::endl;
                break;
            case L_StmKind::T_JUMP:
                std::cout << "Type: T_JUMP" << std::endl;
                break;
            case L_StmKind::T_CMP:
                std::cout << "Type: T_CMP" << std::endl;
                break;
            case L_StmKind::T_CJUMP:
                std::cout << "Type: T_CJUMP" << std::endl;
                break;
            case L_StmKind::T_MOVE:
                std::cout << "Type: T_MOVE" << std::endl;
                break;
            case L_StmKind::T_CALL:
                std::cout << "Type: T_CALL" << std::endl;
                break;
            case L_StmKind::T_VOID_CALL:
                std::cout << "Type: T_VOID_CALL" << std::endl;
                break;
            case L_StmKind::T_RETURN:
                std::cout << "Type: T_RETURN" << std::endl;
                break;
            case L_StmKind::T_PHI:
                std::cout << "Type: T_PHI" << std::endl;
                break;
            case L_StmKind::T_NULL:
                std::cout << "Type: T_NULL" << std::endl;
                break;
            case L_StmKind::T_ALLOCA:
                std::cout << "Type: T_ALLOCA" << std::endl;
                break;
            case L_StmKind::T_GEP:
                std::cout << "Type: T_GEP" << std::endl;
                break;
            default:
                std::cout << "Unknown Type" << std::endl;
        }
    }
    std::cout<<std::endl;*/
    Func_local* func = new Func_local(fun_name, ret_type, args, emit_irs);
    return func;
}

void ast2llvmBlock(aA_codeBlockStmt b,Temp_label *con_label,Temp_label *bre_label)
{
    if (b->kind == A_codeBlockStmtType::A_callStmtKind){
        FuncType ret_type = funcReturnMap.find(*b->u.callStmt->fnCall->fn)->second;
        
        std::vector<AS_operand*> args;
        for (int i = 0; i < b->u.callStmt->fnCall->vals.size(); i++)
        {
            if(b->u.callStmt->fnCall->vals[i]->kind == A_arithExprValKind){
                if (b->u.callStmt->fnCall->vals[i]->u.arithExpr->kind == A_exprUnitKind){
                    if (b->u.callStmt->fnCall->vals[i]->u.arithExpr->u.exprUnit->kind == A_idExprKind){
                        if (globalVarMap.find(*b->u.callStmt->fnCall->vals[i]->u.arithExpr->u.exprUnit->u.id) != globalVarMap.end())
                        {
                            Name_name* name = globalVarMap.at(*b->u.callStmt->fnCall->vals[i]->u.arithExpr->u.exprUnit->u.id);
                            if (name->type == TempType::STRUCT_PTR)
                            {
                                AS_operand* tmp = AS_Operand_Temp(Temp_newtemp_struct_ptr(-1,name->structname));
                                emit_irs.push_back(L_Gep(tmp, AS_Operand_Name(name), AS_Operand_Const(0)));
                                args.push_back(tmp);
                                continue;
                            }
                            if (name->type == TempType::INT_PTR)
                            {
                                AS_operand* tmp = AS_Operand_Temp(Temp_newtemp_int_ptr(-1));
                                emit_irs.push_back(L_Gep(tmp, AS_Operand_Name(name), AS_Operand_Const(0)));
                                args.push_back(tmp);
                                continue;
                            }
                        }
                        else if (localVarMap.find(*b->u.callStmt->fnCall->vals[i]->u.arithExpr->u.exprUnit->u.id) != localVarMap.end())
                        {
                            AS_operand* local_type = ast2llvmRightVal(b->u.callStmt->fnCall->vals[i]);
                            if (local_type->u.TEMP->type == TempType::STRUCT_PTR || local_type->u.TEMP->type == TempType::INT_PTR)
                            {
                                Temp_temp* name = localVarMap.at(*b->u.callStmt->fnCall->vals[i]->u.arithExpr->u.exprUnit->u.id);
                                if (name->type == TempType::STRUCT_PTR && name->len >= 0)
                                {
                                    AS_operand* tmp = AS_Operand_Temp(Temp_newtemp_struct_ptr(-1,name->structname));
                                    emit_irs.push_back(L_Gep(tmp, AS_Operand_Temp(name), AS_Operand_Const(0)));
                                    args.push_back(tmp);
                                    continue;
                                }
                                if (name->type == TempType::INT_PTR && name->len >= 0)
                                {
                                    AS_operand* tmp = AS_Operand_Temp(Temp_newtemp_int_ptr(-1));
                                    emit_irs.push_back(L_Gep(tmp, AS_Operand_Temp(name), AS_Operand_Const(0)));
                                    args.push_back(tmp);
                                    continue;
                                }
                            }
                        }
                        
                    }
                    
                }
            }
            
            
            args.push_back(ast2llvmRightVal(b->u.callStmt->fnCall->vals[i]));
        }
        
        if (ret_type.type == ReturnType::VOID_TYPE){
            emit_irs.push_back(L_Voidcall(*b->u.callStmt->fnCall->fn, args));
        }
        else if (ret_type.type == ReturnType::INT_TYPE){
            Temp_temp* ret = Temp_newtemp_int();
            emit_irs.push_back(L_Call(*b->u.callStmt->fnCall->fn,AS_Operand_Temp(ret),args));
        }
        else{
            Temp_temp* ret = Temp_newtemp_struct(ret->structname);
            emit_irs.push_back(L_Call(*b->u.callStmt->fnCall->fn,AS_Operand_Temp(ret),args));
        }
    }

    else if(b->kind == A_codeBlockStmtType::A_varDeclStmtKind){
        if (b->u.varDeclStmt->kind == A_varDeclStmtType::A_varDeclKind){
            if (b->u.varDeclStmt->u.varDecl->kind == A_varDeclType::A_varDeclScalarKind){
                string var_name = *b->u.varDeclStmt->u.varDecl->u.declScalar->id;
                if (localVarMap.find(var_name) != localVarMap.end()){
                    localVarMap.erase(var_name);
                }
                Temp_temp* reg;
                if(!b->u.varDeclStmt->u.varDecl->u.declScalar->type){
                    reg = Temp_newtemp_int_ptr(0);
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_dataType::A_nativeTypeKind){
                    reg = Temp_newtemp_int_ptr(0);
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_dataType::A_structTypeKind){
                    reg = Temp_newtemp_struct_ptr(0, *b->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType);
                }
                emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                localVarMap.emplace(var_name, reg);
            }
            else if(b->u.varDeclStmt->u.varDecl->kind == A_varDeclType::A_varDeclArrayKind){
                string var_name = *b->u.varDeclStmt->u.varDecl->u.declArray->id;
                if (localVarMap.find(var_name) != localVarMap.end()){
                    localVarMap.erase(var_name);
                }
                int arr_len = b->u.varDeclStmt->u.varDecl->u.declArray->len;
                Temp_temp* reg;
                if(!b->u.varDeclStmt->u.varDecl->u.declArray->type){
                    reg =  Temp_newtemp_int_ptr(arr_len);
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declArray->type->type == A_dataType::A_nativeTypeKind){
                    reg =  Temp_newtemp_int_ptr(arr_len);
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declArray->type->type == A_dataType::A_structTypeKind){
                    reg =  Temp_newtemp_struct_ptr(arr_len, *b->u.varDeclStmt->u.varDecl->u.declArray->type->u.structType);
                }
                emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                localVarMap.emplace(var_name, reg);
            }
        }
        else if(b->u.varDeclStmt->kind == A_varDeclStmtType::A_varDefKind){
            if(b->u.varDeclStmt->u.varDef->kind == A_varDefType::A_varDefScalarKind){
                if (!b->u.varDeclStmt->u.varDef->u.defScalar->type){
                    Temp_temp* reg = Temp_newtemp_int_ptr(0);
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defScalar->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defScalar->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_nativeTypeKind){
                    Temp_temp* reg = Temp_newtemp_int_ptr(0);
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defScalar->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defScalar->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_structTypeKind){
                    Temp_temp* reg = Temp_newtemp_struct_ptr(0,*b->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType);
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defScalar->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defScalar->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
            }
            else if(b->u.varDeclStmt->u.varDef->kind == A_varDefType::A_varDefArrayKind){
                if (!b->u.varDeclStmt->u.varDef->u.defArray->type){
                    Temp_temp* reg = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->vals.size(); i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_int_ptr(0);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg_temp)));
                    }
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defArray->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defArray->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defArray->type->type == A_dataType::A_nativeTypeKind){
                    Temp_temp* reg = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len);
                    
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->vals.size(); i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_int_ptr(0);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg_temp)));
                    }
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defArray->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defArray->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defArray->type->type == A_dataType::A_structTypeKind){
                    Temp_temp* reg = Temp_newtemp_struct_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len, *b->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->vals.size(); i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_struct_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len-i, *b->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg_temp)));
                    }
                    if (localVarMap.find(*b->u.varDeclStmt->u.varDef->u.defArray->id) != localVarMap.end()){
                        localVarMap.erase(*b->u.varDeclStmt->u.varDef->u.defArray->id);
                    }
                    localVarMap.emplace(*b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
            }
        }
    }

    else if(b->kind == A_codeBlockStmtType::A_assignStmtKind){
        AS_operand* right = ast2llvmRightVal(b->u.assignStmt->rightVal);
        AS_operand* left = ast2llvmLeftVal(b->u.assignStmt->leftVal);
        emit_irs.push_back(L_Store(right, left));
    }
    else if (b->kind == A_codeBlockStmtType::A_returnStmtKind){
        AS_operand* ret;
        if (!b->u.returnStmt->retVal){
            ret = nullptr;
        }
        else{
            ret = ast2llvmRightVal(b->u.returnStmt->retVal);
        }
        emit_irs.push_back(L_Ret(ret));
    }
    else if(b->kind == A_codeBlockStmtType::A_ifStmtKind){
        Temp_label* if_label = Temp_newlabel();
        Temp_label* else_label = Temp_newlabel();
        Temp_label* continue_label = Temp_newlabel();
        AS_operand* cmp_reg = ast2llvmBoolExpr(b->u.ifStmt->boolExpr, if_label, else_label);
        emit_irs.push_back(L_Label(if_label));
        for (int i = 0; i < b->u.ifStmt->ifStmts.size(); i++){
            ast2llvmBlock(b->u.ifStmt->ifStmts[i], con_label, bre_label);
        }
        emit_irs.push_back(L_Jump(continue_label));
        if (b->u.ifStmt->elseStmts.size() > 0){
            emit_irs.push_back(L_Label(else_label));
            for (int i = 0; i < b->u.ifStmt->elseStmts.size(); i++){
                ast2llvmBlock(b->u.ifStmt->elseStmts[i], con_label, bre_label);
            }
            emit_irs.push_back(L_Jump(continue_label));
        }
        else{
            emit_irs.push_back(L_Label(else_label));
            emit_irs.push_back(L_Jump(continue_label));
        }
        emit_irs.push_back(L_Label(continue_label));
    }
    else if(b->kind == A_codeBlockStmtType::A_whileStmtKind){
        Temp_label* check_label = Temp_newlabel();
        Temp_label* body_label = Temp_newlabel();
        Temp_label* out_label = Temp_newlabel();
        emit_irs.push_back(L_Jump(check_label));
        emit_irs.push_back(L_Label(check_label));
        AS_operand* condition = ast2llvmBoolExpr(b->u.whileStmt->boolExpr,body_label,out_label);

        emit_irs.push_back(L_Label(body_label));
        for (int i = 0; i < b->u.whileStmt->whileStmts.size(); i++)
        {
            ast2llvmBlock(b->u.whileStmt->whileStmts[i], check_label, out_label);
        }
        emit_irs.push_back(L_Jump(check_label));
        emit_irs.push_back(L_Label(out_label));
    }
    
    else if(b->kind == A_codeBlockStmtType::A_breakStmtKind){
        emit_irs.push_back(L_Jump(bre_label));
    }
    else if(b->kind == A_codeBlockStmtType::A_continueStmtKind){
        
        emit_irs.push_back(L_Jump(con_label));
    }
}

AS_operand* ast2llvmRightVal(aA_rightVal r)
{
    // rightVal := arithExpr | boolExpr
    if (r->kind == A_rightValType::A_arithExprValKind){
        return ast2llvmArithExpr(r->u.arithExpr);
    }
    else{
        Temp_label* true_label = Temp_newlabel();
        Temp_label* false_label = Temp_newlabel();
        AS_operand* return_bool = AS_Operand_Temp(Temp_newtemp_int_ptr(0));
        emit_irs.push_back(L_Alloca(return_bool));
        AS_operand* result = ast2llvmBoolExpr(r->u.boolExpr,true_label, false_label);
        Temp_label* out_label = Temp_newlabel();
        emit_irs.push_back(L_Label(true_label));
        emit_irs.push_back(L_Store(AS_Operand_Const(1), return_bool));
        emit_irs.push_back(L_Jump(out_label));
        emit_irs.push_back(L_Label(false_label));
        emit_irs.push_back(L_Store(AS_Operand_Const(0), return_bool));
        emit_irs.push_back(L_Jump(out_label));
        emit_irs.push_back(L_Label(out_label));

        AS_operand* load_result = AS_Operand_Temp(Temp_newtemp_int());
        emit_irs.push_back(L_Load(load_result, return_bool));
        return load_result;
    }
    
}

AS_operand* ast2llvmLeftVal(aA_leftVal l)
{
    //leftVal := id | leftVal < [ > id | num < ] > | leftVal < . > id
    AS_operand* result;
    AS_operand* left;
    if (l->kind == A_leftValType::A_varValKind){
        if(localVarMap.find(*l->u.id) != localVarMap.end()){
            result = AS_Operand_Temp(localVarMap.find(*l->u.id)->second);
        }
        else if(globalVarMap.find(*l->u.id) != globalVarMap.end()){
            result = AS_Operand_Name(globalVarMap.find(*l->u.id)->second);
        }
    }
    else if(l->kind == A_leftValType::A_memberValKind){
        AS_operand* base = ast2llvmLeftVal(l->u.memberExpr->structId);
        StructInfo info;
        if (base->kind == OperandKind::TEMP){
            info = structInfoMap.find(base->u.TEMP->structname)->second;
        }
        else{
            info = structInfoMap.find(base->u.NAME->structname)->second;
        }
        string member_id = *l->u.memberExpr->memberId;
        MemberInfo member = info.memberinfos.find(member_id)->second;
        int index = member.offset;
        Temp_temp* new_ptr;
        if (member.def.kind == TempType::INT_TEMP){
            new_ptr = Temp_newtemp_int();
        }
        else if(member.def.kind == TempType::INT_PTR){
            new_ptr = Temp_newtemp_int_ptr(member.def.len);
        }
        else if(member.def.kind == TempType::STRUCT_TEMP){
            new_ptr = Temp_newtemp_struct_ptr(0, member.def.structname);
        }
        else if(member.def.kind == TempType::STRUCT_PTR){
            new_ptr = Temp_newtemp_struct_ptr(member.def.len, member.def.structname);
        }
        result = AS_Operand_Temp(new_ptr);
        emit_irs.push_back(L_Gep(result, base, AS_Operand_Const(index)));
    }
    else if(l->kind == A_leftValType::A_arrValKind){
        AS_operand* index = ast2llvmIndexExpr(l->u.arrExpr->idx);
        AS_operand* base = ast2llvmLeftVal(l->u.arrExpr->arr);
        Temp_temp* new_reg;
        if (base->kind == OperandKind::TEMP){
            if (base->u.TEMP->type == TempType::INT_PTR){
                new_reg = Temp_newtemp_int_ptr(base->u.TEMP->len);
            }
            else{
                new_reg = Temp_newtemp_struct_ptr(0, base->u.TEMP->structname);
            }
        }
        else if (base->kind == OperandKind::NAME){
            if (base->u.NAME->type == TempType::INT_PTR){
                new_reg = Temp_newtemp_int_ptr(base->u.NAME->len);
            }
            else{
                new_reg = Temp_newtemp_struct_ptr(0, base->u.NAME->structname);
            }
        }
        result = AS_Operand_Temp(new_reg);
        emit_irs.push_back(L_Gep(result, base, index));
    }
    return result;
}

AS_operand* ast2llvmIndexExpr(aA_indexExpr index)
{
    AS_operand* result;
    AS_operand* ptr;
    if (index->kind == A_indexExprKind::A_numIndexKind){
        result = AS_Operand_Const(index->u.num);
    }
    else{
        if(localVarMap.find(*index->u.id) != localVarMap.end()){
            ptr = AS_Operand_Temp(localVarMap.find(*index->u.id)->second);
        }
        else{
            ptr = AS_Operand_Name(globalVarMap.find(*index->u.id)->second);
        }
        result = AS_Operand_Temp(Temp_newtemp_int());
        emit_irs.push_back(L_Load(result, ptr));
    }

    return result;
}

AS_operand* ast2llvmBoolExpr(aA_boolExpr b,Temp_label *true_label,Temp_label *false_label)
{
    AS_operand *condition;
    if (b->kind == A_boolExprType::A_boolUnitKind){
        condition = ast2llvmBoolUnit(b->u.boolUnit, true_label, false_label);
    }
    else if(b->kind == A_boolExprType::A_boolBiOpExprKind){
        condition = ast2llvmBoolBiOpExpr(b->u.boolBiOpExpr, true_label, false_label);
    }
    return condition;
}

AS_operand* ast2llvmBoolBiOpExpr(aA_boolBiOpExpr b,Temp_label *true_label,Temp_label *false_label)
{
    AS_operand* result = AS_Operand_Temp(Temp_newtemp_int_ptr(0));
    //emit_irs.push_back(L_Alloca(result));
    Temp_label* middle_label = Temp_newlabel();
    if (b->op == A_boolBiOp::A_and)
    {
        AS_operand* left = ast2llvmBoolExpr(b->left, middle_label, false_label);
        emit_irs.push_back(L_Label(middle_label));
        AS_operand* right = ast2llvmBoolExpr(b->right, true_label, false_label);
        
    }
    else{
        AS_operand* left = ast2llvmBoolExpr(b->left, true_label, middle_label);
        emit_irs.push_back(L_Label(middle_label));
        AS_operand* right = ast2llvmBoolExpr(b->right, true_label, false_label);
    }
    return result;
}

AS_operand* ast2llvmBoolUnit(aA_boolUnit b,Temp_label *true_label,Temp_label *false_label)
{
    if (b->kind == A_boolUnitType::A_boolExprKind){
        return ast2llvmBoolExpr(b->u.boolExpr, true_label, false_label);
    }
    else if(b->kind == A_boolUnitType::A_boolUOpExprKind){
        AS_operand* condition = ast2llvmBoolUnit(b->u.boolUOpExpr->cond, true_label, false_label);
        emit_irs.push_back(L_Cjump(condition, false_label, true_label));
        return condition;
    }
    else if(b->kind == A_boolUnitType::A_comOpExprKind){
        AS_operand* condition = ast2llvmComOpExpr(b->u.comExpr, true_label, false_label);
        emit_irs.push_back(L_Cjump(condition, true_label, false_label));
        return condition;
    }
    return nullptr;
}

AS_operand* ast2llvmComOpExpr(aA_comExpr c,Temp_label *true_label,Temp_label *false_label)
{
    AS_operand* left = ast2llvmExprUnit(c->left);
    AS_operand* right = ast2llvmExprUnit(c->right);
    AS_operand* dst = AS_Operand_Temp(Temp_newtemp_int());
    L_relopKind op_cmp;
    switch (c->op)
    {
        case A_comOp::A_eq:{
            op_cmp = L_relopKind::T_eq;
            break;
        }
        case A_comOp::A_ge:{
            op_cmp = L_relopKind::T_ge;
            break;
        }
        case A_comOp::A_gt:{
            op_cmp = L_relopKind::T_gt;
            break;
        }
        case A_comOp::A_le:{
            op_cmp = L_relopKind::T_le;
            break;
        }
        case A_comOp::A_lt:{
            op_cmp = L_relopKind::T_lt;
            break;
        }
        case A_comOp::A_ne:{
            op_cmp = L_relopKind::T_ne;
            break;
        }
        default:
            break;
    }
    emit_irs.push_back(L_Cmp(op_cmp,left,right, dst));
    return dst;
}

AS_operand* ast2llvmArithBiOpExpr(aA_arithBiOpExpr a)
{
    AS_operand* left = ast2llvmArithExpr(a->left);
    AS_operand* right = ast2llvmArithExpr(a->right);
    Temp_temp* reg = Temp_newtemp_int();  //最终运算结果都是int类型
    
    AS_operand* as = AS_Operand_Temp(reg);
    switch (a->op)
    {
        case A_arithBiOp::A_add:
            emit_irs.push_back(L_Binop(L_binopKind::T_plus, left, right, AS_Operand_Temp(reg)));
            break;
        case A_arithBiOp::A_sub:
            emit_irs.push_back(L_Binop(L_binopKind::T_minus, left, right, AS_Operand_Temp(reg)));
            break;
        case A_arithBiOp::A_mul:
            emit_irs.push_back(L_Binop(L_binopKind::T_mul, left, right, AS_Operand_Temp(reg)));
            break;
        case A_arithBiOp::A_div:
            emit_irs.push_back(L_Binop(L_binopKind::T_div, left, right, AS_Operand_Temp(reg)));
            break;
        default:
            break;
    }
    
    return AS_Operand_Temp(reg);
}

AS_operand* ast2llvmArithUExpr(aA_arithUExpr a)
{
    AS_operand* origin_ari = ast2llvmExprUnit(a->expr);
    Temp_temp* result_reg = Temp_newtemp_int();
    AS_operand* result = AS_Operand_Temp(result_reg);
    emit_irs.push_back(L_Binop(L_binopKind::T_minus, AS_Operand_Const(0),origin_ari, result));
    return result;
}

AS_operand* ast2llvmArithExpr(aA_arithExpr a)
{
    //arithExpr := arithExpr arithBiOp arithExpr | exprUnit
    if (a->kind == A_arithExprType::A_arithBiOpExprKind){
        return ast2llvmArithBiOpExpr(a->u.arithBiOpExpr);
    }
    else{
        return ast2llvmExprUnit(a->u.exprUnit);
    }
}

AS_operand* ast2llvmExprUnit(aA_exprUnit e)
{
    AS_operand* result;
    switch (e->kind)
    {
        case A_exprUnitType::A_numExprKind:{
            result = AS_Operand_Const(e->u.num);
            break;
        }
        case A_exprUnitType::A_idExprKind:{
            AS_operand* ptr;
            if (localVarMap.find(*e->u.id) != localVarMap.end()){
                ptr = AS_Operand_Temp(localVarMap.find(*e->u.id)->second);
                if (ptr->u.TEMP->type == TempType::INT_PTR && ptr->u.TEMP->len==0){
                    result = AS_Operand_Temp(Temp_newtemp_int());
                    emit_irs.push_back(L_Load(result,ptr));
                }
                else{
                    result = ptr;
                }
            }
            else if(globalVarMap.find(*e->u.id) != globalVarMap.end()){
                ptr = AS_Operand_Name(globalVarMap.find(*e->u.id)->second);
                
                if ((ptr->u.NAME->type == TempType::INT_PTR || ptr->u.NAME->type == TempType::INT_TEMP) && ptr->u.NAME->len==0){
                    result = AS_Operand_Temp(Temp_newtemp_int());
                    emit_irs.push_back(L_Load(result,ptr));
                    
                }
                else{
                    result = ptr;
                }
            }
            break;
        }
        case A_exprUnitType::A_arithExprKind:{
            result = ast2llvmArithExpr(e->u.arithExpr);
            break;
        }
        case A_exprUnitType::A_arithUExprKind:{
            result = ast2llvmArithUExpr(e->u.arithUExpr);
            break;
        }
        case A_exprUnitType::A_arrayExprKind:{
            AS_operand* index = ast2llvmIndexExpr(e->u.arrayExpr->idx);
            AS_operand* base = ast2llvmLeftVal(e->u.arrayExpr->arr);
            Temp_temp* new_reg;
            if (base->kind == OperandKind::TEMP){
                int len = base->u.TEMP->len;
                if (base->u.TEMP->type == TempType::INT_PTR){
                    new_reg = Temp_newtemp_int_ptr(base->u.TEMP->len);
                }
                else{
                    new_reg = Temp_newtemp_struct_ptr(0, base->u.TEMP->structname);
                }
            }
            else if (base->kind == OperandKind::NAME){
                if (base->u.NAME->type == TempType::INT_PTR){
                    new_reg = Temp_newtemp_int_ptr(base->u.NAME->len);
                }
                else{
                    new_reg = Temp_newtemp_struct_ptr(0, base->u.NAME->structname);
                }
            }
            emit_irs.push_back(L_Gep(AS_Operand_Temp(new_reg), base, index));
            result = AS_Operand_Temp(Temp_newtemp_int());
            emit_irs.push_back(L_Load(result, AS_Operand_Temp(new_reg)));
            break;
        }
        case A_exprUnitType::A_memberExprKind:{
            AS_operand* base = ast2llvmLeftVal(e->u.memberExpr->structId);
            StructInfo info;
            if (base->kind == OperandKind::TEMP){
                info = structInfoMap.find(base->u.TEMP->structname)->second;
            }
            else{
                info = structInfoMap.find(base->u.NAME->structname)->second;
            }
            string member_id = *e->u.memberExpr->memberId;
            MemberInfo member = info.memberinfos.find(member_id)->second;
            int index = member.offset;
            Temp_temp* new_ptr;
            if (member.def.kind == TempType::INT_TEMP){
                new_ptr = Temp_newtemp_int();
            }
            else if(member.def.kind == TempType::INT_PTR){
                new_ptr = Temp_newtemp_int_ptr(member.def.len);
            }
            else if(member.def.kind == TempType::STRUCT_TEMP){
                new_ptr = Temp_newtemp_struct_ptr(0,member.def.structname);
            }
            else if(member.def.kind == TempType::STRUCT_PTR){
                new_ptr = Temp_newtemp_struct_ptr(member.def.len, member.def.structname);
            }
            
            result = AS_Operand_Temp(new_ptr);
            emit_irs.push_back(L_Gep(result, base, AS_Operand_Const(index)));
            if (member.def.kind == TempType::INT_TEMP){
                result = AS_Operand_Temp(Temp_newtemp_int());
                emit_irs.push_back(L_Load(result, AS_Operand_Temp(new_ptr)));
            }
            break;
        }
        case A_exprUnitType::A_fnCallKind:{
            FuncType ret_fn = funcReturnMap.find(*e->u.callExpr->fn)->second;
            std::vector<AS_operand*> args;
            for (int i = 0; i < e->u.callExpr->vals.size(); i++)
            {
                args.push_back(ast2llvmRightVal(e->u.callExpr->vals[i]));
            }
            
            if (ret_fn.type == ReturnType::VOID_TYPE){
                emit_irs.push_back(L_Voidcall(*e->u.callExpr->fn, args));
            }
            else if (ret_fn.type == ReturnType::INT_TYPE){
                Temp_temp* ret_fn = Temp_newtemp_int();
                result = AS_Operand_Temp(ret_fn);
                emit_irs.push_back(L_Call(*e->u.callExpr->fn,result,args));
            }
            else{
                Temp_temp* ret = Temp_newtemp_struct(ret->structname);
                result = AS_Operand_Temp(ret);
                emit_irs.push_back(L_Call(*e->u.callExpr->fn,result,args));
            }
            break;
        }
        default:
            break;
    }

    return result;
}

LLVMIR::L_func* ast2llvmFuncBlock(Func_local *f)
{
    list<L_block *> blocks;
    list<L_stm *>irs = list<L_stm *>();
    bool tail = false;
    
    for(const auto &stm :f->irs){
        if(stm->type == L_StmKind::T_LABEL){
            if(!irs.empty()){
                blocks.push_back(L_Block(irs));
                irs.clear();
                tail = false;
            }
            irs.push_back(stm);
        }
        else if(stm->type == L_StmKind::T_CJUMP || stm->type == L_StmKind::T_JUMP || stm->type == L_StmKind::T_RETURN){
            if (!tail){
                irs.push_back(stm);
                tail = true;
            }
        }
        else{
            if (!tail){
                irs.push_back(stm);
            }
        }
        
    }

    if(!irs.empty()){
        blocks.push_back(L_Block(irs));
    }

    return new L_func(f->name,f->ret,f->args, blocks);
}

void ast2llvm_moveAlloca(LLVMIR::L_func *f)
{
    auto first_block = f->blocks.front();
    for(auto i = ++f->blocks.begin();i != f->blocks.end();++i)
    {
        for(auto it = (*i)->instrs.begin();it != (*i)->instrs.end();)
        {
            if((*it)->type == L_StmKind::T_ALLOCA)
            {
                first_block->instrs.insert(++first_block->instrs.begin(),*it);
                it = (*i)->instrs.erase(it);
            }
            else
            {
                ++it;
            }
        }
    }
}
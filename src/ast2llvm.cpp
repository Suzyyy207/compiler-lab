#include "ast2llvm.h"
#include <vector>
#include <unordered_map>
#include <string>
#include <cassert>
#include <list>

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

Func_local* ast2llvmFunc(aA_fnDef f)
{
    string fun_name = *f->fnDecl->id;
    FuncType ret_type;
    if (!f->fnDecl->type){
        ret_type = FuncType(LLVMIR::ReturnType::VOID_TYPE, *f->fnDecl->type->u.structType);
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
    for (int i = 0; i < f->fnDecl->paramDecl->varDecls.size(); i++)
    {
        if(f->fnDecl->paramDecl->varDecls[i]->kind == A_varDeclType::A_varDeclScalarKind){
            string arg_name = *f->fnDecl->paramDecl->varDecls[i]->u.declScalar->id;
            if (f->fnDecl->paramDecl->varDecls[i]->u.declScalar->type->type == A_dataType::A_nativeTypeKind){
                Temp_temp* temp = Temp_newtemp_int();
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
            else{
                string struct_name = *f->fnDecl->paramDecl->varDecls[i]->u.declScalar->type->u.structType;
                StructInfo info = structInfoMap.find(struct_name)->second;
                Temp_temp* temp = Temp_newtemp_struct_ptr(info.memberinfos.size(), struct_name);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
        }
        else{
            string arg_name = *f->fnDecl->paramDecl->varDecls[i]->u.declArray->id;
            if (f->fnDecl->paramDecl->varDecls[i]->u.declArray->type->type == A_dataType::A_nativeTypeKind){
                Temp_temp *temp = Temp_newtemp_int_ptr(f->fnDecl->paramDecl->varDecls[i]->u.declArray->len);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
            else{
                string struct_name = *f->fnDecl->paramDecl->varDecls[i]->u.declArray->type->u.structType;
                Temp_temp *temp = Temp_newtemp_struct_ptr(f->fnDecl->paramDecl->varDecls[i]->u.declArray->len, struct_name);
                args.push_back(temp);
                localVarMap.emplace(arg_name, temp);
            }
        }
    }
    
    //产生ir
    for (int i = 0; i < f->stmts.size(); i++)
    {
        ast2llvmBlock(f->stmts[i], Temp_newlabel(), Temp_newlabel());
    }

    Func_local* func = new Func_local(fun_name, ret_type, args, emit_irs);

    return func;
}

void ast2llvmBlock(aA_codeBlockStmt b,Temp_label *con_label,Temp_label *bre_label)
{
    if (b->kind == A_codeBlockStmtType::A_callStmtKind){
        FuncType ret = funcReturnMap.find(*b->u.callStmt->fnCall->fn)->second;
        std::vector<AS_operand*> args;
        for (int i = 0; i < b->u.callStmt->fnCall->vals.size(); i++)
        {
            args.push_back(ast2llvmRightVal(b->u.callStmt->fnCall->vals[i]));
        }
        
        if (ret.type == ReturnType::VOID_TYPE){
            emit_irs.push_back(L_Voidcall(*b->u.callStmt->fnCall->fn, args));
        }
        else if (ret.type == ReturnType::INT_TYPE){
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
                Temp_temp* reg;
                if(!b->u.varDeclStmt->u.varDecl->u.declScalar->type){
                    reg = Temp_newtemp_int();
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_dataType::A_nativeTypeKind){
                    reg = Temp_newtemp_int();
                }
                else if(b->u.varDeclStmt->u.varDecl->u.declScalar->type->type == A_dataType::A_structTypeKind){
                    reg = Temp_newtemp_struct(*b->u.varDeclStmt->u.varDecl->u.declScalar->type->u.structType);
                }
                emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                localVarMap.emplace(var_name, reg);
            }
            else if(b->u.varDeclStmt->u.varDecl->kind == A_varDeclType::A_varDeclArrayKind){
                string var_name = *b->u.varDeclStmt->u.varDecl->u.declArray->id;
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
        //
        else if(b->u.varDeclStmt->kind == A_varDeclStmtType::A_varDefKind){
            if(b->u.varDeclStmt->u.varDef->kind == A_varDefType::A_varDefScalarKind){
                if (!b->u.varDeclStmt->u.varDef->u.defScalar->type){
                    Temp_temp* reg = Temp_newtemp_int();
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_nativeTypeKind){
                    Temp_temp* reg = Temp_newtemp_int();
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_structTypeKind){
                    Temp_temp* reg = Temp_newtemp_struct(*b->u.varDeclStmt->u.varDef->u.defScalar->type->u.structType);
                    AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defScalar->val);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defScalar->id, reg);
                }
            }
            else if(b->u.varDeclStmt->u.varDef->kind == A_varDefType::A_varDefArrayKind){
                if (!b->u.varDeclStmt->u.varDef->u.defArray->type){
                    Temp_temp* reg = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->len; i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len-i);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    }
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_nativeTypeKind){
                    Temp_temp* reg = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->len; i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_int_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len-i);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    }
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
                else if(b->u.varDeclStmt->u.varDef->u.defScalar->type->type == A_dataType::A_structTypeKind){
                    Temp_temp* reg = Temp_newtemp_struct_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len, *b->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                    emit_irs.push_back(L_Alloca(AS_Operand_Temp(reg)));
                    for (int i = 0; i < b->u.varDeclStmt->u.varDef->u.defArray->len; i++){
                        AS_operand* rightVal = ast2llvmRightVal(b->u.varDeclStmt->u.varDef->u.defArray->vals[i]);
                        Temp_temp* reg_temp = Temp_newtemp_struct_ptr(b->u.varDeclStmt->u.varDef->u.defArray->len-i, *b->u.varDeclStmt->u.varDef->u.defArray->type->u.structType);
                        emit_irs.push_back(L_Gep(AS_Operand_Temp(reg_temp), AS_Operand_Temp(reg), AS_Operand_Const(i)));
                        emit_irs.push_back(L_Store(rightVal, AS_Operand_Temp(reg)));
                    }
                    localVarMap.emplace(b->u.varDeclStmt->u.varDef->u.defArray->id, reg);
                }
            }
        }
    }

    else if(b->kind == A_codeBlockStmtType::A_assignStmtKind){

    }
    
}

AS_operand* ast2llvmRightVal(aA_rightVal r)
{
    // rightVal := arithExpr | boolExpr
    if (r->kind == A_rightValType::A_arithExprValKind){
        return ast2llvmArithExpr(r->u.arithExpr);
    }
    else{
        return ast2llvmBoolExpr(r->u.boolExpr);
    }
    
}

AS_operand* ast2llvmLeftVal(aA_leftVal l)
{
    
}

AS_operand* ast2llvmIndexExpr(aA_indexExpr index)
{
    AS_operand* result;
    if (index->kind == A_indexExprKind::A_numIndexKind){
        result = AS_Operand_Const(index->u.num);
    }
    else{
        if(localVarMap.find(*index->u.id) != localVarMap.end()){
            result = AS_Operand_Temp(localVarMap.find(*index->u.id)->second);
        }
        else{
            result = AS_Operand_Name(globalVarMap.find(*index->u.id)->second);
        }
    }
    
    return result;
}

AS_operand* ast2llvmBoolExpr(aA_boolExpr b,Temp_label *true_label,Temp_label *false_label)
{
    
}

void ast2llvmBoolBiOpExpr(aA_boolBiOpExpr b,Temp_label *true_label,Temp_label *false_label)
{
    
}

void ast2llvmBoolUnit(aA_boolUnit b,Temp_label *true_label,Temp_label *false_label)
{
    
}

void ast2llvmComOpExpr(aA_comExpr c,Temp_label *true_label,Temp_label *false_label)
{
    
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
            if (localVarMap.find(*e->u.id) != localVarMap.end()){
                result = AS_Operand_Temp(localVarMap.find(*e->u.id)->second);
            }
            else if(globalVarMap.find(*e->u.id) != globalVarMap.end()){
                result = AS_Operand_Name(globalVarMap.find(*e->u.id)->second);
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
                if (base->u.TEMP->type == TempType::INT_PTR){
                    new_reg = Temp_newtemp_int_ptr(base->u.TEMP->len);
                }
                else{
                    new_reg = Temp_newtemp_struct_ptr(base->u.TEMP->len, base->u.TEMP->structname);
                }
            }
            else if (base->kind == OperandKind::NAME){
                if (base->u.NAME->type == TempType::INT_PTR){
                    new_reg = Temp_newtemp_int_ptr(base->u.TEMP->len);
                }
                else{
                    new_reg = Temp_newtemp_struct_ptr(base->u.TEMP->len, base->u.TEMP->structname);
                }
            }
            result = AS_Operand_Temp(new_reg);
            emit_irs.push_back(L_Gep(result, base, index));
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
                new_ptr = Temp_newtemp_struct(member.def.structname);
            }
            else if(member.def.kind == TempType::STRUCT_PTR){
                new_ptr = Temp_newtemp_struct_ptr(member.def.len, member.def.structname);
            }
            
            result = AS_Operand_Temp(new_ptr);
            emit_irs.push_back(L_Gep(result, base, AS_Operand_Const(index)));
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
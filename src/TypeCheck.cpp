#include "TypeCheck.h"

//global tabels
//typeMap func2retType; // function name to return type

// global token ids to type
typeMap g_token2Type; 

// local token ids to type, since func param can override global param
typeMap funcparam_token2Type;
vector<typeMap*> local_token2Type;

//function defined or not
flagMap fun_defined_record;


paramMemberMap func2Param;
paramMemberMap struct2Members;


// private util functions
void error_print(std::ostream& out, A_pos p, string info)
{
    out << "Typecheck error in line " << p->line << ", col " << p->col << ": " << info << std::endl;
    exit(0);
}


void print_token_map(typeMap* map){
    for(auto it = map->begin(); it != map->end(); it++){
        std::cout << it->first << " : ";
        switch (it->second->type->type)
        {
        case A_dataType::A_nativeTypeKind:
            switch (it->second->type->u.nativeType)
            {
            case A_nativeType::A_intTypeKind:
                std::cout << "int";
                break;
            default:
                break;
            }
            break;
        case A_dataType::A_structTypeKind:
            std::cout << *(it->second->type->u.structType);
            break;
        default:
            break;
        }
        switch(it->second->isVarArrFunc){
            case 0:
                std::cout << " scalar";
                break;
            case 1:
                std::cout << " array";
                break;
            case 2:
                std::cout << " function";
                break;
        }
        std::cout << std::endl;
    }
}


void print_token_maps(){
    std::cout << "global token2Type:" << std::endl;
    print_token_map(&g_token2Type);
    std::cout << "local token2Type:" << std::endl;
    print_token_map(&funcparam_token2Type);
}


bool comp_aA_type(aA_type target, aA_type t){
    if(!target || !t)
        return false;
    if(target->type != t->type)
        return false;
    if(target->type == A_dataType::A_nativeTypeKind)
        if(target->u.nativeType != t->u.nativeType)
            return false;
    if(target->type == A_dataType::A_structTypeKind)
        if(target->u.structType != t->u.structType)
            return false;
    return true;
}


bool comp_tc_type(tc_type target, tc_type t){
    if(!target || !t)
        return false;
    
    // arr kind first
    if (target->isVarArrFunc && t->isVarArrFunc == 0)
        return false;
    
    // if target type is nullptr, alwayse ok
    return comp_aA_type(target->type, t->type);
}

bool comp_aA_varDecl_type(aA_varDecl target, aA_varDecl t){
    if(!target || !t)
        return false;
    
    if (target->kind != t->kind){
        return false;
    }

    if (target->kind == A_varDeclType::A_varDeclScalarKind){
        return comp_aA_type(target->u.declScalar->type, t->u.declScalar->type);
    }
    else{
        return comp_aA_type(target->u.declArray->type, t->u.declArray->type);
    }
}

tc_type tc_Type(aA_type t, uint isVarArrFunc){
    tc_type ret = new tc_type_;
    ret->type = t;
    ret->isVarArrFunc = isVarArrFunc;
    return ret;
}


tc_type tc_Type(aA_varDecl vd){
    if(vd->kind == A_varDeclType::A_varDeclScalarKind)
        return tc_Type(vd->u.declScalar->type, 0);
    else if(vd->kind == A_varDeclType::A_varDeclArrayKind)
        return tc_Type(vd->u.declArray->type, 1);
    return nullptr;
}

// self-defined function
bool check_global(string name){
    if(g_token2Type.find(name) != g_token2Type.end())
        return true;
    else
        return false;
}

bool check_local(string name){
    for (int i = local_token2Type.size()-1; i >= 0; i--){
        std::unordered_map<string, tc_type> map = *(local_token2Type[i]);
        if (map.find(name) != map.end())
            return true;
    }
    return false;
}

tc_type find_name(std::ostream& out, string name, A_pos pos){
    for (int i = local_token2Type.size()-1; i >= 0; i--){
        std::unordered_map<string, tc_type> map = *(local_token2Type[i]);
        if (map.find(name) != map.end())
            return map.find(name)->second;
    }
    if (g_token2Type.find(name) != g_token2Type.end()){
        return g_token2Type.find(name)->second;
    }    
    else{
        error_print(out, pos, "this variable is not defined");
    }
    return nullptr;
    
}

void set_type(string name, tc_type target){
    for (int i = local_token2Type.size()-1; i >= 0; i--){
        std::unordered_map<string, tc_type> map = *(local_token2Type[i]);
        if (map.find(name) != map.end()){
           (*(local_token2Type[i]))[name] = target;
            return;
        }
    }
    g_token2Type[name] = target;
    return;
}

void check_return(std::ostream& out, aA_codeBlockStmt stmt, tc_type target){
    switch (stmt->kind)
        {
        case A_codeBlockStmtType::A_ifStmtKind:
            for (int i = 0; i < stmt->u.ifStmt->ifStmts.size(); i++){
                check_return(out, stmt->u.ifStmt->ifStmts[i], target);
            }
            for (int i = 0; i < stmt->u.ifStmt->elseStmts.size(); i++){
                check_return(out, stmt->u.ifStmt->elseStmts[i], target);
            }
            break;
        case A_codeBlockStmtType::A_whileStmtKind:
            for (int i = 0; i < stmt->u.whileStmt->whileStmts.size(); i++){
                check_return(out, stmt->u.whileStmt->whileStmts[i], target);
            }
            break;
        case A_codeBlockStmtType::A_returnStmtKind:
            if (!stmt->u.returnStmt->retVal){
                if (!target->type){
                    return;  //没有返回值的情况，且右值确实没有返回值
                }
                else{
                    error_print(out,stmt->pos, "return value type doesn't match");
                }
            }
            else if(comp_tc_type(target, check_ArithExpr(out, stmt->u.returnStmt->retVal->u.arithExpr))){
                return;
            }
            else{
                error_print(out, stmt->pos, "return value type doesn't match");
                return;
            }
            break;
        default:
            break;
        }
    return;
}


// public functions
void check_Prog(std::ostream& out, aA_program p)
{
    for (auto ele : p->programElements)
    {
        if(ele->kind == A_programVarDeclStmtKind){
            check_VarDecl(out, ele->u.varDeclStmt);
        }else if (ele->kind == A_programStructDefKind){
            check_StructDef(out, ele->u.structDef);
        }
    }
    
    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDeclStmtKind){
            check_FnDeclStmt(out, ele->u.fnDeclStmt);
        }
        else if (ele->kind == A_programFnDefKind){
            check_FnDecl(out, ele->u.fnDef->fnDecl);
            if (fun_defined_record.find(*ele->u.fnDef->fnDecl->id)!= fun_defined_record.end()){
                error_print(out, ele->u.fnDef->fnDecl->pos, "function already defined");
            }
            fun_defined_record[*ele->u.fnDef->fnDecl->id] = true;
        }
    }

    for (auto ele : p->programElements){
        if(ele->kind == A_programFnDefKind){
            check_FnDef(out, ele->u.fnDef);
        }
        else if (ele->kind == A_programNullStmtKind){
            // do nothing
        }
    }

    out << "Typecheck passed!" << std::endl;
    return;
}


void check_VarDecl(std::ostream& out, aA_varDeclStmt vd)
{
    if (!vd)
        return;
    string name;
    aA_type type;
    if (vd->kind == A_varDeclStmtType::A_varDeclKind){
        // decl only
        aA_varDecl vdecl = vd->u.varDecl;
        if(vdecl->kind == A_varDeclType::A_varDeclScalarKind){
            name = *vdecl->u.declScalar->id;
            type = vdecl->u.declScalar->type;
            if(type && type->type == A_dataType::A_structTypeKind){
                if (struct2Members.find(*type->u.structType) == struct2Members.end()){
                    error_print(out, vdecl->u.declScalar->type->pos, "Undefined Type");
                    return;
                }
            }           
            // TODO: 这里可以考虑合并
            if (local_token2Type.size() == 0){
                if(check_global(name)){
                    error_print(out, vdecl->u.declScalar->pos, "global variables duplicates with global params");
                    return;
                }                
                tc_type target = tc_Type(type,0);
                g_token2Type.insert({name,target});
            }
            else{
                if (check_local(name)){
                    error_print(out, vdecl->u.declScalar->pos, "local variables duplicates with local params");
                    return;
                }
                if(check_global(name)){
                    error_print(out, vdecl->u.declScalar->pos, "local variables duplicates with global params");
                    return;
                }
                tc_type target = tc_Type(type,0);
                (*local_token2Type[local_token2Type.size()-1])[name] = target;
            }
            
        }
        else if (vdecl->kind == A_varDeclType::A_varDeclArrayKind){
            name = *vdecl->u.declArray->id;
            type = vdecl->u.declArray->type;
            if(type && type->type == A_dataType::A_structTypeKind){
                if (struct2Members.find(*type->u.structType) == struct2Members.end()){
                    error_print(out, vdecl->u.declArray->type->pos, "Undefined Type");
                    return;
                }
            }            
            // TODO: 这里可以考虑合并
            if (local_token2Type.size() == 0){
                if(check_global(name)){
                    error_print(out, vdecl->u.declArray->pos, "global variables duplicates with global params");
                    return;
                }
                tc_type target = tc_Type(type,1);
                g_token2Type.insert({name,target});
            }
            else{
                if (check_local(name)){
                    error_print(out, vdecl->u.declArray->pos, "local variables duplicates with local params");
                    return;
                }
                if(check_global(name)){
                    error_print(out, vdecl->u.declArray->pos, "local variables duplicates with global params");
                    return;
                }
                tc_type target = tc_Type(type,1);
                (*local_token2Type[local_token2Type.size()-1])[name] = target;
            }
        }
    }
    else if (vd->kind == A_varDeclStmtType::A_varDefKind){
        // decl and def
        aA_varDef vdef = vd->u.varDef;
        if (vdef->kind == A_varDefType::A_varDefScalarKind){
            name = *vdef->u.defScalar->id;
            type = vdef->u.defScalar->type;
            if(type && type->type == A_dataType::A_structTypeKind){
                if (struct2Members.find(*type->u.structType) == struct2Members.end()){
                    error_print(out, vdef->u.defScalar->type->pos, "Undefined Type");
                    return;
                }
            }        
            if (check_local(name) || check_global(name)){
                error_print(out, vdef->u.defScalar->pos, "duplicated variable");
                return;
            }
            tc_type rightV_type;
            // 原生类型只有int，所以不考虑布尔类型的变量
            rightV_type = check_ArithExpr(out,vdef->u.defScalar->val->u.arithExpr);
            if((rightV_type->isVarArrFunc != 0) && ( type && !comp_aA_type(type, rightV_type->type))){
                error_print(out, vdef->u.defScalar->val->pos, "wrong assignment in varDef");
                return;
            }
            if (local_token2Type.size() == 0){
                g_token2Type.insert({name, rightV_type});
            }
            else{
                (*local_token2Type[local_token2Type.size()-1])[name] = rightV_type;
            }

        }else if (vdef->kind == A_varDefType::A_varDefArrayKind){
            name = *vdef->u.defArray->id;
            type = vdef->u.defArray->type;
            if(type && type->type == A_dataType::A_structTypeKind){
                if (struct2Members.find(*type->u.structType) == struct2Members.end()){
                    error_print(out, vdef->u.defArray->type->pos, "Undefined Type");
                    return;
                }
            }        
            if (check_local(name) || check_global(name)){
                error_print(out, vdef->u.defArray->pos, "duplicated variable");
                return;
            }
            if (vdef->u.defArray->vals.size() != vdef->u.defArray->len){
                error_print(out, vdef->u.defArray->pos, "the length is not compatible");
            }
            tc_type rightV_type;
            // 原生类型只有int，所以不考虑布尔类型的变量
            rightV_type = check_ArithExpr(out,(vdef->u.defArray->vals)[0]->u.arithExpr);
            for (int i = 1; i < vdef->u.defArray->vals.size(); i++){
                if(!comp_tc_type(rightV_type, check_ArithExpr(out,vdef->u.defArray->vals[i]->u.arithExpr))){
                    error_print(out,vdef->u.defArray->pos, "wrong rightVal");
                    return;
                }
            }
            if((rightV_type->isVarArrFunc != 0) && (type && !comp_aA_type(type, rightV_type->type))){
                error_print(out, vdef->u.defScalar->val->pos, "wrong assignment in varDef");
                return;
            }
            if (local_token2Type.size() == 0){
                g_token2Type.insert({name, rightV_type});
            }
            else{
                (*local_token2Type[local_token2Type.size()-1])[name] = rightV_type;
            }
        }
    }
    return;
}


void check_StructDef(std::ostream& out, aA_structDef sd)
{
    if (!sd)
        return;
    string name = *sd->id;
    if (struct2Members.find(name) != struct2Members.end())
        error_print(out, sd->pos, "This id is already defined!");
    struct2Members[name] = &(sd->varDecls);
    return;
}


void check_FnDecl(std::ostream& out, aA_fnDecl fd)
{
    if (!fd)
        return;
    string name = *fd->id;

    // if already declared, should match
    if (func2Param.find(name) != func2Param.end()){
        // is function ret val matches
        tc_type retType = g_token2Type.find(name)->second;

        if (!retType->type && !fd->type){
            //do nothing
        }
        else if (!comp_aA_type(retType->type, fd->type)){
            error_print(out, fd->pos, "the function with the same name has been declared");
        }
        // is function params matches decl
        vector<aA_varDecl> params = *(func2Param.find(name)->second);
        if (params.size() != fd->paramDecl->varDecls.size()){
            error_print(out, fd->pos, "the function with the same name has been declared");
        }
        
        for (int i = 0; i < params.size(); i++){
            if(!comp_aA_varDecl_type(params[i],fd->paramDecl->varDecls[i])){
                error_print(out, fd->pos, "the function with the same name has been declared");
            }
        }

    }else{
        // if not defined
        for(int i=0; i<fd->paramDecl->varDecls.size();i++){
            aA_type param_type;
            if (fd->paramDecl->varDecls[i]->kind == A_varDeclType::A_varDeclArrayKind){
                param_type = fd->paramDecl->varDecls[i]->u.declArray->type;
            }
            else{
                param_type = fd->paramDecl->varDecls[i]->u.declScalar->type;
            }
            
            if (param_type->type == A_dataType::A_structTypeKind){
                if (struct2Members.find(*param_type->u.structType) == struct2Members.end()){
                    error_print(out, fd->paramDecl->varDecls[i]->pos, "param struct not defined");
                }
            }   
        }

        func2Param[name]= &(fd->paramDecl->varDecls);
        g_token2Type[name] = tc_Type(fd->type,2);
    }
    return;
}


void check_FnDeclStmt(std::ostream& out, aA_fnDeclStmt fd)
{
    if (!fd)
        return;
    string name = *fd->fnDecl->id;
    if (func2Param.find(name)!=func2Param.end()){
        error_print(out, fd->fnDecl->pos,"function already declared or defined");
    }
    
    check_FnDecl(out, fd->fnDecl);
    return;
}


void check_FnDef(std::ostream& out, aA_fnDef fd)
{
    if (!fd)
        return;
    
    // should match if declared
    check_FnDecl(out, fd->fnDecl);

    // add params to local tokenmap, func params override global ones
    //函数定义是新的一块区域
    typeMap new_location;
    string param_name;
    tc_type param_type;
    for (aA_varDecl vd : fd->fnDecl->paramDecl->varDecls){
        if (vd->kind == A_varDeclType::A_varDeclScalarKind){
            param_name = *vd->u.declScalar->id;
        }
        else{
            param_name = *vd->u.declArray->id;
        }
        param_type = tc_Type(vd);
        new_location[param_name] = param_type;
    }
    local_token2Type.push_back(&(new_location));

    tc_type ret_type = tc_Type(fd->fnDecl->type,0);
    
    if (ret_type->type && ret_type->type->type == A_dataType::A_structTypeKind){
        if(struct2Members.find(*ret_type->type->u.structType) == struct2Members.end()){
            error_print(out,fd->fnDecl->pos,"the return type does not defined");
        }
        
    }
    
    for (aA_codeBlockStmt stmt : fd->stmts)
    {
        check_CodeblockStmt(out, stmt);
        check_return(out, stmt, ret_type);
    }
    

    local_token2Type.pop_back();

    return;
}


void check_CodeblockStmt(std::ostream& out, aA_codeBlockStmt cs){
    if(!cs)
        return;
    // variables declared in a code block should not duplicate with outer ones.
    switch (cs->kind)
    {
    case A_codeBlockStmtType::A_varDeclStmtKind:
        check_VarDecl(out, cs->u.varDeclStmt);
        break;
    case A_codeBlockStmtType::A_assignStmtKind:
        check_AssignStmt(out, cs->u.assignStmt);
        break;
    case A_codeBlockStmtType::A_ifStmtKind:
        check_IfStmt(out, cs->u.ifStmt);
        break;
    case A_codeBlockStmtType::A_whileStmtKind:
        check_WhileStmt(out, cs->u.whileStmt);
        break;
    case A_codeBlockStmtType::A_callStmtKind:
        check_CallStmt(out, cs->u.callStmt);
        break;
    case A_codeBlockStmtType::A_returnStmtKind:
        check_ReturnStmt(out, cs->u.returnStmt);
        break;
    default:
        break;
    }
    return;
}


void check_AssignStmt(std::ostream& out, aA_assignStmt as){
    if(!as)
        return;
    string name;
    tc_type deduced_type; // deduced type if type is omitted at decl
    tc_type left_type;
    tc_type right_type= check_ArithExpr(out, as->rightVal->u.arithExpr);
    if (!right_type->type){
        error_print(out,as->rightVal->pos, "right variable must be assigned before used");
    }
    
    switch (as->leftVal->kind)
    {
        case A_leftValType::A_varValKind:{
            name = *as->leftVal->u.id;
            left_type = find_name(out, name, as->leftVal->pos);
            if (left_type->isVarArrFunc == 2){
                error_print(out, as->leftVal->pos,"function can not be assigned");
            }
            if (!left_type->type){
                set_type(name, right_type);
            }
            else if(!comp_tc_type(left_type, right_type)){
                error_print(out, as->rightVal->pos,"types not compatible");
            }
        }
            break;
        case A_leftValType::A_arrValKind:{
            name = *as->leftVal->u.arrExpr->arr->u.id;
            check_ArrayExpr(out, as->leftVal->u.arrExpr);
            left_type = find_name(out, name, as->leftVal->pos);
            if (!left_type->type){
                set_type(name, right_type);
            }
            else if(!comp_tc_type(left_type, right_type)){
                error_print(out, as->rightVal->pos,"types not compatible");
            }
        }
            break;
        case A_leftValType::A_memberValKind:{
            left_type = check_MemberExpr(out, as->leftVal->u.memberExpr);
            if(!comp_tc_type(left_type, right_type)){
                error_print(out, as->rightVal->pos,"types not compatible");
            }
        }
            break;
    }

    
    return;
}


void check_ArrayExpr(std::ostream& out, aA_arrayExpr ae){
    if(!ae)
        return;
    string name = *ae->arr->u.id;
    tc_type target = find_name(out, *ae->idx->u.id, ae->idx->pos);

    // check index
    if (ae->idx->kind == A_indexExprKind::A_idIndexKind){        
        if (target->type->type != A_dataType::A_nativeTypeKind || target->isVarArrFunc != 0){
            error_print(out, ae->idx->pos, "the index is not a num");
        }
    }
    return;
}

 
tc_type check_MemberExpr(std::ostream& out, aA_memberExpr me){
    // check if the member exists and return the type of the member
    if(!me)
        return nullptr;
    string var_name = *me->structId->u.id;
    tc_type var_type = find_name(out, var_name, me->pos);
    if (var_type->isVarArrFunc != 0 || var_type->type->type != A_dataType::A_structTypeKind){
        error_print(out, me->structId->pos,"this variable is not a struct type");
    }
    
    vector<aA_varDecl> params = *struct2Members.find(*var_type->type->u.structType)->second;
    // check member name
    for (int i = 0; i < params.size(); i++){
        if (params[i]->kind == A_varDeclType::A_varDeclArrayKind){
            if (*params[i]->u.declArray->id == *me->memberId){
                return tc_Type(params[i]->u.declArray->type,1);
            }
        }
        else if(params[i]->kind == A_varDeclType::A_varDeclScalarKind){
            if (*params[i]->u.declScalar->id == *me->memberId){
                return tc_Type(params[i]->u.declScalar->type,0);
            }
        }
    }
    error_print(out, me->pos, "no such member");
    return nullptr;
}


void check_IfStmt(std::ostream& out, aA_ifStmt is){
    if(!is)
        return;
    check_BoolExpr(out, is->boolExpr);
    //if语句是新的一块区域
    typeMap new_location_if;
    local_token2Type.push_back(&(new_location_if));

    for(aA_codeBlockStmt s : is->ifStmts){
        check_CodeblockStmt(out, s);
    }
    local_token2Type.pop_back();    

    typeMap new_location_else;
    local_token2Type.push_back(&(new_location_else));
    for(aA_codeBlockStmt s : is->elseStmts){
        check_CodeblockStmt(out, s);
    }
    local_token2Type.pop_back(); 

    return;
}


void check_BoolExpr(std::ostream& out, aA_boolExpr be){
    if(!be)
        return;
    switch (be->kind)
    {
    case A_boolExprType::A_boolBiOpExprKind:
        check_BoolExpr(out, be->u.boolBiOpExpr->left);
        check_BoolExpr(out, be->u.boolBiOpExpr->right);
        break;
    case A_boolExprType::A_boolUnitKind:
        check_BoolUnit(out, be->u.boolUnit);
        break;
    default:
        break;
    }
    return;
}


void check_BoolUnit(std::ostream& out, aA_boolUnit bu){
    if(!bu)
        return;
    switch (bu->kind)
    {
        case A_boolUnitType::A_comOpExprKind:{
            tc_type left = check_ExprUnit(out, bu->u.comExpr->left);
            tc_type right = check_ExprUnit(out, bu->u.comExpr->right);
            // 交给check_ExprUnit检查是否赋值过
            if (left->isVarArrFunc != 0 || left->type->type != A_dataType::A_nativeTypeKind){
                error_print(out, bu->u.comExpr->left->pos, "left item is not int scalar");
            }
            else if(right->isVarArrFunc != 0 ||right->type->type != A_dataType::A_nativeTypeKind){
                 error_print(out, bu->u.comExpr->left->pos, "right item is not int scalar");
            }
        }
            break;
        case A_boolUnitType::A_boolExprKind:
            check_BoolExpr(out, bu->u.boolExpr);
            break;
        case A_boolUnitType::A_boolUOpExprKind:
            check_BoolUnit(out, bu->u.boolUOpExpr->cond);
            break;
        default:
            break;
    }
    return;
}


tc_type check_ExprUnit(std::ostream& out, aA_exprUnit eu){
    // return the aA_type of expr eu
    if(!eu)
        return nullptr;
    tc_type ret;
    switch (eu->kind)
    {
        case A_exprUnitType::A_idExprKind:{
            ret = find_name(out,*eu->u.id,eu->pos);
        }
            break;
        case A_exprUnitType::A_numExprKind:{
            aA_type numt = new aA_type_;
            numt->pos = eu->pos;
            numt->type = A_dataType::A_nativeTypeKind;
            numt->u.nativeType = A_nativeType::A_intTypeKind;
            ret = tc_Type(numt, 0);
        }
            break;
        case A_exprUnitType::A_fnCallKind:{
            check_FuncCall(out, eu->u.callExpr);
            ret = find_name(out,*eu->u.callExpr->fn,eu->u.callExpr->pos);
            
        }
            break;
        case A_exprUnitType::A_arrayExprKind:{
            check_ArrayExpr(out, eu->u.arrayExpr);
            ret = find_name(out, *eu->u.arrayExpr->arr->u.id, eu->u.arrayExpr->pos);
        }
            break;
        case A_exprUnitType::A_memberExprKind:{
            ret = check_MemberExpr(out, eu->u.memberExpr);
        }
            break;
        case A_exprUnitType::A_arithExprKind:{
            ret = check_ArithExpr(out, eu->u.arithExpr);
        }
            break;
        case A_exprUnitType::A_arithUExprKind:{
            ret = check_ExprUnit(out, eu->u.arithUExpr->expr);
        }
            break;
    }
    return ret;
}


tc_type check_ArithExpr(std::ostream& out, aA_arithExpr ae){
    if(!ae)
        return nullptr;
    tc_type ret;
    switch (ae->kind)
    {
        case A_arithExprType::A_arithBiOpExprKind:{
            ret = check_ArithExpr(out, ae->u.arithBiOpExpr->left);
            tc_type rightTyep = check_ArithExpr(out, ae->u.arithBiOpExpr->right);
            if(ret->type->type > 0 || ret->type->type != A_dataType::A_nativeTypeKind || ret->type->u.nativeType != A_nativeType::A_intTypeKind ||
            rightTyep->type->type > 0 || rightTyep->type->type != A_dataType::A_nativeTypeKind || rightTyep->type->u.nativeType != A_nativeType::A_intTypeKind)
                error_print(out, ae->pos, "Only int can be arithmetic expression operation values!");
        }
            break;
        case A_arithExprType::A_exprUnitKind:
            ret = check_ExprUnit(out, ae->u.exprUnit);
            break;
    }
    return ret;
}


void check_FuncCall(std::ostream& out, aA_fnCall fc){
    if(!fc)
        return;
    // check if function defined
    string func_name = *fc->fn;
    if (func2Param.find(func_name) == func2Param.end() || !fun_defined_record.find(func_name)->second){
        error_print(out, fc->pos,"function not defined");
    }
    
    // check if parameter list matches
    vector<aA_varDecl> fun_defined_param = *func2Param.find(func_name)->second;
    for(int i = 0; i < fc->vals.size(); i++){
        tc_type param_type = check_ArithExpr(out, fc->vals[i]->u.arithExpr);
        if (param_type->isVarArrFunc == 0){
            if (fun_defined_param[i]->kind != A_varDeclType::A_varDeclScalarKind){
                error_print(out,fc->vals[i]->pos,"this parameter type is not compatible");
            }
            if(!comp_aA_type(param_type->type, fun_defined_param[i]->u.declScalar->type)){
                error_print(out,fc->vals[i]->pos,"this parameter type is not same as defined");
            }  
        }
        else if (param_type->isVarArrFunc == 1){
            if(fun_defined_param[i]->kind != A_varDeclType::A_varDeclArrayKind){
                error_print(out,fc->vals[i]->pos,"this parameter type is not compatible");
            }
            if(!comp_aA_type(param_type->type, fun_defined_param[i]->u.declArray->type)){
                error_print(out,fc->vals[i]->pos,"this parameter type is not same as defined");
            } 
            
        }
        else if(param_type->isVarArrFunc == 2){
            error_print(out, fc->vals[i]->pos, "this parameter type is not compatible");
        }
    }
    return ;
}


void check_WhileStmt(std::ostream& out, aA_whileStmt ws){
    if(!ws)
        return;
    check_BoolExpr(out, ws->boolExpr);
    //while语句是新的一块区域
    typeMap new_location_if;
    local_token2Type.push_back(&(new_location_if));
        
    for(aA_codeBlockStmt s : ws->whileStmts){
        check_CodeblockStmt(out, s);
    }
    local_token2Type.pop_back();
        
    return;
}


void check_CallStmt(std::ostream& out, aA_callStmt cs){
    if(!cs)
        return;
    check_FuncCall(out, cs->fnCall);
    return;
}


void check_ReturnStmt(std::ostream& out, aA_returnStmt rs){
    if(!rs)
        return;
    return;
}


#include "ssa.h"
#include <cassert>
#include <iostream>
#include <list>
#include <stack>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>
#include "bg_llvm.h"
#include "graph.hpp"
#include "liveness.h"
#include "printLLVM.h"

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;
struct imm_Dominator {
    LLVMIR::L_block* pred;
    unordered_set<LLVMIR::L_block*> succs;
};

unordered_map<L_block*, unordered_set<L_block*>> dominators;
unordered_map<L_block*, imm_Dominator> tree_dominators;
unordered_map<L_block*, unordered_set<L_block*>> DF_array;
unordered_map<L_block*, Node<LLVMIR::L_block*>*> revers_graph;
unordered_map<Temp_temp*, AS_operand*> temp2ASoper;

static void init_table() {
    dominators.clear();
    tree_dominators.clear();
    DF_array.clear();
    revers_graph.clear();
    temp2ASoper.clear();
}

LLVMIR::L_prog* SSA(LLVMIR::L_prog* prog) {
    for (auto& fun : prog->funcs) {
        init_table();
        combine_addr(fun);
        mem2reg(fun);
        auto RA_bg = Create_bg(fun->blocks);
        SingleSourceGraph(RA_bg.mynodes[0], RA_bg,fun);
        // Show_graph(stdout,RA_bg);
        Liveness(RA_bg.mynodes[0], RA_bg, fun->args);
        Dominators(RA_bg);
        // printf_domi();
        tree_Dominators(RA_bg);
        // printf_D_tree();
        // 默认0是入口block
        computeDF(RA_bg, RA_bg.mynodes[0]);
        // printf_DF();
        Place_phi_fu(RA_bg, fun);
        Rename(RA_bg);
        combine_addr(fun);
    }
    return prog;
}

static bool is_mem_variable(L_stm* stm) {
    return stm->type == L_StmKind::T_ALLOCA && stm->u.ALLOCA->dst->kind == OperandKind::TEMP && stm->u.ALLOCA->dst->u.TEMP->type == TempType::INT_PTR && stm->u.ALLOCA->dst->u.TEMP->len == 0;
}

// 保证相同的AS_operand,地址一样 。常量除外
void combine_addr(LLVMIR::L_func* fun) {
    unordered_map<Temp_temp*, unordered_set<AS_operand**>> temp_set;
    unordered_map<Name_name*, unordered_set<AS_operand**>> name_set;
    for (auto& block : fun->blocks) {
        for (auto& stm : block->instrs) {
            auto AS_operand_list = get_all_AS_operand(stm);
            for (auto AS_op : AS_operand_list) {
                if ((*AS_op)->kind == OperandKind::TEMP) {
                    temp_set[(*AS_op)->u.TEMP].insert(AS_op);
                } else if ((*AS_op)->kind == OperandKind::NAME) {
                    name_set[(*AS_op)->u.NAME].insert(AS_op);
                }
            }
        }
    }
    for (auto temp : temp_set) {
        AS_operand* fi_AS_op = **temp.second.begin();
        for (auto AS_op : temp.second) {
            *AS_op = fi_AS_op;
        }
    }
    for (auto name : name_set) {
        AS_operand* fi_AS_op = **name.second.begin();
        for (auto AS_op : name.second) {
            *AS_op = fi_AS_op;
        }
    }
}

void mem2reg(LLVMIR::L_func* fun) {
    temp2ASoper.clear();
    
    for (auto& block : fun->blocks) {
        auto it = block->instrs.begin();
        while (it != block->instrs.end()) {
            auto& stm = *it;
            if (stm->type == L_StmKind::T_ALLOCA) {
                if (is_mem_variable(stm)){
                    AS_operand* new_reg = AS_Operand_Temp(Temp_newtemp_int());
                    temp2ASoper[stm->u.ALLOCA->dst->u.TEMP] = new_reg;
                    *it = L_Move(AS_Operand_Const(0), stm->u.ALLOCA->dst);
                }
            }
            else if (stm->type == L_StmKind::T_STORE) {
                if (temp2ASoper.find(stm->u.STORE->ptr->u.TEMP) != temp2ASoper.end()){
                    AS_operand* target = temp2ASoper.find(stm->u.STORE->ptr->u.TEMP)->second;
                    *it = L_Move(stm->u.STORE->src, target);
                }
            }
            else if (stm->type == L_StmKind::T_LOAD) {
                if (temp2ASoper.find(stm->u.LOAD->ptr->u.TEMP) != temp2ASoper.end()){
                    temp2ASoper[stm->u.LOAD->dst->u.TEMP] = temp2ASoper.find(stm->u.LOAD->ptr->u.TEMP)->second;
                    it = block->instrs.erase(it);
                }
                continue;
            }
            else if (stm->type == L_StmKind::T_BINOP){
                AS_operand* left = stm->u.BINOP->left;
                AS_operand* right = stm->u.BINOP->right;
                if (left->kind == OperandKind::TEMP && temp2ASoper.find(left->u.TEMP) != temp2ASoper.end()){
                    left = temp2ASoper.find(left->u.TEMP)->second;
                }
                if (right->kind == OperandKind::TEMP && temp2ASoper.find(right->u.TEMP) != temp2ASoper.end()){
                    right = temp2ASoper.find(right->u.TEMP)->second;
                }
                *it = L_Binop(stm->u.BINOP->op, left, right, stm->u.BINOP->dst);
            }
            else if (stm->type == L_StmKind::T_CMP){
                AS_operand* left = stm->u.CMP->left;
                AS_operand* right = stm->u.CMP->right;
                if (left->kind == OperandKind::TEMP && temp2ASoper.find(left->u.TEMP) != temp2ASoper.end()){
                    left = temp2ASoper.find(left->u.TEMP)->second;
                }
                if (right->kind == OperandKind::TEMP && temp2ASoper.find(right->u.TEMP) != temp2ASoper.end()){
                    right = temp2ASoper.find(right->u.TEMP)->second;
                }
                *it = L_Cmp(stm->u.CMP->op, left, right, stm->u.CMP->dst);
            }
            else if(stm->type == L_StmKind::T_CJUMP){
                AS_operand* dst = stm->u.CJUMP->dst;
                if (dst->kind == OperandKind::TEMP && temp2ASoper.find(dst->u.TEMP) != temp2ASoper.end()){
                    dst = temp2ASoper.find(dst->u.TEMP)->second;
                }
                *it = L_Cjump(dst, stm->u.CJUMP->true_label, stm->u.CJUMP->false_label);
            }
            else if(stm->type == L_StmKind::T_GEP){
                AS_operand* new_ptr = stm->u.GEP->new_ptr;
                AS_operand* base_ptr = stm->u.GEP->base_ptr;
                AS_operand* index = stm->u.GEP->index;
                if (new_ptr->kind == OperandKind::TEMP && temp2ASoper.find(new_ptr->u.TEMP) != temp2ASoper.end()){
                    new_ptr = temp2ASoper.find(new_ptr->u.TEMP)->second;
                }
                if (index->kind == OperandKind::TEMP && temp2ASoper.find(index->u.TEMP) != temp2ASoper.end()){
                    index = temp2ASoper.find(index->u.TEMP)->second;
                }
                *it = L_Gep(new_ptr, base_ptr, index);
            }
            else if (stm->type == L_StmKind::T_RETURN){
                AS_operand* ret = stm->u.RETURN->ret;
                if (ret->kind == OperandKind::TEMP && temp2ASoper.find(ret->u.TEMP) != temp2ASoper.end()){
                    ret = temp2ASoper.find(stm->u.RETURN->ret->u.TEMP)->second;
                }
                *it = L_Ret(ret);
            }
            else if(stm->type == L_StmKind::T_CALL){
                std::vector<AS_operand*> args;
                for (int i = 0; i < stm->u.CALL->args.size(); i++){
                    AS_operand* arg = stm->u.CALL->args[i];
                    if (arg->kind == OperandKind::TEMP && temp2ASoper.find(arg->u.TEMP) != temp2ASoper.end()){
                        args.push_back(temp2ASoper[arg->u.TEMP]);
                    }
                    else{
                        args.push_back(arg);
                    }
                }
                AS_operand* ret = stm->u.CALL->res;
                if (ret->kind == OperandKind::TEMP && temp2ASoper.find(ret->u.TEMP) != temp2ASoper.end()){
                    ret = temp2ASoper.find(stm->u.RETURN->ret->u.TEMP)->second;
                }
                *it = L_Call(stm->u.CALL->fun, ret, args);
            }
            else if(stm->type == L_StmKind::T_VOID_CALL){
                std::vector<AS_operand*> args;
                for (int i = 0; i < stm->u.VOID_CALL->args.size(); i++){
                    AS_operand* arg = stm->u.VOID_CALL->args[i];
                    if (arg->kind == OperandKind::TEMP && temp2ASoper.find(arg->u.TEMP) != temp2ASoper.end()){
                        args.push_back(temp2ASoper[arg->u.TEMP]);
                    }
                    else{
                        args.push_back(arg);
                    }
                }
                *it = L_Voidcall(stm->u.CALL->fun, args);
            }
            
            ++it;
        }
    }
}

void Dominators(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    //   Todo
}

void printf_domi() {
    printf("Dominator:\n");
    for (auto x : dominators) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

void printf_D_tree() {
    printf("dominator tree:\n");
    for (auto x : tree_dominators) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second.succs) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}
void printf_DF() {
    printf("DF:\n");
    for (auto x : DF_array) {
        printf("%s :\n", x.first->label->name.c_str());
        for (auto t : x.second) {
            printf("%s ", t->label->name.c_str());
        }
        printf("\n\n");
    }
}

void tree_Dominators(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    //   Todo
}

void computeDF(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* r) {
    //   Todo
}

// 只对标量做
void Place_phi_fu(GRAPH::Graph<LLVMIR::L_block*>& bg, L_func* fun) {
    //   Todo
}

static list<AS_operand**> get_def_int_operand(LLVMIR::L_stm* stm) {
    list<AS_operand**> ret1 = get_def_operand(stm), ret2;
    for (auto AS_op : ret1) {
        if ((**AS_op).u.TEMP->type == TempType::INT_TEMP) {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

static list<AS_operand**> get_use_int_operand(LLVMIR::L_stm* stm) {
    list<AS_operand**> ret1 = get_use_operand(stm), ret2;
    for (auto AS_op : ret1) {
        if ((**AS_op).u.TEMP->type == TempType::INT_TEMP) {
            ret2.push_back(AS_op);
        }
    }
    return ret2;
}

static void Rename_temp(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* n, unordered_map<Temp_temp*, stack<Temp_temp*>>& Stack) {
   //   Todo
}

void Rename(GRAPH::Graph<LLVMIR::L_block*>& bg) {
   //   Todo
}
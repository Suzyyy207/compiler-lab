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
        std::cout<<"mem2reg finish"<<std::endl;
        auto RA_bg = Create_bg(fun->blocks);
        SingleSourceGraph(RA_bg.mynodes[0], RA_bg,fun);
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
                    *it = L_Move(AS_Operand_Const(0), new_reg);
                }
            }
            else if (stm->type == L_StmKind::T_STORE) {
                if (stm->u.STORE->ptr->kind == OperandKind::TEMP && temp2ASoper.find(stm->u.STORE->ptr->u.TEMP) != temp2ASoper.end()){
                    AS_operand* target = temp2ASoper.find(stm->u.STORE->ptr->u.TEMP)->second;
                    *it = L_Move(stm->u.STORE->src, target);
                }
            }
            else if (stm->type == L_StmKind::T_LOAD) {
                if (stm->u.LOAD->ptr->kind == OperandKind::TEMP && temp2ASoper.find(stm->u.LOAD->ptr->u.TEMP) != temp2ASoper.end()){
                    temp2ASoper[stm->u.LOAD->dst->u.TEMP] = temp2ASoper.find(stm->u.LOAD->ptr->u.TEMP)->second;
                    it = block->instrs.erase(it);
                    continue;
                }
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
            else if (fun->ret.type == ReturnType::INT_TYPE &&  stm->type == L_StmKind::T_RETURN){
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
                *it = L_Voidcall(stm->u.VOID_CALL->fun, args);
            }
            
            ++it;
        }
    }
}

void Dominators(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    // 初始化
    revers_graph.clear();
    for (int i = 0; i < bg.mynodes.size(); i++){
        unordered_set<L_block*> dom_set;
        dom_set.emplace(bg.mynodes[i]->info);
        dominators[bg.mynodes[i]->info] = dom_set;
    }
    
    bool change = true;
    while (change){
        change = false;
        for (int i = 1; i < bg.mynodes.size(); i++){
            unordered_set<L_block*> dom_set = dominators[bg.mynodes[i]->info];
            unordered_set<L_block*> pred_dom_intersection;
            bool first = true;
            unordered_set<L_block*> pred_dom_set;

            for (auto& pred_num: bg.mynodes[i]->preds){
                if (first){
                    pred_dom_set = dominators.find(bg.mynodes[pred_num]->info)->second;
                    for (auto& pre_dom: pred_dom_set){
                        pred_dom_intersection.emplace(pre_dom);
                    }
                    first = false;
                }
                else{
                    for (auto& intersection_dom: pred_dom_intersection){
                        pred_dom_set = dominators.find(bg.mynodes[pred_num]->info)->second;
                        if (pred_dom_set.find(intersection_dom) == pred_dom_set.end()){
                            pred_dom_intersection.erase(intersection_dom);
                        }
                    }
                }
            }
            pred_dom_intersection.emplace(bg.mynodes[i]->info);

            for (auto& intersection_dom: pred_dom_intersection){
                if (dom_set.find(intersection_dom) == dom_set.end()){
                    dom_set.emplace(intersection_dom);
                    change = true;
                }
            }
            
            for (auto& origin_dom: dom_set){
                if (pred_dom_intersection.find(origin_dom) == pred_dom_intersection.end()){
                    dom_set.erase(origin_dom);
                    change = true;
                }
            }
            
            dominators[bg.mynodes[i]->info] = dom_set;
        }
    }

    std::cout<<"dominators finish"<<std::endl;
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
    // 初始化
    for (int i = 0; i < bg.mynodes.size(); i++){
        imm_Dominator imm_origin;
        tree_dominators[bg.mynodes[i]->info] = imm_origin;
    }

    for (int i = 1; i < bg.mynodes.size(); i++){
        unordered_set<L_block*> doms = dominators[bg.mynodes[i]->info];
        L_block* nearest = bg.mynodes[i]->info;
        for (auto& dom: doms){
            int flag = 0;
            if (dom == bg.mynodes[i]->info){
                continue;
            }
            for (auto& other_dom: doms){
                if (dom == other_dom || other_dom == bg.mynodes[i]->info){
                    continue;
                }
                unordered_set<L_block*> other_dom_doms = dominators[other_dom];
                if (other_dom_doms.find(dom) != other_dom_doms.end()){
                    flag = 1;
                    break;
                }
            }
            if (flag == 1){
                continue;
            }
            else{
                nearest = dom;
                break;
            }
        }

        tree_dominators[bg.mynodes[i]->info].pred = nearest;
        tree_dominators[nearest].succs.emplace(bg.mynodes[i]->info);
    }
    
}

void computeBlcokDF(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* n){
    /*
        computeDF[n]=
        S={}
        for succ[n]中的每一个个结点y		这个循环计算DF_local[n]
            if idom(y)≠n
                S=SU{y}
        for必经结点树中的n 的每个儿子c
            computeDF[c]
            for DF[c]中的每个元素
                if n不是w的必经结点，或者if n==w
                    S=SU{w}
        DF[n]=S
    */
    unordered_set<L_block*> origin = DF_array[n->info];

    for (auto& j: n->succs){
        L_block* y = bg.mynodes[j]->info;
        if (tree_dominators[y].pred != n->info){
            origin.emplace(y);
        }
    }

    for (auto& tree_son: tree_dominators[n->info].succs){
        computeBlcokDF(bg, revers_graph[tree_son]);
        for (auto& w: DF_array[tree_son]){
            unordered_set<L_block*> w_dom = dominators[w];
            if (w_dom.find(n->info) == w_dom.end() || w == n->info){
                origin.emplace(w);
            }
        }
    }

    DF_array[n->info] = origin;
}

void computeDF(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* r) {
    revers_graph.clear();
    for (int i = 0; i < bg.mynodes.size(); i++){
        unordered_set<L_block*> origin;
        revers_graph[bg.mynodes[i]->info] = bg.mynodes[i];
        DF_array[bg.mynodes[i]->info] = origin;
    }

    for (int i = 1; i < bg.mynodes.size(); i++){
        computeBlcokDF(bg, bg.mynodes[i]);
    }

}

// 只对标量做
void Place_phi_fu(GRAPH::Graph<LLVMIR::L_block*>& bg, L_func* fun) {
    // 创建block -> index的映射
    unordered_map<L_block*, int> block2index;
    for (int i = 0; i < bg.mynodes.size(); i++){
        block2index[bg.mynodes[i]->info] = i;
    }
    
    //step 1
    unordered_map<Temp_temp*, unordered_set<L_block*>> def_sites;
    for (int i = 0; i < bg.mynodes.size(); i++){
        unordered_set<L_block*> def_site;
        for(auto& def_a: FG_def(bg.mynodes[i])){
            if (def_sites.find(def_a) == def_sites.end()){
                def_sites[def_a] = def_site;
            }
            if (def_sites[def_a].find(bg.mynodes[i]->info) == def_site.end()){
                def_sites[def_a].emplace(bg.mynodes[i]->info);
            }
        }
    }

    for (auto& temp_pair: def_sites){
        unordered_set<L_block*> w = temp_pair.second;
        unordered_set<L_block*> f;
        while (!w.empty()){
            L_block* x = *w.end();
            w.erase(x);
            unordered_set<L_block*> df_x = DF_array[x];
            for(auto& y: df_x){
                if (f.find(y) == f.end()){
                    // add phi --修改
                    int y_index = block2index[y];
                    AS_operand* dst = AS_Operand_Temp(temp_pair.first);
                    std::vector<std::pair<AS_operand*,Temp_label*>> phis;
                    std::pair<AS_operand*,Temp_label*> new_phi_src;
                    for(auto& pred: bg.mynodes[y_index]->preds){
                        new_phi_src = make_pair(dst, bg.mynodes[pred]->info->label);
                        phis.push_back(new_phi_src);
                    }
                    y->instrs.push_front(L_Phi(dst, phis));

                    //f and w update
                    f.emplace(y);
                    if (w.find(y) == w.end()){
                        w.emplace(y);
                    }
                }
            }
        }
    }
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

static void Rename_temp(GRAPH::Graph<LLVMIR::L_block*>& bg, GRAPH::Node<LLVMIR::L_block*>* n, unordered_map<Temp_temp*, stack<Temp_temp*>>& Stack,  unordered_map<Temp_temp*, int>& Count) {
    
    // 创建block -> index的映射
    unordered_map<L_block*, int> block2index;
    for (int i = 0; i < bg.mynodes.size(); i++){
        block2index[bg.mynodes[i]->info] = i;
    }
    
    // 语句处理
    for (auto& stm: n->info->instrs){
        // 先处理非phi的use: 存在i = i+1 的情况
        if (stm->type != L_StmKind::T_PHI){
            for (auto use_operand: get_use_int_operand(stm)){
                Temp_temp* new_temp = Stack[(*use_operand)->u.TEMP].top();
                (*use_operand)->u.TEMP = new_temp;
            }
        }
        // 处理def
        for (auto def_operand: get_def_int_operand(stm)){
            Count[(*def_operand)->u.TEMP] += 1;
            int new_index = Count[(*def_operand)->u.TEMP];
            
            string new_name = (*def_operand)->u.TEMP->varname + "_" + to_string(new_index);
            Temp_temp* new_temp = Temp_newtemp_int();
            new_temp->varname = new_name;
            (*def_operand)->u.TEMP = new_temp;

            Stack[(*def_operand)->u.TEMP].push(new_temp);
        }
    }

    // 后继处理
    for (auto& succ: n->succs){
        int j = 0;
        for (auto& pred: bg.mynodes[succ]->preds){
            if (n->mykey == pred){
                break;
            }
            j++;
        }
        for (auto& stm: bg.mynodes[succ]->info->instrs){
            if (stm->type == L_StmKind::T_PHI){
                if (stm->u.PHI->phis[j].second == n->info->label){
                    AS_operand* phi_operand = stm->u.PHI->phis[j].first;
                    phi_operand->u.TEMP = Stack[phi_operand->u.TEMP].top();
                }
            }
        }
    }

    // 处理子节点？
    for (auto& son: tree_dominators[n->info].succs){
        int son_index = block2index[son];
        Rename_temp(bg, bg.mynodes[son_index], Stack, Count);
    }
    
    // pop出这个block压入的v
    for (auto& stm: n->info->instrs){
        for (auto def_operand: get_def_int_operand(stm)){
            Stack[(*def_operand)->u.TEMP].pop();
        }
    }
}

void Rename(GRAPH::Graph<LLVMIR::L_block*>& bg) {
    // 初始化set
    int count = 0;
    unordered_map<Temp_temp*, stack<Temp_temp*>> Stack;
    unordered_map<Temp_temp*, int> Count;
    for (auto& temp: temp2ASoper){
        int count = 0;
        Count[temp.first] = count;
        stack<Temp_temp*> stack_empty;
        Stack[temp.first] = stack_empty;
    }

    Rename_temp(bg, bg.mynodes[0], Stack, Count);
}
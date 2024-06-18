#include "liveness.h"
#include <unordered_map>
#include <unordered_set>
#include "graph.hpp"
#include "llvm_ir.h"
#include "temp.h"

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;

struct inOut {
    TempSet_ in;
    TempSet_ out;
};

struct useDef {
    TempSet_ use;
    TempSet_ def;
};

static unordered_map<GRAPH::Node<LLVMIR::L_block*>*, inOut> InOutTable;
static unordered_map<GRAPH::Node<LLVMIR::L_block*>*, useDef> UseDefTable;

list<AS_operand**> get_all_AS_operand(L_stm* stm) {
    list<AS_operand**> AS_operand_list;
    switch (stm->type) {
        case L_StmKind::T_BINOP: {
            AS_operand_list.push_back(&(stm->u.BINOP->left));
            AS_operand_list.push_back(&(stm->u.BINOP->right));
            AS_operand_list.push_back(&(stm->u.BINOP->dst));

        } break;
        case L_StmKind::T_LOAD: {
            AS_operand_list.push_back(&(stm->u.LOAD->dst));
            AS_operand_list.push_back(&(stm->u.LOAD->ptr));
        } break;
        case L_StmKind::T_STORE: {
            AS_operand_list.push_back(&(stm->u.STORE->src));
            AS_operand_list.push_back(&(stm->u.STORE->ptr));
        } break;
        case L_StmKind::T_LABEL: {
        } break;
        case L_StmKind::T_JUMP: {
        } break;
        case L_StmKind::T_CMP: {
            AS_operand_list.push_back(&(stm->u.CMP->left));
            AS_operand_list.push_back(&(stm->u.CMP->right));
            AS_operand_list.push_back(&(stm->u.CMP->dst));
        } break;
        case L_StmKind::T_CJUMP: {
            AS_operand_list.push_back(&(stm->u.CJUMP->dst));
        } break;
        case L_StmKind::T_MOVE: {
            AS_operand_list.push_back(&(stm->u.MOVE->src));
            AS_operand_list.push_back(&(stm->u.MOVE->dst));
        } break;
        case L_StmKind::T_CALL: {
            AS_operand_list.push_back(&(stm->u.CALL->res));
            for (auto& arg : stm->u.CALL->args) {
                AS_operand_list.push_back(&arg);
            }
        } break;
        case L_StmKind::T_VOID_CALL: {
            for (auto& arg : stm->u.VOID_CALL->args) {
                AS_operand_list.push_back(&arg);
            }
        } break;
        case L_StmKind::T_RETURN: {
            if (stm->u.RETURN->ret != nullptr)
                AS_operand_list.push_back(&(stm->u.RETURN->ret));
        } break;
        case L_StmKind::T_PHI: {
            AS_operand_list.push_back(&(stm->u.PHI->dst));
            for (auto& phi : stm->u.PHI->phis) {
                AS_operand_list.push_back(&(phi.first));
            }
        } break;
        case L_StmKind::T_ALLOCA: {
            AS_operand_list.push_back(&(stm->u.ALLOCA->dst));
        } break;
        case L_StmKind::T_GEP: {
            AS_operand_list.push_back(&(stm->u.GEP->new_ptr));
            AS_operand_list.push_back(&(stm->u.GEP->base_ptr));
            AS_operand_list.push_back(&(stm->u.GEP->index));
        } break;
        default: {
            printf("%d\n", (int)stm->type);
            assert(0);
        }
    }
    return AS_operand_list;
}

std::list<AS_operand**> get_def_operand(L_stm* stm) {
    list<AS_operand**> AS_operand_list;
    switch (stm->type) {
        case L_StmKind::T_BINOP: {
            if (stm->u.BINOP->dst->kind == OperandKind::TEMP && stm->u.BINOP->dst->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.BINOP->dst));
            }
        } break;
        case L_StmKind::T_CMP: {
            if (stm->u.CMP->dst->kind == OperandKind::TEMP && stm->u.CMP->dst->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.CMP->dst));
            }
            
        } break;
        case L_StmKind::T_MOVE: {
            if (stm->u.MOVE->dst->kind == OperandKind::TEMP && stm->u.MOVE->dst->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.MOVE->dst));
            }
        } break;
        case L_StmKind::T_CALL: {
            if (stm->u.CALL->res->kind == OperandKind::TEMP && stm->u.CALL->res->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.CALL->res));
            }
        } break;
        case L_StmKind::T_PHI: {
            if (stm->u.PHI->dst->kind == OperandKind::TEMP && stm->u.PHI->dst->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.PHI->dst));
            }
        } break;
        case L_StmKind::T_GEP: {
            if (stm->u.GEP->new_ptr->kind == OperandKind::TEMP && stm->u.GEP->new_ptr->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.GEP->new_ptr));
            }
        } break;
        default: {
        } break;
    }
    return AS_operand_list;
}
list<Temp_temp*> get_def(L_stm* stm) {
    auto AS_operand_list = get_def_operand(stm);
    list<Temp_temp*> Temp_list;
    for (auto AS_op : AS_operand_list) {
        Temp_list.push_back((*AS_op)->u.TEMP);
    }
    return Temp_list;
}

std::list<AS_operand**> get_use_operand(L_stm* stm) {
    list<AS_operand**> AS_operand_list;
    switch (stm->type) {
        case L_StmKind::T_BINOP: {
            if (stm->u.BINOP->left->kind == OperandKind::TEMP && stm->u.BINOP->left->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.BINOP->left));
            }
            if (stm->u.BINOP->right->kind == OperandKind::TEMP && stm->u.BINOP->right->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.BINOP->right));
            }
        } break;
        case L_StmKind::T_CMP: {
            if (stm->u.CMP->left->kind == OperandKind::TEMP && stm->u.CMP->left->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.CMP->left));
            }
            if (stm->u.CMP->right->kind == OperandKind::TEMP && stm->u.CMP->right->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.CMP->right));
            }
        } break;
        case L_StmKind::T_CJUMP: {
            if (stm->u.CJUMP->dst->kind == OperandKind::TEMP && stm->u.CJUMP->dst->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.CJUMP->dst));
            }
        } break;
        case L_StmKind::T_MOVE: {
            if (stm->u.MOVE->src->kind == OperandKind::TEMP && stm->u.MOVE->src->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.MOVE->src));
            }
        } break;
        case L_StmKind::T_CALL: {
            for (auto& arg : stm->u.CALL->args) {
                if (arg->kind == OperandKind::TEMP && arg->u.TEMP->type == TempType::INT_TEMP){
                    AS_operand_list.push_back(&arg);
                }
            }
        } break;
        case L_StmKind::T_VOID_CALL: {
            for (auto& arg : stm->u.VOID_CALL->args) {
                if (arg->kind == OperandKind::TEMP && arg->u.TEMP->type == TempType::INT_TEMP){
                    AS_operand_list.push_back(&arg);
                }
            }
        } break;
        case L_StmKind::T_RETURN: {
            if (stm->u.RETURN->ret != nullptr){
                if (stm->u.RETURN->ret->kind == OperandKind::TEMP && stm->u.RETURN->ret->u.TEMP->type == TempType::INT_TEMP){
                    AS_operand_list.push_back(&(stm->u.RETURN->ret));
                }
            }
                
        } break;
        case L_StmKind::T_PHI: {
            for (auto& arg : stm->u.PHI->phis) {
                if (arg.first->kind == OperandKind::TEMP && arg.first->u.TEMP->type == TempType::INT_TEMP){
                    AS_operand_list.push_back(&arg.first);
                }
            }
        } break;
        case L_StmKind::T_GEP: {
            if (stm->u.GEP->index->kind == OperandKind::TEMP && stm->u.GEP->index->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.GEP->index));
            }
        } break;
        case L_StmKind::T_STORE: {
            if (stm->u.STORE->src->kind == OperandKind::TEMP && stm->u.STORE->src->u.TEMP->type == TempType::INT_TEMP){
                AS_operand_list.push_back(&(stm->u.STORE->src));
            }
        } break;
        default: {
        } break;
    }
    return AS_operand_list;
}

list<Temp_temp*> get_use(L_stm* stm) {
    auto AS_operand_list = get_use_operand(stm);
    list<Temp_temp*> Temp_list;
    for (auto AS_op : AS_operand_list) {
        Temp_list.push_back((*AS_op)->u.TEMP);
    }
    return Temp_list;
}

static void init_INOUT() {
    InOutTable.clear();
    UseDefTable.clear();
}

TempSet_& FG_Out(GRAPH::Node<LLVMIR::L_block*>* r) {
    return InOutTable[r].out;
}
TempSet_& FG_In(GRAPH::Node<LLVMIR::L_block*>* r) {
    return InOutTable[r].in;
}
TempSet_& FG_def(GRAPH::Node<LLVMIR::L_block*>* r) {
    return UseDefTable[r].def;
}
TempSet_& FG_use(GRAPH::Node<LLVMIR::L_block*>* r) {
    return UseDefTable[r].use;
}

static void Use_def(GRAPH::Node<LLVMIR::L_block*>* r, GRAPH::Graph<LLVMIR::L_block*>& bg, std::vector<Temp_temp*>& args) {
    //先操作入口，将args都放入入口
    
    for (int i=0; i<bg.nodecount; i++){
        //std::cout<<"hi"<<std::endl;
        //std::cout<<bg.mynodes[i]->info->label->name<<std::endl;
        if(!bg.mynodes[i]){
            continue;
        }
        
        useDef b_use_def;
        TempSet_ b_def;
        TempSet_ b_use;
        if (i==0){
            for (auto& arg: args){
                if (arg->type == TempType::INT_TEMP){
                    b_def.emplace(arg);
                }
            }
        }
        
        for (auto& stm: bg.mynodes[i]->nodeInfo()->instrs){
            list<Temp_temp*> b_stm_def = get_def(stm);
            list<Temp_temp*> b_stm_use = get_use(stm);
            for(auto& def_temp: b_stm_def){
                if (b_def.find(def_temp) == b_def.end()){
                    b_def.emplace(def_temp);
                }
            }
            for(auto& use_temp: b_stm_use){
                if (b_def.find(use_temp) == b_def.end() && b_use.find(use_temp) == b_use.end()){
                    b_use.emplace(use_temp);
                }
            }
        }
        b_use_def.def = b_def;
        b_use_def.use = b_use;
        UseDefTable[bg.mynodes[i]] = b_use_def;

        //初始化inout table
        inOut b_in_out;
        InOutTable[bg.mynodes[i]] = b_in_out;
        
    }
    
    
}
static int gi=0;
static bool LivenessIteration(GRAPH::Node<LLVMIR::L_block*>* r, GRAPH::Graph<LLVMIR::L_block*>& bg) {

    // in[b] = use[b] + (out[b] - def[b])
    // out[b] = sum(in[s])
    bool in_change_flag = false;
    for (int i = bg.nodecount-1; i >=0; i--)
    {
        if (!bg.mynodes[i]){
            continue;
        }

        TempSet_ b_in = InOutTable[bg.mynodes[i]].in;
        TempSet_ b_out = InOutTable[bg.mynodes[i]].out;
        TempSet_ b_def = UseDefTable[bg.mynodes[i]].def;
        TempSet_ b_use = UseDefTable[bg.mynodes[i]].use;

        // 计算out
        for (auto& node: bg.mynodes[i]->succs){
            TempSet_ succ_in = InOutTable[bg.mynodes[node]].in;
            for (auto& temp: succ_in){
                if (b_out.find(temp) == b_out.end()){
                    b_out.emplace(temp);
                }
            }
        }

        // 计算in
        for (auto& temp: b_use){
            if (b_in.find(temp) == b_in.end()){
                b_in.emplace(temp);
                in_change_flag = true;
            }
        }
        for (auto& temp: b_out){
            if (b_def.find(temp) == b_def.end()){
                if (b_in.find(temp) == b_in.end()){
                    b_in.emplace(temp);
                    in_change_flag = true;
                }
            }
            
        }
        InOutTable[bg.mynodes[i]].in = b_in;
        InOutTable[bg.mynodes[i]].out = b_out;
        
    }

    //Show_Liveness(f, bg);
    return in_change_flag;
    
}

void PrintTemps(FILE *out, TempSet set) {
    for(auto x:*set){
        fprintf(out, "%d  ",x->num);
    }
}


void Show_Liveness(FILE* out, GRAPH::Graph<LLVMIR::L_block*>& bg) {
    fprintf(out, "\n\nNumber of iterations=%d\n\n", gi);
    for(auto block_node:bg.mynodes){
        fprintf(out, "----------------------\n");
        fprintf(out,"block %s \n",block_node.second->info->label->name.c_str());
        fprintf(out, "def=\n"); PrintTemps(out, &FG_def(block_node.second)); fprintf(out, "\n");
        fprintf(out, "use=\n"); PrintTemps(out, &FG_use(block_node.second)); fprintf(out, "\n");
        fprintf(out, "In=\n");  PrintTemps(out, &FG_In(block_node.second)); fprintf(out, "\n");
        fprintf(out, "Out=\n"); PrintTemps(out, &FG_Out(block_node.second)); fprintf(out, "\n");
    }
}
// 以block为单位
void Liveness(GRAPH::Node<LLVMIR::L_block*>* r, GRAPH::Graph<LLVMIR::L_block*>& bg, std::vector<Temp_temp*>& args) {
    init_INOUT();
    Use_def(r, bg, args);
    //std::cout<< "use-def finish"<<std::endl;
    gi=0;
    bool changed = true;
    //FILE* f=fopen("./tests/liveness.txt", "w");
    while (changed){
        changed = LivenessIteration(r, bg);
        gi++;
    }
    //std::cout<< "liveness finish"<<std::endl;

    
    //Show_Liveness(f, bg);
    //fclose(f);
}
#include "bg_llvm.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <unordered_map>
#include <iostream>
#include "graph.hpp"
#include "printLLVM.h"
#include "temp.h"
/* graph on AS_ basic blocks. This is useful to find dominance
   relations, etc. */

using namespace std;
using namespace LLVMIR;
using namespace GRAPH;

static Graph<L_block*> RA_bg;
static unordered_map<Temp_label*, L_block*> block_env;

Graph<L_block*>& Bg_graph() {
    return RA_bg;
}
unordered_map<Temp_label*, L_block*>& Bg_block_env() {
    return block_env;
}

Node<L_block*>* Look_bg(L_block* b) {
    Node<L_block*>* n1 = nullptr;
    for (auto n : *RA_bg.nodes()) {
        if (n.second->nodeInfo() == b) {
            n1 = n.second;
            break;
        }
    }
    if (n1 == nullptr)
        return RA_bg.addNode(b);
    else
        return n1;
}

static void Enter_bg(L_block* b1, L_block* b2) {
    Node<L_block*>* n1 = Look_bg(b1);
    Node<L_block*>* n2 = Look_bg(b2);
    RA_bg.addEdge(n1, n2);
    return;
}

/* input LLVMIR::L_block* *List after instruction selection for each block,
    generate a graph on the basic blocks */

Graph<L_block*>& Create_bg(list<L_block*>& bl) {
    RA_bg = Graph<L_block*>();
    block_env = unordered_map<Temp_label*, L_block*>();

    for (auto block : bl) {
        block_env.insert({block->label, block});
        RA_bg.addNode(block);
    }

    for (auto block : bl) {
        unordered_set<Temp_label*> succs = block->succs;
        for (auto label : succs) {
            Enter_bg(block, block_env[label]);
        }
    }
    return RA_bg;
}

// maybe useful
static void DFS(Node<L_block*>* r, Graph<L_block*>& bg) {

}

void SingleSourceGraph(Node<L_block*>* r, Graph<L_block*>& bg,L_func*fun) {
    r->color = 1;
    int node_num = 0;
    for (auto& block : fun->blocks) {
        int flag = 0;
        Node<L_block*>* node = bg.mynodes[node_num];
        auto it = block->instrs.begin();
        while (it != block->instrs.end()) {
            auto& stm = *it;
            if (stm->type == L_StmKind::T_RETURN){
                flag = 1;
                break;
            }
            ++it;
        }
        if (flag != 1){
            NodeSet* succs = node->succ();
            for(auto it = succs->begin(); it != succs->end(); ++it) {
                bg.mynodes[*it]->color = 1;
            }
        }
    }

    std::cout<<"scan finish"<<std::endl;

    vector<int> index_list;
    for(auto node = bg.mynodes.begin(); node != bg.mynodes.end(); ++node) {
        if (node->second->color == 0){
            NodeSet succs = *node->second->succ();
            for(auto node_succ = succs.begin(); node_succ != succs.end(); ++node_succ) {
                bg.rmEdge(node->second, bg.mynodes[*node_succ]);
            }

            NodeSet preds = *node->second->pred();
            for(auto node_pred = preds.begin(); node_pred != preds.end(); ++node_pred) {
                bg.rmEdge(bg.mynodes[*node_pred], node->second);
            }
            index_list.push_back(node->second->mykey);
        }
    }

    for (int i = 0; i < index_list.size(); i++){
        bg.mynodes.erase(index_list[i]);
    }

    std::cout<<"rebuild graph finish"<<std::endl;
    
    return;
}

void Show_graph(FILE* out,GRAPH::Graph<LLVMIR::L_block*>&bg){
    for(auto block_node:bg.mynodes){
        auto block=block_node.second->info;
        fprintf(out,"%s \n",block->label->name.c_str());
        fprintf(out,"pred  %zu  ",block_node.second->preds.size());
        for(auto pred:block_node.second->preds){
            fprintf(out,"%s  ",bg.mynodes[pred]->info->label->name.c_str());
            fprintf(out,"%d  ",bg.mynodes[pred]->color);
        }
        fprintf(out,"\n");
        fprintf(out,"succ  %zu  ",block_node.second->succs.size());
        for(auto succ:block_node.second->succs){
            fprintf(out,"%s  ",bg.mynodes[succ]->info->label->name.c_str());
            fprintf(out,"%d  ",bg.mynodes[succ]->color);
        }
        fprintf(out,"\n");
    }
}
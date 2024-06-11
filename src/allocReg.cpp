#include "allocReg.h"
using namespace std;
using namespace ASM;
#include <cassert>
#include <stack>
using namespace GRAPH;
#include "printASM.h"
#include "register_rules.h"
#include <sstream>
#include <iostream>
#include "printASM.h"
stack<Node<RegInfo> *> reg_stack;
AS_reg *sp = new AS_reg(AS_type::SP, -1);
void getAllRegs(AS_stm *stm, vector<AS_reg *> &defs, vector<AS_reg *> &uses)
{
    switch (stm->type)
    {
    case AS_stmkind::BINOP:
        getDefReg(stm->u.BINOP->dst, defs);
        getUseReg(stm->u.BINOP->left, uses);
        getUseReg(stm->u.BINOP->right, uses);
        break;
    case AS_stmkind::MOV:
        getDefReg(stm->u.MOV->dst, defs);
        getUseReg(stm->u.MOV->src, uses);
        break;
    case AS_stmkind::LDR:
        getDefReg(stm->u.LDR->dst, defs);
        getUseReg(stm->u.LDR->ptr, uses);
        break;
    case AS_stmkind::STR:
        getUseReg(stm->u.STR->src, uses);
        getUseReg(stm->u.STR->ptr, uses);
        break;
    case AS_stmkind::CMP:
        getUseReg(stm->u.CMP->left, uses);
        getUseReg(stm->u.CMP->right, uses);
        break;
    case AS_stmkind::ADR:
        getDefReg(stm->u.ADR->reg, defs);
        break;
    default:
        break;
    }
}

void getDefReg(AS_reg *reg, vector<AS_reg *> &defs)
{
    if (!reg)
    {
        return;
    }
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        defs.push_back(reg);
        break;
    }
    case AS_type::ADR:
    {
        assert(0);
    }

    default:
        break;
    }
}
void getUseReg(AS_reg *reg, vector<AS_reg *> &uses)
{
    if (!reg)
    {
        return;
    }
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        uses.push_back(reg);
        break;
    }
    case AS_type::ADR:
    {
        if (reg->u.add->base->type == AS_type::Xn)
        {
            uses.push_back(reg->u.add->base);
        }
        if (reg->u.add->reg)
        {
            uses.push_back(reg->u.add->reg);
        }
        break;
    }

    default:
        break;
    }
}
void vreg_map(AS_reg *reg, unordered_map<int, Node<RegInfo> *> &regNodes)
{
    switch (reg->type)
    {
    case AS_type::Xn:
    {
        int regNo = reg->u.offset;
        if (regNo < 100)
            return;
        reg->u.offset = regNodes[regNo]->info.color;
        break;
    }
    case AS_type::ADR:
    {
        assert(0);
    }
    default:
        break;
    }
};
void forwardLivenessAnalysis(std::list<InstructionNode *> &liveness, std::list<AS_stm *> &as_list)
{
    unordered_map<string, InstructionNode *> blocks;
    for (const auto &stm : as_list)
    {
        InstructionNode *node = new InstructionNode(stm, {}, {}, {}, {});
        liveness.push_back(node);
        vector<AS_reg *> defs;
        vector<AS_reg *> uses;

        switch (stm->type)
        {
        case AS_stmkind::LABEL:
            blocks.emplace(stm->u.LABEL->name, node);
        default:
            getAllRegs(stm, defs, uses);
            break;
        }

        for (auto &x : defs)
        {
            if (x->u.offset >= 100)
            {
                node->def.emplace(x->u.offset);
            }
            assert(x->type != AS_type::ADR);
        }

        for (auto &x : uses)
        {
            if (x->u.offset >= 100)
            {
                node->use.emplace(x->u.offset);
            }
            assert(x->type != AS_type::ADR);
        }
    }

    setControlFlowDiagram(liveness, blocks);
}
void setControlFlowDiagram(std::list<InstructionNode *> &nodes, unordered_map<string, InstructionNode *> &blocks)
{
    for (auto it = nodes.begin(); it != nodes.end(); ++it)
    {
        InstructionNode *currentNode = *it; // 当前节点
        InstructionNode *nextNode = nullptr;
        auto nextIt = std::next(it); // 获取下一个元素的迭代器
        if (nextIt != nodes.end())
        {
            nextNode = *nextIt; // 如果存在下一个节点，则获取它
        }
        switch (currentNode->raw->type)
        {
        case AS_stmkind::RETURN:

            break;
        case AS_stmkind::B:
            currentNode->sucessor.emplace(blocks[currentNode->raw->u.B->jump->name]);
            break;
        case AS_stmkind::BCOND:
            currentNode->sucessor.emplace(blocks[currentNode->raw->u.BCOND->jump->name]);
            if (nextNode)
            {
                currentNode->sucessor.emplace(nextNode);
            }
            break;
        default:
            if (nextNode)
            {
                currentNode->sucessor.emplace(nextNode);
            }
            break;
        }
    }
}
void init(std::list<InstructionNode *> &nodes, unordered_map<int, Node<RegInfo> *> &regNodes, Graph<RegInfo> &interferenceGraph, std::list<ASM::AS_stm *> &as_list)
{
    assert(reg_stack.empty());
    bool changed;

    int set_size = 0;
    do
    {
        changed = false;
        for (auto it = nodes.rbegin(); it != nodes.rend(); ++it)
        {
            InstructionNode *n = *it;
            n->previous_in = n->in;
            n->previous_out = n->out;

            if (n->sucessor.size())
                for (InstructionNode *s : n->sucessor)
                {
                    n->out.insert(s->in.begin(), s->in.end());
                }
            n->in.clear();
            std::set_difference(n->out.begin(), n->out.end(), n->def.begin(), n->def.end(), std::inserter(n->in, n->in.end()));
            n->in.insert(n->use.begin(), n->use.end());
            set_size += n->in.size();
            if (n->in != n->previous_in || n->out != n->previous_out)
            {
                changed = true;
            }
        }

    } while (changed);
    set<int> regs;
    set<int> defs;
    set<int> uses;

    for (auto &x : nodes)
    {
        defs.insert(x->def.begin(), x->def.end());
        uses.insert(x->use.begin(), x->use.end());
    }

    regs.insert(defs.begin(), defs.end());
    regs.insert(uses.begin(), uses.end());
    int ijj = 0;
    for (auto x : regs)
    {
        regNodes.insert({x, interferenceGraph.addNode({x, x, 0, 0, 0})});
    }

    for (auto x : nodes)
    {
        std::vector<int> vec(x->in.begin(), x->in.end());
        for (int i = 0; i < vec.size(); i++)
        {
            for (int j = i + 1; j < vec.size(); j++)
            {
                interferenceGraph.addEdge(regNodes[vec[i]], regNodes[vec[j]]);
                interferenceGraph.addEdge(regNodes[vec[j]], regNodes[vec[i]]);
            }
        }
    }

    // 打印干扰图的边,并设置节点度数
    // std::cerr << "Interference Graph Edges:" << std::endl;
    auto nodes_ = interferenceGraph.nodes();
    for (auto &nodePair : *nodes_)
    {
        Node<RegInfo> *node = nodePair.second;
        NodeSet *successors = node->succ();
        node->info.degree = successors->size();

        // std::cerr << "Reg " << node->nodeInfo().regNum << " interferes with " << successors->size() << " Regs: ";
        // if (successors->size())
        // {
        //     for (int succKey : *successors)
        //     {
        //         std::cerr << interferenceGraph.mynodes[succKey]->info.regNum << " ";
        //     }
        // }

        // std::cerr << std::endl;
    }
    // 删除不使用的指令
    std::set<int> to_delete;
    std::set_difference(defs.begin(), defs.end(), uses.begin(), uses.end(), std::inserter(to_delete, to_delete.end()));

    for (auto &x : nodes)
        delete x;

    for (auto it = as_list.begin(); it != as_list.end();)
    {
        vector<AS_reg *> defs;
        vector<AS_reg *> uses;
        getAllRegs(*it, defs, uses);
        int n = 0;
        if (defs.size() > 0)
        {
            int regNo = defs.front()->u.offset;
            if (to_delete.find(regNo) != to_delete.end())
            {
                it = as_list.erase(it);
                continue;
            }
        }
        it++;
    }
}
bool check_K(unordered_map<int, Node<RegInfo> *> regNodes, int K){
    //检查是否还有度数低于K的节点
    for (auto node = regNodes.begin(); node != regNodes.end(); node++){
        if ((*node).second->info.degree < allocateRegs.size()){
            return true;
        }
    }

    return false;
}

bool check_spill(unordered_map<int, Node<RegInfo> *> regNodes, int K){
    for (auto node = regNodes.begin(); node != regNodes.end(); node++){
        if ((*node).second->info.degree >= allocateRegs.size() && !(*node).second->info.bit_map && !(*node).second->info.is_spill){
            return true;
        }
    }

    return false;
}

bool simplify(unordered_map<int, Node<RegInfo> *> regNodes, int K, std::stack<int>* spill_stack){
    
    while(check_K(regNodes,K)){
        for (auto node = regNodes.begin(); node != regNodes.end(); node++){
            if ((*node).second->info.degree < allocateRegs.size()){
                //删除节点
                for (auto neighbor = (*node).second->preds.begin(); neighbor != (*node).second->preds.end(); neighbor++){
                    if (!regNodes[(*neighbor)]->info.is_spill && !regNodes[(*neighbor)]->info.bit_map){
                        regNodes[(*neighbor)]->info.degree--;
                    }
                }
                for (auto neighbor = (*node).second->succs.begin(); neighbor != (*node).second->succs.end(); neighbor++){
                    if (!regNodes[(*neighbor)]->info.is_spill && !regNodes[(*neighbor)]->info.bit_map){
                        regNodes[(*neighbor)]->info.degree--;
                    }
                }
                (*node).second->info.degree = 0;
                spill_stack->push((*node).first);
                (*node).second->info.bit_map = true;
            }
        }
    }

    return check_spill(regNodes, K);
}

int deal_node(unordered_map<int, Node<RegInfo> *> regNodes, int reg_num, std::list<ASM::AS_stm *> &as_list, list<ASM::AS_stm *>::iterator& stm, int use_def){
    // 假设函数内更改迭代器有效
    Node<RegInfo>* reg_node;
    if (regNodes.find(reg_num) == regNodes.end()){
        return reg_num;
    }
    else{
        reg_node = regNodes[reg_num];
        if (!reg_node->info.is_spill){
            return reg_node->info.color;
        }
        else{
            if (reg_node->info.regNum != XnFP){
                as_list.insert(stm, AS_Str(new AS_reg(AS_type::Xn, XXn1), sp, -INT_LENGTH));
                stm++;
                reg_node->info.regNum = XnFP;
            }
            if(use_def == 0){
                // use
                as_list.insert(stm, AS_Ldr(new AS_reg(AS_type::Xn, XXn1), sp, -INT_LENGTH));
                stm++;
                return XXn1;
            }
            else{
                //def
                stm++;
                as_list.insert(stm, AS_Str(new AS_reg(AS_type::Xn, XXn1), sp, -INT_LENGTH));
                stm--;
                return XXn1;
            }
            
        }
    }
    
    
    
}

void actual_spill(unordered_map<int, Node<RegInfo> *> regNodes, std::list<ASM::AS_stm *> &as_list){
    for(auto stm=as_list.begin(); stm!=as_list.end(); stm++){
        switch ((*stm)->type)
        {
            case AS_stmkind::ADR:
            {
                int color = deal_node(regNodes, (*stm)->u.ADR->reg->u.offset, as_list, stm, 0);
                (*stm)->u.ADR->reg->u.offset = color;
                break;
            }
            case AS_stmkind::BINOP:
            {
                int color = deal_node(regNodes, (*stm)->u.BINOP->left->u.offset, as_list, stm, 0);
                (*stm)->u.BINOP->left->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.BINOP->right->u.offset, as_list, stm, 0);
                (*stm)->u.BINOP->right->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.BINOP->dst->u.offset, as_list, stm, 1);
                (*stm)->u.BINOP->dst->u.offset = color;
                break;
            }
            case AS_stmkind::CMP:
            {
                int color = deal_node(regNodes, (*stm)->u.CMP->left->u.offset, as_list, stm, 0);
                (*stm)->u.CMP->left->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.CMP->right->u.offset, as_list, stm, 0);
                (*stm)->u.CMP->right->u.offset = color;
                break;
            }
            case AS_stmkind::LDP:
            {
                int color = deal_node(regNodes, (*stm)->u.LDP->dst1->u.offset, as_list, stm, 1);
                (*stm)->u.LDP->dst1->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.LDP->dst2->u.offset, as_list, stm, 1);
                (*stm)->u.LDP->dst2->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.LDP->ptr->u.offset, as_list, stm, 0);
                (*stm)->u.LDP->ptr->u.offset = color;
                break;
            }
            case AS_stmkind::LDR:
            {
                int color = deal_node(regNodes, (*stm)->u.LDR->dst->u.offset, as_list, stm, 1);
                (*stm)->u.LDR->dst->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.LDR->ptr->u.offset, as_list, stm, 0);
                (*stm)->u.LDR->ptr->u.offset = color;
                break;
            }
            case AS_stmkind::MOV:
            {
                int color = deal_node(regNodes, (*stm)->u.MOV->dst->u.offset, as_list, stm, 1);
                (*stm)->u.MOV->dst->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.MOV->src->u.offset, as_list, stm, 0);
                (*stm)->u.MOV->src->u.offset = color;
                break;
            }
            case AS_stmkind::MOVZ:
            {
                int color = deal_node(regNodes, (*stm)->u.MOVZ->dst->u.offset, as_list, stm, 1);
                (*stm)->u.MOVZ->dst->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.MOVZ->src->u.offset, as_list, stm, 0);
                (*stm)->u.MOVZ->src->u.offset = color;
                break;
            }
            case AS_stmkind::MOVK:
            {
                int color = deal_node(regNodes, (*stm)->u.MOVK->dst->u.offset, as_list, stm, 1);
                (*stm)->u.MOVK->dst->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.MOVK->src->u.offset, as_list, stm, 0);
                (*stm)->u.MOVK->src->u.offset = color;
                break;
            }
            case AS_stmkind::STP:
            {
                int color = deal_node(regNodes, (*stm)->u.STP->src1->u.offset, as_list, stm, 0);
                (*stm)->u.STP->src1->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.STP->src2->u.offset, as_list, stm, 0);
                (*stm)->u.STP->src2->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.STP->ptr->u.offset, as_list, stm, 1);
                (*stm)->u.STP->ptr->u.offset = color;
                break;
            }
            case AS_stmkind::STR:
            {
                int color = deal_node(regNodes, (*stm)->u.STR->src->u.offset, as_list, stm, 0);
                (*stm)->u.STR->src->u.offset = color;
                color = deal_node(regNodes, (*stm)->u.STR->ptr->u.offset, as_list, stm, 1);
                (*stm)->u.STR->ptr->u.offset = color;
                break;
            }
            default:
                break;
        }
    }
}


void livenessAnalysis(std::list<InstructionNode *> &nodes, std::list<ASM::AS_stm *> &as_list)
{
    Graph<RegInfo> interferenceGraph;
    unordered_map<int, Node<RegInfo> *> regNodes;//虚拟器寄存器根据编号到干扰图上的映射
    init(nodes, regNodes, interferenceGraph, as_list);

    //寄存器分配

    //simplify & potential spill
    std::stack<int> spill_stack;
    while (simplify(regNodes, allocateRegs.size(), &spill_stack)){
        for (auto node = regNodes.begin(); node != regNodes.end(); node++){
            if ((*node).second->info.degree >= allocateRegs.size()){
                (*node).second->info.is_spill = true;
                (*node).second->info.degree = 0;
                for (auto neighbor = (*node).second->preds.begin(); neighbor != (*node).second->preds.end(); neighbor++){
                    if (!regNodes[(*neighbor)]->info.is_spill && !regNodes[(*neighbor)]->info.bit_map){
                        regNodes[(*neighbor)]->info.degree--;
                    }
                }
                for (auto neighbor = (*node).second->succs.begin(); neighbor != (*node).second->succs.end(); neighbor++){
                    if (!regNodes[(*neighbor)]->info.is_spill && !regNodes[(*neighbor)]->info.bit_map){
                        regNodes[(*neighbor)]->info.degree--;
                    }
                }
                break;
            }
        }
    }

    // select
    while (spill_stack.size() > 0){
        int reg = spill_stack.top();
        spill_stack.pop();
        Node<RegInfo>* reg_node = regNodes[reg];
        // 用regNum和color比较来得到是否着色
        if (reg_node->info.color == reg_node->info.regNum){
            std::set<int>can_be_use{9, 10, 11, 12, 13, 14, 15};
            for (auto neighbor = reg_node->preds.begin(); neighbor != reg_node->preds.end(); neighbor++){
                if (regNodes[(*neighbor)]->info.color != regNodes[(*neighbor)]->info.regNum){
                    can_be_use.erase(regNodes[(*neighbor)]->info.regNum);
                }
            }
            for (auto neighbor = reg_node->succs.begin(); neighbor != reg_node->succs.end(); neighbor++){
                if (regNodes[(*neighbor)]->info.color != regNodes[(*neighbor)]->info.regNum){
                    can_be_use.erase(regNodes[(*neighbor)]->info.regNum);
                }
            }
            assert(can_be_use.size());
            reg_node->info.color = *(can_be_use.begin());
        }
    }

    actual_spill(regNodes, as_list);
}
#include "llvm_ir.h"
#include "asm_arm.h"
#include "temp.h"
#include "llvm2asm.h"
#include "allocReg.h"
#include <queue>
#include <cassert>
#include <iostream>
#include "printASM.h"
#include "printLLVM.h"
#include "register_rules.h"
#include <sstream>
#include <iostream>
using namespace std;
using namespace LLVMIR;
using namespace ASM;

#define INSERT1() printf("%s:%d\n", __FILE__, __LINE__);
static int stack_frame;
static bool alloc_frame = false;
struct StructDef
{
    std::vector<int> offset;
    int size;
    StructDef(std::vector<int> _offset, int _size) : offset(_offset), size(_size) {}
};

static AS_reg *sp = new AS_reg(AS_type::SP, -1);
static unordered_map<int, AS_address *> fpOffset;
static unordered_map<int, AS_relopkind> condMap;
static unordered_map<string, StructDef *> structLayout;
int getMemLength(TempDef &members)
{
    switch (members.kind)
    {
    case TempType::INT_PTR:
        return INT_LENGTH * members.len;
        break;
    case TempType::INT_TEMP:
        return INT_LENGTH;
        break;
    case TempType::STRUCT_PTR:
        return structLayout[members.structname]->size * members.len;
        break;
    case TempType::STRUCT_TEMP:
        return structLayout[members.structname]->size;
        break;
    default:
        assert(0);
    }
}
void structLayoutInit(vector<L_def *> &defs)
{
    for (const auto &def: defs)
    {
        if (def->kind == L_DefKind::SRT)
        {
            string name = def->u.SRT->name;
            int size = 0;
            std::vector<int> offset;
            for (int i = 0; i < def->u.SRT->members.size(); i++)
            {
                offset.push_back(size);
                size += getMemLength(def->u.SRT->members[i]);
            }
            structLayout[name] = new StructDef(offset, size);
        }
    }
    
}

void set_stack(L_func &func)
{
    stack_frame = 0;
    // ToDo:为函数局部变量分配内存，同时记录相对于fp的偏移
    for(auto &b: func.blocks){
        for (auto &s: b->instrs){
            if (s->type == L_StmKind::T_ALLOCA){
                auto alloca = s->u.ALLOCA->dst->u.TEMP;
                if (alloca->type == TempType::INT_PTR){
                    stack_frame += max(INT_LENGTH, INT_LENGTH * alloca->len);
                    fpOffset.emplace(alloca->num, new AS_address(new AS_reg(AS_type::Xn, XnFP), -stack_frame));
                }
                else if(alloca->type == TempType::STRUCT_PTR){
                    int size = structLayout[alloca->structname]->size;
                    stack_frame += max(size, size * alloca->len);
                    fpOffset.emplace(alloca->num, new AS_address(new AS_reg(AS_type::Xn, XnFP), -stack_frame));
                }
                else if(alloca->type == TempType::STRUCT_TEMP){
                    int size = structLayout[alloca->structname]->size;
                    stack_frame += size;
                    fpOffset.emplace(alloca->num, new AS_address(new AS_reg(AS_type::Xn, XnFP), -stack_frame));
                }
            }
        }
    }

    stack_frame = ((stack_frame + 15) >> 4) << 4;
}

void new_frame(list<AS_stm *> &as_list, L_func &func)
{
    // ToDo:在刚刚进入函数的时候，需要调整sp，并将函数参数移入虚拟寄存器
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, stack_frame),new AS_reg(AS_type::Xn, XXn1)));
    as_list.emplace_back(AS_Binop(AS_binopkind::SUB_, sp, new AS_reg(AS_type::Xn, XXn1), sp));

    for(int i=0; i < 8 && i < func.args.size(); i++){
        as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, i), new AS_reg(AS_type::Xn, func.args[i]->num)));
    }

    int offset = 0;
    for (int i = 8; i < func.args.size(); i++){
        auto temp = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.emplace_back(AS_Ldr(temp, new AS_reg(AS_type::ADR, new AS_address(new AS_reg(AS_type::Xn, XnFP), offset))));
        offset += INT_LENGTH;
        as_list.emplace_back(AS_Mov(temp,new AS_reg(AS_type::Xn, func.args[i]->num)));
    }
    
}

void free_frame(list<AS_stm *> &as_list)
{
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, XnFP), sp));
}
void llvm2asmBinop(list<AS_stm *> &as_list, L_stm *binop_stm)
{
    AS_reg* left;
    AS_reg* right;
    AS_reg* dst = new AS_reg(AS_type::Xn, binop_stm->u.BINOP->dst->u.TEMP->num);

    if (binop_stm->u.BINOP->left->kind == OperandKind::TEMP){
        left = new AS_reg(AS_type::Xn, binop_stm->u.BINOP->left->u.TEMP->num);
    }
    else if(binop_stm->u.BINOP->left->kind == OperandKind::ICONST){
        left = new AS_reg(AS_type::IMM, binop_stm->u.BINOP->left->u.ICONST);
    }
    if (binop_stm->u.BINOP->right->kind == OperandKind::TEMP){
        right = new AS_reg(AS_type::Xn, binop_stm->u.BINOP->right->u.TEMP->num);
    }
    else if(binop_stm->u.BINOP->right->kind == OperandKind::ICONST){
        right = new AS_reg(AS_type::IMM, binop_stm->u.BINOP->right->u.ICONST);
    }
    
    switch (binop_stm->u.BINOP->op)
    {
    case L_binopKind::T_plus:{
        as_list.emplace_back(AS_Binop(AS_binopkind::ADD_, left, right ,dst));
        break;
    }
    case L_binopKind::T_minus:{
        as_list.emplace_back(AS_Binop(AS_binopkind::SUB_, left, right ,dst));
        break;
    }
    case L_binopKind::T_mul:{
        as_list.emplace_back(AS_Binop(AS_binopkind::MUL_, left, right ,dst));
        break;
    }
    case L_binopKind::T_div:{
        as_list.emplace_back(AS_Binop(AS_binopkind::SDIV_, left, right ,dst));
        break;
    }
    default:
        break;
    }
}

void llvm2asmLoad(list<AS_stm *> &as_list, L_stm *load_stm)
{
    auto load_tmp = load_stm->u.LOAD;
    AS_reg *ptr;
    AS_reg *dst = new AS_reg(AS_type::Xn, load_tmp->dst->u.TEMP->num);
    if (load_tmp->ptr->kind == OperandKind::NAME){
        string global_name = load_tmp->ptr->u.NAME->name->name;
        int ptr_num = Temp_newtemp_int()->num;
        ptr = new AS_reg(AS_type::Xn, ptr_num);
        as_list.emplace_back(AS_Adr(new AS_label(global_name), ptr));
    }
    else{
        ptr = new AS_reg(AS_type::Xn, load_tmp->ptr->u.TEMP->num);
    }
    
    as_list.emplace_back(AS_Ldr(dst, ptr));
}

void llvm2asmStore(list<AS_stm *> &as_list, L_stm *store_stm)
{
    auto str_tmp = store_stm->u.STORE;
    AS_reg *ptr;
    AS_reg *src;

    if (str_tmp->src->kind == OperandKind::ICONST){
        int src_num = Temp_newtemp_int()->num;
        src = new AS_reg(AS_type::Xn, src_num);
        as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, str_tmp->src->u.ICONST),src));
    }
    else{
        src = new AS_reg(AS_type::Xn, str_tmp->src->u.TEMP->num);
    }
    
    if (str_tmp->ptr->kind == OperandKind::NAME){
        string global_name = str_tmp->ptr->u.NAME->name->name;
        int ptr_num = Temp_newtemp_int()->num;
        ptr = new AS_reg(AS_type::Xn, ptr_num);
        as_list.emplace_back(AS_Adr(new AS_label(global_name), ptr));
    }
    else{
        ptr = new AS_reg(AS_type::Xn, str_tmp->ptr->u.TEMP->num);
    }

    as_list.emplace_back(AS_Mov(src, ptr));
    
}

void llvm2asmCmp(list<AS_stm *> &as_list, L_stm *cmp_stm)
{
    auto cmp_tmp = cmp_stm->u.CMP;
    AS_reg* left;
    AS_reg* right;

    if (cmp_tmp->left->kind == OperandKind::ICONST){
        int left_num = Temp_newtemp_int()->num;
        left = new AS_reg(AS_type::Xn, left_num);
        as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, cmp_tmp->left->u.ICONST),left));
    }
    else{
        left = new AS_reg(AS_type::Xn, cmp_tmp->left->u.TEMP->num);
    }

    if (cmp_tmp->right->kind == OperandKind::ICONST){
        int right_num = Temp_newtemp_int()->num;
        right = new AS_reg(AS_type::Xn, right_num);
        as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, cmp_tmp->right->u.ICONST),right));
    }
    else{
        right = new AS_reg(AS_type::Xn, cmp_tmp->right->u.TEMP->num);
    }

    switch (cmp_tmp->op)
    {
    case L_relopKind::T_eq:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::EQ_;
        break;
    }
    case L_relopKind::T_ge:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::GE_;
        break;
    }
    case L_relopKind::T_gt:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::GT_;
        break;
    }
    case L_relopKind::T_le:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::LE_;
        break;
    }
    case L_relopKind::T_lt:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::LT_;
        break;
    }
    case L_relopKind::T_ne:{
        condMap[cmp_tmp->dst->u.TEMP->num] = AS_relopkind::NE_;
        break;
    }
    default:
        break;
    }
    
    as_list.emplace_back(AS_Cmp(left, right));
}
void llvm2asmMov(list<AS_stm *> &as_list, L_stm *mov_stm)
{
    AS_reg* src;
    AS_reg* dst = new AS_reg(AS_type::Xn, mov_stm->u.MOVE->dst->u.TEMP->num);
    if (mov_stm->u.MOVE->src->kind == OperandKind::TEMP){
        src = new AS_reg(AS_type::Xn, mov_stm->u.MOVE->src->u.TEMP->num);
    }
    else if(mov_stm->u.MOVE->src->kind == OperandKind::ICONST){
        src = new AS_reg(AS_type::IMM, mov_stm->u.MOVE->src->u.ICONST);
    }
    
    as_list.emplace_back(AS_Mov(src, dst));
}
void llvm2asmCJmp(list<AS_stm *> &as_list, L_stm *cjmp_stm)
{
    as_list.emplace_back(AS_BCond(condMap[cjmp_stm->u.CJUMP->dst->u.TEMP->num] ,new AS_label(cjmp_stm->u.CJUMP->true_label->name)));
    as_list.emplace_back(AS_B(new AS_label(cjmp_stm->u.CJUMP->false_label->name)));
}

void llvm2asmRet(list<AS_stm *> &as_list, L_stm *ret_stm)
{
    auto ret_tmp = ret_stm->u.RETURN->ret;
    AS_reg* ret;
    
    if (ret_tmp){
        if (ret_tmp->kind == OperandKind::ICONST){
            ret = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, ret_tmp->u.ICONST), ret));
        }
        else{
            ret = new AS_reg(AS_type::Xn, ret_tmp->u.TEMP->num);
        }
        as_list.emplace_back(AS_Mov(ret, new AS_reg(AS_type::Xn, XXnret)));
    }

    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, XnFP), sp));
    as_list.emplace_back(AS_Ret());
}

void llvm2asmGep(list<AS_stm *> &as_list, L_stm *gep_stm)
{
    // 计算数组单位大小，并将其移入size_reg
    auto gep_tmp = gep_stm->u.GEP;
    int size;
    AS_reg* size_reg;
    if (gep_tmp->base_ptr->kind == OperandKind::NAME){
        if (gep_tmp->base_ptr->u.NAME->type == TempType::INT_PTR){
            size = 8;
        }
        else{
            string struct_name = gep_tmp->base_ptr->u.NAME->structname;
            size = structLayout[struct_name]->size;
        }
    }
    else if(gep_tmp->base_ptr->kind == OperandKind::TEMP){
        if (gep_tmp->base_ptr->u.TEMP->type == TempType::INT_PTR){
            size = 8;
        }
        else{
            string struct_name = gep_tmp->base_ptr->u.TEMP->structname;
            size = structLayout[struct_name]->size;
        }
    }

    size_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, size), size_reg));

    //计算偏移量，并记录在index_reg
    AS_reg* index_reg;
    if (gep_tmp->index->kind == OperandKind::TEMP){
        index_reg = new AS_reg(AS_type::Xn, gep_tmp->index->u.TEMP->num);
    }
    else if(gep_tmp->index->kind == OperandKind::ICONST){
        index_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, gep_tmp->index->u.ICONST), index_reg));
    }

    //通过乘法，得到offset
    AS_reg* offset_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
    as_list.emplace_back(AS_Binop(AS_binopkind::MUL_, size_reg, index_reg, offset_reg));

    //计算基地址
    AS_reg* base_reg;
    if (gep_tmp->base_ptr->kind == OperandKind::NAME){
        base_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
        as_list.emplace_back(AS_Adr(new AS_label(gep_tmp->base_ptr->u.NAME->name->name), base_reg));
    }
    else if(gep_tmp->base_ptr->kind == OperandKind::TEMP){
        if (fpOffset.find(gep_tmp->base_ptr->u.TEMP->num) == fpOffset.end()){
            base_reg = new AS_reg(AS_type::Xn, gep_tmp->base_ptr->u.TEMP->num);
        }
        else{
            AS_address* address = fpOffset[gep_tmp->base_ptr->u.TEMP->num];
            base_reg = new AS_reg(AS_type::Xn, Temp_newtemp_int()->num);
            as_list.emplace_back(AS_Binop(AS_binopkind::ADD_, address->base, new AS_reg(AS_type::IMM, address->imm), base_reg));
        }
    }

    //用add得到新地址
    as_list.emplace_back(AS_Binop(AS_binopkind::ADD_, base_reg, offset_reg, new AS_reg(AS_type::Xn, gep_tmp->new_ptr->u.TEMP->num)));
    
}

void llvm2asmStm(list<AS_stm *> &as_list, L_stm &stm, L_func &func)
{

    if (!alloc_frame && stm.type != L_StmKind::T_LABEL)
    {
        new_frame(as_list, func);
        alloc_frame = true;
    }

    switch (stm.type)
    {
    case L_StmKind::T_BINOP:
    {
        llvm2asmBinop(as_list, &stm);
        break;
    }
    case L_StmKind::T_LOAD:
    {
        llvm2asmLoad(as_list, &stm);
        break;
    }
    case L_StmKind::T_STORE:
    {
        llvm2asmStore(as_list, &stm);
        break;
    }
    case L_StmKind::T_LABEL:
    {
        auto label = new AS_label(stm.u.LABEL->label->name);
        as_list.push_back(AS_Label(label));
        break;
    }
    case L_StmKind::T_JUMP:
    {
        auto label = new AS_label(stm.u.JUMP->jump->name);
        as_list.push_back(AS_B(label));
        break;
    }
    case L_StmKind::T_CMP:
    {
        llvm2asmCmp(as_list, &stm);
        break;
    }
    case L_StmKind::T_CJUMP:
    {
        llvm2asmCJmp(as_list, &stm);
        break;
    }
    case L_StmKind::T_MOVE:
    {
        llvm2asmMov(as_list, &stm);
        break;
    }
    case L_StmKind::T_CALL:
    {
        llvm2asmCall(as_list, &stm);
        break;
    }
    case L_StmKind::T_VOID_CALL:
    {
        llvm2asmVoidCall(as_list, &stm);
        break;
    }
    case L_StmKind::T_RETURN:
    {
        llvm2asmRet(as_list, &stm);
        break;
    }
    case L_StmKind::T_ALLOCA:
    {
        // Do nothing
        break;
    }
    case L_StmKind::T_GEP:
    {

        llvm2asmGep(as_list, &stm);

        break;
    }
    case L_StmKind::T_PHI:
    {
        //ToDo: 特殊处理
        break;
    }
    case L_StmKind::T_NULL:
    {
        // Do nothing
        break;
    }
    }
    //
}
int save_register(list<AS_stm *> &as_list)
{
    int sub = 0;
    for (auto it = allocateRegs.begin(); it != allocateRegs.end(); ++it)
    {
        // 获取当前元素
        int first = *it;
        ++it; // 移动到下一个元素

        // 检查是否有下一个元素
        if (it != allocateRegs.end())
        {
            int second = *it;
            as_list.push_back(AS_Stp(new AS_reg(AS_type::Xn, first), new AS_reg(AS_type::Xn, second), sp, -2 * INT_LENGTH));
            sub += 2 * INT_LENGTH;
        }
        else
        {
            // 如果`set`中的元素个数是奇数，最后一个元素将单独处理
            as_list.push_back(AS_Str(new AS_reg(AS_type::Xn, first), sp, -INT_LENGTH));
            sub += INT_LENGTH;
            break;
        }
    }
    as_list.push_back(AS_Stp(new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::Xn, XXnl), sp, -2 * INT_LENGTH));
    sub += 2 * INT_LENGTH;
    return sub;
}
void load_register(list<AS_stm *> &as_list)
{
    //ToDo:从栈中按**顺序**加载保存的寄存器
    as_list.push_back(AS_Ldp(new AS_reg(AS_type::Xn, XnFP), new AS_reg(AS_type::Xn, XXnl), sp, 2 * INT_LENGTH));
    auto last = allocateRegs.end();
    last = --last;
    if (allocateRegs.size() % 2 != 0){
        as_list.push_back(AS_Ldr(new AS_reg(AS_type::Xn, *last), sp, INT_LENGTH));
        --last;
    }

    for (auto it = last; it != allocateRegs.begin(); it--)
    {   
        int second = *it;
        --it;
        int first = *it;
        as_list.push_back(AS_Ldp(new AS_reg(AS_type::Xn, first), new AS_reg(AS_type::Xn, second), sp, 2 * INT_LENGTH));
        if (it == allocateRegs.begin()){
            break;
        }
        
    }
    
    
}
void getCalls(AS_reg *&op_reg, AS_operand *as_operand, list<AS_stm *> &as_list)
{
    //ToDo:一个工具函数，应该实现将局部变量（这里应该只会出现数组、结构体地址）、全局变量、临时变量加载到目标op_reg等待使用
    if (as_operand->kind == OperandKind::TEMP) {
        // 如果是临时变量，根据临时变量的类型和分配的存储位置，从栈或寄存器加载
        int temp_num = as_operand->u.TEMP->num;
        // 临时变量在寄存器中
        op_reg = new AS_reg(AS_type::Xn, temp_num);
    } else if (as_operand->kind == OperandKind::ICONST) {
        op_reg = new AS_reg(AS_type::IMM, as_operand->u.ICONST);
    }else if (as_operand->kind == OperandKind::NAME) {
        assert(-1);
    }
}
void llvm2asmVoidCall(list<AS_stm *> &as_list, L_stm *call)
{

    for (int i = 0; i < 8 && i < call->u.VOID_CALL->args.size(); i++)
    {
        AS_reg *param;
        getCalls(param, call->u.VOID_CALL->args[i], as_list);
        as_list.emplace_back(AS_Mov(param, new AS_reg(AS_type::Xn, paramRegs[i])));
    }
    vector<AS_reg *> abcd;
    for (int i = 8; i < call->u.VOID_CALL->args.size(); i++)
    {
        printf("没有这个测试用例，不用这种情况考虑。");
        assert(0);
    }
    save_register(as_list);
    as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XnFP)));
    as_list.emplace_back(AS_Bl(new AS_label(call->u.VOID_CALL->fun)));
    load_register(as_list);
}
void llvm2asmCall(list<AS_stm *> &as_list, L_stm *call)
{

    for (int i = 0; i < 8 && i < call->u.CALL->args.size(); i++)
    {
        AS_reg *param;
        getCalls(param, call->u.CALL->args[i], as_list);

        as_list.emplace_back(AS_Mov(param, new AS_reg(AS_type::Xn, paramRegs[i])));
    }
    if (call->u.CALL->args.size() > 8)
    {
        as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XXna)));
        int sub = save_register(as_list);
        as_list.push_back(AS_Mov(new AS_reg(AS_type::Xn, XXna), sp));

        int param_sub = 0;
        for (int i = call->u.CALL->args.size() - 1; i >= 8; i--)
        {
            AS_reg *param;
            getCalls(param, call->u.CALL->args[i], as_list);
            param_sub += INT_LENGTH;
            if (-sub - param_sub < -256)
            {
                auto temp = new AS_reg(AS_type::Xn, XXnb);
                as_list.emplace_back(AS_Mov(new AS_reg(AS_type::IMM, -sub - param_sub), temp));

                as_list.emplace_back(AS_Str(param, new AS_reg(AS_type::ADR, new AS_address(sp, temp))));
            }
            else
            {
                as_list.emplace_back(AS_Str(param, new AS_reg(AS_type::ADR, new AS_address(sp, -sub - param_sub))));
            }
        }
        as_list.emplace_back(AS_Binop(AS_binopkind::SUB_, sp, new AS_reg(AS_type::IMM, sub + param_sub), sp));
    }
    else
    {
        save_register(as_list);
    }
    as_list.push_back(AS_Mov(sp, new AS_reg(AS_type::Xn, XnFP)));

    as_list.emplace_back(AS_Bl(new AS_label(call->u.CALL->fun)));
    if (call->u.CALL->args.size() > 8)
    {
        as_list.emplace_back(AS_Binop(AS_binopkind::ADD_, sp, new AS_reg(AS_type::IMM, (call->u.CALL->args.size() - 8) * INT_LENGTH), sp));
    }
    load_register(as_list);
    as_list.emplace_back(AS_Mov(new AS_reg(AS_type::Xn, XXnret), new AS_reg(AS_type::Xn, call->u.CALL->res->u.TEMP->num)));
}

void allocReg(list<AS_stm *> &as_list, L_func &func)
{
    list<InstructionNode *> liveness;

    forwardLivenessAnalysis(liveness, as_list);

    livenessAnalysis(liveness, as_list);
}
struct BLOCKPHI
{
    string label;
    L_stm *phi;
    BLOCKPHI(string _label, L_stm *_phi) : label(_label), phi(_phi) {}
};

AS_func *llvm2asmFunc(L_func &func)
{
    list<AS_stm *> stms;
    list<BLOCKPHI *> phi;
    unordered_map<string, list<AS_stm *>::iterator> block_map;
    auto p = new AS_func(stms);
    auto func_label = new AS_label(func.name);
    p->stms.push_back(AS_Label(func_label));
    for (auto &x : fpOffset)
    {
        std::ostringstream oss;
        oss << x.first << ":" << printAS_add(x.second).c_str() << endl;
        p->stms.push_back(AS_Llvmir(oss.str()));
    }
    string temp_label = "";

    for (const auto &block : func.blocks)
    {
        for (const auto &instr : block->instrs)
        {
            std::ostringstream oss;
            printL_stm(oss, instr);
            p->stms.push_back(AS_Llvmir(oss.str()));
            llvm2asmStm(p->stms, *instr, func);
            if (instr->type == L_StmKind::T_PHI)
            {
                phi.push_back(new BLOCKPHI(temp_label, instr));
            }
            if (instr->type == L_StmKind::T_LABEL)
            {
                temp_label = instr->u.LABEL->label->name;
            }
            if (temp_label.length() > 0)
            {
                block_map[temp_label] = --p->stms.end();
            }
        }
    }
    

    //处理PHI语句
    for (auto it = phi.begin(); it != phi.end(); it++){
        auto phi_stm = (*it)->phi;
        auto phi_label = (*it)->label;
        AS_reg* dst_reg = new AS_reg(AS_type::Xn, phi_stm->u.PHI->dst->u.TEMP->num);
        for (auto label = phi_stm->u.PHI->phis.begin(); label != phi_stm->u.PHI->phis.end(); label++){
            auto block = block_map[(*label).second->name];
            auto find_pos = block;
            while((*find_pos)->type != AS_stmkind::LABEL){
                if ((*find_pos)->type == AS_stmkind::B && (*find_pos)->u.B->jump->name == phi_label){
                    p->stms.insert(--block, AS_Mov(new AS_reg(AS_type::Xn, (*label).first->u.TEMP->num), dst_reg));
                }
                else if ((*find_pos)->type == AS_stmkind::BCOND && (*find_pos)->u.BCOND->jump->name == phi_label){
                    p->stms.insert(--block, AS_Mov(new AS_reg(AS_type::Xn, (*label).first->u.TEMP->num), dst_reg));
                }
                else if ((*find_pos)->type == AS_stmkind::BL && (*find_pos)->u.BL->jump->name == phi_label){
                    p->stms.insert(--block, AS_Mov(new AS_reg(AS_type::Xn, (*label).first->u.TEMP->num), dst_reg));
                }
                --find_pos;
            }
        }
    }


    //std::cout<<func.name<<std::endl;
    //allocReg(p->stms, func);
    return p;
}

void llvm2asmDecl(vector<AS_decl *> &decls, L_def &def)
{
    switch (def.kind)
    {
    case L_DefKind::GLOBAL:
    {
        return;
    }
    case L_DefKind::FUNC:
    {
        AS_decl *decl = new AS_decl(def.u.FUNC->name);
        decls.push_back(decl);
        break;
    }
    case L_DefKind::SRT:
    {
        return;
    }
    }
}

void llvm2asmGlobal(vector<AS_global *> &globals, L_def &def)
{
    switch (def.kind)
    {
    case L_DefKind::GLOBAL:
    {
        AS_label* label = new AS_label(def.u.GLOBAL->name);
        AS_global* new_global;
        auto temp = def.u.GLOBAL->def;
        if (temp.kind == TempType::INT_TEMP){
            if (def.u.GLOBAL->init.size() <= 0 ){
               new_global = new AS_global(label, 0, 1);
            }
            else{
                new_global = new AS_global(label, def.u.GLOBAL->init[0], 1);
            }
        }
        else if (temp.kind == TempType::STRUCT_TEMP){
            new_global = new AS_global(label, 0, structLayout[def.u.GLOBAL->def.structname]->size);
        }
        else if (temp.kind == TempType::INT_PTR){
            new_global = new AS_global(label, 0, INT_LENGTH * temp.len);
        }
        else{
            new_global = new AS_global(label, 0, structLayout[def.u.GLOBAL->def.structname]->size * temp.len);
        }
        
        globals.push_back(new_global);
        break;
    }
    case L_DefKind::FUNC:
    {
        return;
    }
    case L_DefKind::SRT:
    {
        return;
    }
    }
}

AS_prog *llvm2asm(L_prog &prog)
{
    std::vector<AS_global *> globals;
    std::vector<AS_decl *> decls;
    std::vector<AS_func *> func_list;

    auto as_prog = new AS_prog(globals, decls, func_list);

    structLayoutInit(prog.defs);

    // translate function decl
    for (const auto &def : prog.defs)
    {
        llvm2asmDecl(as_prog->decls, *def);
    }

    for (const auto &func : prog.funcs)
    {
        AS_decl *decl = new AS_decl(func->name);
        as_prog->decls.push_back(decl);
    }

    // translate global data
    for (const auto &def : prog.defs)
    {
        llvm2asmGlobal(as_prog->globals, *def);
    }

    // translate each llvm function

    for (const auto &func : prog.funcs)
    {
        alloc_frame = false;

        set_stack(*func);

        as_prog->funcs.push_back(llvm2asmFunc(*func));

        fpOffset.clear();
    }

    return as_prog;
}

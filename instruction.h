/**  
 * @file    instruction.h
 * @brief   Define the instruction
 * @author  Chenu Tang
 * @version 0.1
 * @date    2022-11-28
 * @note    
 */
#ifndef _INSTRUCTION_
#define _INSTRUCTION_


enum InstructionType {
    NOP, COPY, STORE, LOAD, SYNC, INV, AND, OR, XOR, XOR3, MAJ, 
};

const char* const instname[] = {"NOP", "COPY", "STORE", "LOAD", "SYNC", "INV", "AND", "OR", "XOR", "XOR3", "MAJ"};

typedef int Address;

typedef struct Instruction {
    InstructionType op;
    Address src[3];
    Address dest;
    bool    invflag[3];

    Instruction() : op(NOP),src{0,0,0},dest(0),invflag{false,false,false}{};
} Instruction;


#endif
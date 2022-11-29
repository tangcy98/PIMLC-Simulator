/**  
 * @file    simulator.h
 * @brief   Simulator
 * @author  Chenu Tang
 * @version 0.1
 * @date    2022-11-28
 * @note    
 */
#ifndef _SIMULATOR_
#define _SIMULATOR_
#include <fstream>
#include "common.h"
#include "subarray.h"
#include "mainmem.h"
#include "instruction.h"

#define BUFSIZE 256
#define SUBARRROWS 256
#define SUBARRCOLS 256

namespace SimulatorCommand {
enum Command {
    NOP, NEXT, STEP, RUN, PRINT, ARRAY, MEMORY, EXEC,
};
}
class Simulator {
private:
    char cmdbuf[BUFSIZE];
    char codeline[BUFSIZE];
    SimulatorCommand::Command cmd;
    int cmdarg;
    Subarray<SUBARRROWS, SUBARRCOLS> *arrs;
    std::ifstream codefile;
    Instruction inst;
public:
    Simulator();
    ~Simulator();
    int Init();
    int clear();

    // Debug
    int waitCommand();
    int execCommand();
    int next();
    int step();
    int run();
    int exec(Instruction *i);

    // operations
    int ins_copy();
    int ins_load();
    int ins_store();
    int ins_inv();
    int ins_and();
    int ins_or();
    int ins_xor();
    int ins_xor3();
    int ins_maj();


    // 
    int openCode(const char *filename);
    int closeCode();
    int setMem(Memory *m);
    int getInst(const char *str);
};


#endif
#include "simulator.h"
#include <cstdio>
#include <cstdlib>
#include <cstring>

inline char *skipspaces(char *p)
{
    while (*p==' ' || *p=='\t' || *p == '\n' || *p == '\r') ++p;
    return p;
}

Simulator::Simulator()
{
    *codeline = '\0';
    *cmdbuf = '\0';
}

Simulator::~Simulator()
{
    if (codefile.is_open()) {
        codefile.close();
    }
}

/**
 * @brief wait for command in debug mode
 * @return int 
 * @details command explaination
 *  next(n)     next stage
 *  step(s)     step to next instruction
 *  run(r)      run
 *  print(p)    print instruction information
 *  array(a)    print sub-array information
 *  memory(m)   print main memory information 
 *  exec(e) xx  execute the following instrution(xx)
 */
int Simulator::waitCommand()
{
    while (fgets(cmdbuf, BUFSIZE, stdin) == NULL || *cmdbuf == '\n' || *cmdbuf == '\r');
    if (strlen(cmdbuf) == BUFSIZE-1 && cmdbuf[BUFSIZE-2] != '\n') {
        return -1;  // input too long
    }

    char *p = cmdbuf;
    const char *cmdname;
    p = skipspaces(p);
    switch (*p) {
    case 'n':
        cmd = SimulatorCommand::NEXT;
        break;
    case 's':
        cmd = SimulatorCommand::STEP;
        break;
    case 'r':
        cmd = SimulatorCommand::RUN;
        break;
    case 'p':
        cmd = SimulatorCommand::PRINT;
        break;
    case 'a':
        cmd = SimulatorCommand::ARRAY;
        break;
    case 'm':
        cmd = SimulatorCommand::MEMORY;
        break;
    case 'e':
        cmd = SimulatorCommand::EXEC;
        break;
    default:
        cmd = SimulatorCommand::NOP;
        break;
    }
    ++p;
    if (*p != ' ' && *p != '\t' && *p != '\n' && *p != '\r' && *p != '\0') {
        return -1;
    }

    if (cmd = SimulatorCommand::EXEC) {
        return getInst(p);
    }
    else {
        p = skipspaces(p);
        if (*p > '9' || *p < '0') {
            cmdarg = -1;    // default value
        }
        cmdarg = atoi(p);
    }

    return 1;
}

/**
 * @brief execute command in debug mode
 * @return int 
 * @details \\see Simulator::waitCommand()
 */
int Simulator::execCommand()
{
    switch (cmd)
    {
    case SimulatorCommand::NEXT: {

        break;
    }
    case SimulatorCommand::STEP: {
        
        break;
    }
    case SimulatorCommand::RUN: {
        
        break;
    }
    case SimulatorCommand::PRINT: {
        
        break;
    }
    case SimulatorCommand::ARRAY: {
        
        break;
    }
    case SimulatorCommand::MEMORY: {
        
        break;
    }
    case SimulatorCommand::EXEC: {
        
        break;
    }
    default:
        break;
    }
    return 1;
}



int Simulator::openCode(const char *filename)
{
    if (codefile.is_open()) {
        codefile.close();
    }
    codefile.open(filename);

    if (codefile.is_open()) {
        return 1;
    }
    return 0;
}

int Simulator::closeCode()
{
    if (codefile.is_open()) {
        codefile.close();
    }
    if (codefile.is_open()) {
        return 0;
    }
    return 1;
}

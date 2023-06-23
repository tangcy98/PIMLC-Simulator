#include <iostream>
#include <bitset>
#include <cstdio>
#include <cstring>
#include <fstream>
#include <map>
#include "simulator.h"
using namespace std;

#define INPUTNUM 256
#define OUTPUTNUM 128

int main(int argc, char *argv[])
{
    Simulator sim;
    if (argc < 2) {
        char filename[64];
        scanf("%s", filename);
        sim.openCode(filename);
    }
    else {
        sim.openCode(argv[1]);
    }

    string s = argv[2];
    
    sim.importInput(&s, 1);
    while (sim.waitCommand()) {
        sim.execCommand();
    }
    sim.printOutput(1);


    sim.closeCode();
    return 0;
}

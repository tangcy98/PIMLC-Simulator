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

    string s = "1001011110001010001110100101101001010011101001011010110111011010001011010001101101101001011011010011010111101010010010110101001111001011011110010001111011000101101000111011101110001101101001100101110110100011101001110110110101100101001010011011101001001101";
    
    
    sim.importInput(&s, 1);
    while (sim.waitCommand()) {
        sim.execCommand();
    }
    sim.printOutput(1);


    sim.closeCode();
    return 0;
}

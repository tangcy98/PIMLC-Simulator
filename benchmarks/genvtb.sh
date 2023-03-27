rm -f tb_${1}.cpp
touch tb_${1}.cpp
echo "#include <cstdlib>">>tb_${1}.cpp
echo "#include <iostream>">>tb_${1}.cpp
echo "#include <fstream>">>tb_${1}.cpp
echo "#include <string>">>tb_${1}.cpp
echo "#include <cstring>">>tb_${1}.cpp
echo "#include <verilated.h>">>tb_${1}.cpp
echo "#include <verilated_vcd_c.h>">>tb_${1}.cpp
echo "#include <bitset>">>tb_${1}.cpp
echo "#include "'"'V${1}".h"'"'>>tb_${1}.cpp
echo "using namespace std;">>tb_${1}.cpp
echo "class V${1}Module {">>tb_${1}.cpp
echo "private:">>tb_${1}.cpp
echo "    V${1} dut;">>tb_${1}.cpp
echo "public:">>tb_${1}.cpp
echo "    int setInput(string &s, int len);">>tb_${1}.cpp
echo "    int printOutput(int len);">>tb_${1}.cpp
echo "};">>tb_${1}.cpp
echo "">>tb_${1}.cpp
echo "int V${1}Module::setInput(string &s, int len)">>tb_${1}.cpp
echo "{">>tb_${1}.cpp
echo "    int typesize;">>tb_${1}.cpp

if [ $2 -gt 64 ]; then
    echo "    auto px = dut.x;">>tb_${1}.cpp
    echo "    typesize = sizeof(*px)*8;">>tb_${1}.cpp
    echo "    for (int i = 0; i < len; ++i) {">>tb_${1}.cpp
    echo "        if (i % typesize == 0) {">>tb_${1}.cpp
    echo "            *px = 0;">>tb_${1}.cpp
    echo "        }">>tb_${1}.cpp
    echo "    ">>tb_${1}.cpp
    echo "        *px = ((*px)|(s[i]-'0'));">>tb_${1}.cpp
    echo "        *px = ((*px)<<(typesize-1))|((*px)>>1);">>tb_${1}.cpp
    echo "    ">>tb_${1}.cpp
    echo "        if (i % typesize == typesize-1) {">>tb_${1}.cpp
    echo "            ++px;">>tb_${1}.cpp
    echo "        }">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
    echo "    if (len % typesize) {">>tb_${1}.cpp
    echo "        (*px)>>=(typesize-(len%typesize));">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
else
    echo "    auto px = &dut.x;">>tb_${1}.cpp
    echo "    typesize = sizeof(dut.x)*8;">>tb_${1}.cpp
    echo "    dut.x = 0;">>tb_${1}.cpp
    echo "    for (int i = 0; i < len; ++i) {">>tb_${1}.cpp
    echo "        dut.x = (dut.x|(s[i]-'0'));">>tb_${1}.cpp
    echo "        dut.x = (dut.x<<(typesize-1))|(dut.x>>1);">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
    echo "    if (len % typesize) {">>tb_${1}.cpp
    echo "        dut.x>>=(typesize-(len%typesize));">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
fi

echo "    dut.eval();">>tb_${1}.cpp
echo "    return 1;">>tb_${1}.cpp
echo "}">>tb_${1}.cpp
echo "">>tb_${1}.cpp
echo "int V${1}Module::printOutput(int len)">>tb_${1}.cpp
echo "{">>tb_${1}.cpp
echo "    int typesize;">>tb_${1}.cpp

if [ $3 -gt 64 ]; then
    echo "    auto py = dut.y;">>tb_${1}.cpp
    echo "    typesize = sizeof(*py)*8;">>tb_${1}.cpp
    echo "    for (int i = 0; i < len; ++i) {">>tb_${1}.cpp
    echo "        printf(\"%d\", (((*py)>>(i%typesize))&1));">>tb_${1}.cpp
    echo "        if (i % typesize == typesize-1) {">>tb_${1}.cpp
    echo "            ++py;">>tb_${1}.cpp
    echo "        }">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
    echo "    printf(\"\n\");">>tb_${1}.cpp
else
    echo "    typesize = sizeof(dut.y)*8;">>tb_${1}.cpp
    echo "    for (int i = 0; i < len; ++i) {">>tb_${1}.cpp
    echo "        printf(\"%d\", ((dut.y>>(i%typesize))&1));">>tb_${1}.cpp
    echo "    }">>tb_${1}.cpp
    echo "    printf(\"\n\");">>tb_${1}.cpp
fi

echo "    return 1;">>tb_${1}.cpp
echo "}">>tb_${1}.cpp
echo "">>tb_${1}.cpp
echo "int main(int argc, char** argv, char** env){">>tb_${1}.cpp
echo "    V${1}Module md;">>tb_${1}.cpp
echo "    int inputlen = atoi(argv[2]);">>tb_${1}.cpp
echo "    int outputlen = atoi(argv[3]);">>tb_${1}.cpp
echo "">>tb_${1}.cpp
echo "    ifstream f;">>tb_${1}.cpp
echo "    char line[1023];">>tb_${1}.cpp
echo "    int linecnt;">>tb_${1}.cpp
echo "    f.open(argv[1]);">>tb_${1}.cpp
echo "    f.getline(line, 1023);">>tb_${1}.cpp
echo "    linecnt = atoi(line);">>tb_${1}.cpp
echo "">>tb_${1}.cpp
echo "    for (int i = 0; i < linecnt; ++i) {">>tb_${1}.cpp
echo "        f.getline(line, 1023);">>tb_${1}.cpp
echo "        string s = line;">>tb_${1}.cpp
echo "        md.setInput(s, inputlen);">>tb_${1}.cpp
echo "        md.printOutput(outputlen);">>tb_${1}.cpp
echo "    }">>tb_${1}.cpp
echo "    exit(EXIT_SUCCESS);">>tb_${1}.cpp
echo "}">>tb_${1}.cpp
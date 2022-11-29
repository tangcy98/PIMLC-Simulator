#include <iostream>
#include <bitset>
#include <cstdio>
#include <cstring>
#include "subarray.h"
using namespace std;

int main()
{
    Subarray<256,256> arrs;
    cout << sizeof(arrs) << endl;
    cout << sizeof(arrs.rows) << endl;
    cout << sizeof(arrs.rows[0]) << endl;
    cout << arrs.rows[0].size() << endl;
    return 0;
}

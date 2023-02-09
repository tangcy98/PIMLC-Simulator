#include <fstream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <climits>
#define SKIPSPACES(p)  while (*(p)==' ' || *(p)=='\t' || *(p) == '\n' || *(p) == '\r') ++(p)
using namespace std;

int strheadstr(const char *s, const char *sub)
{
    int len = 0;
    if (!s || !sub) {
        return -1;
    }
    while (*s && *sub && (*s==*sub)) {
        ++s;
        ++sub;
        ++len;
    }
    if (*sub) {
        return -1;
    }
    return len;
}

int main(int argc, char *argv[])
{
    ifstream f;
    int cnt = 0;
    int len;
    int output, input;
    char line[64];
    char *p;
    f.open(argv[1]);
    while (cnt != 2&&(!f.eof())) {
        p = line;
        f.getline(line, 64);
        SKIPSPACES(p);
        if (*p!='#') continue;
        ++p;
        SKIPSPACES(p);
        if ((len = strheadstr(p, "input")) > 0 && (*(p + len) == ' ')) {
            p += len;
            SKIPSPACES(p);
            input = 0;
            while (*p >= '0' && *p <= '9') {
                input = input * 10 + *p - '0';
                ++p;
            }
            ++cnt;
        }
        else if ((len = strheadstr(p, "output")) > 0 && (*(p + len) == ' ')) {
            p += len;
            SKIPSPACES(p);
            output = 0;
            while (*p >= '0' && *p <= '9') {
                output = output * 10 + *p - '0';
                ++p;
            }
            ++cnt;
        }
    }
    printf("%d %d\n", input, output);
    return 0;
}
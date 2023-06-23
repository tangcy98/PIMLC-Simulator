#include <cstdint>
#include <cstdio>

struct u256 {
    uint32_t d[8];
};

u256 convert_to_u256(int i) {
    u256 result = {0};
    if (i >= 0 && i < 256) {
        int index = i / 32;
        int bit_offset = i % 32;
        result.d[index] |= static_cast<uint32_t>(1) << bit_offset;
    }
    return result;
}
int main() {
    u256 o;
    int i = 0;
    u256 d = convert_to_u256(i);
    printf("%d %d %d %d %d %d %d %d\n", d.d[0], d.d[1], d.d[2], d.d[3], d.d[4], d.d[5], d.d[6], d.d[7]);

    return 0;
}

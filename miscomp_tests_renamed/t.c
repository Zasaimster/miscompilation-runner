#include <stdlib.h>
int main() {
    char * p = malloc(5);
    p[5] = 0x3;
    return 0;
}

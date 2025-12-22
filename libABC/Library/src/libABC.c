#include "dev/seekit/libABC/libABC.h"

int value = 917;

void example_function() {
	__nop();
}


static int addret[2] = {0};
int* add(int a, int b) {
    int sum = a + b;
    addret[0] = sum;
    addret[1] = !((a ^ b) >> 31) && ((a ^ sum) >> 31);
    return addret;
}


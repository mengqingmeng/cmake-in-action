#include "b.h"
#include <a.h>
#include <cstdio>

void f(){
    A a;
    a.set(42);
    printf("Value: %d\n", a.get());
}
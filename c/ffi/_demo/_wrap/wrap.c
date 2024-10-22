#include <stdio.h>

struct array
{
    int x;
    int y;
    int z;
    int k;
};

int demo1(struct array a)
{
    printf("c.demo1: %d %d %d %d\n",a.x,a.y,a.z,a.k);
    return a.x+a.y+a.z+a.k;
}

int demo2( int (*fn)(struct array)) {
    printf("c.demo2: %p\n",fn);
    struct array a;
    a.x = 1;
    a.y = 2;
    a.z = 3;
    a.k = 4;
    return (*fn)(a);
}

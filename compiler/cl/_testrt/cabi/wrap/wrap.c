#include <stdio.h>

typedef struct {
    int a[2];
    int b;
} info;

typedef struct {
    int a[128];
} info_big;

info demo1(info i, int n) {
    i.a[0] *= n;
    i.a[1] *= n;
    i.b *= n;
    return i;
}

void demo2(info i, int *n) {
    *n = i.a[0]+i.a[1]+i.b;
}

int demo3(info i, int n) {
    return i.a[0]+i.a[1]+i.b+n;
}

info_big big1(info_big b, int n) {
    for(int i = 0; i < 128; i++)
        b.a[i] *= n;
    return b;
}

void big2(info_big b, int *n) {
    for(int i = 0; i < 128; i++)
        *n += b.a[i];
}

int callback(info i, int n, int (*fn)(info i, int n)) {
    return fn(i, n);
}


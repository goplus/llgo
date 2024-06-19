typedef union {
    double d;
    float  f;
    long   v;
} castUnion;

double llgoToFloat64(long v) {
    castUnion k;
    k.v = v;
    return k.d;
}

float llgoToFloat32(long v) {
    castUnion k;
    k.v = v;
    return k.f;
}

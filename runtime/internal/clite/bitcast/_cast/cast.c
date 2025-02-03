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

long llgoFromFloat64(double v) {
    castUnion k;
    k.d = v;
    return k.v;
}

long llgoFromFloat32(float v) {
    castUnion k;
    k.f = v;
    return k.v;
}

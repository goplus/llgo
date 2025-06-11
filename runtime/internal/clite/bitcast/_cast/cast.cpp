typedef union {
    double d;
    float f;
    long v;
    long long ll;
} castUnion;

extern "C" {

double llgoToFloat64(long long v) {
    castUnion k;
    k.ll = v;
    return k.d;
}

float llgoToFloat32(int v) {
    castUnion k;
    k.v = v;
    return k.f;
}

long long llgoFromFloat64(double v) {
    castUnion k;
    k.d = v;
    return k.ll;
}

int llgoFromFloat32(float v) {
    castUnion k;
    k.f = v;
    return k.v;
}
}
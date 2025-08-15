struct empty {
};

struct empty demo1(struct empty a) {
    return a;
}

int demo2(int v, struct empty a) {
    return v;
}

int demo3(int v, struct empty a, int v2) {
    return v + v2;
}
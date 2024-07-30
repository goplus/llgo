#include <stdlib.h>
#include <uv.h>

uv_fs_t* uv_fs_new() {
    uv_fs_t* req = malloc(sizeof(uv_fs_t));
    return req;
}
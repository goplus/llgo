#include <ffi.h>

void *llog_ffi_closure_alloc(void **code) {
    return ffi_closure_alloc(sizeof(ffi_closure), code);
}

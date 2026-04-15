#include <unistd.h>

int llgo_maxprocs()
{
#ifdef _SC_NPROCESSORS_ONLN
    return (int)sysconf(_SC_NPROCESSORS_ONLN);
#else
    return 1;
#endif
}

typedef void (*llgo_finalizer_func)(void *ctx, void *obj);

void llgo_call_finalizer(void *fn, void *ctx, void *obj)
{
    ((llgo_finalizer_func)fn)(ctx, obj);
}

#include <pthread.h>

void *GC_do_blocking(void *(*fn)(void *), void *data);

typedef struct {
    void *condition;
    void *mutex;
    int error;
} llgo_cond_wait_call;

static void *llgo_cond_wait_inactive(void *raw)
{
    llgo_cond_wait_call *call = (llgo_cond_wait_call *)raw;
    call->error = pthread_cond_wait(call->condition, call->mutex);
    return 0;
}

int llgo_gc_cond_wait(void *condition, void *mutex)
{
    llgo_cond_wait_call call = {condition, mutex, 0};
    /* Only the native wait runs inactive; it neither allocates GC memory
     * nor calls Go code. The caller's stack remains part of the root set. */
    GC_do_blocking(llgo_cond_wait_inactive, &call);
    return call.error;
}

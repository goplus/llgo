#define GC_THREADS
#include <gc.h>
#include <pthread.h>

int llgoPthreadCreate(pthread_t *thread, const pthread_attr_t *attr, void *(*start_routine)(void *), void *arg) {
    return GC_pthread_create(thread, attr, start_routine, arg);
}

int llgoPthreadJoin(pthread_t thread, void **retval) {
    return GC_pthread_join(thread, retval);
}

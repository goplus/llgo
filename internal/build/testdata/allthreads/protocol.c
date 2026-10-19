#define _GNU_SOURCE 1
#include "../../../../runtime/internal/stacktrace/_wrap/traceback.h"
#include <assert.h>
#include <errno.h>
#include <pthread.h>
#include <sched.h>
#include <signal.h>
#include <stdatomic.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/syscall.h>
#include <sys/wait.h>
#include <unistd.h>

int __llgo_allthreads_executable = 1;
extern void llgo_traceback_mark_owned(void *);

typedef struct {
    void *node;
    atomic_int ready, stop, masked, unblock;
} worker;

static void *work(void *raw)
{
    worker *w = raw;
    llgo_traceback_attach(w->node);
    if (atomic_load(&w->masked)) {
        sigset_t mask;
        sigemptyset(&mask); sigaddset(&mask, SIGURG);
        assert(!pthread_sigmask(SIG_BLOCK, &mask, 0));
    }
    atomic_store(&w->ready, 1);
    while (!atomic_load(&w->stop)) {
        if (atomic_load(&w->unblock)) {
            sigset_t mask;
            sigemptyset(&mask); sigaddset(&mask, SIGURG);
            assert(!pthread_sigmask(SIG_UNBLOCK, &mask, 0));
            atomic_store(&w->unblock, 0);
        }
        sched_yield();
    }
    llgo_traceback_unregister(w->node);
    return 0;
}

static pthread_t start(worker *w, unsigned id, unsigned parent)
{
    w->node = llgo_traceback_register(id, parent, 0);
    assert(w->node);
    pthread_t thread;
    assert(!pthread_create(&thread, 0, work, w));
    while (!atomic_load(&w->ready)) sched_yield();
    return thread;
}

static void stop(worker *w, pthread_t thread)
{
    atomic_store(&w->stop, 1);
    assert(!pthread_join(thread, 0));
}

static llgo_allthreads_call call(uintptr_t trap)
{
    llgo_allthreads_call c = {.trap = trap};
    errno = EDOM;
    llgo_traceback_all_threads_syscall(&c);
    assert(errno == EDOM);
    return c;
}

static void *foreign(void *raw)
{
    atomic_int *stop = raw;
    while (!atomic_load(stop)) sched_yield();
    return 0;
}

static void *creation(void *raw)
{
    worker *w = raw;
    llgo_traceback_attach(w->node);
    atomic_store(&w->ready, 1);
    for (unsigned i = 0; i < 150; i++) {
        worker child = {0};
        pthread_t thread = start(&child, 100+i, 10);
        stop(&child, thread);
    }
    atomic_store(&w->stop, 1);
    llgo_traceback_unregister(w->node);
    return 0;
}

int main(int argc, char **argv)
{
    (void)argv;
    void *main_node = llgo_traceback_register(1, 0, 0);
    assert(main_node);
    llgo_traceback_attach(main_node);
    llgo_traceback_mark_owned(main_node);
    worker children[3] = {0};
    pthread_t threads[3];
    for (unsigned i = 0; i < 3; i++) threads[i] = start(&children[i], i+2, 1);
    if (argc > 1) {
        call(SYS_gettid); /* Different results must terminate the process. */
        abort();
    }
    for (unsigned i = 0; i < 200; i++) {
        llgo_allthreads_call c = call(SYS_getpid);
        assert(!c.error && c.r1 == (uintptr_t)getpid() && c.r2 == 0);
    }
    llgo_allthreads_call c = call((uintptr_t)-1);
    assert(c.error == ENOSYS && c.r1 == (uintptr_t)-1);
    c = call(SYS_rt_sigprocmask);
    assert(c.error == ENOTSUP);

    __llgo_allthreads_executable = 0;
    c = call(SYS_getpid);
    assert(c.error == ENOTSUP);
    __llgo_allthreads_executable = 1;

    atomic_int foreign_stop = 0;
    pthread_t thread;
    assert(!pthread_create(&thread, 0, foreign, &foreign_stop));
    do { c = call(SYS_getpid); } while (c.error == EAGAIN);
    assert(c.error == ENOTSUP);
    atomic_store(&foreign_stop, 1);
    assert(!pthread_join(thread, 0));

    worker adopted = {0};
    thread = start(&adopted, 7, 0);
    c = call(SYS_getpid);
    assert(c.error == ENOTSUP);
    stop(&adopted, thread);

    worker masked = {.masked = 1};
    thread = start(&masked, 8, 1);
    c = call(SYS_getpid);
    assert(c.error == EAGAIN);
    atomic_store(&masked.unblock, 1);
    while (atomic_load(&masked.unblock)) sched_yield();
    do { c = call(SYS_getpid); } while (c.error == EAGAIN);
    assert(!c.error);
    stop(&masked, thread);

    worker creator = {0};
    creator.node = llgo_traceback_register(10, 1, 0);
    assert(!pthread_create(&thread, 0, creation, &creator));
    while (!atomic_load(&creator.ready)) sched_yield();
    while (!atomic_load(&creator.stop)) {
        c = call(SYS_getpid);
        assert(!c.error || c.error == EAGAIN || c.error == ENOTSUP);
        sched_yield();
    }
    assert(!pthread_join(thread, 0));
    for (unsigned i = 0; i < 3; i++) stop(&children[i], threads[i]);
    llgo_traceback_unregister(main_node);
    puts("allthreads-ok");
    return 0;
}

#include <errno.h>
#include <pthread.h>
#include <setjmp.h>
#include <stdlib.h>

// SDK 25's pthread_create is a weak alias of this libc entry point. Its
// private __pthread_exit runs only after the start routine returns.
extern int __pthread_create(pthread_t *, const pthread_attr_t *,
                            void *(*)(void *), void *);

struct thread_start {
  void *(*routine)(void *);
  void *arg;
};

static _Thread_local jmp_buf *exit_target;
static _Thread_local void *exit_result;

static void *thread_start(void *arg) {
  struct thread_start start = *(struct thread_start *)arg;
  free(arg);
  jmp_buf target;
  exit_target = &target;
  void *result;
  if (setjmp(target) == 0)
    result = start.routine(start.arg);
  else
    result = exit_result;
  exit_target = NULL;
  return result;
}

// Wrap C-created threads too, so pthread_exit and Go callbacks share the
// same exit boundary. Creation failure leaves no start record behind.
int pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                   void *(*routine)(void *), void *arg) {
  struct thread_start *start = malloc(sizeof(*start));
  if (!start)
    return ENOMEM;
  *start = (struct thread_start){routine, arg};
  int result = __pthread_create(thread, attr, thread_start, start);
  if (result)
    free(start);
  return result;
}

_Noreturn void pthread_exit(void *result) {
  // Go's initial-thread Goexit parks in the runtime; it never gets here.
  if (!exit_target)
    abort();
  // Cleanup records live on the exiting C stack. Run them before longjmp
  // restores the start frame. The SDK's push/pop ABI exposes the previous
  // record through __next without depending on libc's pthread layout.
  struct __ptcb cleanup;
  _pthread_cleanup_push(&cleanup, NULL, NULL);
  _pthread_cleanup_pop(&cleanup, 0);
  // Cleanup records must be lexically paired and popped in strict LIFO order.
  while (cleanup.__next) {
    struct __ptcb *record = cleanup.__next;
    cleanup.__next = record->__next;
    _pthread_cleanup_pop(record, 1);
  }
  exit_result = result;
  longjmp(*exit_target, 1);
}

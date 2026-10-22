#include <pthread.h>
#include <stdatomic.h>
#include <stdint.h>

// SDK 25 omits this declaration; LLGo supplies the exit adapter.
_Noreturn void pthread_exit(void *);

static pthread_key_t key;
static atomic_uint destructors;

static void destroy(void *value) {
  if (value == (void *)(uintptr_t)42)
    atomic_fetch_add(&destructors, 1);
}

int llgo_thread_exit_probe_init(void) {
  return pthread_key_create(&key, destroy);
}

int llgo_thread_exit_probe_set(void) {
  return pthread_setspecific(key, (void *)(uintptr_t)42);
}

unsigned llgo_thread_exit_probe_destructors(void) {
  return atomic_load(&destructors);
}

unsigned llgo_thread_exit_probe_pages(void) {
  return __builtin_wasm_memory_size(0);
}

static void cleanup(void *value) {
  unsigned *order = value;
  *order = *order * 10 + 1;
}

static void outer_cleanup(void *value) {
  unsigned *order = value;
  *order = *order * 10 + 2;
}

struct c_start {
  unsigned order;
  int exit;
  pthread_barrier_t *barrier;
};

static void *c_thread(void *arg) {
  struct c_start *start = arg;
  if (llgo_thread_exit_probe_set())
    return NULL;
  pthread_cleanup_push(outer_cleanup, &start->order);
  pthread_cleanup_push(cleanup, &start->order);
  pthread_barrier_wait(start->barrier);
  if (start->exit)
    pthread_exit(start);
  pthread_cleanup_pop(0);
  pthread_cleanup_pop(0);
  return start;
}

int llgo_thread_exit_probe_c_threads(void) {
  enum { batches = 128, concurrent_threads = 8 };
  unsigned before = atomic_load(&destructors);
  for (unsigned batch = 0; batch < batches; ++batch) {
    pthread_barrier_t barrier;
    pthread_t threads[concurrent_threads];
    struct c_start starts[concurrent_threads];
    if (pthread_barrier_init(&barrier, NULL, concurrent_threads))
      return 1;
    for (unsigned i = 0; i < concurrent_threads; ++i) {
      starts[i] = (struct c_start){0, i & 1, &barrier};
      if (pthread_create(&threads[i], NULL, c_thread, &starts[i]))
        return 1;
    }
    for (unsigned i = 0; i < concurrent_threads; ++i) {
      void *result = NULL;
      if (pthread_join(threads[i], &result) || result != &starts[i] ||
          starts[i].order != (starts[i].exit ? 12 : 0))
        return 1;
    }
    if (pthread_barrier_destroy(&barrier) ||
        atomic_load(&destructors) != before + (batch + 1) * concurrent_threads)
      return 1;
  }
  return pthread_key_delete(key);
}

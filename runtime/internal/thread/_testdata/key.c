#include <pthread.h>
#include <stddef.h>

size_t llgo_test_pthread_key_size(void) { return sizeof(pthread_key_t); }

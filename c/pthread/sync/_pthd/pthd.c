#include <pthread.h>

pthread_once_t llgoSyncOnceInitVal() {
    pthread_once_t initVal = PTHREAD_ONCE_INIT;
    return initVal;
}

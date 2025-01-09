#include <pthread.h>

// -----------------------------------------------------------------------------

pthread_once_t cliteSyncOnceInitVal = PTHREAD_ONCE_INIT;

// -----------------------------------------------------------------------------

// wrap return type to void
void clite_wrap_pthread_mutex_lock(pthread_mutex_t *mutex)
{
    pthread_mutex_lock(mutex);
}

// wrap return type to void
void clite_wrap_pthread_mutex_unlock(pthread_mutex_t *mutex)
{
    pthread_mutex_unlock(mutex);
}

// -----------------------------------------------------------------------------

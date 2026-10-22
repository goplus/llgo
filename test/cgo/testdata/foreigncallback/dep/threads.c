#include <stdint.h>
#if defined(_WIN32)
#include <windows.h>
#else
#include <pthread.h>
#endif

extern int GoMainCallback(int);
extern int GoDepCallback(int);
extern int GoMainNestedCallback(int, int);
extern int GoDepNestedCallback(int, int);
struct worker { int (*callback)(int); int result; };
#if defined(_WIN32)
static DWORD WINAPI run(void *data) {
#else
static void *run(void *data) {
#endif
    struct worker *worker = data;
    for (int i = 0; i < 4; i++) worker->result += worker->callback(20);
    return 0;
}

int invoke_callback_threads(int (*callback)(int)) {
    struct worker workers[3] = {0};
#if defined(_WIN32)
    HANDLE threads[3];
#else
    pthread_t threads[3];
#endif
    int started = 0, result = 0;
    for (int i = 0; i < 3; i++) {
        workers[i].callback = callback;
#if defined(_WIN32)
        threads[i] = CreateThread(0, 0, run, &workers[i], 0, 0);
        if (!threads[i]) break;
#else
        if (pthread_create(&threads[i], 0, run, &workers[i])) break;
#endif
        started++;
    }
    for (int i = 0; i < started; i++) {
#if defined(_WIN32)
        WaitForSingleObject(threads[i], INFINITE);
        CloseHandle(threads[i]);
#else
        pthread_join(threads[i], 0);
#endif
        result += workers[i].result;
    }
    return started == 3 ? result : -1;
}

int invoke_threads(int main_callback) {
    return invoke_callback_threads(main_callback ? GoMainCallback : GoDepCallback);
}

int invoke_nested(int value, int depth) {
    return depth & 1 ? GoMainNestedCallback(value, depth) : GoDepNestedCallback(value, depth);
}

static int nested_callback(int value) {
    return invoke_nested(value, 3);
}

int invoke_nested_threads(void) {
    return invoke_callback_threads(nested_callback);
}

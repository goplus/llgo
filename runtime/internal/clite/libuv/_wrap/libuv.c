#include <stdint.h>
#include <uv.h>

extern void llgo_runtime_timerEvent(uv_async_t* handle);
extern void llgo_runtime_timerCallback(uv_timer_t* handle);
extern void llgo_time_timerEvent(uv_async_t* handle);
extern void llgo_time_timerCallback(uv_timer_t* handle);
extern void llgo_runtime_signalCallback(uv_signal_t* handle, int signum);

static void llgo_uv_async_noop(uv_async_t* handle) {
  (void)handle;
}

int llgo_uv_async_init_noop(uv_loop_t* loop, uv_async_t* async) {
  return uv_async_init(loop, async, llgo_uv_async_noop);
}

int llgo_uv_async_init_runtime(uv_loop_t* loop, uv_async_t* async) {
  return uv_async_init(loop, async, llgo_runtime_timerEvent);
}

int llgo_uv_async_init_time(uv_loop_t* loop, uv_async_t* async) {
  return uv_async_init(loop, async, llgo_time_timerEvent);
}

int llgo_uv_timer_start_runtime(uv_timer_t* timer, uint64_t timeout, uint64_t repeat) {
  return uv_timer_start(timer, llgo_runtime_timerCallback, timeout, repeat);
}

int llgo_uv_timer_start_time(uv_timer_t* timer, uint64_t timeout, uint64_t repeat) {
  return uv_timer_start(timer, llgo_time_timerCallback, timeout, repeat);
}

int llgo_uv_signal_start_runtime(uv_signal_t* handle, int signum) {
  return uv_signal_start(handle, llgo_runtime_signalCallback, signum);
}

int llgo_uv_signal_start_oneshot_runtime(uv_signal_t* handle, int signum) {
  return uv_signal_start_oneshot(handle, llgo_runtime_signalCallback, signum);
}

int uv_tcp_get_io_watcher_fd (uv_tcp_t* handle) {
  return handle->io_watcher.fd;
}

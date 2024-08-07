#include <uv.h>

int uv_tcp_get_io_watcher_fd (uv_tcp_t* handle) {
  return handle->io_watcher.fd;
}
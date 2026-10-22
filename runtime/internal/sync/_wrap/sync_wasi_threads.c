#include <stdint.h>

int llgo_wasi_wait_uint32(uint32_t *address, uint32_t value) {
  return __builtin_wasm_memory_atomic_wait32((int *)address, value, -1);
}

void llgo_wasi_wake_uint32(uint32_t *address) {
  __builtin_wasm_memory_atomic_notify((int *)address, 1);
}

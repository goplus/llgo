#define _GNU_SOURCE
#include <errno.h>
#include <linux/futex.h>
#include <stdint.h>
#include <sys/syscall.h>
#include <unistd.h>

int llgo_linux_wait_uint32(uint32_t *addr, uint32_t value)
{
    int saved_errno = errno;
    long result = syscall(SYS_futex, addr, FUTEX_WAIT_PRIVATE, value, 0, 0, 0);
    int error = result < 0 ? errno : 0;
    errno = saved_errno;
    return error;
}

void llgo_linux_wake_uint32(uint32_t *addr)
{
    int saved_errno = errno;
    syscall(SYS_futex, addr, FUTEX_WAKE_PRIVATE, 1, 0, 0, 0);
    errno = saved_errno;
}

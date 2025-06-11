#include <errno.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>

struct fcntl_ret
{
    int32_t r1;  // Return value
    int32_t err; // Error code
};

extern "C" {

// llgo_fcntl implements the fcntl system call wrapper for Go
// fd: file descriptor
// cmd: fcntl command
// arg: command argument
struct fcntl_ret llgo_fcntl2(int32_t fd, int32_t cmd, int32_t arg)
{
    struct fcntl_ret ret = {0};
    int result = fcntl(fd, cmd, arg);

    if (result == -1)
    {
        ret.err = errno;
        ret.r1 = -1;
    }
    else
    {
        ret.err = 0;
        ret.r1 = result;
    }

    return ret;
}

}

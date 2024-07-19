#include <sys/types.h>

int llgo_FD_ISSET(int n, fd_set *fd) {
    return FD_ISSET(n, fd);
}

void llgo_FD_SET(int n, fd_set *fd) {
    FD_SET(n, fd);
}

void llgo_FD_ZERO(fd_set *fd) {
    FD_ZERO(fd);
}

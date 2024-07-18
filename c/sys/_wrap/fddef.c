#include <sys/types.h>

int fd_isset(int n, fd_set *fd) {
    return FD_ISSET(n, fd);
}

void fdSet(int n, fd_set *fd) {
    FD_SET(n, fd);
}

void fd_zero(fd_set *fd) {
    FD_ZERO(fd);
}
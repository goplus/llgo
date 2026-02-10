#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <stdint.h>


int cliteClearenv()
{
	extern char **environ;
	if (environ != NULL)
	{
		*environ = NULL;
	}
	return 0;
}

int cliteErrno() { return errno; }

int llgo_open(const char *path, int flags, int mode) {
	return open(path, flags, mode);
}

int llgo_openat(int dirfd, const char *path, int flags, int mode) {
	return openat(dirfd, path, flags, mode);
}

int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, (long)arg);
}

int llgo_ioctl(int fd, uintptr_t req, uintptr_t arg) {
	return ioctl(fd, (unsigned long)req, (void *)arg);
}

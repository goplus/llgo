#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <stdint.h>
#include <dirent.h>

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

// Darwin syscall trampolines are called from llgo with uintptr-typed
// signatures. Use uintptr_t in both params and return to avoid ABI mismatch
// between C int return values and Go uintptr error checks.
uintptr_t llgo_open(uintptr_t path, uintptr_t flags, uintptr_t mode) {
	int ret = open((const char *)path, (int)flags, (int)mode);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_openat(uintptr_t dirfd, uintptr_t path, uintptr_t flags, uintptr_t mode) {
	int ret = openat((int)dirfd, (const char *)path, (int)flags, (int)mode);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_fcntl(uintptr_t fd, uintptr_t cmd, uintptr_t arg) {
	int ret = fcntl((int)fd, (int)cmd, (long)arg);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_ioctl(uintptr_t fd, uintptr_t req, uintptr_t arg) {
	int ret = ioctl((int)fd, (unsigned long)req, (void *)arg);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_fdopendir(uintptr_t fd) {
	DIR *ret = fdopendir((int)fd);
	return (uintptr_t)ret;
}

uintptr_t llgo_closedir(uintptr_t dir) {
	int ret = closedir((DIR *)dir);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_readdir_r(uintptr_t dir, uintptr_t entry, uintptr_t result) {
	int ret = readdir_r((DIR *)dir, (struct dirent *)entry, (struct dirent **)result);
	return (uintptr_t)(intptr_t)ret;
}

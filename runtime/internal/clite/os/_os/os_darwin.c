// INODE64 compatibility wrappers for darwin/amd64 syscall trampolines.
#include <stddef.h>
#include <stdint.h>
#include <dirent.h>
#include <errno.h>
#include <strings.h>

#include <AvailabilityMacros.h>
#if MAC_OS_X_VERSION_MAX_ALLOWED >= 160000
    #define READDIR_R_DEPRECATED 1
#else
    #define READDIR_R_DEPRECATED 0
#endif

uintptr_t llgo_fdopendir(uintptr_t fd) {
	DIR *ret = fdopendir((int)fd);
	return (uintptr_t)ret;
}

uintptr_t llgo_closedir(uintptr_t dir) {
	int ret = closedir((DIR *)dir);
	return (uintptr_t)(intptr_t)ret;
}

uintptr_t llgo_readdir_r(uintptr_t dir, uintptr_t entry, uintptr_t result) {
#if READDIR_R_DEPRECATED
	struct dirent *dp = readdir((DIR *)dir);
	if (dp == NULL) {
		*(struct dirent **)result = NULL;
		return (uintptr_t)(intptr_t)(errno);
	}
	size_t len = offsetof(struct dirent, d_name) + strlen(dp->d_name) + 1;
	memcpy((struct dirent *)entry, dp, len);
	*(struct dirent **)result = (struct dirent *)entry;
	return 0;
#else
	int ret = readdir_r((DIR *)dir, (struct dirent *)entry, (struct dirent **)result);
	return (uintptr_t)(intptr_t)ret;
#endif
}

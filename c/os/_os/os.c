#include <stdlib.h>
#include <errno.h>

int llgoClearenv() {
	extern char **environ;
	if (environ != NULL) {
		*environ = NULL;
	}
	return 0;
}

int llgoErrno() { return errno; }

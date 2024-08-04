#include <stdlib.h>

int llgoClearenv() {
	extern char **environ;
	if (environ != NULL) {
		*environ = NULL;
	}
	return 0;
}

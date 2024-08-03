#include <stdlib.h>

int llgo_clearenv() {
	extern char **environ;
	if (environ != NULL) {
		*environ = NULL;
	}
	return 0;
}

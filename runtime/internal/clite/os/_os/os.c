#include <stdlib.h>
#include <errno.h>

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

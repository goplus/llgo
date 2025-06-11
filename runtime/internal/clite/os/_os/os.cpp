#include <stdlib.h>
#include <errno.h>

extern "C" {

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

}

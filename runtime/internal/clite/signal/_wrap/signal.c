#include <signal.h>

int llgo_clite_sigaction(int sig, void (*handler)(int)) {
	struct sigaction act;
	sigemptyset(&act.sa_mask);
	act.sa_handler = handler;
	act.sa_flags = 0;
#ifdef SA_RESTART
	act.sa_flags |= SA_RESTART;
#endif
	return sigaction(sig, &act, 0);
}


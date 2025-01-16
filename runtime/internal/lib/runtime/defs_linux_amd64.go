package runtime

type timeval struct {
	tv_sec  int64
	tv_usec int64
}

type itimerval struct {
	it_interval timeval
	it_value    timeval
}

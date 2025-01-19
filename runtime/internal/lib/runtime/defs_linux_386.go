package runtime

type timeval struct {
	tv_sec  int32
	tv_usec int32
}

type itimerval struct {
	it_interval timeval
	it_value    timeval
}

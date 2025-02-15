package poll

func runtime_Semacquire(sema *uint32) {
	panic("todo: poll.runtime_Semacquire")
}

func runtime_Semrelease(sema *uint32) {
	panic("todo: poll.runtime_Semrelease")
}

func runtime_pollServerInit() {
	panic("todo: poll.runtime_pollServerInit")
}

func runtime_pollOpen(fd uintptr) (uintptr, int) {
	panic("todo: poll.runtime_pollOpen")
}

func runtime_pollClose(ctx uintptr) {
	panic("todo: poll.runtime_pollClose")
}

func runtime_pollWait(ctx uintptr, mode int) int {
	panic("todo: poll.runtime_pollWait")
}

func runtime_pollWaitCanceled(ctx uintptr, mode int) {
	panic("todo: poll.runtime_pollWaitCanceled")
}

func runtime_pollReset(ctx uintptr, mode int) int {
	panic("todo: poll.runtime_pollReset")
}

func runtime_pollSetDeadline(ctx uintptr, d int64, mode int) {
	panic("todo: poll.runtime_pollSetDeadline")
}

func runtime_pollUnblock(ctx uintptr) {
	panic("todo: poll.runtime_pollUnblock")
}

func runtime_isPollServerDescriptor(fd uintptr) bool {
	panic("todo: poll.runtime_isPollServerDescriptor")
}

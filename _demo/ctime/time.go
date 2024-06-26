package main

import "github.com/goplus/llgo/c/time"

func main() {
	var tv time.Timespec
	time.ClockGettime(time.CLOCK_REALTIME, &tv)
	println("REALTIME sec:", tv.Sec, "nsec:", tv.Nsec)

	time.ClockGettime(time.CLOCK_MONOTONIC, &tv)
	println("MONOTONIC sec:", tv.Sec, "nsec:", tv.Nsec)
}

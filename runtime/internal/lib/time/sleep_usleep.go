//go:build !darwin && !linux

package time

// Fallback timer implementation using goroutines + usleep.
func startTimer(r *runtimeTimer) {
	panic("timer: usleep fallback disabled")
}

func stopTimer(r *runtimeTimer) bool {
	panic("timer: usleep fallback disabled")
}

func resetTimer(r *runtimeTimer, when int64) bool {
	panic("timer: usleep fallback disabled")
}

package debug

func SetTraceback(level string) {
	// LLGO: testing package calls this to widen traceback collection.
	// Our runtime doesn't yet support configurable traceback levels,
	// so treat it as a no-op instead of panicking.
}

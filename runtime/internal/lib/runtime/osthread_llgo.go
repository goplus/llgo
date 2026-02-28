package runtime

// LockOSThread and UnlockOSThread are currently no-ops for llgo.
//
// The standard Go runtime uses these to pin a goroutine to its current OS
// thread. llgo does not yet support migrating goroutines between OS threads, so
// pinning is unnecessary.
func LockOSThread() {}

func UnlockOSThread() {}

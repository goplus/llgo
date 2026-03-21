//go:build wasm
// +build wasm

package runtime

func signal_enable(sig uint32) {}

func signal_disable(sig uint32) {}

func signal_ignore(sig uint32) {}

func signal_ignored(sig uint32) bool {
	return false
}

func signal_recv() uint32 {
	return 0
}

func signalWaitUntilIdle() {}

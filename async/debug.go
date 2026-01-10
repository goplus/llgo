package async

import (
	"fmt"
	"os"
	"sync/atomic"
)

// PullDebugHook receives callbacks whenever a state machine emits a debug event.
type PullDebugHook func(funcName string, state int, phase string, suspend bool, terminal bool)

var (
	pullDebugEnvEnabled bool
	pullDebugHook       atomic.Value
)

func init() {
	if v := os.Getenv("LLGO_PULL_DEBUG"); v != "" && v != "0" {
		pullDebugEnvEnabled = true
	}
}

// PullDebugEnabled reports whether pull-model debug logging or hooks are active.
func PullDebugEnabled() bool {
	if hook, _ := pullDebugHook.Load().(PullDebugHook); hook != nil {
		return true
	}
	return pullDebugEnvEnabled
}

// RegisterPullDebugHook installs a custom hook that receives pull-model events.
// Passing nil clears the hook and reverts to the default env-based logger.
func RegisterPullDebugHook(h PullDebugHook) {
	pullDebugHook.Store(h)
}

// PullDebugState emits a debug event for the given state and phase.
func PullDebugState(funcName string, state int, phase string, suspend bool, terminal bool) {
	hook, _ := pullDebugHook.Load().(PullDebugHook)
	if hook != nil {
		hook(funcName, state, phase, suspend, terminal)
		return
	}
	if !pullDebugEnvEnabled {
		return
	}
	fmt.Printf("[PullDebug] %s state=%d phase=%s suspend=%v terminal=%v\n",
		funcName, state, phase, suspend, terminal)
}

// PullDebugDispatch logs the dynamic state value at dispatcher time.
func PullDebugDispatch(funcName string, state int) {
	hook, _ := pullDebugHook.Load().(PullDebugHook)
	if hook != nil {
		hook(funcName, state, "dispatch", false, false)
		return
	}
	if !pullDebugEnvEnabled {
		return
	}
	fmt.Printf("[PullDebug] %s state=%d phase=dispatch\n", funcName, state)
}

package async

import _ "unsafe"

//go:linkname runtimeAsyncRecoverHook github.com/goplus/llgo/runtime/internal/runtime.asyncRecoverHook
var runtimeAsyncRecoverHook func() (any, bool)

func init() {
	runtimeAsyncRecoverHook = asyncRecoverHook
}

func asyncRecoverHook() (any, bool) {
	s := currentDeferState
	if s == nil {
		return nil, false
	}
	wasPanicking := s.IsPanicking && !s.Recovered
	v := s.DoRecover()
	if wasPanicking {
		return v, true
	}
	return nil, false
}

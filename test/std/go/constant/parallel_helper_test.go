package constant_test

import "testing"

func maybeParallel(t *testing.T) {
	if isLLGo {
		return
	}
	t.Parallel()
}

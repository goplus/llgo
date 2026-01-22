// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build (baremetal) && (!llgo || !darwin)

package time

type runtimeTimer struct {
	when   int64
	period int64
	active bool
	f      func(any, uintptr)
	arg    any
}

func startTimer(r *runtimeTimer) {
	panic("todo: time.startTimer")
}

func stopTimer(r *runtimeTimer) bool {
	panic("todo: time.stopTimer")
}

func resetTimer(r *runtimeTimer, when int64) bool {
	panic("todo: time.resetTimer")
}

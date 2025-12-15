//go:build !go1.24

// Copyright 2024 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package os

import (
	"sync"
	"sync/atomic"
)

// Process stores the information about a process created by StartProcess.
type Process struct {
	Pid    int
	handle uintptr      // handle is accessed atomically on Windows
	isdone atomic.Bool  // process has been successfully waited on
	sigMu  sync.RWMutex // avoid race between wait and signal
}

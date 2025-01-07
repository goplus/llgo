// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build aix || darwin

package syscall

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// forkExecPipe opens a pipe and non-atomically sets O_CLOEXEC on both file
// descriptors.
func forkExecPipe(p []int) error {
	err := Pipe(p)
	if err != nil {
		return err
	}
	ret := os.Fcntl(c.Int(p[0]), syscall.F_SETFD, syscall.FD_CLOEXEC)
	if ret != 0 {
		return Errno(ret)
	}
	ret = os.Fcntl(c.Int(p[1]), syscall.F_SETFD, syscall.FD_CLOEXEC)
	if ret != 0 {
		return Errno(ret)
	}
	return nil
}

func acquireForkLock() {
	ForkLock.Lock()
}

func releaseForkLock() {
	ForkLock.Unlock()
}

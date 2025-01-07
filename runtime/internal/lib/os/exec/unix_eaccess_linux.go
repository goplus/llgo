// Copyright 2022 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

package exec

import (
	"syscall"

	"github.com/goplus/llgo/runtime/internal/clite/syscall/unix"
)

func unixEaccess(path string, mode uint32) error {
	return syscall.Faccessat(unix.AT_FDCWD, path, mode, unix.AT_EACCESS)
}

// Copyright 2020 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build !windows

package execenv

import "syscall"

// llgo:skipall
type _execenv struct{}

// Default will return the default environment
// variables based on the process attributes
// provided.
//
// Defaults to syscall.Environ() on all platforms
// other than Windows.
func Default(sys *syscall.SysProcAttr) ([]string, error) {
	return syscall.Environ(), nil
}

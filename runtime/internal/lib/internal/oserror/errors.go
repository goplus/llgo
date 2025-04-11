// Copyright 2019 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Package oserror defines errors values used in the os package.
//
// These types are defined here to permit the syscall package to reference them.
package oserror

import (
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// llgo:skipall
type _oserror struct{}

var (
	ErrInvalid    = syscall.ErrInvalid
	ErrPermission = syscall.ErrPermission
	ErrExist      = syscall.ErrExist
	ErrNotExist   = syscall.ErrNotExist
	ErrClosed     = syscall.ErrClosed
)

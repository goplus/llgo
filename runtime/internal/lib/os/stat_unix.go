// Copyright 2016 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix || wasm

package os

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/lib/syscall"
)

// Stat returns the FileInfo structure describing file.
// If there is an error, it will be of type *PathError.
func (f *File) Stat() (FileInfo, error) {
	if f == nil {
		return nil, ErrInvalid
	}
	var fs fileStat
	err := os.Fstat(c.Int(f.fd), &fs.sys)
	if err != 0 {
		return nil, &PathError{Op: "stat", Path: f.name, Err: syscall.Errno(err)}
	}
	return &fs, nil
}

// statNolog stats a file with no test logging.
func statNolog(name string) (FileInfo, error) {
	var fs fileStat
	err := ignoringEINTR(func() error {
		return syscall.Stat(name, &fs.sys)
	})
	if err != nil {
		return nil, &PathError{Op: "stat", Path: name, Err: err}
	}
	fillFileStatFromSys(&fs, name)
	return &fs, nil
}

// lstatNolog lstats a file with no test logging.
func lstatNolog(name string) (FileInfo, error) {
	var fs fileStat
	err := ignoringEINTR(func() error {
		return syscall.Lstat(name, &fs.sys)
	})
	if err != nil {
		return nil, &PathError{Op: "lstat", Path: name, Err: err}
	}
	fillFileStatFromSys(&fs, name)
	return &fs, nil
}

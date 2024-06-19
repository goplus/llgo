/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package os

// llgo:skipall
import (
	"io/fs"
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

const (
	LLGoPackage = true
)

type (
	FileMode = fs.FileMode
)

type timeout interface {
	Timeout() bool
}

type PathError = fs.PathError

// SyscallError records an error from a specific system call.
type SyscallError struct {
	Syscall string
	Err     error
}

func (e *SyscallError) Error() string { return e.Syscall + ": " + e.Err.Error() }

func (e *SyscallError) Unwrap() error { return e.Err }

// Timeout reports whether this error represents a timeout.
func (e *SyscallError) Timeout() bool {
	t, ok := e.Err.(timeout)
	return ok && t.Timeout()
}

// NewSyscallError returns, as an error, a new SyscallError
// with the given system call name and error details.
// As a convenience, if err is nil, NewSyscallError returns nil.
func NewSyscallError(syscall string, err error) error {
	if err == nil {
		return nil
	}
	return &SyscallError{syscall, err}
}

// LinkError records an error during a link or symlink or rename
// system call and the paths that caused it.
type LinkError struct {
	Op  string
	Old string
	New string
	Err error
}

func (e *LinkError) Error() string {
	return e.Op + " " + e.Old + " " + e.New + ": " + e.Err.Error()
}

func (e *LinkError) Unwrap() error {
	return e.Err
}

func toMode(mode FileMode) os.ModeT {
	panic("todo")
}

func toSyscallErr(errno c.Int) error {
	panic("todo")
}

func toPathErr(op, path string, errno c.Int) error {
	return &PathError{Op: op, Path: path, Err: toSyscallErr(errno)}
}

func Chdir(dir string) error {
	ret := os.Chdir(c.AllocaCStr(dir))
	if ret == 0 {
		return nil
	}
	return toPathErr("chdir", dir, ret)
}

func Chmod(name string, mode FileMode) error {
	ret := os.Chmod(c.AllocaCStr(name), toMode(mode))
	if ret == 0 {
		return nil
	}
	return toPathErr("chmod", name, ret)
}

func Chown(name string, uid, gid int) error {
	ret := os.Chown(c.AllocaCStr(name), os.UidT(uid), os.GidT(gid))
	if ret == 0 {
		return nil
	}
	return toPathErr("chown", name, ret)
}

// TODO(xsw):
// func Chtimes(name string, atime time.Time, mtime time.Time) error

//go:linkname Clearenv C.clearenv
func Clearenv()

// TODO(xsw):
// func DirFS(dir string) fs.FS
// func Environ() []string
// func Executable() (string, error)

func Exit(code int) {
	os.Exit(c.Int(code))
}

// TODO(xsw):
// func Expand(s string, mapping func(string) string) string
// func ExpandEnv(s string) string

func Getegid() int {
	return int(os.Getegid())
}

func Getenv(key string) string {
	return c.GoString(os.Getenv(c.AllocaCStr(key)))
}

func Geteuid() int {
	return int(os.Geteuid())
}

func Getgid() int {
	return int(os.Getgid())
}

// TODO(xsw):
// func Getgroups() ([]int, error)
// func Getpagesize() int

func Getpid() int {
	return int(os.Getpid())
}

func Getppid() int {
	return int(os.Getppid())
}

func Getuid() int {
	return int(os.Getuid())
}

func Getwd() (dir string, err error) {
	wd := os.Getcwd(c.Alloca(os.PATH_MAX), os.PATH_MAX)
	if wd != nil {
		return c.GoString(wd), nil
	}
	return "", toSyscallErr(os.Errno)
}

// TODO(xsw):
// func Hostname() (name string, err error)
// func IsExist(err error) bool
// func IsNotExist(err error) bool
// func IsPathSeparator(c uint8) bool
// func IsPermission(err error) bool
// func IsTimeout(err error) bool

func Lchown(name string, uid, gid int) error {
	ret := os.Lchown(c.AllocaCStr(name), os.UidT(uid), os.GidT(gid))
	if ret == 0 {
		return nil
	}
	return toPathErr("lchown", name, ret)
}

func Link(oldname, newname string) error {
	ret := os.Link(c.AllocaCStr(oldname), c.AllocaCStr(newname))
	if ret == 0 {
		return nil
	}
	return &LinkError{"link", oldname, newname, toSyscallErr(ret)}
}

// TODO(xsw):
// func LookupEnv(key string) (string, bool)

func Mkdir(name string, perm FileMode) error {
	ret := os.Mkdir(c.AllocaCStr(name), toMode(perm))
	if ret == 0 {
		return nil
	}
	return toPathErr("mkdir", name, ret)
}

// TODO(xsw):
// func MkdirAll(path string, perm FileMode) error
// func MkdirTemp(dir, pattern string) (string, error)
// func NewSyscallError(syscall string, err error) error
// func Pipe() (r *File, w *File, err error)
// func ReadFile(name string) ([]byte, error)

func Readlink(name string) (string, error) {
	ptr := c.Alloca(os.PATH_MAX)
	ret := os.Readlink(c.AllocaCStr(name), ptr, os.PATH_MAX)
	if ret < os.PATH_MAX {
		return c.GoString((*c.Char)(ptr), ret), nil
	}
	panic("todo: buffer too small")
}

func Remove(name string) error {
	ret := os.Remove(c.AllocaCStr(name))
	if ret == 0 {
		return nil
	}
	return toPathErr("remove", name, ret)
}

// TODO(xsw):
// func RemoveAll(path string) error

func Rename(oldpath, newpath string) error {
	ret := os.Rename(c.AllocaCStr(oldpath), c.AllocaCStr(newpath))
	if ret == 0 {
		return nil
	}
	return &LinkError{"rename", oldpath, newpath, toSyscallErr(ret)}
}

// TODO(xsw):
// func SameFile(fi1, fi2 FileInfo) bool

func Setenv(key, value string) error {
	ret := os.Setenv(c.AllocaCStr(key), c.AllocaCStr(value), 1)
	if ret == 0 {
		return nil
	}
	return &SyscallError{"setenv", toSyscallErr(ret)}
}

func Symlink(oldname, newname string) error {
	ret := os.Symlink(c.AllocaCStr(oldname), c.AllocaCStr(newname))
	if ret == 0 {
		return nil
	}
	return &LinkError{"symlink", oldname, newname, toSyscallErr(ret)}
}

// TODO(xsw):
// func TempDir() string

func Truncate(name string, size int64) error {
	ret := os.Truncate(c.AllocaCStr(name), os.OffT(size))
	if ret == 0 {
		return nil
	}
	return toPathErr("truncate", name, ret)
}

func Unsetenv(key string) error {
	ret := os.Unsetenv(c.AllocaCStr(key))
	if ret == 0 {
		return nil
	}
	return toSyscallErr(ret)
}

// TODO(xsw):
// func UserCacheDir() (string, error)
// func UserConfigDir() (string, error)
// func UserHomeDir() (string, error)
// func WriteFile(name string, data []byte, perm FileMode) error

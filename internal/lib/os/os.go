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
	"errors"
	"runtime"
	"syscall"
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/os"
)

const (
	LLGoPackage = true
)

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
	panic("todo: toMode")
}

func toPathErr(op, path string, errno c.Int) error {
	return &PathError{Op: op, Path: path, Err: syscall.Errno(errno)}
}

func Chdir(dir string) error {
	ret := os.Chdir(c.AllocaCStr(dir))
	if ret == 0 {
		return nil
	}
	return toPathErr("chdir", dir, ret)
}

/* TODO(xsw):
// Chdir changes the current working directory to the named directory.
// If there is an error, it will be of type *PathError.
func Chdir(dir string) error {
	if e := syscall.Chdir(dir); e != nil {
		testlog.Open(dir) // observe likely non-existent directory
		return &PathError{Op: "chdir", Path: dir, Err: e}
	}
	if log := testlog.Logger(); log != nil {
		wd, err := Getwd()
		if err == nil {
			log.Chdir(wd)
		}
	}
	return nil
}
*/

func Chmod(name string, mode FileMode) error {
	ret := os.Chmod(c.AllocaCStr(name), toMode(mode))
	if ret == 0 {
		return nil
	}
	return toPathErr("chmod", name, ret)
}

/* TODO(xsw):
// Chmod changes the mode of the named file to mode.
// If the file is a symbolic link, it changes the mode of the link's target.
// If there is an error, it will be of type *PathError.
//
// A different subset of the mode bits are used, depending on the
// operating system.
//
// On Unix, the mode's permission bits, ModeSetuid, ModeSetgid, and
// ModeSticky are used.
//
// On Windows, only the 0200 bit (owner writable) of mode is used; it
// controls whether the file's read-only attribute is set or cleared.
// The other bits are currently unused. For compatibility with Go 1.12
// and earlier, use a non-zero mode. Use mode 0400 for a read-only
// file and 0600 for a readable+writable file.
//
// On Plan 9, the mode's permission bits, ModeAppend, ModeExclusive,
// and ModeTemporary are used.
func Chmod(name string, mode FileMode) error { return chmod(name, mode) }
*/

func Chown(name string, uid, gid int) error {
	ret := os.Chown(c.AllocaCStr(name), os.UidT(uid), os.GidT(gid))
	if ret == 0 {
		return nil
	}
	return toPathErr("chown", name, ret)
}

/* TODO(xsw):
// Chown changes the numeric uid and gid of the named file.
// If the file is a symbolic link, it changes the uid and gid of the link's target.
// A uid or gid of -1 means to not change that value.
// If there is an error, it will be of type *PathError.
//
// On Windows or Plan 9, Chown always returns the syscall.EWINDOWS or
// EPLAN9 error, wrapped in *PathError.
func Chown(name string, uid, gid int) error {
	e := ignoringEINTR(func() error {
		return syscall.Chown(name, uid, gid)
	})
	if e != nil {
		return &PathError{Op: "chown", Path: name, Err: e}
	}
	return nil
}
*/

// TODO(xsw):
// func Chtimes(name string, atime time.Time, mtime time.Time) error

//go:linkname Clearenv C.clearenv
func Clearenv()

// TODO(xsw):
// func DirFS(dir string) fs.FS

// func Executable() (string, error)

// TODO(xsw):
// func Expand(s string, mapping func(string) string) string
// func ExpandEnv(s string) string

func Getegid() int {
	return int(os.Getegid())
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
	return "", syscall.Errno(os.Errno)
}

// TODO(xsw):
// func Hostname() (name string, err error)
// func IsExist(err error) bool
// func IsNotExist(err error) bool
// func IsPermission(err error) bool
// func IsTimeout(err error) bool

func Lchown(name string, uid, gid int) error {
	ret := os.Lchown(c.AllocaCStr(name), os.UidT(uid), os.GidT(gid))
	if ret == 0 {
		return nil
	}
	return toPathErr("lchown", name, ret)
}

/* TODO(xsw):
// Lchown changes the numeric uid and gid of the named file.
// If the file is a symbolic link, it changes the uid and gid of the link itself.
// If there is an error, it will be of type *PathError.
//
// On Windows, it always returns the syscall.EWINDOWS error, wrapped
// in *PathError.
func Lchown(name string, uid, gid int) error {
	e := ignoringEINTR(func() error {
		return syscall.Lchown(name, uid, gid)
	})
	if e != nil {
		return &PathError{Op: "lchown", Path: name, Err: e}
	}
	return nil
}
*/

func Link(oldname, newname string) error {
	ret := os.Link(c.AllocaCStr(oldname), c.AllocaCStr(newname))
	if ret == 0 {
		return nil
	}
	return &LinkError{"link", oldname, newname, syscall.Errno(ret)}
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

/* TODO(xsw):
// Mkdir creates a new directory with the specified name and permission
// bits (before umask).
// If there is an error, it will be of type *PathError.
func Mkdir(name string, perm FileMode) error {
	longName := fixLongPath(name)
	e := ignoringEINTR(func() error {
		return syscall.Mkdir(longName, syscallMode(perm))
	})

	if e != nil {
		return &PathError{Op: "mkdir", Path: name, Err: e}
	}

	// mkdir(2) itself won't handle the sticky bit on *BSD and Solaris
	if !supportsCreateWithStickyBit && perm&ModeSticky != 0 {
		e = setStickyBit(name)

		if e != nil {
			Remove(name)
			return e
		}
	}

	return nil
}
*/

// TODO(xsw):
// func MkdirAll(path string, perm FileMode) error
// func NewSyscallError(syscall string, err error) error

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
	return &LinkError{"rename", oldpath, newpath, syscall.Errno(ret)}
}

/* TODO(xsw):
// Rename renames (moves) oldpath to newpath.
// If newpath already exists and is not a directory, Rename replaces it.
// OS-specific restrictions may apply when oldpath and newpath are in different directories.
// Even within the same directory, on non-Unix platforms Rename is not an atomic operation.
// If there is an error, it will be of type *LinkError.
func Rename(oldpath, newpath string) error {
	return rename(oldpath, newpath)
}
*/

// TODO(xsw):
// func SameFile(fi1, fi2 FileInfo) bool

func Symlink(oldname, newname string) error {
	ret := os.Symlink(c.AllocaCStr(oldname), c.AllocaCStr(newname))
	if ret == 0 {
		return nil
	}
	return &LinkError{"symlink", oldname, newname, syscall.Errno(ret)}
}

func Truncate(name string, size int64) error {
	ret := os.Truncate(c.AllocaCStr(name), os.OffT(size))
	if ret == 0 {
		return nil
	}
	return toPathErr("truncate", name, ret)
}

// UserCacheDir returns the default root directory to use for user-specific
// cached data. Users should create their own application-specific subdirectory
// within this one and use that.
//
// On Unix systems, it returns $XDG_CACHE_HOME as specified by
// https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
// non-empty, else $HOME/.cache.
// On Darwin, it returns $HOME/Library/Caches.
// On Windows, it returns %LocalAppData%.
// On Plan 9, it returns $home/lib/cache.
//
// If the location cannot be determined (for example, $HOME is not defined),
// then it will return an error.
func UserCacheDir() (string, error) {
	var dir string

	switch runtime.GOOS {
	case "windows":
		dir = Getenv("LocalAppData")
		if dir == "" {
			return "", errors.New("%LocalAppData% is not defined")
		}

	case "darwin", "ios":
		dir = Getenv("HOME")
		if dir == "" {
			return "", errors.New("$HOME is not defined")
		}
		dir += "/Library/Caches"

	case "plan9":
		dir = Getenv("home")
		if dir == "" {
			return "", errors.New("$home is not defined")
		}
		dir += "/lib/cache"

	default: // Unix
		dir = Getenv("XDG_CACHE_HOME")
		if dir == "" {
			dir = Getenv("HOME")
			if dir == "" {
				return "", errors.New("neither $XDG_CACHE_HOME nor $HOME are defined")
			}
			dir += "/.cache"
		}
	}

	return dir, nil
}

// UserConfigDir returns the default root directory to use for user-specific
// configuration data. Users should create their own application-specific
// subdirectory within this one and use that.
//
// On Unix systems, it returns $XDG_CONFIG_HOME as specified by
// https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html if
// non-empty, else $HOME/.config.
// On Darwin, it returns $HOME/Library/Application Support.
// On Windows, it returns %AppData%.
// On Plan 9, it returns $home/lib.
//
// If the location cannot be determined (for example, $HOME is not defined),
// then it will return an error.
func UserConfigDir() (string, error) {
	var dir string

	switch runtime.GOOS {
	case "windows":
		dir = Getenv("AppData")
		if dir == "" {
			return "", errors.New("%AppData% is not defined")
		}

	case "darwin", "ios":
		dir = Getenv("HOME")
		if dir == "" {
			return "", errors.New("$HOME is not defined")
		}
		dir += "/Library/Application Support"

	case "plan9":
		dir = Getenv("home")
		if dir == "" {
			return "", errors.New("$home is not defined")
		}
		dir += "/lib"

	default: // Unix
		dir = Getenv("XDG_CONFIG_HOME")
		if dir == "" {
			dir = Getenv("HOME")
			if dir == "" {
				return "", errors.New("neither $XDG_CONFIG_HOME nor $HOME are defined")
			}
			dir += "/.config"
		}
	}

	return dir, nil
}

// UserHomeDir returns the current user's home directory.
//
// On Unix, including macOS, it returns the $HOME environment variable.
// On Windows, it returns %USERPROFILE%.
// On Plan 9, it returns the $home environment variable.
//
// If the expected variable is not set in the environment, UserHomeDir
// returns either a platform-specific default value or a non-nil error.
func UserHomeDir() (string, error) {
	env, enverr := "HOME", "$HOME"
	switch runtime.GOOS {
	case "windows":
		env, enverr = "USERPROFILE", "%userprofile%"
	case "plan9":
		env, enverr = "home", "$home"
	}
	if v := Getenv(env); v != "" {
		return v, nil
	}
	// On some geese the home directory is not always defined.
	switch runtime.GOOS {
	case "android":
		return "/sdcard", nil
	case "ios":
		return "/", nil
	}
	return "", errors.New(enverr + " is not defined")
}

// TODO(xsw):
// func WriteFile(name string, data []byte, perm FileMode) error

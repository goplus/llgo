//go:build !wasm

package os

import (
	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
)

// setStickyBit adds ModeSticky to the permission bits of path, non atomic.
func setStickyBit(name string) error {
	fi, err := Stat(name)
	if err != nil {
		return err
	}
	return Chmod(name, fi.Mode()|ModeSticky)
}

func Chmod(name string, mode FileMode) error {
	ret := os.Chmod(c.AllocaCStr(name), os.ModeT(syscallMode(mode)))
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

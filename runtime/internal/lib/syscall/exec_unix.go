// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build unix

// Fork, exec, wait, etc.

package syscall

import (
	"errors"
	"runtime"
	"sync"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

// ForkLock is used to synchronize creation of new file descriptors
// with fork.
//
// We want the child in a fork/exec sequence to inherit only the
// file descriptors we intend. To do that, we mark all file
// descriptors close-on-exec and then, in the child, explicitly
// unmark the ones we want the exec'ed program to keep.
// Unix doesn't make this easy: there is, in general, no way to
// allocate a new file descriptor close-on-exec. Instead you
// have to allocate the descriptor and then mark it close-on-exec.
// If a fork happens between those two events, the child's exec
// will inherit an unwanted file descriptor.
//
// This lock solves that race: the create new fd/mark close-on-exec
// operation is done holding ForkLock for reading, and the fork itself
// is done holding ForkLock for writing. At least, that's the idea.
// There are some complications.
//
// Some system calls that create new file descriptors can block
// for arbitrarily long times: open on a hung NFS server or named
// pipe, accept on a socket, and so on. We can't reasonably grab
// the lock across those operations.
//
// It is worse to inherit some file descriptors than others.
// If a non-malicious child accidentally inherits an open ordinary file,
// that's not a big deal. On the other hand, if a long-lived child
// accidentally inherits the write end of a pipe, then the reader
// of that pipe will not see EOF until that child exits, potentially
// causing the parent program to hang. This is a common problem
// in threaded C programs that use popen.
//
// Luckily, the file descriptors that are most important not to
// inherit are not the ones that can take an arbitrarily long time
// to create: pipe returns instantly, and the net package uses
// non-blocking I/O to accept on a listening socket.
// The rules for which file descriptor-creating operations use the
// ForkLock are as follows:
//
//   - Pipe. Use pipe2 if available. Otherwise, does not block,
//     so use ForkLock.
//   - Socket. Use SOCK_CLOEXEC if available. Otherwise, does not
//     block, so use ForkLock.
//   - Open. Use O_CLOEXEC if available. Otherwise, may block,
//     so live with the race.
//   - Dup. Use F_DUPFD_CLOEXEC or dup3 if available. Otherwise,
//     does not block, so use ForkLock.
var ForkLock sync.RWMutex

func CloseOnExec(fd int) {
	os.Fcntl(c.Int(fd), syscall.F_SETFD, syscall.FD_CLOEXEC)
}

func SetNonblock(fd int, nonblocking bool) (err error) {
	/* TODO(xsw):
	flag, err := fcntl(fd, F_GETFL, 0)
	if err != nil {
		return err
	}
	if nonblocking {
		flag |= O_NONBLOCK
	} else {
		flag &^= O_NONBLOCK
	}
	_, err = fcntl(fd, F_SETFL, flag)
	return err
	*/
	panic("todo: syscall.SetNonblock")
}

// Credential holds user and group identities to be assumed
// by a child process started by StartProcess.
type Credential struct {
	Uid         uint32   // User ID.
	Gid         uint32   // Group ID.
	Groups      []uint32 // Supplementary group IDs.
	NoSetGroups bool     // If true, don't set supplementary groups
}

// ProcAttr holds attributes that will be applied to a new process started
// by StartProcess.
type ProcAttr struct {
	Dir   string    // Current working directory.
	Env   []string  // Environment.
	Files []uintptr // File descriptors.
	Sys   *SysProcAttr
}

var zeroProcAttr ProcAttr
var zeroSysProcAttr SysProcAttr

func forkExec(argv0 string, argv []string, attr *ProcAttr) (pid int, err error) {
	var p [2]int
	var n int
	var err1 Errno
	var wstatus WaitStatus

	if attr == nil {
		attr = &zeroProcAttr
	}
	sys := attr.Sys
	if sys == nil {
		sys = &zeroSysProcAttr
	}

	// Convert args to C form.
	argv0p := c.AllocaCStr(argv0)
	argvp := c.AllocaCStrs(argv, true)
	envvp := c.AllocaCStrs(attr.Env, true)

	if (runtime.GOOS == "freebsd" || runtime.GOOS == "dragonfly") && len(argv) > 0 && len(argv[0]) > len(argv0) {
		*argvp = argv0p
	}

	var chroot *c.Char
	if sys.Chroot != "" {
		chroot = c.AllocaCStr(sys.Chroot)
	}
	var dir *c.Char
	if attr.Dir != "" {
		dir = c.AllocaCStr(attr.Dir)
	}

	// Both Setctty and Foreground use the Ctty field,
	// but they give it slightly different meanings.
	if sys.Setctty && sys.Foreground {
		return 0, errors.New("both Setctty and Foreground set in SysProcAttr")
	}
	if sys.Setctty && sys.Ctty >= len(attr.Files) {
		return 0, errors.New("Setctty set but Ctty not valid in child")
	}

	acquireForkLock()

	// Allocate child status pipe close on exec.
	if err = forkExecPipe(p[:]); err != nil {
		releaseForkLock()
		return 0, err
	}

	// Kick off child.
	pid, err1 = forkAndExecInChild(argv0p, argvp, envvp, chroot, dir, attr, sys, p[1])
	if err1 != 0 {
		Close(p[0])
		Close(p[1])
		releaseForkLock()
		return 0, Errno(err1)
	}
	releaseForkLock()

	// Read child error status from pipe.
	Close(p[1])
	for {
		n, err = readlen(p[0], (*byte)(unsafe.Pointer(&err1)), int(unsafe.Sizeof(err1)))
		if err != Errno(syscall.EINTR) {
			break
		}
	}
	Close(p[0])
	if err != nil || n != 0 {
		if n == int(unsafe.Sizeof(err1)) {
			err = Errno(err1)
		}
		if err == nil {
			err = Errno(syscall.EPIPE)
		}

		// Child failed; wait for it to exit, to make sure
		// the zombies don't accumulate.
		_, err1 := Wait4(pid, &wstatus, 0, nil)
		for err1 == Errno(syscall.EINTR) {
			_, err1 = Wait4(pid, &wstatus, 0, nil)
		}
		return 0, err
	}

	// Read got EOF, so pipe closed on exec, so exec succeeded.
	return pid, nil
}

// Combination of fork and exec, careful to be thread safe.
func ForkExec(argv0 string, argv []string, attr *ProcAttr) (pid int, err error) {
	return forkExec(argv0, argv, attr)
}

// StartProcess wraps ForkExec for package os.
func StartProcess(argv0 string, argv []string, attr *ProcAttr) (pid int, handle uintptr, err error) {
	pid, err = forkExec(argv0, argv, attr)
	return pid, 0, err
}

/* TODO(xsw):
// Implemented in runtime package.
func runtime_BeforeExec()
func runtime_AfterExec()

// execveLibc is non-nil on OS using libc syscall, set to execve in exec_libc.go; this
// avoids a build dependency for other platforms.
var execveLibc func(path uintptr, argv uintptr, envp uintptr) Errno
var execveDarwin func(path *byte, argv **byte, envp **byte) error
var execveOpenBSD func(path *byte, argv **byte, envp **byte) error
*/

// Exec invokes the execve(2) system call.
func Exec(argv0 string, argv []string, envv []string) (err error) {
	ret := os.Execve(c.AllocaCStr(argv0), c.AllocaCStrs(argv, true), c.AllocaCStrs(envv, true))
	if ret == 0 {
		return nil
	}
	return Errno(ret)
}

// Copyright 2011 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//go:build darwin || (openbsd && !mips64)

package syscall

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/os"
	"github.com/goplus/llgo/runtime/internal/clite/syscall"
)

type SysProcAttr struct {
	Chroot     string      // Chroot.
	Credential *Credential // Credential.
	Ptrace     bool        // Enable tracing.
	Setsid     bool        // Create session.
	// Setpgid sets the process group ID of the child to Pgid,
	// or, if Pgid == 0, to the new child's process ID.
	Setpgid bool
	// Setctty sets the controlling terminal of the child to
	// file descriptor Ctty. Ctty must be a descriptor number
	// in the child process: an index into ProcAttr.Files.
	// This is only meaningful if Setsid is true.
	Setctty bool
	Noctty  bool // Detach fd 0 from controlling terminal
	Ctty    int  // Controlling TTY fd
	// Foreground places the child process group in the foreground.
	// This implies Setpgid. The Ctty field must be set to
	// the descriptor of the controlling TTY.
	// Unlike Setctty, in this case Ctty must be a descriptor
	// number in the parent process.
	Foreground bool
	Pgid       int // Child's process group ID if Setpgid.
}

/* TODO(xsw):
// Implemented in runtime package.
func runtime_BeforeFork()
func runtime_AfterFork()
func runtime_AfterForkInChild()
*/

// Fork, dup fd onto 0..len(fd), and exec(argv0, argvv, envv) in child.
// If a dup or exec fails, write the errno error to pipe.
// (Pipe is close-on-exec so if exec succeeds, it will be closed.)
// In the child, this function must not acquire any locks, because
// they might have been locked at the time of the fork. This means
// no rescheduling, no malloc calls, and no new stack segments.
// For the same reason compiler does not race instrument it.
// The calls to rawSyscall are okay because they are assembly
// functions that do not grow the stack.
func forkAndExecInChild(argv0 *c.Char, argv, envv **c.Char, chroot, dir *c.Char, attr *ProcAttr, sys *SysProcAttr, pipe int) (pid int, err1 Errno) {
	// Declare all variables at top in case any
	// declarations require heap allocation (e.g., err1).
	var (
		r1     uintptr
		nextfd int
		i      int
		cred   *Credential
		// err             error
		// pgrp            c.Int
		// ngroups, groups uintptr
	)

	rlim, rlimOK := origRlimitNofile.Load().(Rlimit)

	// guard against side effects of shuffling fds below.
	// Make sure that nextfd is beyond any currently open files so
	// that we can't run the risk of overwriting any of them.
	fd := make([]int, len(attr.Files))
	nextfd = len(attr.Files)
	for i, ufd := range attr.Files {
		if nextfd < int(ufd) {
			nextfd = int(ufd)
		}
		fd[i] = int(ufd)
	}
	nextfd++

	// About to call fork.
	// No more allocation or calls of non-assembly functions.
	// runtime_BeforeFork()
	r1, err1 = fork()
	if err1 != 0 {
		// runtime_AfterFork()
		return 0, err1
	}

	if r1 != 0 {
		// parent; return PID
		// runtime_AfterFork()
		return int(r1), 0
	}

	// Fork succeeded, now in child.

	// TODO(xsw): check this
	// Enable tracing if requested.
	if sys.Ptrace {
		/* TODO(xsw):
		if err = ptrace(PTRACE_TRACEME, 0, 0, 0); err != nil {
			err1 = err.(Errno)
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Ptrace")
	}

	// Session ID
	if sys.Setsid {
		/* TODO(xsw):
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_setsid_trampoline), 0, 0, 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Setsid")
	}

	// Set process group
	if sys.Setpgid || sys.Foreground {
		/* TODO(xsw):
		// Place child in process group.
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_setpgid_trampoline), 0, uintptr(sys.Pgid), 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Setpgid")
	}

	if sys.Foreground {
		/* TODO(xsw):
		// This should really be pid_t, however _C_int (aka int32) is
		// generally equivalent.
		pgrp = _C_int(sys.Pgid)
		if pgrp == 0 {
			r1, _, err1 = rawSyscall(abi.FuncPCABI0(libc_getpid_trampoline), 0, 0, 0)
			if err1 != 0 {
				goto childerror
			}
			pgrp = _C_int(r1)
		}

		// Place process group in foreground.
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_ioctl_trampoline), uintptr(sys.Ctty), uintptr(TIOCSPGRP), uintptr(unsafe.Pointer(&pgrp)))
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Foreground")
	}

	// Restore the signal mask. We do this after TIOCSPGRP to avoid
	// having the kernel send a SIGTTOU signal to the process group.
	// runtime_AfterForkInChild()

	// Chroot
	if chroot != nil {
		/* TODO(xsw):
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_chroot_trampoline), uintptr(unsafe.Pointer(chroot)), 0, 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - chroot")
	}

	// User and groups
	if cred = sys.Credential; cred != nil {
		/* TODO(xsw):
		ngroups = uintptr(len(cred.Groups))
		groups = uintptr(0)
		if ngroups > 0 {
			groups = uintptr(unsafe.Pointer(&cred.Groups[0]))
		}
		if !cred.NoSetGroups {
			_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_setgroups_trampoline), ngroups, groups, 0)
			if err1 != 0 {
				goto childerror
			}
		}
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_setgid_trampoline), uintptr(cred.Gid), 0, 0)
		if err1 != 0 {
			goto childerror
		}
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_setuid_trampoline), uintptr(cred.Uid), 0, 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Credential")
	}

	// Chdir
	if dir != nil {
		/* TODO(xsw):
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_chdir_trampoline), uintptr(unsafe.Pointer(dir)), 0, 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - dir")
	}

	// Pass 1: look for fd[i] < i and move those up above len(fd)
	// so that pass 2 won't stomp on an fd it needs later.
	if pipe < nextfd {
		/* TODO(xsw):
		if runtime.GOOS == "openbsd" {
			_, _, err1 = rawSyscall(dupTrampoline, uintptr(pipe), uintptr(nextfd), O_CLOEXEC)
		} else {
			_, _, err1 = rawSyscall(dupTrampoline, uintptr(pipe), uintptr(nextfd), 0)
			if err1 != 0 {
				goto childerror
			}
			_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_fcntl_trampoline), uintptr(nextfd), F_SETFD, FD_CLOEXEC)
		}
		if err1 != 0 {
			goto childerror
		}
		pipe = nextfd
		nextfd++
		*/
		panic("todo: syscall.forkAndExecInChild - pipe < nextfd")
	}
	for i = 0; i < len(fd); i++ {
		if fd[i] >= 0 && fd[i] < i {
			/* TODO(xsw):
			if nextfd == pipe { // don't stomp on pipe
				nextfd++
			}
			if runtime.GOOS == "openbsd" {
				_, _, err1 = rawSyscall(dupTrampoline, uintptr(fd[i]), uintptr(nextfd), O_CLOEXEC)
			} else {
				_, _, err1 = rawSyscall(dupTrampoline, uintptr(fd[i]), uintptr(nextfd), 0)
				if err1 != 0 {
					goto childerror
				}
				_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_fcntl_trampoline), uintptr(nextfd), F_SETFD, FD_CLOEXEC)
			}
			if err1 != 0 {
				goto childerror
			}
			fd[i] = nextfd
			nextfd++
			*/
			panic("todo: syscall.forkAndExecInChild - for fd")
		}
	}

	// Pass 2: dup fd[i] down onto i.
	for i = 0; i < len(fd); i++ {
		if fd[i] == -1 {
			os.Close(c.Int(i))
			continue
		}
		if fd[i] == i {
			// dup2(i, i) won't clear close-on-exec flag on Linux,
			// probably not elsewhere either.
			if ret := os.Fcntl(c.Int(fd[i]), syscall.F_SETFD, 0); ret < 0 {
				err1 = Errno(os.Errno())
				goto childerror
			}
			continue
		}
		// The new fd is created NOT close-on-exec,
		if ret := os.Dup2(c.Int(fd[i]), c.Int(i)); ret < 0 {
			err1 = Errno(os.Errno())
			goto childerror
		}
	}

	// By convention, we don't close-on-exec the fds we are
	// started with, so if len(fd) < 3, close 0, 1, 2 as needed.
	// Programs that know they inherit fds >= 3 will need
	// to set them close-on-exec.
	for i = len(fd); i < 3; i++ {
		os.Close(c.Int(i))
	}

	// Detach fd 0 from tty
	if sys.Noctty {
		/* TODO(xsw):
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_ioctl_trampoline), 0, uintptr(TIOCNOTTY), 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Noctty")
	}

	// Set the controlling TTY to Ctty
	if sys.Setctty {
		/* TODO(xsw):
		_, _, err1 = rawSyscall(abi.FuncPCABI0(libc_ioctl_trampoline), uintptr(sys.Ctty), uintptr(TIOCSCTTY), 0)
		if err1 != 0 {
			goto childerror
		}
		*/
		panic("todo: syscall.forkAndExecInChild - sys.Setctty")
	}

	// Restore original rlimit.
	if rlimOK && rlim.Cur != 0 {
		os.Setrlimit(syscall.RLIMIT_NOFILE, (*syscall.Rlimit)(&rlim))
	}

	// Time to exec.
	os.Execve(argv0, argv, envv)
	/* TODO(xsw):
	ret := os.Execve(argv0, argv, envv)
	if ret != 0 {
		err1 = Errno(ret)
	}
	*/

childerror:
	// send error code on pipe
	os.Write(c.Int(pipe), unsafe.Pointer(&err1), unsafe.Sizeof(err1))
	for {
		os.Exit(253)
	}
}

//go:build darwin || (openbsd && !mips64)

package syscall

/*
#include <sys/resource.h>  // RLIMIT_NOFILE, setrlimit
#include <stdlib.h>        // exit
#include <sys/ioctl.h>    // ioctl
#include <sys/ptrace.h>   // ptrace
#include <unistd.h>       // fork, chdir, chroot, dup, dup2, execve, getpid, setgid, setuid, write
#include <fcntl.h>        // FD_CLOEXEC, F_SETFD, O_CLOEXEC, fcntl
#include <sys/types.h>    // pid_t, uid_t, gid_t
#include <sys/wait.h>
#include <errno.h>        // errno

static int llgo_errno(void) {
	return errno;
}
static int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, arg);
}
static int llgo_ioctl(int fd, unsigned long request, uintptr_t arg) {
	return ioctl(fd, request, arg);
}

#if defined(openbsd)
static int llgo_dup3(int oldfd, int newfd, int flags) { return dup3(oldfd, newfd, flags); }
#else
static int llgo_dup3(int oldfd, int newfd, int flags) { return dup2(oldfd, newfd); }
#endif

*/
import "C"

import (
	"runtime"
	"syscall"
	"unsafe"
)

func runtime_BeforeFork()
func runtime_AfterFork()
func runtime_AfterForkInChild()

func forkAndExecInChild(argv0 *byte, argv, envv []*byte, chroot, dir *byte, attr *syscall.ProcAttr, sys *syscall.SysProcAttr, pipe int) (pid int, err syscall.Errno) {
	// Declare all variables at top in case any
	// declarations require heap allocation (e.g., err1).
	var (
		nextfd          int
		i               int
		pgrp            C.int
		cred            *syscall.Credential
		ngroups, groups uintptr
		rlim            syscall.Rlimit
	)

	if err := syscall.Setrlimit(syscall.RLIMIT_NOFILE, &syscall.Rlimit{Cur: 1024, Max: 1024}); err != nil {
		return 0, err.(syscall.Errno)
	}

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
	runtime_BeforeFork()
	pid = int(C.fork())
	if pid < 0 {
		err = syscall.Errno(C.llgo_errno())
		runtime_AfterFork()
		return 0, err
	}

	if pid != 0 {
		// parent; return PID
		runtime_AfterFork()
		return pid, 0
	}

	// Fork succeeded, now in child.

	// Enable tracing if requested.
	if sys.Ptrace {
		if ret := C.ptrace(syscall.PTRACE_TRACEME, 0, nil, 0); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Session ID
	if sys.Setsid {
		if ret := C.setsid(); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Set process group
	if sys.Setpgid || sys.Foreground {
		// Place child in process group.
		if ret := C.setpgid(0, C.pid_t(sys.Pgid)); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	if sys.Foreground {
		pgrp = C.int(sys.Pgid)
		if pgrp == 0 {
			pid := C.getpid()
			if pid < 0 {
				err = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			pgrp = C.int(pid)
		}

		// Place process group in foreground.
		if ret := C.llgo_ioctl(C.int(sys.Ctty), C.ulong(syscall.TIOCSPGRP), *(*C.uintptr_t)(unsafe.Pointer(&pgrp))); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Restore the signal mask. We do this after TIOCSPGRP to avoid
	// having the kernel send a SIGTTOU signal to the process group.
	runtime_AfterForkInChild()

	// Chroot
	if chroot != nil {
		if ret := C.chroot((*C.char)(unsafe.Pointer(chroot))); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// User and groups
	if cred = sys.Credential; cred != nil {
		ngroups = uintptr(len(cred.Groups))
		groups = uintptr(0)
		if ngroups > 0 {
			groups = uintptr(unsafe.Pointer(&cred.Groups[0]))
		}
		if !cred.NoSetGroups {
			if ret := C.setgroups(C.int(ngroups), *(**C.gid_t)(unsafe.Pointer(&groups))); ret < 0 {
				err = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}
		if ret := C.setgid(C.gid_t(cred.Gid)); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
		if ret := C.setuid(C.uid_t(cred.Uid)); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Chdir
	if dir != nil {
		if ret := C.chdir((*C.char)(unsafe.Pointer(dir))); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Pass 1: look for fd[i] < i and move those up above len(fd)
	// so that pass 2 won't stomp on an fd it needs later.
	if pipe < nextfd {
		var ret C.int
		if runtime.GOOS == "openbsd" {
			ret = C.llgo_dup3(C.int(pipe), C.int(nextfd), C.O_CLOEXEC)
		} else {
			ret = C.llgo_dup3(C.int(pipe), C.int(nextfd), 0)
			if ret < 0 {
				err = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			ret = C.llgo_fcntl(ret, C.F_SETFD, C.FD_CLOEXEC)
		}
		if ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
		pipe = nextfd
		nextfd++
	}
	for i = 0; i < len(fd); i++ {
		if fd[i] >= 0 && fd[i] < i {
			if nextfd == pipe { // don't stomp on pipe
				nextfd++
			}
			var ret C.int
			if runtime.GOOS == "openbsd" {
				ret = C.llgo_dup3(C.int(fd[i]), C.int(nextfd), C.O_CLOEXEC)
			} else {
				ret = C.llgo_dup3(C.int(fd[i]), C.int(nextfd), 0)
				if ret < 0 {
					err = syscall.Errno(C.llgo_errno())
					goto childerror
				}
				ret = C.llgo_fcntl(ret, C.F_SETFD, C.FD_CLOEXEC)
			}
			if ret < 0 {
				err = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			fd[i] = nextfd
			nextfd++
		}
	}

	// Pass 2: dup fd[i] down onto i.
	for i = 0; i < len(fd); i++ {
		if fd[i] == -1 {
			C.close(C.int(i))
			continue
		}
		if fd[i] == i {
			// dup2(i, i) won't clear close-on-exec flag on Linux,
			// probably not elsewhere either.
			if ret := C.llgo_fcntl(C.int(fd[i]), C.F_SETFD, 0); ret < 0 {
				err = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			continue
		}
		// The new fd is created NOT close-on-exec,
		// which is exactly what we want.
		if ret := C.llgo_dup3(C.int(fd[i]), C.int(i), 0); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// By convention, we don't close-on-exec the fds we are
	// started with, so if len(fd) < 3, close 0, 1, 2 as needed.
	// Programs that know they inherit fds >= 3 will need
	// to set them close-on-exec.
	for i = len(fd); i < 3; i++ {
		C.close(C.int(i))
	}

	// Detach fd 0 from tty
	if sys.Noctty {
		if ret := C.llgo_ioctl(0, C.ulong(syscall.TIOCNOTTY), 0); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Set the controlling TTY to Ctty
	if sys.Setctty {
		if ret := C.llgo_ioctl(C.int(sys.Ctty), C.ulong(syscall.TIOCSCTTY), 0); ret < 0 {
			err = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Restore original rlimit.
	syscall.Setrlimit(syscall.RLIMIT_NOFILE, (*syscall.Rlimit)(unsafe.Pointer(&rlim)))

	// Time to exec.
	if ret := C.execve((*C.char)(unsafe.Pointer(argv0)), (**C.char)(unsafe.Pointer(&argv[0])), (**C.char)(unsafe.Pointer(&envv[0]))); ret < 0 {
		err = syscall.Errno(C.llgo_errno())
	}

childerror:
	// send error code on pipe
	C.write(C.int(pipe), unsafe.Pointer(&err), C.size_t(unsafe.Sizeof(err)))
	for {
		C.exit(253)
	}
}

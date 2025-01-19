package syscall

/*
#cgo CFLAGS: -D_GNU_SOURCE

#include <features.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <errno.h>
#include <grp.h>
#include <signal.h>
#include <sched.h>
#include <linux/futex.h>
#include <linux/capability.h>
#include <linux/sched.h>    // Definition of struct clone_args
#include <sched.h>          // Definition of CLONE_* constants
#include <sys/syscall.h>    // Definition of SYS_* constants
#include <sys/ioctl.h>
#include <sys/ptrace.h>
#include <sys/prctl.h>
#include <sys/mount.h>

static int llgo_errno(void) {
	return errno;
}

static int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, arg);
}

static int sys_clone3(struct clone_args *a, size_t b) {
	// long syscall(SYS_clone3, struct clone_args *cl_args, size_t size);
	return syscall(SYS_clone3, a, b);
}

static int sys_clone(int flags1, int flags2, void *tid) {
	return syscall(SYS_clone, flags1, flags2, tid);
}

static int sys_capget(cap_user_header_t hdrp, cap_user_data_t datap) {
	return syscall(SYS_capget, hdrp, datap);
}

static int sys_capset(cap_user_header_t hdrp, cap_user_data_t datap) {
	return syscall(SYS_capset, hdrp, datap);
}

static int sys_ioctl(int fd, unsigned long op, unsigned long arg) {
	return syscall(SYS_ioctl, fd, op, arg);
}

static long sys_ptrace(enum __ptrace_request op, pid_t pid, void *addr, void *data) {
	return ptrace(op, pid, addr, data);
}

static int sys_prctl(int op, unsigned long arg1, unsigned long arg2, unsigned long arg3, unsigned long arg4, unsigned long arg5) {
	return prctl(op, arg1, arg2, arg3, arg4, arg5);
}

static int sys_openat(int dirfd, const char *pathname, int flags, mode_t mode) {
	return openat(dirfd, pathname, flags, mode);
}

static void sys_exit_group(int status) {
	syscall(SYS_exit_group, status);
}

#if defined(openbsd)
static int llgo_dup3(int oldfd, int newfd, int flags) {
	return dup3(oldfd, newfd, flags);
}
#else
static int llgo_dup3(int oldfd, int newfd, int flags) {
	return syscall(SYS_dup3, oldfd, newfd, flags);
}
#endif
*/
import "C"

import (
	"runtime"
	"syscall"
	"unsafe"
)

var (
	none  = [...]byte{'n', 'o', 'n', 'e', 0}
	slash = [...]byte{'/', 0}

	forceClone3 = false // Used by unit tests only.
)

func tgkill(tgid, tid, sig int) {
	C.tgkill(C.int(tgid), C.int(tid), C.int(sig))
}

func doCheckClonePidfd(pidfd *int32) (pid uintptr, errno syscall.Errno) {
	flags := uintptr(syscall.CLONE_VFORK | syscall.CLONE_VM | syscall.CLONE_PIDFD | syscall.SIGCHLD)
	if runtime.GOARCH == "s390x" {
		// On Linux/s390, the first two arguments of clone(2) are swapped.
		pid = uintptr(C.sys_clone(0, C.int(flags), unsafe.Pointer(pidfd)))
	} else {
		pid = uintptr(C.sys_clone(C.int(flags), 0, unsafe.Pointer(pidfd)))
	}
	errno = syscall.Errno(C.llgo_errno())
	if errno != 0 || pid != 0 {
		// If we're in the parent, we must return immediately
		// so we're not in the same stack frame as the child.
		// This can at most use the return PC, which the child
		// will not modify, and the results of
		// rawVforkSyscall, which must have been written after
		// the child was replaced.
		return
	}

	for {
		C.sys_exit_group(0)
	}
}

func runtime_BeforeFork()
func runtime_AfterFork()
func runtime_AfterForkInChild()

func writeUidGidMappings(pid int, sys *syscall.SysProcAttr) error
func formatIDMappings(idMap []syscall.SysProcIDMap) []byte
func forkExecPipe(p []int) error

// See CAP_TO_INDEX in linux/capability.h:
func capToIndex(cap uintptr) uintptr { return cap >> 5 }

// See CAP_TO_MASK in linux/capability.h:
func capToMask(cap uintptr) uint32 { return 1 << uint(cap&31) }

func forkAndExecInChild(argv0 *byte, argv, envv []*byte, chroot, dir *byte, attr *syscall.ProcAttr, sys *syscall.SysProcAttr, pipe int) (pid int, err syscall.Errno) {
	// Set up and fork. This returns immediately in the parent or
	// if there's an error.
	upid, pidfd, err, mapPipe, locked := forkAndExecInChild1(argv0, argv, envv, chroot, dir, attr, sys, pipe)
	if locked {
		runtime_AfterFork()
	}
	if err != 0 {
		return 0, err
	}

	// parent; return PID
	pid = int(upid)
	if sys.PidFD != nil {
		*sys.PidFD = int(pidfd)
	}

	if sys.UidMappings != nil || sys.GidMappings != nil {
		C.close(C.int(mapPipe[0]))
		var err2 syscall.Errno
		// uid/gid mappings will be written after fork and unshare(2) for user
		// namespaces.
		if sys.Unshareflags&syscall.CLONE_NEWUSER == 0 {
			if err := writeUidGidMappings(pid, sys); err != nil {
				err2 = err.(syscall.Errno)
			}
		}
		C.write(C.int(mapPipe[1]), unsafe.Pointer(&err2), C.size_t(unsafe.Sizeof(err2)))
		C.close(C.int(mapPipe[1]))
	}

	return pid, 0
}

type capHeader struct {
	version uint32
	pid     int32
}

type capData struct {
	effective   uint32
	permitted   uint32
	inheritable uint32
}
type caps struct {
	hdr  capHeader
	data [2]capData
}

// cloneArgs holds arguments for clone3 Linux syscall.
type cloneArgs struct {
	flags      uint64 // Flags bit mask
	pidFD      uint64 // Where to store PID file descriptor (int *)
	childTID   uint64 // Where to store child TID, in child's memory (pid_t *)
	parentTID  uint64 // Where to store child TID, in parent's memory (pid_t *)
	exitSignal uint64 // Signal to deliver to parent on child termination
	stack      uint64 // Pointer to lowest byte of stack
	stackSize  uint64 // Size of stack
	tls        uint64 // Location of new TLS
	setTID     uint64 // Pointer to a pid_t array (since Linux 5.5)
	setTIDSize uint64 // Number of elements in set_tid (since Linux 5.5)
	cgroup     uint64 // File descriptor for target cgroup of child (since Linux 5.7)
}

// forkAndExecInChild1 implements the body of forkAndExecInChild up to
// the parent's post-fork path. This is a separate function so we can
// separate the child's and parent's stack frames if we're using
// vfork.
//
// This is go:noinline because the point is to keep the stack frames
// of this and forkAndExecInChild separate.
//
//go:noinline
//go:norace
//go:nocheckptr
func forkAndExecInChild1(argv0 *byte, argv, envv []*byte, chroot, dir *byte, attr *syscall.ProcAttr, sys *syscall.SysProcAttr, pipe int) (pid uintptr, pidfd int32, err1 syscall.Errno, mapPipe [2]int, locked bool) {
	// Defined in linux/prctl.h starting with Linux 4.3.
	const (
		PR_CAP_AMBIENT       = 0x2f
		PR_CAP_AMBIENT_RAISE = 0x2
		_AT_FDCWD            = -0x64
	)

	// vfork requires that the child not touch any of the parent's
	// active stack frames. Hence, the child does all post-fork
	// processing in this stack frame and never returns, while the
	// parent returns immediately from this frame and does all
	// post-fork processing in the outer frame.
	//
	// Declare all variables at top in case any
	// declarations require heap allocation (e.g., err2).
	// ":=" should not be used to declare any variable after
	// the call to runtime_BeforeFork.
	//
	// NOTE(bcmills): The allocation behavior described in the above comment
	// seems to lack a corresponding test, and it may be rendered invalid
	// by an otherwise-correct change in the compiler.
	var (
		err2                      syscall.Errno
		nextfd                    int
		i                         int
		caps                      caps
		fd1, flags                uintptr
		puid, psetgroups, pgid    []byte
		uidmap, setgroups, gidmap []byte
		clone3                    *cloneArgs
		pgrp                      int32
		dirfd                     int
		cred                      *syscall.Credential
		ngroups, groups           uintptr
		c                         uintptr
	)
	pidfd = -1

	var _rlimit syscall.Rlimit
	var rlim *syscall.Rlimit
	if syscall.Getrlimit(syscall.RLIMIT_NOFILE, &_rlimit) == nil {
		rlim = &_rlimit
	}

	if sys.UidMappings != nil {
		puid = []byte("/proc/self/uid_map\000")
		uidmap = formatIDMappings(sys.UidMappings)
	}

	if sys.GidMappings != nil {
		psetgroups = []byte("/proc/self/setgroups\000")
		pgid = []byte("/proc/self/gid_map\000")

		if sys.GidMappingsEnableSetgroups {
			setgroups = []byte("allow\000")
		} else {
			setgroups = []byte("deny\000")
		}
		gidmap = formatIDMappings(sys.GidMappings)
	}

	// Record parent PID so child can test if it has died.
	ppid := uintptr(syscall.Getpid())

	// Guard against side effects of shuffling fds below.
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

	// Allocate another pipe for parent to child communication for
	// synchronizing writing of User ID/Group ID mappings.
	if sys.UidMappings != nil || sys.GidMappings != nil {
		if err := forkExecPipe(mapPipe[:]); err != nil {
			err1 = err.(syscall.Errno)
			return
		}
	}

	flags = sys.Cloneflags
	if sys.Cloneflags&syscall.CLONE_NEWUSER == 0 && sys.Unshareflags&syscall.CLONE_NEWUSER == 0 {
		flags |= syscall.CLONE_VFORK | syscall.CLONE_VM
	}
	if sys.PidFD != nil {
		flags |= syscall.CLONE_PIDFD
	}
	// Whether to use clone3.
	if sys.UseCgroupFD || flags&syscall.CLONE_NEWTIME != 0 || forceClone3 {
		clone3 = &cloneArgs{
			flags:      uint64(flags),
			exitSignal: uint64(syscall.SIGCHLD),
		}
		if sys.UseCgroupFD {
			clone3.flags |= syscall.CLONE_INTO_CGROUP
			clone3.cgroup = uint64(sys.CgroupFD)
		}
		if sys.PidFD != nil {
			clone3.pidFD = uint64(uintptr(unsafe.Pointer(&pidfd)))
		}
	}

	// About to call fork.
	// No more allocation or calls of non-assembly functions.
	runtime_BeforeFork()
	locked = true
	if clone3 != nil {
		_pid := C.sys_clone3((*C.struct_clone_args)(unsafe.Pointer(clone3)), C.size_t(unsafe.Sizeof(*clone3)))
		if _pid < 0 {
			err1 = syscall.Errno(-pid)
		}
		pid = uintptr(_pid)
	} else {
		// N.B. Keep in sync with doCheckClonePidfd.
		flags |= uintptr(syscall.SIGCHLD)
		var _pid C.int
		if runtime.GOARCH == "s390x" {
			// On Linux/s390, the first two arguments of clone(2) are swapped.
			_pid = C.sys_clone(0, C.int(flags), unsafe.Pointer(&pidfd))
		} else {
			_pid = C.sys_clone(C.int(flags), 0, unsafe.Pointer(&pidfd))
		}
		if _pid < 0 {
			err1 = syscall.Errno(-pid)
		}
		pid = uintptr(_pid)
	}
	if err1 != 0 || pid != 0 {
		// If we're in the parent, we must return immediately
		// so we're not in the same stack frame as the child.
		// This can at most use the return PC, which the child
		// will not modify, and the results of
		// rawVforkSyscall, which must have been written after
		// the child was replaced.
		return
	}

	// Fork succeeded, now in child.

	// Enable the "keep capabilities" flag to set ambient capabilities later.
	if len(sys.AmbientCaps) > 0 {
		if C.sys_prctl(syscall.PR_SET_KEEPCAPS, 1, 0, 0, 0, 0) < 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Wait for User ID/Group ID mappings to be written.
	if sys.UidMappings != nil || sys.GidMappings != nil {
		if ret := C.close(C.int(mapPipe[0])); ret != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
		pid = uintptr(C.read(C.int(mapPipe[1]), unsafe.Pointer(&err2), C.size_t(unsafe.Sizeof(err2))))
		err1 = syscall.Errno(C.llgo_errno())
		if err1 != 0 {
			goto childerror
		}
		if pid != unsafe.Sizeof(err2) {
			err1 = syscall.EINVAL
			goto childerror
		}
		if err2 != 0 {
			err1 = err2
			goto childerror
		}
	}

	// Session ID
	if sys.Setsid {
		if C.setsid() != 0 {
			goto childerror
		}
	}

	// Set process group
	if sys.Setpgid || sys.Foreground {
		// Place child in process group.
		if C.setpgid(0, C.pid_t(sys.Pgid)) != 0 {
			goto childerror
		}
	}

	if sys.Foreground {
		pgrp = int32(sys.Pgid)
		if pgrp == 0 {
			pid = uintptr(C.getpid())

			pgrp = int32(pid)
		}

		// Place process group in foreground.
		if C.sys_ioctl(C.int(sys.Ctty), C.ulong(syscall.TIOCSPGRP), *(*C.ulong)(unsafe.Pointer(&pgrp))) != 0 {
			err1 = syscall.Errno(-pid)
			goto childerror
		}
	}

	// Restore the signal mask. We do this after TIOCSPGRP to avoid
	// having the kernel send a SIGTTOU signal to the process group.
	runtime_AfterForkInChild()

	// Unshare
	if sys.Unshareflags != 0 {
		if C.unshare(C.int(sys.Unshareflags)) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}

		if sys.Unshareflags&syscall.CLONE_NEWUSER != 0 && sys.GidMappings != nil {
			dirfd = int(_AT_FDCWD)
			_fd1 := C.sys_openat(C.int(dirfd), (*C.char)(unsafe.Pointer(&psetgroups[0])), C.int(syscall.O_WRONLY), 0)
			if _fd1 < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			fd1 = uintptr(_fd1)
			_pid := C.write(C.int(fd1), unsafe.Pointer(&setgroups[0]), C.size_t(len(setgroups)))
			pid = uintptr(_pid)
			if _pid < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			if C.close(C.int(fd1)) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}

			_fd1 = C.sys_openat(C.int(dirfd), (*C.char)(unsafe.Pointer(&pgid[0])), C.int(syscall.O_WRONLY), 0)
			fd1 = uintptr(_fd1)
			if _fd1 < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			_pid = C.write(C.int(fd1), unsafe.Pointer(&gidmap[0]), C.size_t(len(gidmap)))
			pid = uintptr(_pid)
			if _pid < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			if C.close(C.int(fd1)) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}

		if sys.Unshareflags&syscall.CLONE_NEWUSER != 0 && sys.UidMappings != nil {
			dirfd = int(_AT_FDCWD)
			_fd1 := C.sys_openat(C.int(dirfd), (*C.char)(unsafe.Pointer(&puid[0])), C.int(syscall.O_WRONLY), 0)
			fd1 = uintptr(_fd1)
			if _fd1 < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			_pid := C.write(C.int(fd1), unsafe.Pointer(&uidmap[0]), C.size_t(len(uidmap)))
			pid = uintptr(_pid)
			if _pid < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			if C.close(C.int(fd1)) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}

		// The unshare system call in Linux doesn't unshare mount points
		// mounted with --shared. Systemd mounts / with --shared. For a
		// long discussion of the pros and cons of this see debian bug 739593.
		// The Go model of unsharing is more like Plan 9, where you ask
		// to unshare and the namespaces are unconditionally unshared.
		// To make this model work we must further mark / as MS_PRIVATE.
		// This is what the standard unshare command does.
		if sys.Unshareflags&syscall.CLONE_NEWNS == syscall.CLONE_NEWNS {
			if C.mount((*C.char)(unsafe.Pointer(&none[0])), (*C.char)(unsafe.Pointer(&slash[0])), nil, C.ulong(syscall.MS_REC|syscall.MS_PRIVATE), nil) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}
	}

	// Chroot
	if chroot != nil {
		if C.chroot((*C.char)(unsafe.Pointer(chroot))) != 0 {
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
		if !(sys.GidMappings != nil && !sys.GidMappingsEnableSetgroups && ngroups == 0) && !cred.NoSetGroups {
			if C.setgroups(C.size_t(ngroups), (*C.gid_t)(unsafe.Pointer(groups))) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}
		if C.setgid(C.gid_t(cred.Gid)) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
		if C.setuid(C.uid_t(cred.Uid)) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	if len(sys.AmbientCaps) != 0 {
		// Ambient capabilities were added in the 4.3 kernel,
		// so it is safe to always use _LINUX_CAPABILITY_VERSION_3.
		caps.hdr.version = C._LINUX_CAPABILITY_VERSION_3

		if C.sys_capget(C.cap_user_header_t(unsafe.Pointer(&caps.hdr)), C.cap_user_data_t(unsafe.Pointer(&caps.data[0]))) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}

		for _, c = range sys.AmbientCaps {
			// Add the c capability to the permitted and inheritable capability mask,
			// otherwise we will not be able to add it to the ambient capability mask.
			caps.data[capToIndex(c)].permitted |= capToMask(c)
			caps.data[capToIndex(c)].inheritable |= capToMask(c)
		}

		if C.sys_capset(C.cap_user_header_t(unsafe.Pointer(&caps.hdr)), C.cap_user_data_t(unsafe.Pointer(&caps.data[0]))) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}

		for _, c = range sys.AmbientCaps {
			if C.sys_prctl(C.PR_CAP_AMBIENT, C.PR_CAP_AMBIENT_RAISE, C.ulong(c), 0, 0, 0) < 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}
	}

	// Chdir
	if dir != nil {
		if C.chdir((*C.char)(unsafe.Pointer(dir))) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Parent death signal
	if sys.Pdeathsig != 0 {
		if C.sys_prctl(syscall.PR_SET_PDEATHSIG, C.ulong(sys.Pdeathsig), 0, 0, 0, 0) < 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}

		// Signal self if parent is already dead. This might cause a
		// duplicate signal in rare cases, but it won't matter when
		// using SIGKILL.
		pid = uintptr(C.getppid())
		if pid != ppid {
			pid = uintptr(C.getpid())
			if C.kill(C.pid_t(pid), C.int(sys.Pdeathsig)) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
		}
	}

	// Pass 1: look for fd[i] < i and move those up above len(fd)
	// so that pass 2 won't stomp on an fd it needs later.
	if pipe < nextfd {
		if C.llgo_dup3(C.int(pipe), C.int(nextfd), C.int(syscall.O_CLOEXEC)) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
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
			if C.llgo_dup3(C.int(fd[i]), C.int(nextfd), C.int(syscall.O_CLOEXEC)) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
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
			if C.llgo_fcntl(C.int(i), C.int(syscall.F_SETFD), 0) != 0 {
				err1 = syscall.Errno(C.llgo_errno())
				goto childerror
			}
			continue
		}
		// The new fd is created NOT close-on-exec,
		// which is exactly what we want.
		if C.llgo_dup3(C.int(fd[i]), C.int(i), 0) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
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
		if C.sys_ioctl(C.int(0), C.ulong(syscall.TIOCNOTTY), 0) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Set the controlling TTY to Ctty
	if sys.Setctty {
		if C.sys_ioctl(C.int(sys.Ctty), C.ulong(syscall.TIOCSCTTY), 1) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Restore original rlimit.
	if rlim != nil {
		syscall.Setrlimit(syscall.RLIMIT_NOFILE, rlim)
	}

	// Enable tracing if requested.
	// Do this right before exec so that we don't unnecessarily trace the runtime
	// setting up after the fork. See issue #21428.
	if sys.Ptrace {
		if C.sys_ptrace(C.PTRACE_TRACEME, 0, nil, nil) != 0 {
			err1 = syscall.Errno(C.llgo_errno())
			goto childerror
		}
	}

	// Time to exec.
	if C.execvpe((*C.char)(unsafe.Pointer(argv0)), (**C.char)(unsafe.Pointer(&argv[0])), (**C.char)(unsafe.Pointer(&envv[0]))) != 0 {
		err1 = syscall.Errno(C.llgo_errno())
		goto childerror
	}

childerror:
	// send error code on pipe
	C.write((C.int)(pipe), unsafe.Pointer(&err1), (C.ulong)(unsafe.Sizeof(err1)))
	for {
		syscall.Exit(253)
	}
}

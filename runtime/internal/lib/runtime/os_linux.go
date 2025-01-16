package runtime

/*
#cgo CFLAGS: -D_GNU_SOURCE

#include <features.h>
#include <stdbool.h>
#include <stdint.h>
#include <signal.h>
#include <unistd.h>
#include <time.h>
#include <sys/time.h>
#include <fcntl.h>
#include <errno.h>
#include <linux/futex.h>
#include <sys/syscall.h>
#include <sys/epoll.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/mman.h>

static int llgo_errno(void) {
	return errno;
}

static int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, arg);
}

static void sigreturn__sigaction() {
	syscall(SYS_rt_sigreturn);
}

static int rt_sigaction(int sig, void* old, void* new, void* size) {
	return syscall(SYS_rt_sigaction, sig, old, new, size);
}

static void rt_sigprocmask(int how, void* new, void* old, int size) {
    long ret = syscall(SYS_rt_sigprocmask, how, new, old, size);
    if (ret <= -4095) {  // 0xfffffffffffff001
        *(int*)0xf1 = 0xf1;  // crash
    }
}

static long sys_futex(uint32_t *uaddr, int futex_op, uint32_t val,
                    const struct timespec *timeout,
                    uint32_t *uaddr2, uint32_t val3) {
	return syscall(SYS_futex, uaddr, futex_op, val, timeout, uaddr2, val3);
}

static void sys_sched_yield() {
	syscall(SYS_sched_yield);
}

static void sys_setitimer(int mode, struct itimerval *new, struct itimerval *old) {
	syscall(SYS_setitimer, mode, new, old);
}
*/
import "C"
import (
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/lib/internal/runtime/atomic"
)

var iscgo bool

// llgo:skip newosproc
type sigset [2]uint32

type sigactiont struct {
	sa_handler  uintptr
	sa_flags    uint32
	sa_restorer uintptr
	sa_mask     uint64
}

type mOS struct {
	// profileTimer holds the ID of the POSIX interval timer for profiling CPU
	// usage on this thread.
	//
	// It is valid when the profileTimerValid field is true. A thread
	// creates and manages its own timer, and these fields are read and written
	// only by this thread. But because some of the reads on profileTimerValid
	// are in signal handling code, this field should be atomic type.
	profileTimer      int32
	profileTimerValid atomic.Bool

	// needPerThreadSyscall indicates that a per-thread syscall is required
	// for doAllThreadsSyscall.
	needPerThreadSyscall atomic.Uint8
}

//go:linkname sigfillset runtime.sigfillset
func sigfillset(mask *uint64)

// just avoid LLGo binop untyped bug: https://github.com/goplus/llgo/issues/961
func setsigstack(i uint32) {
	var sa sigactiont
	sigaction(i, nil, &sa)
	if sa.sa_flags&C.SA_ONSTACK != 0 {
		return
	}
	sa.sa_flags |= uint32(C.SA_ONSTACK)
	sigaction(i, &sa, nil)
}

func rt_sigaction(sig uintptr, new, old *sigactiont, size uintptr) int32 {
	return int32(C.rt_sigaction(C.int(sig), unsafe.Pointer(new), unsafe.Pointer(old), unsafe.Pointer(&size)))
}

func rtsigprocmask(how int32, new, old *sigset, size int32) {
	C.rt_sigprocmask(C.int(how), unsafe.Pointer(new), unsafe.Pointer(old), C.int(size))
}

type sigeventFields struct {
	value  uintptr
	signo  int32
	notify int32
	// below here is a union; sigev_notify_thread_id is the only field we use
	sigev_notify_thread_id int32
}

const (
	_sigev_max_size = 64
)

type timespec struct {
	tv_sec  int
	tv_nsec int
}

type itimerspec struct {
	it_interval timespec
	it_value    timespec
}

type sigevent struct {
	sigeventFields

	// Pad struct to the max size in the kernel.
	_ [_sigev_max_size - unsafe.Sizeof(sigeventFields{})]byte
}

func timer_create(clockid int32, sevp *sigevent, timerid *int32) int32 {
	return int32(C.timer_create(C.clockid_t(clockid), (*C.struct_sigevent)(unsafe.Pointer(sevp)), (*C.timer_t)(unsafe.Pointer(timerid))))
}

func timer_settime(timerid int32, flags int32, new, old *itimerspec) int32 {
	return int32(C.timer_settime(*(*C.timer_t)(unsafe.Pointer(&timerid)), C.int(flags), (*C.struct_itimerspec)(unsafe.Pointer(new)), (*C.struct_itimerspec)(unsafe.Pointer(old))))
}

func timer_delete(timerid int32) int32 {
	return int32(C.timer_delete(*(*C.timer_t)(unsafe.Pointer(&timerid))))
}

func setitimer(mode int32, new, old *itimerval) {
	C.sys_setitimer(C.int(mode), (*C.struct_itimerval)(unsafe.Pointer(new)), (*C.struct_itimerval)(unsafe.Pointer(old)))
}

//go:linkname time_now time.now
func time_now() (sec int64, nsec int32, mono int64) {
	sec, nsec = walltime()
	return sec, nsec, nanotime1()
}

func walltime() (int64, int32) {
	var t timespec
	C.clock_gettime(C.CLOCK_REALTIME, (*C.struct_timespec)(unsafe.Pointer(&t)))
	return int64(t.tv_sec), int32(t.tv_nsec)
}

func futex(addr unsafe.Pointer, op int32, val uint32, ts, addr2 unsafe.Pointer, val3 uint32) int32 {
	return int32(C.sys_futex((*C.uint32_t)(addr), C.int(op), C.uint(val), (*C.struct_timespec)(ts), (*C.uint32_t)(addr2), C.uint(val3)))
}

func tgkill(tgid, tid, sig int) {
	C.tgkill(C.int(tgid), C.int(tid), C.int(sig))
}

func fcntl(fd, cmd, arg int32) (ret int32, errno int32) {
	ret = int32(C.llgo_fcntl(C.int(fd), C.int(cmd), C.uintptr_t(arg)))
	errno = int32(C.llgo_errno())
	return
}

func mprotect(addr unsafe.Pointer, n uintptr, prot int32) (ret int32, errno int32) {
	ret = int32(C.mprotect(addr, C.size_t(n), C.int(prot)))
	errno = int32(C.llgo_errno())
	return
}

func osyield() {

}

func sigreturn__sigaction() {
	C.sigreturn__sigaction()
}

func clone(flags int32, stk, mp, gp, fn unsafe.Pointer) int32 {
	panic("todo: clone")
}

func open(name *byte, mode, perm int32) int32 {
	panic("todo: open")
}

func closefd(fd int32) int32 {
	return int32(C.close(C.int(fd)))
}

func sched_getaffinity(pid, len uintptr, buf *byte) int32 {
	panic("todo: sched_getaffinity")
}

func mincore(addr unsafe.Pointer, n uintptr, dst *byte) int32 {
	return int32(C.mincore(addr, C.size_t(n), (*C.uint8_t)(dst)))
}

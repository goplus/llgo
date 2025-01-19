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

package runtime

/*
#include <unistd.h>
#include <stdlib.h>
#include <pthread.h>
#include <notify.h>
#include <errno.h>
#include <fcntl.h>
#include <time.h>
#include <signal.h>
#include <xpc/xpc.h>
#include <sys/time.h>
#include <sys/event.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/sysctl.h>

static int llgo_errno(void) {
	return errno;
}

static void llgo_reset_errno() {
	errno = 0;
}

static int llgo_fcntl(int fd, int cmd, uintptr_t arg) {
	return fcntl(fd, cmd, arg);
}

static void os_init_hack(int token) {
	notify_is_valid_token(token);
	(void)xpc_date_create_from_current();
}
*/
import "C"

import (
	"runtime"
	"unsafe"
)

type sigset uint32

type mOS struct {
	initialized bool
	mutex       pthreadmutex
	cond        pthreadcond
	count       int
}

// type _panic struct {
// 	argp unsafe.Pointer // pointer to arguments of deferred call run during panic; cannot move - known to liblink
// 	arg  any            // argument to panic
// 	link *_panic        // link to earlier panic

// 	// startPC and startSP track where _panic.start was called.
// 	startPC uintptr
// 	startSP unsafe.Pointer

// 	// The current stack frame that we're running deferred calls for.
// 	sp unsafe.Pointer
// 	lr uintptr
// 	fp unsafe.Pointer

// 	// retpc stores the PC where the panic should jump back to, if the
// 	// function last returned by _panic.next() recovers the panic.
// 	retpc uintptr

// 	// Extra state for handling open-coded defers.
// 	deferBitsPtr *uint8
// 	slotsPtr     unsafe.Pointer

// 	recovered   bool // whether this panic has been recovered
// 	goexit      bool
// 	deferreturn bool
// }

type timeval struct {
	tv_sec  int64
	tv_usec int64
}

type itimerval struct {
	it_interval timeval
	it_value    timeval
}

type timespec struct {
	tv_sec  int64
	tv_nsec int64
}

func setitimer(mode int32, new, old *itimerval) {
	C.setitimer(C.int(mode), (*C.struct_itimerval)(unsafe.Pointer(new)), (*C.struct_itimerval)(unsafe.Pointer(old)))
}

func walltime() (int64, int32) {
	var ts timespec
	C.clock_gettime(C.CLOCK_REALTIME, (*C.struct_timespec)(unsafe.Pointer(&ts)))
	return ts.tv_sec, int32(ts.tv_nsec)
}

type pthread uintptr
type pthreadattr struct {
	X__sig    int64
	X__opaque [56]int8
}
type pthreadmutex struct {
	X__sig    int64
	X__opaque [56]int8
}
type pthreadmutexattr struct {
	X__sig    int64
	X__opaque [8]int8
}
type pthreadcond struct {
	X__sig    int64
	X__opaque [40]int8
}
type pthreadcondattr struct {
	X__sig    int64
	X__opaque [8]int8
}

func pthread_attr_init(attr *pthreadattr) int32 {
	return int32(C.pthread_attr_init((*C.pthread_attr_t)(unsafe.Pointer(attr))))
}

func pthread_attr_getstacksize(attr *pthreadattr, size *uintptr) int32 {
	var sz C.size_t
	ret := int32(C.pthread_attr_getstacksize((*C.pthread_attr_t)(unsafe.Pointer(attr)), (*C.size_t)(unsafe.Pointer(&sz))))
	if ret != 0 {
		*size = uintptr(sz)
	}
	return ret
}

func pthread_attr_setdetachstate(attr *pthreadattr, state int) int32 {
	return int32(C.pthread_attr_setdetachstate((*C.pthread_attr_t)(unsafe.Pointer(attr)), C.int(state)))
}

func pthread_cond_init(c *pthreadcond, attr *pthreadcondattr) int32 {
	return int32(C.pthread_cond_init((*C.pthread_cond_t)(unsafe.Pointer(c)), (*C.pthread_condattr_t)(unsafe.Pointer(attr))))
}

func pthread_cond_signal(c *pthreadcond) int32 {
	return int32(C.pthread_cond_signal((*C.pthread_cond_t)(unsafe.Pointer(c))))
}

func pthread_cond_timedwait_relative_np(c *pthreadcond, m *pthreadmutex, t *timespec) int32 {
	return int32(C.pthread_cond_timedwait((*C.pthread_cond_t)(unsafe.Pointer(c)), (*C.pthread_mutex_t)(unsafe.Pointer(m)), (*C.struct_timespec)(unsafe.Pointer(t))))
}

func pthread_cond_wait(c *pthreadcond, m *pthreadmutex) int32 {
	return int32(C.pthread_cond_wait((*C.pthread_cond_t)(unsafe.Pointer(c)), (*C.pthread_mutex_t)(unsafe.Pointer(m))))
}

func pthread_create(attr *pthreadattr, start uintptr, arg unsafe.Pointer) int32 {
	var thread pthread
	return int32(C.pthread_create((*C.pthread_t)(unsafe.Pointer(&thread)), (*C.pthread_attr_t)(unsafe.Pointer(attr)), (*[0]byte)(unsafe.Pointer(start)), arg))
}

func pthread_kill(t pthread, sig int32) int32 {
	return int32(C.pthread_kill((C.pthread_t)(unsafe.Pointer(t)), C.int(sig)))
}

func pthread_mutex_init(m *pthreadmutex, attr *pthreadmutexattr) int32 {
	return int32(C.pthread_mutex_init((*C.pthread_mutex_t)(unsafe.Pointer(m)), (*C.pthread_mutexattr_t)(unsafe.Pointer(attr))))
}

func pthread_mutex_lock(m *pthreadmutex) int32 {
	return int32(C.pthread_mutex_lock((*C.pthread_mutex_t)(unsafe.Pointer(m))))
}

func pthread_mutex_unlock(m *pthreadmutex) int32 {
	return int32(C.pthread_mutex_unlock((*C.pthread_mutex_t)(unsafe.Pointer(m))))
}

func fcntl(fd int, cmd int, arg int) (val int32, errno int32) {
	ret := C.llgo_fcntl(C.int(fd), C.int(cmd), C.uintptr_t(arg))
	val = int32(ret)
	errno = int32(C.llgo_errno())
	return
}

type keventt struct {
	ident  uint64
	filter int16
	flags  uint16
	fflags uint32
	data   int64
	udata  *byte
}

func kevent(kq int32, ch *keventt, nch int32, ev *keventt, nev int32, ts *timespec) int32 {
	return int32(C.kevent(C.int(kq), (*C.struct_kevent)(unsafe.Pointer(ch)), C.int(nch), (*C.struct_kevent)(unsafe.Pointer(ev)), C.int(nev), (*C.struct_timespec)(unsafe.Pointer(ts))))
}

func kqueue() int32 {
	return int32(C.kqueue())
}

func sysctl(mib *uint32, miblen uint32, oldp *byte, oldlenp *uintptr, newp *byte, newlen uintptr) int32 {
	return int32(C.sysctl((*C.int)(unsafe.Pointer(mib)), C.uint(miblen), unsafe.Pointer(oldp), (*C.size_t)(unsafe.Pointer(oldlenp)), unsafe.Pointer(newp), C.size_t(newlen)))
}

type usigactiont struct {
	__sigaction_u [8]byte
	sa_mask       uint32
	sa_flags      int32
}

func sigaction(sig uint32, new *usigactiont, old *usigactiont) {
	C.sigaction(C.int(sig), (*C.struct_sigaction)(unsafe.Pointer(new)), (*C.struct_sigaction)(unsafe.Pointer(old)))
}

func sigprocmask(how uint32, new *sigset, old *sigset) {
	C.sigprocmask(C.int(how), (*C.sigset_t)(unsafe.Pointer(new)), (*C.sigset_t)(unsafe.Pointer(old)))
}

func osinit_hack() {
	if runtime.GOOS == "darwin" { // not ios
		C.os_init_hack(0)
	}
	return
}

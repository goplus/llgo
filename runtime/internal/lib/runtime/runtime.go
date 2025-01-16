package runtime

/*
#cgo darwin CFLAGS: -DDARWIN
#cgo linux CFLAGS: -DLINUX
#cgo windows CFLAGS: -DWINDOWS

#include <stdint.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <signal.h>
#include <time.h>
#include <errno.h>

 #ifdef DARWIN
 #include <mach/mach_time.h>

uint64_t nanotime() {
	static mach_timebase_info_data_t timebase;
	static int timebase_initialized = 0;

	if (!timebase_initialized) {
		mach_timebase_info(&timebase);
		timebase_initialized = 1;
	}

	uint64_t time = mach_absolute_time();
	return time * timebase.numer / timebase.denom;
}

#elif defined(LINUX)
#include <time.h>

uint64_t nanotime() {
	struct timespec ts;
	clock_gettime(CLOCK_MONOTONIC, &ts);
	return (uint64_t)ts.tv_sec * 1000000000 + (uint64_t)ts.tv_nsec;
}

#elif defined(WINDOWS)
#include <windows.h>

uint64_t nanotime() {
	LARGE_INTEGER counter, frequency;
	QueryPerformanceCounter(&counter);
	QueryPerformanceFrequency(&frequency);
	return counter.QuadPart * 1000000000ULL / frequency.QuadPart;
}
#endif
*/
import "C"

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

// llgo:skip main preprintpanics fatalpanic printpanics acquirem allocm atomicwb acquireSudog chansend chanrecv addfinalizer adjustpointers asyncPreempt2 badPointer bulkBarrierPreWrite bulkBarrierBitmap bulkBarrierPreWriteSrcOnly makeslicecopy growslice callCgoSymbolizer expandCgoFrames traceback2 printCgoTraceback printOneCgoTraceback canpanic cgoBindM needAndBindM cgoCheckPtrWrite cgoContextPCs cgoNoCallback SetCgoTraceback cgocall cgocallbackg cgocallbackg1 cheaprand checkptrBase
type RegArgs struct{}

// GOROOT returns the root of the Go tree. It uses the
// GOROOT environment variable, if set at process start,
// or else the root used during the Go build.
func GOROOT() string {
	/*
		 s := gogetenv("GOROOT")
		 if s != "" {
			 return s
		 }
		 return defaultGOROOT
	*/
	panic("todo: GOROOT")
}

func GC() {
	panic("todo: GC")
}

func Goexit() {
	C.pthread_exit(nil)
}

func LockOSThread() {
}

func UnlockOSThread() {
}

func gogo(buf *gobuf) {
	panic("todo: gogo")
}

func deferreturn() {
	panic("deferreturn")
}

func gopanic(e any) {
	panic("gopanic")
}

func exit(code int32) {
	C.exit(C.int(code))
}

func usleep(usec uint32) {
	C.usleep(C.uint(usec))
}

func usleep_no_g(usec uint32) {
	C.usleep(C.uint(usec))
}

func write(fd uintptr, p unsafe.Pointer, n int32) int32 {
	return int32(C.write(C.int(fd), p, C.size_t(n)))
}

//go:linkname memmove C.memmove
func memmove(dst, src unsafe.Pointer, size uintptr)

func getcallerpc() uintptr {
	panic("todo: getcallerpc")
}

func getcallersp() uintptr {
	panic("todo: getcallersp")
}

func systemstack(fn func()) {
	fn()
}

func mcall(fn func(*unsafe.Pointer)) {
	fn(nil)
	panic("todo: mcall")
}

func entersyscall() {
	panic("todo: entersyscall")
}

func exitsyscall() {
	panic("todo: exitsyscall")
}

func reflectcall(stackArgsType *abi.Type, fn, stackArgs unsafe.Pointer, stackArgsSize, stackRetOffset, frameSize uint32, regArgs *RegArgs) {
	panic("todo: reflectcall")
}

func memhash(p unsafe.Pointer, h, s uintptr) uintptr {
	panic("todo: memhash")
}

func memequal(x, y *any, size uintptr) bool {
	panic("todo: memequal")
}

func memclrNoHeapPointers(ptr unsafe.Pointer, n uintptr) {
	panic("todo: memclrNoHeapPointers")
}

func procyield(cycles uint32) {
	panic("todo: procyield")
}

func asyncPreempt() {
	panic("todo: asyncPreempt")
}

//go:nosplit
func mstart() {
	panic("todo: mstart")
}

//go:nosplit
func mstart_stub() {
	panic("todo: mstart_stub")
}

//go:nosplit
func sigtramp() {
	panic("todo: sigtramp")
}

//go:nosplit
func cgoSigtramp() {
	panic("todo: cgoSigtramp")
}

func FuncPCABIInternal(f interface{}) uintptr {
	panic("todo: FuncPCABIInternal")
}

func FuncPCABI0(f interface{}) uintptr {
	panic("todo: FuncPCABI0")
}

func asmcgocall_no_g(fn, arg unsafe.Pointer) {
	panic("todo: asmcgocall_no_g")
}

func asmcgocall(fn, arg unsafe.Pointer) int32 {
	panic("todo: asmcgocall")
}

func getfp() uintptr {
	panic("todo: getfp")
}

func publicationBarrier() {
	panic("todo: publicationBarrier")
}

func madvise(addr unsafe.Pointer, n uintptr, flags int32) int32 {
	return int32(C.madvise(addr, C.size_t(n), C.int(flags)))
}

func mlock(addr unsafe.Pointer, n uintptr) {
	C.mlock(addr, C.size_t(n))
}

func mmap(addr unsafe.Pointer, n uintptr, prot, flags, fd int32, off uint32) (unsafe.Pointer, int) {
	return C.mmap(addr, C.size_t(n), C.int(prot), C.int(flags), C.int(fd), C.off_t(off)), 0
}

func munmap(addr unsafe.Pointer, n uintptr) {
	C.munmap(addr, C.size_t(n))
}

func nanotime1() int64 {
	return int64(C.nanotime())
}

func raise(sig uint32) {
	C.raise(C.int(sig))
}

func raiseproc(sig uint32) {
	pid := C.getpid()
	C.kill(pid, C.int(sig))
}

func getpid() int {
	return int(C.getpid())
}

func read(fd int32, p unsafe.Pointer, n int32) int32 {
	return int32(C.read(C.int(fd), p, C.size_t(n)))
}

func pipe() (r, w int32, errno int32) {
	var fields [2]C.int
	if ret := C.pipe(&fields[0]); ret != 0 {
		errno = int32(ret)
		return
	}
	r = int32(fields[0])
	w = int32(fields[1])
	return
}

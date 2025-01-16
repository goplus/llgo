package runtime

/*
#include <stdint.h>
#include <pthread.h>
*/
import "C"
import "unsafe"

// llgo:skip main newproc newproc1 oneNewExtraM allocm newm newm1 starm startTheWorld startTheWorldWithSema goschedguarded_m startTemplateThread templateThread
type _procSkip struct{}

var inForkedChild bool

var mainStarted bool

type gList struct {
	head guintptr
}

// worldStop provides context from the stop-the-world required by the
// start-the-world.
type worldStop struct {
	reason           stwReason
	startedStopping  int64
	finishedStopping int64
	stoppingCPUTime  int64
}

type sysmontick struct {
	schedtick   uint32
	syscalltick uint32
	schedwhen   int64
	syscallwhen int64
}

func newproc(fn *funcval) {
	var thread C.pthread_t
	ret := C.pthread_create(&thread, nil, (*[0]byte)(unsafe.Pointer(fn)), nil)
	if ret != 0 {
		// Handle error
		panic("pthread_create failed")
	}
}

func startTheWorld(w worldStop) {
	panic("startTheWorld")
}

// pMask is an atomic bitstring with one bit per P.
type pMask []uint32

func startm(pp *p, spinning, lockheld bool) {
	panic("startm")
}

func acquirep(pp *p) {
	panic("acquirep")
}

func checkTimersNoP(allpSnapshot []*p, timerpMaskSnapshot pMask, pollUntil int64) int64 {
	panic("checkTimersNoP")
}

func checkdead() {
	panic("checkdead")
}

//go:build unix && !darwin && !wasm && !baremetal

package signal

import (
	"runtime"
	"sync/atomic"
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	cliteos "github.com/goplus/llgo/runtime/internal/clite/os"
	clitesignal "github.com/goplus/llgo/runtime/internal/clite/signal"
	clitesys "github.com/goplus/llgo/runtime/internal/clite/syscall"
)

const (
	numSig = 65 // keep in sync with os/signal
)

var (
	initState uint32 // 0=uninit, 1=initing, 2=inited

	pipeRead  c.Int
	pipeWrite c.Int

	sigCh chan uint32

	installed [numSig]uint32
	wanted    [numSig]uint32
	ignored   [numSig]uint32
)

func ensureInit() {
	if atomic.LoadUint32(&initState) == 2 {
		return
	}
	if atomic.CompareAndSwapUint32(&initState, 0, 1) {
		fds := [2]c.Int{-1, -1}
		if cliteos.Pipe(&fds) == 0 {
			pipeRead, pipeWrite = fds[0], fds[1]
			setNonblock(pipeWrite)
		}
		sigCh = make(chan uint32, 128)
		go signalReadLoop()
		atomic.StoreUint32(&initState, 2)
		return
	}
	for atomic.LoadUint32(&initState) != 2 {
		runtime.Gosched()
	}
}

func setNonblock(fd c.Int) {
	flags := cliteos.Fcntl(fd, c.Int(clitesys.F_GETFL))
	if flags < 0 {
		return
	}
	_ = cliteos.Fcntl(fd, c.Int(clitesys.F_SETFL), flags|c.Int(clitesys.O_NONBLOCK))
}

func signalReadLoop() {
	if pipeRead < 0 {
		return
	}
	var buf [4]byte
	off := 0
	for {
		n := cliteos.Read(pipeRead, unsafe.Pointer(&buf[off]), uintptr(4-off))
		if n <= 0 {
			continue
		}
		off += n
		if off < 4 {
			continue
		}
		off = 0
		sig := uint32(buf[0]) | uint32(buf[1])<<8 | uint32(buf[2])<<16 | uint32(buf[3])<<24
		sigCh <- sig
	}
}

func isWanted(sig uint32) bool {
	if sig >= numSig {
		return false
	}
	return atomic.LoadUint32(&wanted[sig]) != 0
}

func setWanted(sig uint32, v bool) {
	if sig >= numSig {
		return
	}
	if v {
		atomic.StoreUint32(&wanted[sig], 1)
	} else {
		atomic.StoreUint32(&wanted[sig], 0)
	}
}

func setIgnored(sig uint32, v bool) {
	if sig >= numSig {
		return
	}
	if v {
		atomic.StoreUint32(&ignored[sig], 1)
	} else {
		atomic.StoreUint32(&ignored[sig], 0)
	}
}

func ensureInstalled(sig uint32) {
	if sig >= numSig {
		return
	}
	if !atomic.CompareAndSwapUint32(&installed[sig], 0, 1) {
		return
	}
	clitesignal.Signal(c.Int(sig), signalTrampoline)
}

func signalTrampoline(sig c.Int) {
	s := uint32(sig)
	if !isWanted(s) {
		return
	}
	if pipeWrite < 0 {
		return
	}
	var buf [4]byte
	buf[0] = byte(s)
	buf[1] = byte(s >> 8)
	buf[2] = byte(s >> 16)
	buf[3] = byte(s >> 24)
	_ = cliteos.Write(pipeWrite, unsafe.Pointer(&buf[0]), 4)
}

func signal_disable(sig uint32) {
	ensureInit()
	ensureInstalled(sig)
	setWanted(sig, false)
}

func signal_enable(sig uint32) {
	ensureInit()
	ensureInstalled(sig)
	setIgnored(sig, false)
	setWanted(sig, true)
}

func signal_ignore(sig uint32) {
	ensureInit()
	ensureInstalled(sig)
	setWanted(sig, false)
	setIgnored(sig, true)
}

func signal_ignored(sig uint32) bool {
	if sig >= numSig {
		return false
	}
	return atomic.LoadUint32(&ignored[sig]) != 0
}

func signal_recv() uint32 {
	ensureInit()
	return <-sigCh
}

func signalWaitUntilIdle() {
	// Best-effort: LLGo doesn't currently coordinate signal delivery with os/signal.Stop.
}

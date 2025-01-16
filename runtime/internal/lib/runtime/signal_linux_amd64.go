package runtime

import (
	"runtime"
	"unsafe"

	"github.com/goplus/llgo/runtime/internal/runtime/goarch"
)

const (
	_si_max_size = 128

	_SIGFPE = 0x8

	_FPE_INTDIV = 0x1
)

type fpxreg1 struct {
	significand [4]uint16
	exponent    uint16
	padding     [3]uint16
}

type xmmreg1 struct {
	element [4]uint32
}

type fpstate1 struct {
	cwd       uint16
	swd       uint16
	ftw       uint16
	fop       uint16
	rip       uint64
	rdp       uint64
	mxcsr     uint32
	mxcr_mask uint32
	_st       [8]fpxreg1
	_xmm      [16]xmmreg1
	padding   [24]uint32
}

type stackt struct {
	ss_sp     *byte
	ss_flags  int32
	pad_cgo_0 [4]byte
	ss_size   uintptr
}

type fpxreg struct {
	significand [4]uint16
	exponent    uint16
	padding     [3]uint16
}

type xmmreg struct {
	element [4]uint32
}

type fpstate struct {
	cwd       uint16
	swd       uint16
	ftw       uint16
	fop       uint16
	rip       uint64
	rdp       uint64
	mxcsr     uint32
	mxcr_mask uint32
	_st       [8]fpxreg
	_xmm      [16]xmmreg
	padding   [24]uint32
}

type mcontext struct {
	gregs       [23]uint64
	fpregs      *fpstate
	__reserved1 [8]uint64
}

type usigset struct {
	__val [16]uint64
}

type ucontext struct {
	uc_flags     uint64
	uc_link      *ucontext
	uc_stack     stackt
	uc_mcontext  mcontext
	uc_sigmask   usigset
	__fpregs_mem fpstate
}

type sigcontext struct {
	r8          uint64
	r9          uint64
	r10         uint64
	r11         uint64
	r12         uint64
	r13         uint64
	r14         uint64
	r15         uint64
	rdi         uint64
	rsi         uint64
	rbp         uint64
	rbx         uint64
	rdx         uint64
	rax         uint64
	rcx         uint64
	rsp         uint64
	rip         uint64
	eflags      uint64
	cs          uint16
	gs          uint16
	fs          uint16
	__pad0      uint16
	err         uint64
	trapno      uint64
	oldmask     uint64
	cr2         uint64
	fpstate     *fpstate1
	__reserved1 [8]uint64
}

type siginfoFields struct {
	si_signo int32
	si_errno int32
	si_code  int32
	// below here is a union; si_addr is the only field we use
	si_addr uint64
}

type siginfo struct {
	siginfoFields

	// Pad struct to the max size in the kernel.
	_ [_si_max_size - unsafe.Sizeof(siginfoFields{})]byte
}

type sigctxt struct {
	info *siginfo
	ctxt unsafe.Pointer
}

func (c *sigctxt) regs() *sigcontext {
	return (*sigcontext)(unsafe.Pointer(&(*ucontext)(c.ctxt).uc_mcontext))
}

func (c *sigctxt) rsp() uint64      { return c.regs().rsp }
func (c *sigctxt) rip() uint64      { return c.regs().rip }
func (c *sigctxt) set_rip(x uint64) { c.regs().rip = x }
func (c *sigctxt) set_rsp(x uint64) { c.regs().rsp = x }

// preparePanic sets up the stack to look like a call to sigpanic.
func (c *sigctxt) preparePanic(sig uint32, gp *g) {
	// Work around Leopard bug that doesn't set FPE_INTDIV.
	// Look at instruction to see if it is a divide.
	// Not necessary in Snow Leopard (si_code will be != 0).
	if runtime.GOOS == "darwin" && sig == _SIGFPE && gp.sigcode0 == 0 {
		pc := (*[4]byte)(unsafe.Pointer(gp.sigpc))
		i := 0
		if pc[i]&0xF0 == 0x40 { // 64-bit REX prefix
			i++
		} else if pc[i] == 0x66 { // 16-bit instruction prefix
			i++
		}
		if pc[i] == 0xF6 || pc[i] == 0xF7 {
			gp.sigcode0 = _FPE_INTDIV
		}
	}

	pc := uintptr(c.rip())
	sp := uintptr(c.rsp())

	// In case we are panicking from external code, we need to initialize
	// Go special registers. We inject sigpanic0 (instead of sigpanic),
	// which takes care of that.
	if shouldPushSigpanic(gp, pc, *(*uintptr)(unsafe.Pointer(sp))) {
		// TODO(lijie):
		// c.pushCall(abi.FuncPCABI0(sigpanic0), pc)
	} else {
		// Not safe to push the call. Just clobber the frame.
		// TODO(lijie):
		// c.set_rip(uint64(abi.FuncPCABI0(sigpanic0)))
	}
}

func (c *sigctxt) pushCall(targetPC, resumePC uintptr) {
	// Make it look like we called target at resumePC.
	sp := uintptr(c.rsp())
	sp -= goarch.PtrSize
	*(*uintptr)(unsafe.Pointer(sp)) = resumePC
	c.set_rsp(uint64(sp))
	c.set_rip(uint64(targetPC))
}

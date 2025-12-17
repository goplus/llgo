//go:build arm && arm7tdmi

package setjmp

// ARM7TDMI (ARMv4T) for Game Boy Advance
// Target: armv4t-unknown-unknown-eabi
// Size from picolibc jmp_buf definition
const (
	SigjmpBufSize = 160
	JmpBufSize    = 160
)

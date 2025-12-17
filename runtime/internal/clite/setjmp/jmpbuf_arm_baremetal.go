//go:build arm && arm7tdmi

package setjmp

// ARM7TDMI (ARMv4T) for Game Boy Advance
// Target: armv4t-unknown-unknown-eabi
// https://github.com/picolibc/picolibc/blob/1.7.9/newlib/libc/include/machine/setjmp.h
const (
	SigjmpBufSize = 160
	JmpBufSize    = 160
)

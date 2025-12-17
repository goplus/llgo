//go:build arm && arm7tdmi

package setjmp

// Generic ARM (Linux ARM, ARM7TDMI) using libc
// TODO: confirm size from machine/setjmp.h
const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

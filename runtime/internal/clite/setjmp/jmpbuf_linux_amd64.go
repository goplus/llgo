//go:build !darwin

package setjmp

const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

type (
	sigjmpBuf [25]uint64
	jmpBuf    [25]uint64
)

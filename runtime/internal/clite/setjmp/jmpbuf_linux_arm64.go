package setjmp

const (
	SigjmpBufSize = 312
	JmpBufSize    = 312
)

type (
	sigjmpBuf [39]uint64
	jmpBuf    [39]uint64
)

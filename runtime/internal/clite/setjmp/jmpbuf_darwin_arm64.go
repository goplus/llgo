package setjmp

const (
	SigjmpBufSize = 196
	JmpBufSize    = 192
)

type (
	sigjmpBuf [49]uint32
	jmpBuf    [48]uint32
)

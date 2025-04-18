//go:build !darwin

package setjmp

const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

//go:build !((linux || darwin) && (amd64 || arm64)) && !baremetal

package setjmp

const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

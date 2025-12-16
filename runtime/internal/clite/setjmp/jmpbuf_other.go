//go:build !((linux || darwin) && (amd64 || arm64)) && !baremetal && !wasm

package setjmp

const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

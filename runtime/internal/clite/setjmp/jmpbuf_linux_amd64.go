//go:build !darwin

package setjmp

import (
	_ "unsafe"
)

const (
	SigjmpBufSize = 200
	JmpBufSize    = 200
)

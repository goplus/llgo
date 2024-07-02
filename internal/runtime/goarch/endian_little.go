//go:build ppc64 || s390x || mips || mips64
// +build ppc64 s390x mips mips64

package goarch

const (
	BigEndian    = false
	LittleEndian = true
)

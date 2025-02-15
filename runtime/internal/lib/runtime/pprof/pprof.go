package pprof

import (
	"io"
)

// llgo:skipall
type Profile struct{}

func (p *Profile) WriteTo(w io.Writer, verbose bool) (int, error) {
	panic("WriteTo not implemented")
}

func StartCPUProfile(w io.Writer) error {
	panic("StartCPUProfile not implemented")
}

func StopCPUProfile() {
	panic("StopCPUProfile not implemented")
}

func Lookup(name string) *Profile {
	panic("Lookup not implemented")
}

//go:build amd64 || 386

package math

const haveArchHypot = false

func archHypot(p, q float64) float64 {
	panic("not implemented")
}

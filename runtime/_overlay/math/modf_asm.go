//go:build llgo

package math

const haveArchModf = false

func archModf(f float64) (int float64, frac float64) {
	panic("not implemented")
}

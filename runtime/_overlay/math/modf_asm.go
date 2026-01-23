//go:build arm64 || ppc64 || ppc64le
// +build arm64 ppc64 ppc64le

package math

const haveArchModf = false

func archModf(f float64) (int float64, frac float64) {
	panic("not implemented")
}

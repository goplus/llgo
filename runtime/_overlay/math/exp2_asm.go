//go:build arm64

package math

import _ "unsafe"

const haveArchExp2 = true

//go:linkname c_exp2 C.exp2
func c_exp2(x float64) float64

func archExp2(x float64) float64 {
	return c_exp2(x)
}

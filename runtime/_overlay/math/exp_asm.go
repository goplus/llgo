//go:build amd64 || arm64

package math

import _ "unsafe"

const haveArchExp = true

//go:linkname c_exp C.exp
func c_exp(x float64) float64

func archExp(x float64) float64 {
	return c_exp(x)
}

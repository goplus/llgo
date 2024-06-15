/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package math

// llgo:skip sin cos
import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = true
)

//go:linkname Acos C.acos
func Acos(x float64) float64

//go:linkname Acosh C.acosh
func Acosh(x float64) float64

//go:linkname Asin C.asin
func Asin(x float64) float64

//go:linkname Asinh C.asinh
func Asinh(x float64) float64

//go:linkname Atan C.atan
func Atan(x float64) float64

//go:linkname Atan2 C.atan2
func Atan2(y, x float64) float64

//go:linkname Atanh C.atanh
func Atanh(x float64) float64

//go:linkname Cbrt C.cbrt
func Cbrt(x float64) float64

//go:linkname Ceil C.ceil
func Ceil(x float64) float64

//go:linkname Cos C.cos
func Cos(x float64) float64

//go:linkname Cosh C.cosh
func Cosh(x float64) float64

//go:linkname Copysign C.copysign
func Copysign(x, y float64) float64

//go:linkname Erf C.erf
func Erf(x float64) float64

//go:linkname Erfc C.erfc
func Erfc(x float64) float64

//go:linkname Exp C.exp
func Exp(x float64) float64

//go:linkname Exp2 C.exp2
func Exp2(x float64) float64

//go:linkname Expm1 C.expm1
func Expm1(x float64) float64

//go:linkname Dim C.fdim
func Dim(x, y float64) float64

//go:linkname Floor C.floor
func Floor(x float64) float64

//go:linkname FMA C.fma
func FMA(x, y, z float64) float64

//go:linkname Max C.fmax
func Max(x, y float64) float64

//go:linkname Min C.fmin
func Min(x, y float64) float64

//go:linkname Mod C.fmod
func Mod(x, y float64) float64

//go:linkname cFrexp C.frexp
func cFrexp(x float64, exp *c.Int) float64

func Frexp(f float64) (float64, int) {
	var exp c.Int
	var ret = cFrexp(f, &exp)
	return ret, int(exp)
}

//go:linkname Gamma C.gamma
func Gamma(x float64) float64

//go:linkname Hypot C.hypot
func Hypot(x, y float64) float64

//go:linkname cIlogb C.ilogb
func cIlogb(x float64) c.Int

func Ilogb(x float64) int {
	return int(cIlogb(x))
}

//go:linkname J0 C.j0
func J0(x float64) float64

//go:linkname J1 C.j1
func J1(x float64) float64

//go:linkname cJn C.jn
func cJn(n c.Int, x float64) float64

func Jn(n int, x float64) float64 {
	return cJn(c.Int(n), x)
}

//go:linkname cLdexp C.ldexp
func cLdexp(x float64, exp c.Int) float64

func Ldexp(x float64, exp int) float64 {
	return cLdexp(x, c.Int(exp))
}

//-go:linkname cLgamma C.lgamma
//func cLgamma(x float64) float64

//go:linkname Log C.log
func Log(x float64) float64

//go:linkname Log10 C.log10
func Log10(x float64) float64

//go:linkname Log1p C.log1p
func Log1p(x float64) float64

//go:linkname Log2 C.log2
func Log2(x float64) float64

//go:linkname Logb C.logb
func Logb(x float64) float64

//go:linkname cModf C.modf
func cModf(x float64, intpart *float64) float64

func Modf(f float64) (float64, float64) {
	var intpart float64
	var ret = cModf(f, &intpart)
	return intpart, ret
}

//-go:linkname cNan C.nan
//func cNan(tag *c.Char) float64

//go:linkname Nextafter C.nextafter
func Nextafter(x, y float64) float64

//go:linkname Pow C.pow
func Pow(x, y float64) float64

//go:linkname Remainder C.remainder
func Remainder(x, y float64) float64

//go:linkname Round C.round
func Round(x float64) float64

//go:linkname Sin C.sin
func Sin(x float64) float64

//go:linkname Sinh C.sinh
func Sinh(x float64) float64

//go:linkname Sqrt C.sqrt
func Sqrt(x float64) float64

//go:linkname Tan C.tan
func Tan(x float64) float64

//go:linkname Tanh C.tanh
func Tanh(x float64) float64

//-go:linkname Tgamma C.tgamma
//func Tgamma(x float64) float64

//go:linkname Trunc C.trunc
func Trunc(x float64) float64

package math

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.math"

// Return the arc cosine (measured in radians) of x.
//
// The result is between 0 and pi.
//
//go:linkname Acos py.acos
func Acos(x *py.Object) *py.Object

// Return the inverse hyperbolic cosine of x.
//
//go:linkname Acosh py.acosh
func Acosh(x *py.Object) *py.Object

// Return the arc sine (measured in radians) of x.
//
// The result is between -pi/2 and pi/2.
//
//go:linkname Asin py.asin
func Asin(x *py.Object) *py.Object

// Return the inverse hyperbolic sine of x.
//
//go:linkname Asinh py.asinh
func Asinh(x *py.Object) *py.Object

// Return the arc tangent (measured in radians) of x.
//
// The result is between -pi/2 and pi/2.
//
//go:linkname Atan py.atan
func Atan(x *py.Object) *py.Object

// Return the arc tangent (measured in radians) of y/x.
//
// Unlike atan(y/x), the signs of both x and y are considered.
//
//go:linkname Atan2 py.atan2
func Atan2(y *py.Object, x *py.Object) *py.Object

// Return the inverse hyperbolic tangent of x.
//
//go:linkname Atanh py.atanh
func Atanh(x *py.Object) *py.Object

// Return the cube root of x.
//
//go:linkname Cbrt py.cbrt
func Cbrt(x *py.Object) *py.Object

// Return the ceiling of x as an Integral.
//
// This is the smallest integer >= x.
//
//go:linkname Ceil py.ceil
func Ceil(x *py.Object) *py.Object

// Return a float with the magnitude (absolute value) of x but the sign of y.
//
// On platforms that support signed zeros, copysign(1.0, -0.0)
// returns -1.0.
//
//go:linkname Copysign py.copysign
func Copysign(x *py.Object, y *py.Object) *py.Object

// Return the cosine of x (measured in radians).
//
//go:linkname Cos py.cos
func Cos(x *py.Object) *py.Object

// Return the hyperbolic cosine of x.
//
//go:linkname Cosh py.cosh
func Cosh(x *py.Object) *py.Object

// Convert angle x from radians to degrees.
//
//go:linkname Degrees py.degrees
func Degrees(x *py.Object) *py.Object

// Return the Euclidean distance between two points p and q.
//
// The points should be specified as sequences (or iterables) of
// coordinates.  Both inputs must have the same dimension.
//
// Roughly equivalent to:
//
//	sqrt(sum((px - qx) ** 2.0 for px, qx in zip(p, q)))
//
//go:linkname Dist py.dist
func Dist(p *py.Object, q *py.Object) *py.Object

// Error function at x.
//
//go:linkname Erf py.erf
func Erf(x *py.Object) *py.Object

// Complementary error function at x.
//
//go:linkname Erfc py.erfc
func Erfc(x *py.Object) *py.Object

// Return e raised to the power of x.
//
//go:linkname Exp py.exp
func Exp(x *py.Object) *py.Object

// Return 2 raised to the power of x.
//
//go:linkname Exp2 py.exp2
func Exp2(x *py.Object) *py.Object

// Return exp(x)-1.
//
// This function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.
//
//go:linkname Expm1 py.expm1
func Expm1(x *py.Object) *py.Object

// Return the absolute value of the float x.
//
//go:linkname Fabs py.fabs
func Fabs(x *py.Object) *py.Object

// Find n!.
//
// Raise a ValueError if x is negative or non-integral.
//
//go:linkname Factorial py.factorial
func Factorial(n *py.Object) *py.Object

// Return the floor of x as an Integral.
//
// This is the largest integer <= x.
//
//go:linkname Floor py.floor
func Floor(x *py.Object) *py.Object

// Return fmod(x, y), according to platform C.
//
// x % y may differ.
//
//go:linkname Fmod py.fmod
func Fmod(x *py.Object, y *py.Object) *py.Object

// Return the mantissa and exponent of x, as pair (m, e).
//
// m is a float and e is an int, such that x = m * 2.**e.
// If x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.
//
//go:linkname Frexp py.frexp
func Frexp(x *py.Object) *py.Object

// Return an accurate floating point sum of values in the iterable seq.
//
// Assumes IEEE-754 floating point arithmetic.
//
//go:linkname Fsum py.fsum
func Fsum(seq *py.Object) *py.Object

// Gamma function at x.
//
//go:linkname Gamma py.gamma
func Gamma(x *py.Object) *py.Object

// Greatest Common Divisor.
//
//go:linkname Gcd py.gcd
func Gcd(__llgo_va_list ...interface{}) *py.Object

// Return True if x is neither an infinity nor a NaN, and False otherwise.
//
//go:linkname Isfinite py.isfinite
func Isfinite(x *py.Object) *py.Object

// Return True if x is a positive or negative infinity, and False otherwise.
//
//go:linkname Isinf py.isinf
func Isinf(x *py.Object) *py.Object

// Return True if x is a NaN (not a number), and False otherwise.
//
//go:linkname Isnan py.isnan
func Isnan(x *py.Object) *py.Object

// Return the integer part of the square root of the input.
//
//go:linkname Isqrt py.isqrt
func Isqrt(n *py.Object) *py.Object

// Least Common Multiple.
//
//go:linkname Lcm py.lcm
func Lcm(__llgo_va_list ...interface{}) *py.Object

// Return x * (2**i).
//
// This is essentially the inverse of frexp().
//
//go:linkname Ldexp py.ldexp
func Ldexp(x *py.Object, i *py.Object) *py.Object

// Natural logarithm of absolute value of Gamma function at x.
//
//go:linkname Lgamma py.lgamma
func Lgamma(x *py.Object) *py.Object

// Return the base 10 logarithm of x.
//
//go:linkname Log10 py.log10
func Log10(x *py.Object) *py.Object

// Return the base 2 logarithm of x.
//
//go:linkname Log2 py.log2
func Log2(x *py.Object) *py.Object

// Return the fractional and integer parts of x.
//
// Both results carry the sign of x and are floats.
//
//go:linkname Modf py.modf
func Modf(x *py.Object) *py.Object

// Return x**y (x to the power of y).
//
//go:linkname Pow py.pow
func Pow(x *py.Object, y *py.Object) *py.Object

// Convert angle x from degrees to radians.
//
//go:linkname Radians py.radians
func Radians(x *py.Object) *py.Object

// Difference between x and the closest integer multiple of y.
//
// Return x - n*y where n*y is the closest integer multiple of y.
// In the case where x is exactly halfway between two multiples of
// y, the nearest even value of n is used. The result is always exact.
//
//go:linkname Remainder py.remainder
func Remainder(x *py.Object, y *py.Object) *py.Object

// Return the sine of x (measured in radians).
//
//go:linkname Sin py.sin
func Sin(x *py.Object) *py.Object

// Return the hyperbolic sine of x.
//
//go:linkname Sinh py.sinh
func Sinh(x *py.Object) *py.Object

// Return the square root of x.
//
//go:linkname Sqrt py.sqrt
func Sqrt(x *py.Object) *py.Object

// Return the tangent of x (measured in radians).
//
//go:linkname Tan py.tan
func Tan(x *py.Object) *py.Object

// Return the hyperbolic tangent of x.
//
//go:linkname Tanh py.tanh
func Tanh(x *py.Object) *py.Object

// Return the sum of products of values from two iterables p and q.
//
// Roughly equivalent to:
//
//	sum(itertools.starmap(operator.mul, zip(p, q, strict=True)))
//
// For float and mixed int/float inputs, the intermediate products
// and sums are computed with extended precision.
//
//go:linkname Sumprod py.sumprod
func Sumprod(p *py.Object, q *py.Object) *py.Object

// Truncates the Real x to the nearest Integral toward 0.
//
// Uses the __trunc__ magic method.
//
//go:linkname Trunc py.trunc
func Trunc(x *py.Object) *py.Object

// Calculate the product of all the elements in the input iterable.
//
// The default start value for the product is 1.
//
// When the iterable is empty, return the start value.  This function is
// intended specifically for use with numeric values and may reject
// non-numeric types.
//
//go:linkname Prod py.prod
func Prod(iterable *py.Object) *py.Object

// Number of ways to choose k items from n items without repetition and with order.
//
// Evaluates to n! / (n - k)! when k <= n and evaluates
// to zero when k > n.
//
// If k is not specified or is None, then k defaults to n
// and the function returns n!.
//
// Raises TypeError if either of the arguments are not integers.
// Raises ValueError if either of the arguments are negative.
//
//go:linkname Perm py.perm
func Perm(n *py.Object, k *py.Object) *py.Object

// Number of ways to choose k items from n items without repetition and without order.
//
// Evaluates to n! / (k! * (n - k)!) when k <= n and evaluates
// to zero when k > n.
//
// Also called the binomial coefficient because it is equivalent
// to the coefficient of k-th term in polynomial expansion of the
// expression (1 + x)**n.
//
// Raises TypeError if either of the arguments are not integers.
// Raises ValueError if either of the arguments are negative.
//
//go:linkname Comb py.comb
func Comb(n *py.Object, k *py.Object) *py.Object

// Return the floating-point value the given number of steps after x towards y.
//
// If steps is not specified or is None, it defaults to 1.
//
// Raises a TypeError, if x or y is not a double, or if steps is not an integer.
// Raises ValueError if steps is negative.
//
//go:linkname Nextafter py.nextafter
func Nextafter(x *py.Object, y *py.Object) *py.Object

// Return the value of the least significant bit of the float x.
//
//go:linkname Ulp py.ulp
func Ulp(x *py.Object) *py.Object

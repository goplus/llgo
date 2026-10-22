//go:build windows && amd64

package runtime

import "github.com/xgo-dev/llgo/runtime/internal/runtime/math"

// MinGW's fma/fmaf can overflow before cancellation. Use correctly rounded
// software operations instead of LLVM's baseline libm calls on Windows/amd64.
func SIMDFMA64(x, y, z float64) float64 { return math.FMA64(x, y, z) }
func SIMDFMA32(x, y, z float32) float32 { return math.FMA32(x, y, z) }

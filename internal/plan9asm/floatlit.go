package plan9asm

import (
	"fmt"
	"math"
	"strconv"
	"strings"
)

func formatLLVMFloat64Literal(v float64) string {
	if math.IsNaN(v) || math.IsInf(v, 0) {
		return fmt.Sprintf("0x%016X", math.Float64bits(v))
	}
	s := strconv.FormatFloat(v, 'e', -1, 64)
	if i := strings.IndexByte(s, 'e'); i >= 0 {
		if !strings.Contains(s[:i], ".") {
			return s[:i] + ".0" + s[i:]
		}
		return s
	}
	if !strings.Contains(s, ".") {
		return s + ".0"
	}
	return s
}

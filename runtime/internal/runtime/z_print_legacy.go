//go:build !go1.26

/*
 * Copyright (c) 2024 The XGo Authors (xgo.dev). All rights reserved.
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

package runtime

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

func PrintFloat(v float64) {
	switch {
	case v != v:
		c.Fprintf(c.Stderr, c.Str("NaN"))
		return
	case v+v == v && v != 0:
		if v > 0 {
			c.Fprintf(c.Stderr, c.Str("+Inf"))
		} else {
			c.Fprintf(c.Stderr, c.Str("-Inf"))
		}
		return
	}
	// Go <= 1.25 builtin print/println formats floats with an explicit sign and
	// 3 exponent digits, while libc "%+e" typically uses 2 exponent digits.
	buf := (*c.Char)(c.Alloca(32))
	c.Snprintf(buf, 32, c.Str("%+e"), v)
	n := c.Strlen(buf)
	if n >= 4 {
		exp := n - 4
		ch := c.Index(buf, exp)
		sign := c.Index(buf, exp+1)
		d0 := c.Index(buf, exp+2)
		d1 := c.Index(buf, exp+3)
		if (ch == 'e' || ch == 'E') &&
			(sign == '+' || sign == '-') &&
			d0 >= '0' && d0 <= '9' &&
			d1 >= '0' && d1 <= '9' {
			dst := unsafe.Pointer(c.Advance(buf, exp+3))
			src := unsafe.Pointer(c.Advance(buf, exp+2))
			c.Memmove(dst, src, 3)
			*c.Advance(buf, exp+2) = '0'
		}
	}
	c.Fputs(buf, c.Stderr)
}

func PrintComplex(v complex128) {
	print("(", real(v), imag(v), "i)")
}

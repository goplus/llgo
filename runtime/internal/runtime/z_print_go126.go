//go:build go1.26

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

import c "github.com/goplus/llgo/runtime/internal/clite"

func PrintFloat(v float64) {
	printFloat(v)
}

func printFloat(v float64) {
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
	buf := (*c.Char)(c.Alloca(64))
	c.Snprintf(buf, 64, c.Str("%.16g"), v)
	c.Fputs(buf, c.Stderr)
}

func PrintComplex(v complex128) {
	print("(")
	printFloat(real(v))
	im := imag(v)
	if im != im || im > 0 || (im == 0 && 1/im > 0) {
		print("+")
	}
	printFloat(im)
	print("i)")
}

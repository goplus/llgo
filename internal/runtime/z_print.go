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

package runtime

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

func PrintByte(v byte) {
	c.Fputc(c.Int(v), c.Stderr)
}

func PrintBool(v bool) {
	if v {
		c.Fprintf(c.Stderr, c.Str("true"))
	} else {
		c.Fprintf(c.Stderr, c.Str("false"))
	}
}

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
	c.Fprintf(c.Stderr, c.Str("%+e"), v)
}

func PrintComplex(v complex128) {
	print("(", real(v), imag(v), "i)")
}

func PrintUint(v uint64) {
	c.Fprintf(c.Stderr, c.Str("%llu"), v)
}

func PrintInt(v int64) {
	c.Fprintf(c.Stderr, c.Str("%lld"), v)
}

func PrintHex(v uint64) {
	c.Fprintf(c.Stderr, c.Str("%llx"), v)
}

func PrintPointer(p unsafe.Pointer) {
	c.Fprintf(c.Stderr, c.Str("%p"), p)
}

func PrintString(s String) {
	c.Fwrite(s.data, 1, uintptr(s.len), c.Stderr)
}

func PrintSlice(s Slice) {
	print("[", s.len, "/", s.cap, "]", s.data)
}

func PrintEface(e Eface) {
	print("(", e._type, ",", e.data, ")")
}

func PrintIface(i Iface) {
	print("(", i.tab, ",", i.data, ")")
}

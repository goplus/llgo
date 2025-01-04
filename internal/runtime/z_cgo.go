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

func CString(s string) *int8 {
	p := c.Malloc(uintptr(len(s)) + 1)
	return CStrCopy(p, *(*String)(unsafe.Pointer(&s)))
}

func CBytes(b []byte) *int8 {
	p := c.Malloc(uintptr(len(b)))
	c.Memcpy(p, unsafe.Pointer(&b[0]), uintptr(len(b)))
	return (*int8)(p)
}

func GoString(p *int8) string {
	return GoStringN(p, int(c.Strlen(p)))
}

func GoStringN(p *int8, n int) string {
	return string((*[1 << 30]byte)(unsafe.Pointer(p))[:n:n])
}

func GoBytes(p *int8, n int) []byte {
	return (*[1 << 30]byte)(unsafe.Pointer(p))[:n:n]
}

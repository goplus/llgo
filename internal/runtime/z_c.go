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

	"github.com/goplus/llgo/internal/runtime/c"
)

// Alloc allocates memory.
func Alloc(size uintptr) unsafe.Pointer {
	return c.Malloc(size)
}

/*
// Panic panics with a value.
func Panic(v Interface) {
	c.Printf(c.String("Panic!!!\n"))
	kind := abi.Kind(v.tab._type.Kind_)
	switch {
	case kind == abi.String:
		s := (*String)(v.data)
		cs := c.Alloca(uintptr(s.len) + 1)
		c.Memcpy(cs, s.data, uintptr(s.len))
		(*[1 << 30]int8)(cs)[s.len] = 0
		c.Printf(c.String("%s\n"), cs)
	}
}
*/

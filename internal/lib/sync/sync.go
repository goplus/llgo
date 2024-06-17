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

package sync

// llgo:skipall
import (
	"unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/pthread"
	"github.com/goplus/llgo/c/pthread/sync"
)

const (
	LLGoPackage = "link"
)

// -----------------------------------------------------------------------------

var onceParam pthread.Key

func init() {
	onceParam.Create(nil)
}

type Once sync.Once

func (o *Once) Do(f func()) {
	ptr := c.Malloc(unsafe.Sizeof(f))
	*(*func())(ptr) = f
	onceParam.Set(ptr)
	if *(*c.Long)(unsafe.Pointer(o)) == 0 { // try init
		*(*sync.Once)(o) = sync.OnceInit
	}
	onceDo(o, func() {
		ptr := onceParam.Get()
		(*(*func())(ptr))()
		c.Free(ptr)
	})
}

//go:linkname onceDo C.pthread_once
func onceDo(o *Once, f func()) c.Int

// -----------------------------------------------------------------------------

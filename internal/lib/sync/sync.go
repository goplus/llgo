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
	"github.com/goplus/llgo/c/pthread/sync"
)

const (
	LLGoPackage = "link"
)

// -----------------------------------------------------------------------------

type Mutex sync.Mutex

func (m *Mutex) Lock() {
	if *(*c.Long)(unsafe.Pointer(m)) == 0 {
		(*sync.Mutex)(m).Init(nil)
	}
	(*sync.Mutex)(m).Lock()
}

func (m *Mutex) TryLock() bool {
	if *(*c.Long)(unsafe.Pointer(m)) == 0 {
		(*sync.Mutex)(m).Init(nil)
	}
	return (*sync.Mutex)(m).TryLock() == 0
}

func (m *Mutex) Unlock() {
	(*sync.Mutex)(m).Unlock()
}

// -----------------------------------------------------------------------------

type Once struct {
	m    Mutex
	done bool
}

func (o *Once) Do(f func()) {
	if !o.done {
		o.m.Lock()
		defer o.m.Unlock()
		if !o.done {
			o.done = true
			f()
		}
	}
}

// -----------------------------------------------------------------------------

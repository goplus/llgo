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
	"github.com/goplus/llgo/c/pthread/sync"
)

// -----------------------------------------------------------------------------

const chanFull = 1

type Chan struct {
	mutex sync.Mutex
	cond  sync.Cond
	data  unsafe.Pointer
	getp  int
	len   int
	cap   int
}

func NewChan(eltSize, cap int) *Chan {
	ret := new(Chan)
	if cap > 0 {
		ret.data = AllocU(uintptr(cap * eltSize))
		ret.cap = cap
	}
	ret.cond.Init(nil)
	return ret
}

func ChanLen(p *Chan) (n int) {
	p.mutex.Lock()
	n = p.len
	p.mutex.Unlock()
	return
}

func ChanCap(p *Chan) int {
	return p.cap
}

func ChanTrySend(p *Chan, v unsafe.Pointer, eltSize int) bool {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.getp == chanFull {
			p.mutex.Unlock()
			return false
		}
		p.data = v
		p.getp = chanFull
	} else {
		if p.len == n {
			p.mutex.Unlock()
			return false
		}
		off := (p.getp + p.len) % n
		c.Memcpy(c.Advance(p.data, off*eltSize), v, uintptr(eltSize))
		p.len++
	}
	p.mutex.Unlock()
	p.cond.Broadcast()
	return true
}

func ChanSend(p *Chan, v unsafe.Pointer, eltSize int) {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		for p.getp == chanFull {
			p.cond.Wait(&p.mutex)
		}
		p.data = v
		p.getp = chanFull
	} else {
		for p.len == n {
			p.cond.Wait(&p.mutex)
		}
		off := (p.getp + p.len) % n
		c.Memcpy(c.Advance(p.data, off*eltSize), v, uintptr(eltSize))
		p.len++
	}
	p.mutex.Unlock()
	p.cond.Broadcast()
}

func ChanTryRecv(p *Chan, v unsafe.Pointer, eltSize int) bool {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.getp == 0 {
			p.mutex.Unlock()
			return false
		}
		c.Memcpy(v, p.data, uintptr(eltSize))
		p.getp = 0
	} else {
		if p.len == 0 {
			p.mutex.Unlock()
			return false
		}
		c.Memcpy(v, c.Advance(p.data, p.getp*eltSize), uintptr(eltSize))
		p.getp = (p.getp + 1) % n
		p.len--
	}
	p.mutex.Unlock()
	p.cond.Broadcast()
	return true
}

func ChanRecv(p *Chan, v unsafe.Pointer, eltSize int) {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		for p.getp == 0 {
			p.cond.Wait(&p.mutex)
		}
		c.Memcpy(v, p.data, uintptr(eltSize))
		p.getp = 0
	} else {
		for p.len == 0 {
			p.cond.Wait(&p.mutex)
		}
		c.Memcpy(v, c.Advance(p.data, p.getp*eltSize), uintptr(eltSize))
		p.getp = (p.getp + 1) % n
		p.len--
	}
	p.mutex.Unlock()
	p.cond.Broadcast()
}

// -----------------------------------------------------------------------------

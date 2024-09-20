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

const (
	chanNoSendRecv = 0
	chanHasRecv    = 1
)

type Chan struct {
	mutex sync.Mutex
	cond  sync.Cond
	data  unsafe.Pointer
	getp  int
	len   int
	cap   int
	sops  []*selectOp
	sends uint16
	close bool
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
	if p == nil {
		return 0
	}
	p.mutex.Lock()
	n = p.len
	p.mutex.Unlock()
	return
}

func ChanCap(p *Chan) int {
	if p == nil {
		return 0
	}
	return p.cap
}

func notifyOps(p *Chan) {
	for _, sop := range p.sops {
		sop.notify()
	}
}

func ChanClose(p *Chan) {
	p.mutex.Lock()
	p.close = true
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
}

func ChanTrySend(p *Chan, v unsafe.Pointer, eltSize int) bool {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.getp != chanHasRecv || p.close {
			p.mutex.Unlock()
			return false
		}
		if p.data != nil {
			c.Memcpy(p.data, v, uintptr(eltSize))
		}
		p.getp = chanNoSendRecv
	} else {
		if p.len == n || p.close {
			p.mutex.Unlock()
			return false
		}
		off := (p.getp + p.len) % n
		c.Memcpy(c.Advance(p.data, off*eltSize), v, uintptr(eltSize))
		p.len++
	}
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
	return true
}

func ChanSend(p *Chan, v unsafe.Pointer, eltSize int) bool {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		for p.getp != chanHasRecv && !p.close {
			p.sends++
			p.cond.Wait(&p.mutex)
			p.sends--
		}
		if p.close {
			p.mutex.Unlock()
			return false
		}
		if p.data != nil {
			c.Memcpy(p.data, v, uintptr(eltSize))
		}
		p.getp = chanNoSendRecv
	} else {
		for p.len == n {
			p.cond.Wait(&p.mutex)
		}
		if p.close {
			p.mutex.Unlock()
			return false
		}
		off := (p.getp + p.len) % n
		c.Memcpy(c.Advance(p.data, off*eltSize), v, uintptr(eltSize))
		p.len++
	}
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
	return true
}

func ChanTryRecv(p *Chan, v unsafe.Pointer, eltSize int) (recvOK bool, tryOK bool) {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.sends == 0 || p.getp == chanHasRecv || p.close {
			tryOK = p.close
			p.mutex.Unlock()
			return
		}
		p.getp = chanHasRecv
		p.data = v
	} else {
		if p.len == 0 {
			tryOK = p.close
			p.mutex.Unlock()
			return
		}
		if v != nil {
			c.Memcpy(v, c.Advance(p.data, p.getp*eltSize), uintptr(eltSize))
		}
		p.getp = (p.getp + 1) % n
		p.len--
	}
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
	if n == 0 {
		p.mutex.Lock()
		for p.getp == chanHasRecv && !p.close {
			p.cond.Wait(&p.mutex)
		}
		recvOK = !p.close
		tryOK = recvOK
		p.mutex.Unlock()
	} else {
		recvOK, tryOK = true, true
	}
	return
}

func ChanRecv(p *Chan, v unsafe.Pointer, eltSize int) (recvOK bool) {
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		for p.getp == chanHasRecv && !p.close {
			p.cond.Wait(&p.mutex)
		}
		if p.close {
			p.mutex.Unlock()
			return false
		}
		p.getp = chanHasRecv
		p.data = v
	} else {
		for p.len == 0 {
			if p.close {
				p.mutex.Unlock()
				return false
			}
			p.cond.Wait(&p.mutex)
		}
		if v != nil {
			c.Memcpy(v, c.Advance(p.data, p.getp*eltSize), uintptr(eltSize))
		}
		p.getp = (p.getp + 1) % n
		p.len--
	}
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
	if n == 0 {
		p.mutex.Lock()
		for p.getp == chanHasRecv && !p.close {
			p.cond.Wait(&p.mutex)
		}
		recvOK = !p.close
		p.mutex.Unlock()
	} else {
		recvOK = true
	}
	return
}

// -----------------------------------------------------------------------------

type selectOp struct {
	mutex sync.Mutex
	cond  sync.Cond
	sem   bool
}

func (p *selectOp) init() {
	p.mutex.Init(nil)
	p.cond.Init(nil)
	p.sem = false
}

func (p *selectOp) end() {
	p.mutex.Destroy()
	p.cond.Destroy()
}

func (p *selectOp) notify() {
	p.mutex.Lock()
	p.sem = true
	p.mutex.Unlock()
	p.cond.Signal()
}

func (p *selectOp) wait() {
	p.mutex.Lock()
	if !p.sem {
		p.cond.Wait(&p.mutex)
	}
	p.sem = false
	p.mutex.Unlock()
}

// ChanOp represents a channel operation.
type ChanOp struct {
	C *Chan

	Val  unsafe.Pointer
	Size int32

	Send bool
}

// TrySelect executes a non-blocking select operation.
func TrySelect(ops ...ChanOp) (isel int, recvOK, tryOK bool) {
	for isel = range ops {
		op := ops[isel]
		if op.Send {
			if tryOK = ChanTrySend(op.C, op.Val, int(op.Size)); tryOK {
				return
			}
		} else {
			if recvOK, tryOK = ChanTryRecv(op.C, op.Val, int(op.Size)); tryOK {
				return
			}
		}
	}
	return
}

// Select executes a blocking select operation.
func Select(ops ...ChanOp) (isel int, recvOK bool) {
	selOp := new(selectOp) // TODO(xsw): use c.AllocaNew[selectOp]()
	selOp.init()
	for _, op := range ops {
		prepareSelect(op.C, selOp)
	}
	var tryOK bool
	for {
		if isel, recvOK, tryOK = TrySelect(ops...); tryOK {
			break
		}
		selOp.wait()
	}
	for _, op := range ops {
		endSelect(op.C, selOp)
	}
	selOp.end()
	return
}

func prepareSelect(c *Chan, selOp *selectOp) {
	c.mutex.Lock()
	c.sops = append(c.sops, selOp)
	c.mutex.Unlock()
}

func endSelect(c *Chan, selOp *selectOp) {
	c.mutex.Lock()
	for i, op := range c.sops {
		if op == selOp {
			c.sops = append(c.sops[:i], c.sops[i+1:]...)
			break
		}
	}
	c.mutex.Unlock()
}

// -----------------------------------------------------------------------------

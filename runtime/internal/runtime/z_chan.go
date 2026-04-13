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
	"github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	"github.com/goplus/llgo/runtime/internal/runtime/math"
)

// -----------------------------------------------------------------------------

const (
	chanNoSendRecv = 0
	chanHasRecv    = 1
)

type Chan struct {
	mutex    sync.Mutex
	cond     sync.Cond
	data     unsafe.Pointer
	getp     int
	len      int
	cap      int
	sops     []*selectReg
	sends    uint16
	selsends uint16
	close    bool
}

func NewChan(eltSize, cap int) *Chan {
	if cap < 0 {
		panic(plainError("makechan: size out of range"))
	}
	if cap > 0 {
		mem, overflow := math.MulUintptr(uintptr(eltSize), uintptr(cap))
		if overflow || mem > maxAlloc {
			panic(plainError("makechan: size out of range"))
		}
	}
	ret := new(Chan)
	if cap > 0 {
		ret.data = AllocU(uintptr(cap * eltSize))
		ret.cap = cap
	}
	ret.mutex.Init(nil)
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
	for _, reg := range p.sops {
		if reg != nil {
			reg.notify()
		}
	}
}

func ChanClose(p *Chan) {
	if p == nil {
		panic(plainError("close of nil channel"))
	}
	p.mutex.Lock()
	if p.close {
		p.mutex.Unlock()
		panic(plainError("close of closed channel"))
	}
	p.close = true
	notifyOps(p)
	p.mutex.Unlock()
	p.cond.Broadcast()
}

func ChanTrySend(p *Chan, v unsafe.Pointer, eltSize int) bool {
	if p == nil {
		return false
	}
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.close {
			p.mutex.Unlock()
			panic(plainError("send on closed channel"))
		}
		if p.getp != chanHasRecv {
			if len(p.sops) != 0 {
				notifyOps(p)
			}
			p.mutex.Unlock()
			return false
		}
		if p.data != nil {
			c.Memcpy(p.data, v, uintptr(eltSize))
		}
		p.getp = chanNoSendRecv
	} else {
		if p.close {
			p.mutex.Unlock()
			panic(plainError("send on closed channel"))
		}
		if p.len == n {
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
	if p == nil {
		select {}
	}
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		for p.getp != chanHasRecv && !p.close {
			if len(p.sops) != 0 {
				notifyOps(p)
			}
			p.sends++
			p.cond.Wait(&p.mutex)
			p.sends--
		}
		if p.close {
			p.mutex.Unlock()
			panic(plainError("send on closed channel"))
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
			panic(plainError("send on closed channel"))
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
	return chanTryRecv(p, v, eltSize, true)
}

func chanTryRecv(p *Chan, v unsafe.Pointer, eltSize int, waitSelectSend bool) (recvOK bool, tryOK bool) {
	if p == nil {
		return false, false
	}
	n := p.cap
	p.mutex.Lock()
	if n == 0 {
		if p.sends == 0 || p.getp == chanHasRecv || p.close {
			tryOK = p.close
			p.mutex.Unlock()
			return
		}
		// A select-send only advertises potential progress. When both peers are
		// blocked in mixed recv/send selects, at least one side must avoid waiting
		// on a peer that has not committed to send yet.
		if !waitSelectSend && p.sends == p.selsends {
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
		slot := c.Advance(p.data, p.getp*eltSize)
		if v != nil {
			c.Memcpy(v, slot, uintptr(eltSize))
		}
		c.Memset(slot, 0, uintptr(eltSize))
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
		recvOK = p.getp != chanHasRecv
		tryOK = recvOK || p.close
		p.mutex.Unlock()
	} else {
		recvOK, tryOK = true, true
	}
	return
}

func ChanRecv(p *Chan, v unsafe.Pointer, eltSize int) (recvOK bool) {
	if p == nil {
		select {}
	}
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
		slot := c.Advance(p.data, p.getp*eltSize)
		if v != nil {
			c.Memcpy(v, slot, uintptr(eltSize))
		}
		c.Memset(slot, 0, uintptr(eltSize))
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
		recvOK = p.getp != chanHasRecv
		p.mutex.Unlock()
	} else {
		recvOK = true
	}
	return
}

// -----------------------------------------------------------------------------

type selectOp struct {
	mutex  sync.Mutex
	cond   sync.Cond
	sem    bool
	regs   []*selectReg
	gen    uint64
	active bool
	next   *selectOp
}

type selectReg struct {
	op  *selectOp
	c   *Chan
	idx int
	gen uint64
}

var selectPool struct {
	mutex sync.Mutex
	head  *selectOp
}

func init() {
	selectPool.mutex.Init(nil)
}

func (p *selectOp) init() {
	p.mutex.Init(nil)
	p.cond.Init(nil)
	p.sem = false
}

func (p *selectOp) end() {
	p.mutex.Lock()
	p.sem = false
	p.active = false
	p.regs = p.regs[:0]
	p.mutex.Unlock()

	selectPool.mutex.Lock()
	p.next = selectPool.head
	selectPool.head = p
	selectPool.mutex.Unlock()
}

func (p *selectOp) notify() {
	p.mutex.Lock()
	if !p.active {
		p.mutex.Unlock()
		return
	}
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

func (r *selectReg) notify() {
	op := r.op
	if op == nil {
		return
	}
	op.mutex.Lock()
	if !op.active || op.gen != r.gen {
		op.mutex.Unlock()
		return
	}
	op.sem = true
	op.mutex.Unlock()
	op.cond.Signal()
}

func (p *selectOp) newReg(c *Chan, idx int) *selectReg {
	n := len(p.regs)
	var reg *selectReg
	if n < cap(p.regs) {
		p.regs = p.regs[:n+1]
		reg = p.regs[n]
		if reg == nil {
			reg = new(selectReg)
			p.regs[n] = reg
		}
	} else {
		reg = new(selectReg)
		p.regs = append(p.regs, reg)
	}
	*reg = selectReg{op: p, c: c, idx: idx, gen: p.gen}
	return reg
}

func acquireSelectOp() *selectOp {
	selectPool.mutex.Lock()
	op := selectPool.head
	if op != nil {
		selectPool.head = op.next
		op.next = nil
	}
	selectPool.mutex.Unlock()
	if op == nil {
		op = new(selectOp)
		op.init()
	}
	op.mutex.Lock()
	op.sem = false
	op.regs = op.regs[:0]
	op.gen++
	op.active = true
	op.mutex.Unlock()
	return op
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
	return trySelectSource(ops)
}

func TrySelect1(op0 ChanOp) (int, bool, bool) {
	ops := [1]ChanOp{op0}
	return trySelectSource(ops[:])
}

func TrySelect2(op0, op1 ChanOp) (int, bool, bool) {
	ops := [2]ChanOp{op0, op1}
	return trySelectSource(ops[:])
}

func TrySelect3(op0, op1, op2 ChanOp) (int, bool, bool) {
	ops := [3]ChanOp{op0, op1, op2}
	return trySelectSource(ops[:])
}

func TrySelect4(op0, op1, op2, op3 ChanOp) (int, bool, bool) {
	ops := [4]ChanOp{op0, op1, op2, op3}
	return trySelectSource(ops[:])
}

func TrySelect5(op0, op1, op2, op3, op4 ChanOp) (int, bool, bool) {
	ops := [5]ChanOp{op0, op1, op2, op3, op4}
	return trySelectSource(ops[:])
}

func TrySelect6(op0, op1, op2, op3, op4, op5 ChanOp) (int, bool, bool) {
	ops := [6]ChanOp{op0, op1, op2, op3, op4, op5}
	return trySelectSource(ops[:])
}

func TrySelect7(op0, op1, op2, op3, op4, op5, op6 ChanOp) (int, bool, bool) {
	ops := [7]ChanOp{op0, op1, op2, op3, op4, op5, op6}
	return trySelectSource(ops[:])
}

func TrySelect8(op0, op1, op2, op3, op4, op5, op6, op7 ChanOp) (int, bool, bool) {
	ops := [8]ChanOp{op0, op1, op2, op3, op4, op5, op6, op7}
	return trySelectSource(ops[:])
}

func trySelectSource(ops []ChanOp) (isel int, recvOK, tryOK bool) {
	for isel = range ops {
		op := ops[isel]
		if op.C == nil {
			// Nil-channel select cases are permanently disabled.
			continue
		}
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
	return selectSlice(ops)
}

func Select1(op0 ChanOp) (int, bool) {
	ops := [1]ChanOp{op0}
	return selectSlice(ops[:])
}

func Select2(op0, op1 ChanOp) (int, bool) {
	ops := [2]ChanOp{op0, op1}
	return selectSlice(ops[:])
}

func Select3(op0, op1, op2 ChanOp) (int, bool) {
	ops := [3]ChanOp{op0, op1, op2}
	return selectSlice(ops[:])
}

func Select4(op0, op1, op2, op3 ChanOp) (int, bool) {
	ops := [4]ChanOp{op0, op1, op2, op3}
	return selectSlice(ops[:])
}

func Select5(op0, op1, op2, op3, op4 ChanOp) (int, bool) {
	ops := [5]ChanOp{op0, op1, op2, op3, op4}
	return selectSlice(ops[:])
}

func Select6(op0, op1, op2, op3, op4, op5 ChanOp) (int, bool) {
	ops := [6]ChanOp{op0, op1, op2, op3, op4, op5}
	return selectSlice(ops[:])
}

func Select7(op0, op1, op2, op3, op4, op5, op6 ChanOp) (int, bool) {
	ops := [7]ChanOp{op0, op1, op2, op3, op4, op5, op6}
	return selectSlice(ops[:])
}

func Select8(op0, op1, op2, op3, op4, op5, op6, op7 ChanOp) (int, bool) {
	ops := [8]ChanOp{op0, op1, op2, op3, op4, op5, op6, op7}
	return selectSlice(ops[:])
}

func selectSlice(ops []ChanOp) (isel int, recvOK bool) {
	selOp := acquireSelectOp()
	sendFirst := selectSendFirst(ops)
	for _, op := range ops {
		if op.C == nil {
			continue
		}
		prepareSelect(op.C, selOp, op.Send)
	}
	var tryOK bool
	for {
		if isel, recvOK, tryOK = trySelect(ops, sendFirst); tryOK {
			break
		}
		selOp.wait()
	}
	for _, op := range ops {
		if op.C == nil {
			continue
		}
		endSelect(op.C, selOp, op.Send)
	}
	selOp.end()
	return
}

func trySelect(ops []ChanOp, sendFirst bool) (isel int, recvOK, tryOK bool) {
	if sendFirst {
		if isel, recvOK, tryOK = trySelectDir(ops, true, false); tryOK {
			return
		}
		return trySelectDir(ops, false, false)
	}
	if isel, recvOK, tryOK = trySelectDir(ops, false, true); tryOK {
		return
	}
	return trySelectDir(ops, true, true)
}

func trySelectDir(ops []ChanOp, send bool, waitSelectSend bool) (isel int, recvOK, tryOK bool) {
	for isel = range ops {
		op := ops[isel]
		if op.C == nil || op.Send != send {
			continue
		}
		if op.Send {
			if tryOK = ChanTrySend(op.C, op.Val, int(op.Size)); tryOK {
				return
			}
			continue
		}
		if recvOK, tryOK = chanTryRecv(op.C, op.Val, int(op.Size), waitSelectSend); tryOK {
			return
		}
	}
	return
}

func selectSendFirst(ops []ChanOp) bool {
	// Give mixed unbuffered select/select handshakes a deterministic direction:
	// one peer tries sends first while the opposite peer can wait in recv.
	const maxUintptr = ^uintptr(0)
	minRecv := maxUintptr
	minSend := maxUintptr
	for _, op := range ops {
		if op.C == nil {
			continue
		}
		addr := uintptr(unsafe.Pointer(op.C))
		if op.Send {
			if addr < minSend {
				minSend = addr
			}
		} else if addr < minRecv {
			minRecv = addr
		}
	}
	if minSend == maxUintptr {
		return false
	}
	if minRecv == maxUintptr {
		return true
	}
	return minSend < minRecv
}

func prepareSelect(c *Chan, selOp *selectOp, isSend bool) {
	c.mutex.Lock()
	// Unbuffered channel select support:
	// ChanTryRecv uses c.sends to decide whether a recv can proceed (without
	// blocking forever). If both sides use select, ChanTrySend/ChanTryRecv won't
	// see each other unless select-send contributes to c.sends.
	//
	// This is intentionally minimal and targets common stdlib patterns (e.g.
	// net.Pipe) to avoid deadlocks.
	if c.cap == 0 && isSend {
		c.sends++
		c.selsends++
	}
	reg := selOp.newReg(c, len(c.sops))
	c.sops = append(c.sops, reg)
	if c.cap == 0 && isSend {
		// A newly-registered select-send can make a select-recv runnable.
		notifyOps(c)
	}
	c.mutex.Unlock()
}

func endSelect(c *Chan, selOp *selectOp, isSend bool) {
	c.mutex.Lock()
	if c.cap == 0 && isSend {
		c.sends--
		c.selsends--
	}
	for _, reg := range selOp.regs {
		if reg == nil || reg.c != c {
			continue
		}
		last := len(c.sops) - 1
		if last < 0 || reg.idx > last {
			break
		}
		if reg.idx != last {
			moved := c.sops[last]
			c.sops[reg.idx] = moved
			moved.idx = reg.idx
		}
		c.sops[last] = nil
		c.sops = c.sops[:last]
		reg.c = nil
		reg.op = nil
		break
	}
	c.mutex.Unlock()
}

// -----------------------------------------------------------------------------

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

import (
	"runtime"
	gosync "sync"
	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/pthread/sync"
	"github.com/goplus/llgo/runtime/internal/lib/sync/atomic"
)

// llgo:skipall
type _sync struct{}

const (
	uninited     = 0
	initializing = 1
	inited       = 2
)

// -----------------------------------------------------------------------------

type Mutex struct {
	sync.Mutex
	init int32
}

func (m *Mutex) ensureInit() {
	for atomic.LoadInt32(&m.init) != inited {
		if atomic.CompareAndSwapInt32(&m.init, uninited, initializing) {
			(*sync.Mutex)(&m.Mutex).Init(nil)
			atomic.StoreInt32(&m.init, inited)
			runtime.SetFinalizer(m, func(m *Mutex) {
				m.Mutex.Destroy()
			})
		}
	}
}

func (m *Mutex) Lock() {
	m.ensureInit()
	(*sync.Mutex)(&m.Mutex).Lock()
}

func (m *Mutex) TryLock() bool {
	m.ensureInit()
	return (*sync.Mutex)(&m.Mutex).TryLock() == 0
}

//go:linkname c_pthread_mutex_unlock C.pthread_mutex_unlock
func c_pthread_mutex_unlock(m *Mutex) c.Int

func (m *Mutex) Unlock() {
	c_pthread_mutex_unlock(m)
}

// -----------------------------------------------------------------------------

type RWMutex struct {
	sync.RWLock
	init int32
}

func (m *RWMutex) ensureInit() {
	for atomic.LoadInt32(&m.init) != inited {
		if atomic.CompareAndSwapInt32(&m.init, uninited, initializing) {
			(*sync.RWLock)(&m.RWLock).Init(nil)
			atomic.StoreInt32(&m.init, inited)
			runtime.SetFinalizer(m, func(m *RWMutex) {
				m.RWLock.Destroy()
			})
		}
	}
}

func (rw *RWMutex) RLock() {
	rw.ensureInit()
	(*sync.RWLock)(&rw.RWLock).RLock()
}

func (rw *RWMutex) TryRLock() bool {
	rw.ensureInit()
	return (*sync.RWLock)(&rw.RWLock).TryRLock() == 0
}

//go:linkname c_pthread_rwlock_unlock C.pthread_rwlock_unlock
func c_pthread_rwlock_unlock(rw *RWMutex) c.Int

func (rw *RWMutex) RUnlock() {
	c_pthread_rwlock_unlock(rw)
}

func (rw *RWMutex) Lock() {
	rw.ensureInit()
	(*sync.RWLock)(&rw.RWLock).Lock()
}

func (rw *RWMutex) TryLock() bool {
	rw.ensureInit()
	return (*sync.RWLock)(&rw.RWLock).TryLock() == 0
}

func (rw *RWMutex) Unlock() {
	c_pthread_rwlock_unlock(rw)
}

// -----------------------------------------------------------------------------

type Once struct {
	m    Mutex
	done bool
}

func (o *Once) Do(f func()) {
	if !o.done {
		o.m.Lock()
		if !o.done {
			o.done = true
			f()
		}
		o.m.Unlock()
	}
}

// -----------------------------------------------------------------------------

type Cond struct {
	cond sync.Cond
	m    *sync.Mutex
}

func NewCond(l gosync.Locker) *Cond {
	ret := &Cond{m: l.(*sync.Mutex)}
	ret.cond.Init(nil)
	runtime.SetFinalizer(ret, func(ret *Cond) {
		ret.cond.Destroy()
	})
	return ret
}

//go:linkname c_pthread_cond_signal C.pthread_cond_signal
func c_pthread_cond_signal(c *Cond) c.Int

//go:linkname c_pthread_cond_broadcast C.pthread_cond_broadcast
func c_pthread_cond_broadcast(c *Cond) c.Int

func (c *Cond) Signal() {
	c_pthread_cond_signal(c)
}

func (c *Cond) Broadcast() {
	c_pthread_cond_broadcast(c)
}

func (c *Cond) Wait() {
	c.cond.Wait(c.m)
}

// -----------------------------------------------------------------------------

type WaitGroup struct {
	mutex sync.Mutex
	cond  sync.Cond
	count int
	init  int32
}

func (wg *WaitGroup) ensureInit() {
	for atomic.LoadInt32(&wg.init) != inited {
		if atomic.CompareAndSwapInt32(&wg.init, uninited, initializing) {
			wg.doInit()
			atomic.StoreInt32(&wg.init, inited)
		}
	}
}

func (wg *WaitGroup) doInit() {
	wg.mutex.Init(nil)
	wg.cond.Init(nil)
	runtime.SetFinalizer(wg, func(wg *WaitGroup) {
		wg.cond.Destroy()
		wg.mutex.Destroy()
	})
}

func (wg *WaitGroup) Add(delta int) {
	wg.ensureInit()
	wg.mutex.Lock()
	wg.count += delta
	if wg.count <= 0 {
		wg.cond.Broadcast()
	}
	wg.mutex.Unlock()
}

func (wg *WaitGroup) Done() {
	wg.Add(-1)
}

func (wg *WaitGroup) Wait() {
	wg.ensureInit()
	wg.mutex.Lock()
	for wg.count > 0 {
		wg.cond.Wait(&wg.mutex)
	}
	wg.mutex.Unlock()
}

// -----------------------------------------------------------------------------

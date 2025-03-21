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
	_ "unsafe"

	"github.com/goplus/llgo/c"
	"github.com/goplus/llgo/c/time"
)

const (
	LLGoFiles   = "_wrap/pthd.c"
	LLGoPackage = "link"
)

const (
	PthreadOnceSize       = 16
	PthreadMutexSize      = 64
	PthreadMutexAttrSize  = 16
	PthreadCondSize       = 48
	PthreadCondAttrSize   = 16
	PthreadRWLockSize     = 200
	PthreadRWLockAttrSize = 24
)

const (
	PTHREAD_MUTEX_NORMAL     = 0
	PTHREAD_MUTEX_ERRORCHECK = 1
	PTHREAD_MUTEX_RECURSIVE  = 2
	PTHREAD_MUTEX_DEFAULT    = PTHREAD_MUTEX_NORMAL
)

// -----------------------------------------------------------------------------

// Once is an object that will perform exactly one action.
// pthread_once_t
type Once struct {
	Unused [PthreadOnceSize]c.Char
}

//go:linkname OnceInit once_control
var OnceInit Once

// llgo:link (*Once).Do C.pthread_once
func (o *Once) Do(f func()) c.Int { return 0 }

// -----------------------------------------------------------------------------

type MutexType c.Int

const (
	MUTEX_NORMAL     MutexType = PTHREAD_MUTEX_NORMAL
	MUTEX_ERRORCHECK MutexType = PTHREAD_MUTEX_ERRORCHECK
	MUTEX_RECURSIVE  MutexType = PTHREAD_MUTEX_RECURSIVE
	MUTEX_DEFAULT    MutexType = PTHREAD_MUTEX_DEFAULT
)

// MutexAttr is a mutex attribute object.
// pthread_mutexattr_t
type MutexAttr struct {
	Unused [PthreadMutexAttrSize]c.Char
}

// llgo:link (*MutexAttr).Init C.pthread_mutexattr_init
func (a *MutexAttr) Init(attr *MutexAttr) c.Int { return 0 }

// llgo:link (*MutexAttr).Destroy C.pthread_mutexattr_destroy
func (a *MutexAttr) Destroy() {}

// llgo:link (*MutexAttr).SetType C.pthread_mutexattr_settype
func (a *MutexAttr) SetType(typ MutexType) c.Int { return 0 }

// -----------------------------------------------------------------------------

// Mutex is a mutual exclusion lock.
// pthread_mutex_t
type Mutex struct {
	Unused [PthreadMutexSize]c.Char
}

// llgo:link (*Mutex).Init C.pthread_mutex_init
func (m *Mutex) Init(attr *MutexAttr) c.Int { return 0 }

// llgo:link (*Mutex).Destroy C.pthread_mutex_destroy
func (m *Mutex) Destroy() {}

// llgo:link (*Mutex).TryLock C.pthread_mutex_trylock
func (m *Mutex) TryLock() c.Int { return 0 }

// llgo:link (*Mutex).Lock C.wrap_pthread_mutex_lock
func (m *Mutex) Lock() {}

// llgo:link (*Mutex).Unlock C.wrap_pthread_mutex_unlock
func (m *Mutex) Unlock() {}

// -----------------------------------------------------------------------------

// RWLockAttr is a read-write lock attribute object.
// pthread_rwlockattr_t
type RWLockAttr struct {
	Unused [PthreadRWLockAttrSize]c.Char
}

// llgo:link (*RWLockAttr).Init C.pthread_rwlockattr_init
func (a *RWLockAttr) Init(attr *RWLockAttr) c.Int { return 0 }

// llgo:link (*RWLockAttr).Destroy C.pthread_rwlockattr_destroy
func (a *RWLockAttr) Destroy() {}

// llgo:link (*RWLockAttr).SetPShared C.pthread_rwlockattr_setpshared
func (a *RWLockAttr) SetPShared(pshared c.Int) c.Int { return 0 }

// llgo:link (*RWLockAttr).GetPShared C.pthread_rwlockattr_getpshared
func (a *RWLockAttr) GetPShared(pshared *c.Int) c.Int { return 0 }

// -----------------------------------------------------------------------------

// RWLock is a read-write lock.
// pthread_rwlock_t
type RWLock struct {
	Unused [PthreadRWLockSize]c.Char
}

// llgo:link (*RWLock).Init C.pthread_rwlock_init
func (rw *RWLock) Init(attr *RWLockAttr) c.Int { return 0 }

// llgo:link (*RWLock).Destroy C.pthread_rwlock_destroy
func (rw *RWLock) Destroy() {}

// llgo:link (*RWLock).RLock C.pthread_rwlock_rdlock
func (rw *RWLock) RLock() {}

// llgo:link (*RWLock).TryRLock C.pthread_rwlock_tryrdlock
func (rw *RWLock) TryRLock() c.Int { return 0 }

// llgo:link (*RWLock).RUnlock C.pthread_rwlock_unlock
func (rw *RWLock) RUnlock() {}

// llgo:link (*RWLock).Lock C.pthread_rwlock_wrlock
func (rw *RWLock) Lock() {}

// llgo:link (*RWLock).TryLock C.pthread_rwlock_trywrlock
func (rw *RWLock) TryLock() c.Int { return 0 }

// llgo:link (*RWLock).Unlock C.pthread_rwlock_unlock
func (rw *RWLock) Unlock() {}

// -----------------------------------------------------------------------------

// CondAttr is a condition variable attribute object.
// pthread_condattr_t
type CondAttr struct {
	Unused [PthreadCondAttrSize]c.Char
}

// llgo:link (*CondAttr).Init C.pthread_condattr_init
func (a *CondAttr) Init(attr *CondAttr) c.Int { return 0 }

// llgo:link (*CondAttr).Destroy C.pthread_condattr_destroy
func (a *CondAttr) Destroy() {}

// // llgo:link (*CondAttr).SetClock C.pthread_condattr_setclock
// func (a *CondAttr) SetClock(clock time.ClockidT) c.Int { return 0 }

// // llgo:link (*CondAttr).GetClock C.pthread_condattr_getclock
// func (a *CondAttr) GetClock(clock *time.ClockidT) c.Int { return 0 }

// -----------------------------------------------------------------------------

// Cond is a condition variable.
// pthread_cond_t
type Cond struct {
	Unused [PthreadCondSize]c.Char
}

// llgo:link (*Cond).Init C.pthread_cond_init
func (c *Cond) Init(attr *CondAttr) c.Int { return 0 }

// llgo:link (*Cond).Destroy C.pthread_cond_destroy
func (c *Cond) Destroy() {}

// llgo:link (*Cond).Signal C.pthread_cond_signal
func (c *Cond) Signal() c.Int { return 0 }

// llgo:link (*Cond).Broadcast C.pthread_cond_broadcast
func (c *Cond) Broadcast() c.Int { return 0 }

// llgo:link (*Cond).Wait C.pthread_cond_wait
func (c *Cond) Wait(m *Mutex) c.Int { return 0 }

// llgo:link (*Cond).TimedWait C.pthread_cond_timedwait
func (c *Cond) TimedWait(m *Mutex, abstime *time.Timespec) c.Int { return 0 }

// -----------------------------------------------------------------------------

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

// #include <pthread.h>
import "C"

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoFiles   = "_pthd/pthd.c"
	LLGoPackage = "link"
)

// -----------------------------------------------------------------------------

// Once is an object that will perform exactly one action.
type Once C.pthread_once_t

//go:linkname OnceInit llgoSyncOnceInitVal
var OnceInit Once

// llgo:link (*Once).Do C.pthread_once
func (o *Once) Do(f func()) c.Int { return 0 }

// -----------------------------------------------------------------------------

type MutexType c.Int

const (
	MutexNormal     MutexType = C.PTHREAD_MUTEX_NORMAL
	MutexErrorCheck MutexType = C.PTHREAD_MUTEX_ERRORCHECK
	MutexRecursive  MutexType = C.PTHREAD_MUTEX_RECURSIVE
	MutexDefault    MutexType = C.PTHREAD_MUTEX_DEFAULT
)

// MutexAttr is a mutex attribute object.
type MutexAttr C.pthread_mutexattr_t

// llgo:link (*MutexAttr).Init C.pthread_mutexattr_init
func (a *MutexAttr) Init(attr *MutexAttr) c.Int { return 0 }

// llgo:link (*MutexAttr).Destroy C.pthread_mutexattr_destroy
func (a *MutexAttr) Destroy() {}

// llgo:link (*MutexAttr).SetType C.pthread_mutexattr_settype
func (a *MutexAttr) SetType(typ MutexType) c.Int { return 0 }

// -----------------------------------------------------------------------------

// Mutex is a mutual exclusion lock.
type Mutex C.pthread_mutex_t

// llgo:link (*Mutex).Init C.pthread_mutex_init
func (m *Mutex) Init(attr *MutexAttr) c.Int { return 0 }

// llgo:link (*Mutex).Destroy C.pthread_mutex_destroy
func (m *Mutex) Destroy() {}

// llgo:link (*Mutex).Lock C.pthread_mutex_lock
func (m *Mutex) Lock() {}

// llgo:link (*Mutex).TryLock C.pthread_mutex_trylock
func (m *Mutex) TryLock() c.Int { return 0 }

// llgo:link (*Mutex).Unlock C.pthread_mutex_unlock
func (m *Mutex) Unlock() {}

// -----------------------------------------------------------------------------

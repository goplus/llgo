//go:build llgo && !baremetal && !wasm && !nogc

/*
 * Copyright (c) 2025 The XGo Authors (xgo.dev). All rights reserved.
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

package tls

import (
	c "github.com/xgo-dev/llgo/runtime/internal/clite"
	"github.com/xgo-dev/llgo/runtime/internal/clite/bdwgc"
)

type slot[T any] struct {
	value      T
	destructor func(*T)
}

func allocSlot(size uintptr) c.Pointer {
	// FLS/pthread slots are not collector roots. Keep the slot scanned and
	// uncollectable until its destructor, including the Go callback closure.
	// Do not register individual calloc ranges: on Windows BDWGC merges
	// adjacent roots, but RemoveRoots does not split the merged range when
	// one slot is freed, leaving a dangling root that can stall collection.
	return bdwgc.MallocUncollectable(size)
}

func freeSlot(ptr c.Pointer) {
	bdwgc.Free(ptr)
}

func enterSlotDestructor() bool {
	return bdwgc.RegisterDestructorThread()
}

func leaveSlotDestructor(registered bool) {
	if registered {
		bdwgc.UnregisterMyThread()
	}
}

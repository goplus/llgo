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

	_ "unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
)

type threadStart struct {
	routine pthread.RoutineFunc
	arg     c.Pointer
}

var liveGoroutines int32 = 1

func NumGoroutine() int {
	return int(atomic.Load(&liveGoroutines))
}

func finishGoroutine() {
	atomic.Add(&liveGoroutines, -1)
}

func threadEntry(arg c.Pointer) c.Pointer {
	start := (*threadStart)(unsafe.Pointer(arg))
	ret := start.routine(start.arg)
	finishGoroutine()
	return ret
}

func CreateThread(th *pthread.Thread, attr *pthread.Attr, routine pthread.RoutineFunc, arg c.Pointer) c.Int {
	atomic.Add(&liveGoroutines, 1)
	start := &threadStart{routine: routine, arg: arg}
	if rc := pthread.Create(th, attr, threadEntry, c.Pointer(unsafe.Pointer(start))); rc != 0 {
		finishGoroutine()
		return rc
	}
	return 0
}

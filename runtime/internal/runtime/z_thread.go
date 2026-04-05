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
	"github.com/goplus/llgo/runtime/internal/clite/pthread"
	"github.com/goplus/llgo/runtime/internal/clite/sync/atomic"
)

var liveThreads int64 = 1

type threadStart struct {
	routine pthread.RoutineFunc
	arg     c.Pointer
}

func threadEntry(arg c.Pointer) c.Pointer {
	startPtr := (*threadStart)(arg)
	start := *startPtr
	c.Free(arg)
	defer atomic.Sub(&liveThreads, int64(1))
	return start.routine(start.arg)
}

func CreateThread(th *pthread.Thread, attr *pthread.Attr, routine pthread.RoutineFunc, arg c.Pointer) c.Int {
	start := (*threadStart)(c.Malloc(unsafe.Sizeof(threadStart{})))
	*start = threadStart{routine: routine, arg: arg}
	atomic.Add(&liveThreads, int64(1))
	ret := pthread.Create(th, attr, threadEntry, c.Pointer(start))
	if ret != 0 {
		c.Free(c.Pointer(start))
		atomic.Sub(&liveThreads, int64(1))
	}
	return ret
}

func NumThreads() int {
	return int(atomic.Load(&liveThreads))
}

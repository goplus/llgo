//go:build llgo
// +build llgo

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

package timeout

import (
	"time"

	"github.com/goplus/llgo/c/libuv"
	"github.com/goplus/llgo/x/async"
	"github.com/goplus/llgo/x/cbind"
)

func Timeout(d time.Duration) async.Future[async.Void] {
	return async.Async(func(resolve func(async.Void)) {
		t, cb := cbind.BindF[libuv.Timer, libuv.TimerCb](func(t *libuv.Timer) {
			resolve(async.Void{})
		})
		r := libuv.InitTimer(async.Exec().L, t)
		if r != 0 {
			panic("InitTimer failed")
		}
		r = t.Start(cb, uint64(d/time.Millisecond), 0)
		if r != 0 {
			panic("Start failed")
		}
	})
}

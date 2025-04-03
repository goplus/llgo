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

	c "github.com/goplus/llgo/runtime/internal/clite"
	"github.com/goplus/llgo/runtime/internal/runtime"
)

// llgo:skipall
type _runtime struct{}

const (
	LLGoPackage = "link"
	LLGoFiles   = "_wrap/runtime.c"
)

// GOROOT returns the root of the Go tree. It uses the
// GOROOT environment variable, if set at process start,
// or else the root used during the Go build.
func GOROOT() string {
	return ""
}

//go:linkname c_maxprocs C.llgo_maxprocs
func c_maxprocs() int32

func GOMAXPROCS(n int) int {
	return int(c_maxprocs())
}

func Goexit() {
	runtime.Goexit()
}

func KeepAlive(x any) {
}

//go:linkname c_write C.write
func c_write(fd c.Int, p unsafe.Pointer, n c.SizeT) int32

func write(fd uintptr, p unsafe.Pointer, n int32) int32 {
	return int32(c_write(c.Int(fd), p, c.SizeT(n)))
}

//go:build !llgo
// +build !llgo

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

package cl_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

// TestPullModel_Basic tests basic pull model transformation
func TestPullModel_Basic(t *testing.T) {
	t.Skip("Pull model integration not yet complete - Phase 3 in progress")

	// This test will be enabled once pull model is integrated into compile.go
	src := `package foo

import "github.com/goplus/llgo/async"

func Step() *async.AsyncFuture[int] {
	return async.Async(func(resolve func(int)) {
		resolve(42)
	})
}

func Simple() async.Future[int] {
	x := Step().Await()
	return async.Return(x + 1)
}
`
	// Expected LLVM IR would contain the state machine struct
	expected := ";" // Skip output check for now

	cltest.TestCompileEx(t, src, "test.go", expected, false)
}

// TestFromTestpull runs all tests in _testpull directory
func TestFromTestpull(t *testing.T) {
	t.Skip("Pull model integration not yet complete - Phase 3 in progress")

	// This will be enabled once integration is complete
	cltest.FromDir(t, "", "./_testpull")
}

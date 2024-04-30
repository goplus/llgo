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

package ssa_test

import (
	"testing"

	"github.com/goplus/llgo/cl/cltest"
)

func TestFromTestrt(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testrt", true)
}

func TestFromTestdata(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testdata", false)
}

func TestRuntime(t *testing.T) {
	cltest.Pkg(t, "github.com/goplus/llgo/internal/runtime", "../internal/runtime/llgo_autogen.ll")
	cltest.Pkg(t, "github.com/goplus/llgo/internal/abi", "../internal/abi/llgo_autogen.ll")
}

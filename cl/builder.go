/*
 * Copyright (c) 2023 The GoPlus Authors (goplus.org). All rights reserved.
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

package cl

import (
	"golang.org/x/tools/go/ssa"
	llvm "tinygo.org/x/go-llvm"
)

// builder contains all information relevant to build a single function.
type builder struct {
}

func newBuilder(c *context, irbuilder llvm.Builder, f *ssa.Function) *builder {
	panic("todo")
}

// createFunction builds the LLVM IR implementation for this function. The
// function must not yet be defined, otherwise this function will create a
// diagnostic.
func (b *builder) createFunction() {
	panic("todo")
}

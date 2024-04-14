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

package gossa

import (
	llvm "tinygo.org/x/go-llvm"
)

// A NamedConst is a Member of a Package representing a package-level
// named constant.
//
// Pos() returns the position of the declaring ast.ValueSpec.Names[*]
// identifier.
//
// NB: a NamedConst is not a Value; it contains a constant Value, which
// it augments with the name and position of its 'const' declaration.
type NamedConst struct {
}

// A Global is a named Value holding the address of a package-level
// variable.
//
// Pos() returns the position of the ast.ValueSpec.Names[*]
// identifier.
type Global struct {
	impl llvm.Value
}

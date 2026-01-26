/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org).
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

package dcepass

import (
	"github.com/goplus/llgo/cl/deadcode"
	"github.com/goplus/llvm"
)

// Stats reports basic DCE pass metrics.
type Stats struct {
	Reachable     int
	DroppedFuncs  int
	DroppedGlobal int
}

// Options controls the DCE pass behavior.
type Options struct{}

// Apply runs the DCE pass over mod using the reachability result.
//
// Note: This is a no-op placeholder; future versions will delete unreachable
// functions/globals and rewrite method metadata based on reloc semantics.
func Apply(mod llvm.Module, res deadcode.Result, _ Options) Stats {
	_ = mod
	return Stats{Reachable: len(res.Reachable)}
}

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

package cl

import (
	"github.com/goplus/llgo/internal/coro"
	"golang.org/x/tools/go/ssa"
)

// -----------------------------------------------------------------------------
// Coroutine Analysis Integration
//
// This module integrates the coro.Analysis from internal/coro package
// with the cl compilation context.
// -----------------------------------------------------------------------------

// coroAnalysis returns the coroutine analysis for this context.
// Creates one if it doesn't exist.
func (p *context) coroAnalysis() *coro.Analysis {
	if p.coroAnalysisCache == nil {
		p.coroAnalysisCache = coro.NewAnalysis(p.prog.Linkname)
	}
	return p.coroAnalysisCache
}

// NeedsCoroVersion checks if a function needs a $coro version.
// A function needs $coro version if:
// 1. It contains suspend points (directly or via callees)
// 2. It's called via 'go' keyword
func (p *context) NeedsCoroVersion(fn *ssa.Function) bool {
	return p.coroAnalysis().HasSuspendPoint(fn)
}

// -----------------------------------------------------------------------------

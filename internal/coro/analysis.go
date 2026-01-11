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

package coro

import (
	"strings"

	"golang.org/x/tools/go/ssa"
)

// -----------------------------------------------------------------------------
// Coroutine Taint Propagation Analysis
//
// This module implements on-demand analysis to detect which functions contain
// suspend points (directly or through callees). This information is used to:
//
// 1. Determine if a function needs a $coro version
// 2. Generate automatic await when calling functions with suspend points
//
// The analysis is lazy - functions are only analyzed when needed, and results
// are cached for efficiency.
// -----------------------------------------------------------------------------

// SuspendTaint represents the taint status of a function regarding suspend points.
type SuspendTaint int

const (
	// TaintUnknown means the function hasn't been analyzed yet
	TaintUnknown SuspendTaint = iota
	// TaintAnalyzing means the function is currently being analyzed (for cycle detection)
	TaintAnalyzing
	// TaintClean means the function has no suspend points
	TaintClean
	// TaintSuspend means the function has suspend points (direct or via callees)
	TaintSuspend
)

// LinknameResolver provides the Linkname lookup function.
type LinknameResolver func(name string) (string, bool)

// Analysis tracks suspend point taint information across functions.
type Analysis struct {
	// taint maps function full names to their taint status
	taint map[string]SuspendTaint

	// callGraph maps callers to their direct callees (for iterative analysis)
	callGraph map[string][]string

	// linkname resolves function names to their linkname targets
	linkname LinknameResolver
}

// NewAnalysis creates a new coroutine analysis context.
func NewAnalysis(linkname LinknameResolver) *Analysis {
	return &Analysis{
		taint:     make(map[string]SuspendTaint),
		callGraph: make(map[string][]string),
		linkname:  linkname,
	}
}

// MarkSuspend explicitly marks a function as having a suspend point.
// This is called when we encounter a coroSuspend instruction.
func (ca *Analysis) MarkSuspend(fnName string) {
	ca.taint[fnName] = TaintSuspend
}

// HasSuspendPointByName checks if a function has suspend points by its LLVM name.
// Returns true only if the function has been analyzed and found to have suspend points.
// Returns false if the function is unknown (not yet analyzed) or clean.
func (ca *Analysis) HasSuspendPointByName(fnName string) bool {
	return ca.taint[fnName] == TaintSuspend
}

// HasSuspendPoint checks if a function (or any of its callees) has a suspend point.
// Uses on-demand analysis with caching.
func (ca *Analysis) HasSuspendPoint(fn *ssa.Function) bool {
	if fn == nil {
		return false
	}
	fnName := FullFuncName(fn)
	return ca.hasSuspendPointByName(fnName, fn)
}

// hasSuspendPointByName is the internal implementation with cycle detection.
func (ca *Analysis) hasSuspendPointByName(fnName string, fn *ssa.Function) bool {
	// Check cached result
	switch ca.taint[fnName] {
	case TaintSuspend:
		return true
	case TaintClean:
		return false
	case TaintAnalyzing:
		// Cycle detected - assume clean to break the cycle
		// If any function in the cycle has a suspend point, it will be marked
		// when we finish analyzing that function
		return false
	}

	// Mark as analyzing to detect cycles
	ca.taint[fnName] = TaintAnalyzing

	// Analyze the function
	hasSuspend := ca.analyzeFunction(fn)

	// Cache the result
	if hasSuspend {
		ca.taint[fnName] = TaintSuspend
	} else {
		ca.taint[fnName] = TaintClean
	}

	return hasSuspend
}

// analyzeFunction analyzes a single function for suspend points.
func (ca *Analysis) analyzeFunction(fn *ssa.Function) bool {
	if fn == nil || fn.Blocks == nil {
		return false
	}

	// Track callees for this function
	fnName := FullFuncName(fn)
	var callees []string

	// Iterate all instructions looking for:
	// 1. Direct coroSuspend calls
	// 2. Panic instructions (need coro version for proper panic propagation)
	// 3. Calls to other functions that might have suspend points or panic
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			// Check for panic instruction - needs coro version for proper handling
			if _, ok := instr.(*ssa.Panic); ok {
				return true
			}

			call, ok := instr.(*ssa.Call)
			if !ok {
				continue
			}

			// Check if this is a direct coroSuspend call
			if ca.isCoroSuspendCall(&call.Call) {
				return true
			}

			// Get the callee and check if it has suspend points
			callee := ca.getCallee(&call.Call)
			if callee != nil {
				calleeName := FullFuncName(callee)
				callees = append(callees, calleeName)

				// Recursively check callee
				if ca.hasSuspendPointByName(calleeName, callee) {
					return true
				}
			}
		}
	}

	// Store call graph edges (for potential future optimizations)
	if len(callees) > 0 {
		ca.callGraph[fnName] = callees
	}

	return false
}

// isCoroSuspendCall checks if a call is to the coroSuspend intrinsic.
// It checks for llgo.coroSuspend linkname directive.
func (ca *Analysis) isCoroSuspendCall(call *ssa.CallCommon) bool {
	fn, ok := call.Value.(*ssa.Function)
	if !ok {
		return false
	}

	// Check by linkname - look for llgo.coroSuspend
	orgName := FullFuncName(fn)
	if ca.linkname != nil {
		if linkname, ok := ca.linkname(orgName); ok {
			if linkname == "llgo.coroSuspend" {
				return true
			}
		}
	}

	// Also check for runtime.coroSuspend
	name := fn.Name()
	pkg := fn.Pkg
	if pkg != nil {
		pkgPath := pkg.Pkg.Path()
		if strings.HasSuffix(pkgPath, "runtime/internal/runtime") && name == "coroSuspend" {
			return true
		}
	}

	return false
}

// getCallee extracts the callee function from a call, if available.
func (ca *Analysis) getCallee(call *ssa.CallCommon) *ssa.Function {
	switch fn := call.Value.(type) {
	case *ssa.Function:
		return fn
	case *ssa.MakeClosure:
		// For closures, get the underlying function
		if closure, ok := fn.Fn.(*ssa.Function); ok {
			return closure
		}
	}
	// For indirect calls (function pointers, interface methods), we can't
	// statically determine the callee. Conservatively return nil.
	return nil
}

// FullFuncName returns the full qualified name of a function.
func FullFuncName(fn *ssa.Function) string {
	if fn.Pkg != nil {
		return fn.Pkg.Pkg.Path() + "." + fn.Name()
	}
	return fn.Name()
}

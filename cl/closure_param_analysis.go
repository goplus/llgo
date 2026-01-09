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
	"go/types"

	"golang.org/x/tools/go/ssa"
)

// -----------------------------------------------------------------------------
// Closure Parameter Analysis
//
// This module analyzes function parameters of closure type to determine if they
// only receive C functions at all call sites. This information is used to skip
// coro handling for parameters that are known to only receive C functions.
//
// The analysis is done by:
// 1. Finding all call sites for each function
// 2. For each closure-type parameter, recording what values are passed
// 3. Checking if all passed values are C functions
// -----------------------------------------------------------------------------

// ClosureParamInfo stores information about values passed to a closure parameter
type ClosureParamInfo struct {
	// AllCFunc is true if all call sites pass C functions to this parameter
	AllCFunc bool
	// HasCalls is true if there's at least one call site
	HasCalls bool
	// Values stores the actual values passed (for debugging)
	Values []ssa.Value
}

// CFuncChecker is a function that checks if an ssa.Function is a C function
type CFuncChecker func(fn *ssa.Function) bool

// ClosureParamAnalysis analyzes closure-type parameters across all call sites
type ClosureParamAnalysis struct {
	// paramInfo maps "funcName.paramIndex" to parameter info
	paramInfo map[string]*ClosureParamInfo

	// isCFuncChecker checks if a function is a C function
	isCFuncChecker CFuncChecker

	// analyzed tracks which packages have been analyzed
	analyzed map[*ssa.Package]bool
}

// NewClosureParamAnalysis creates a new closure parameter analysis
func NewClosureParamAnalysis(isCFuncChecker CFuncChecker) *ClosureParamAnalysis {
	return &ClosureParamAnalysis{
		paramInfo:      make(map[string]*ClosureParamInfo),
		isCFuncChecker: isCFuncChecker,
		analyzed:       make(map[*ssa.Package]bool),
	}
}

// paramKey generates a unique key for a function parameter
func paramKey(fn *ssa.Function, paramIndex int) string {
	return fn.String() + "." + string(rune('0'+paramIndex))
}

// AnalyzePackage analyzes all functions in a package to find closure parameter usage
func (a *ClosureParamAnalysis) AnalyzePackage(pkg *ssa.Package) {
	if a.analyzed[pkg] {
		return
	}
	a.analyzed[pkg] = true

	// Analyze all functions in the package
	for _, member := range pkg.Members {
		if fn, ok := member.(*ssa.Function); ok {
			a.analyzeFunction(fn)
		}
	}
}

// analyzeFunction analyzes a single function for call sites
func (a *ClosureParamAnalysis) analyzeFunction(fn *ssa.Function) {
	if fn.Blocks == nil {
		return
	}

	// Also analyze anonymous functions
	for _, anon := range fn.AnonFuncs {
		a.analyzeFunction(anon)
	}

	// Look for call instructions
	for _, block := range fn.Blocks {
		for _, instr := range block.Instrs {
			switch v := instr.(type) {
			case *ssa.Call:
				a.analyzeCall(&v.Call)
			case *ssa.Go:
				a.analyzeCall(&v.Call)
			case *ssa.Defer:
				a.analyzeCall(&v.Call)
			}
		}
	}
}

// analyzeCall analyzes a call instruction to record parameter values
func (a *ClosureParamAnalysis) analyzeCall(call *ssa.CallCommon) {
	// Get the callee function
	callee, ok := call.Value.(*ssa.Function)
	if !ok {
		return // Can't analyze indirect calls
	}

	// Check each argument
	sig := callee.Signature
	params := sig.Params()

	for i, arg := range call.Args {
		if i >= params.Len() {
			break // Variadic overflow
		}

		// Check if the parameter is a function type
		paramType := params.At(i).Type()
		if _, ok := paramType.Underlying().(*types.Signature); !ok {
			continue // Not a closure parameter
		}

		// Record this value for the parameter
		key := paramKey(callee, i)
		info := a.paramInfo[key]
		if info == nil {
			info = &ClosureParamInfo{AllCFunc: true, HasCalls: false}
			a.paramInfo[key] = info
		}

		info.HasCalls = true
		info.Values = append(info.Values, arg)

		// Check if arg is a C function
		isCFunc := a.isCFunc(arg)
		if !isCFunc {
			info.AllCFunc = false
		}
	}
}

// isCFunc checks if a value is a C function
func (a *ClosureParamAnalysis) isCFunc(v ssa.Value) bool {
	fn, ok := v.(*ssa.Function)
	if !ok {
		return false // Not a direct function reference
	}

	// Use the checker provided by context
	if a.isCFuncChecker != nil {
		return a.isCFuncChecker(fn)
	}

	// Fallback: external function (no package) is likely C
	if fn.Pkg == nil {
		return true
	}

	return false
}

// IsCFuncOnlyParam checks if a parameter only receives C functions at all call sites
func (a *ClosureParamAnalysis) IsCFuncOnlyParam(param *ssa.Parameter) bool {
	parent := param.Parent()
	if parent == nil {
		return false
	}

	// Find parameter index
	paramIndex := -1
	for i, p := range parent.Params {
		if p == param {
			paramIndex = i
			break
		}
	}
	if paramIndex < 0 {
		return false
	}

	key := paramKey(parent, paramIndex)
	info := a.paramInfo[key]
	if info == nil || !info.HasCalls {
		return false // No call sites found, be conservative
	}

	return info.AllCFunc
}

// NeedCoroWrapper checks if a C function needs a coro wrapper.
// It returns true if any parameter that receives this C function has mixed callers (not AllCFunc).
func (a *ClosureParamAnalysis) NeedCoroWrapper(fnName string) bool {
	// Iterate through all analyzed parameters that have mixed callers
	for _, info := range a.paramInfo {
		if !info.HasCalls || info.AllCFunc {
			continue // Skip if no calls or all calls are C functions
		}
		// This parameter has mixed callers (AllCFunc=false)
		// Check if this C function is passed to this parameter
		for _, v := range info.Values {
			if fn, ok := v.(*ssa.Function); ok {
				// Use isCFuncChecker to verify it's a C function
				if a.isCFuncChecker != nil && a.isCFuncChecker(fn) {
					// This is a C function passed to a mixed parameter
					// Check if the name matches (LLVM name for C function is just the short name)
					if fn.Name() == fnName {
						return true
					}
				}
			}
		}
	}
	// This C function is not passed to any mixed parameter
	return false
}

// -----------------------------------------------------------------------------

// closureParamAnalysis returns the closure parameter analysis for this context
func (p *context) closureParamAnalysis() *ClosureParamAnalysis {
	if p.closureParamCache == nil {
		// Use context's funcName to check if a function is a C function
		checker := func(fn *ssa.Function) bool {
			_, _, ftype := p.funcName(fn)
			return ftype == cFunc
		}
		p.closureParamCache = NewClosureParamAnalysis(checker)
	}
	// Analyze current package if not done
	if p.goPkg != nil {
		p.closureParamCache.AnalyzePackage(p.goPkg)
	}
	return p.closureParamCache
}

// needCoroWrapper is a callback for ssa.Package.SetNeedCoroWrapper.
// It determines if a C function needs a coro wrapper based on closure parameter analysis.
func (p *context) needCoroWrapper(fnName string) bool {
	analysis := p.closureParamAnalysis()
	// Iterate through all analyzed parameters that have mixed callers
	for _, info := range analysis.paramInfo {
		if !info.HasCalls || info.AllCFunc {
			continue
		}
		// This parameter has mixed callers (AllCFunc=false)
		for _, v := range info.Values {
			if fn, ok := v.(*ssa.Function); ok {
				if analysis.isCFuncChecker(fn) {
					// Get LLVM name via funcName
					_, llvmName, _ := p.funcName(fn)
					if llvmName == fnName {
						return true
					}
				}
			}
		}
	}
	return false
}

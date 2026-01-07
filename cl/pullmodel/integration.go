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

// Package integration provides integration hooks for pull model transformation.
// This is a minimal viable implementation demonstrating how to integrate
// pull model into the compiler pipeline.
package pullmodel

import (
	"fmt"
	"log"

	"golang.org/x/tools/go/ssa"

	llssa "github.com/goplus/llgo/ssa"
)

// IntegrationContext provides the context needed for compiler integration.
type IntegrationContext struct {
	LLProg llssa.Program // Already a pointer type (*aProgram)
	LLPkg  llssa.Package // Already a pointer type (*aPackage)
	SSAPkg *ssa.Package
}

// ShouldTransform checks if a function should be transformed to pull model.
// A function needs transformation if:
// 1. It returns Future[T]
// 2. It contains .Await() calls (suspend points)
//
// Functions that return Future[T] but have no Await calls (e.g., return async.Return(...))
// are handled by normal compilation - no state machine needed.
func ShouldTransform(fn *ssa.Function) bool {
	// Skip generic functions
	if fn.TypeParams() != nil || fn.TypeArgs() != nil {
		return false
	}

	// Must return Future[T]
	if !IsAsyncFunc(fn) {
		return false
	}

	// Must have at least one Await call
	suspends := FindSuspendPoints(fn)
	return len(suspends) > 0
}

// TransformFunction transforms an async function into a state machine.
// This is the main integration point called from compile.go.
//
// Returns:
//   - transformed: true if transformation was successful
//   - err: error if transformation failed
func TransformFunction(ctx *IntegrationContext, fn *ssa.Function) (transformed bool, err error) {
	// Step 1: Transform to state machine
	sm := Transform(fn)
	if sm == nil {
		return false, fmt.Errorf("failed to transform %s to state machine", fn.Name())
	}

	// Step 2: Generate code
	codegen := NewCodeGen(ctx.SSAPkg.Prog, ctx.SSAPkg, sm)
	stateStruct, mapping, err := codegen.Generate()
	if err != nil {
		return false, fmt.Errorf("code generation failed: %w", err)
	}

	// Step 3: Log transformation (for now, actual LLVM IR generation is Phase 3.2)
	log.Printf("[Pull Model] Transformed %s:", fn.Name())
	log.Printf("  - States: %d", len(sm.States))
	log.Printf("  - CrossVars: %d", len(sm.CrossVars))
	log.Printf("  - SubFutures: %d", len(sm.SubFutures))
	log.Printf("  - State struct fields: %d", stateStruct.NumFields())

	// Log variable mapping
	log.Printf("  - Param mappings: %d", len(mapping.ParamIndices))
	log.Printf("  - CrossVar mappings: %d", len(mapping.CrossVarIndices))
	log.Printf("  - SubFuture mappings: %d", len(mapping.SubFutureIndices))

	// TODO(Phase 3.2): Generate actual LLVM IR
	// - Register state struct type with ctx.LLPkg
	// - Generate constructor function
	// - Generate Poll method
	// - Emit LLVM IR

	return true, nil
}

// Example integration in compile.go:
//
// func processPkg(ctx *context, ret llssa.Package, pkg *ssa.Package) {
//     // ... existing code ...
//
//     for _, m := range members {
//         member := m.val
//         switch member := member.(type) {
//         case *ssa.Function:
//             if member.TypeParams() != nil || member.TypeArgs() != nil {
//                 continue
//             }
//
//             // NEW: Check for async function
//             if pullmodel.ShouldTransform(member) {
//                 integCtx := &pullmodel.IntegrationContext{
//                     LLProg: ctx.prog,
//                     LLPkg:  ret,
//                     SSAPkg: pkg,
//                 }
//                 if transformed, err := pullmodel.TransformFunction(integCtx, member); err != nil {
//                     log.Printf("Pull model transformation failed: %v", err)
//                     // Fallback to normal compilation
//                     ctx.compileFuncDecl(ret, member)
//                 } else if transformed {
//                     log.Printf("Successfully transformed async function: %s", member.Name())
//                     // Skip normal compilation, state machine is generated
//                     continue
//                 }
//             }
//
//             ctx.compileFuncDecl(ret, member)
//         // ... rest of cases ...
//         }
//     }
// }

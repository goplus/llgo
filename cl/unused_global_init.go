/*
 * Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
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
	"crypto/sha256"
	"fmt"
	"go/constant"
	"go/token"
	"go/types"
	"slices"

	"golang.org/x/tools/go/ssa"
	"golang.org/x/tools/go/ssa/ssautil"
)

// UnusedGlobalInits describes package initializations whose destination is never
// accessed by the program. It is computed before parallel package lowering and
// is immutable afterwards. Names must participate in each package's cache key.
type UnusedGlobalInits struct {
	names  map[*ssa.Package][]string
	instrs map[*ssa.Package][]ssa.Instruction
	keys   map[*ssa.Package][]string
}

// CacheKeys identifies the exact instruction plan, including discarded blank
// initializers that have no named destination. Alternate packages have separate
// SSA identities, so their keys must also be included in the compiled module.
func (p *UnusedGlobalInits) CacheKeys(pkg *ssa.Package) []string {
	if p == nil {
		return nil
	}
	return p.keys[pkg]
}

func (p *UnusedGlobalInits) Names(pkg *ssa.Package) []string {
	if p == nil {
		return nil
	}
	return p.names[pkg]
}

// FindUnusedGlobalInits deliberately examines all functions, including unreachable
// methods and external entry points. The caller must preserve globals exposed
// through aliases or native code, and must not apply this plan to a library.
// Removing dead stores and map operations leaves operand evaluation in place,
// including calls, channel receives, and expressions that may panic. A fixed
// point also removes now-unused global loads, so aliases do not retain tables.
func FindUnusedGlobalInits(prog *ssa.Program, preserve func(*ssa.Global) bool) *UnusedGlobalInits {
	plan := &UnusedGlobalInits{names: make(map[*ssa.Package][]string), instrs: make(map[*ssa.Package][]ssa.Instruction), keys: make(map[*ssa.Package][]string)}
	uses := make(map[*ssa.Global][]ssa.Instruction)
	for fn := range ssautil.AllFunctions(prog) {
		for _, block := range fn.Blocks {
			for _, instr := range block.Instrs {
				if _, debug := instr.(*ssa.DebugRef); debug {
					continue
				}
				for _, operand := range instr.Operands(nil) {
					if global, ok := (*operand).(*ssa.Global); ok {
						uses[global] = append(uses[global], instr)
					}
				}
			}
		}
	}
	removed := make(map[ssa.Instruction]bool)
	deadGlobals := make(map[*ssa.Global]bool)
	var inits []ssa.Instruction
	for _, pkg := range prog.AllPackages() {
		if init := pkg.Func("init"); init != nil && init.Synthetic == "package initializer" {
			for _, block := range init.Blocks {
				inits = append(inits, block.Instrs...)
			}
		}
	}
	live := func(refs []ssa.Instruction) []ssa.Instruction {
		var result []ssa.Instruction
		for _, ref := range refs {
			if _, debug := ref.(*ssa.DebugRef); !debug && !removed[ref] {
				result = append(result, ref)
			}
		}
		return result
	}
	for changed := true; changed; {
		changed = false
		remove := func(instr ssa.Instruction) {
			if !removed[instr] {
				removed[instr] = true
				changed = true
			}
		}
		for global, refs := range uses {
			if deadGlobals[global] || preserve(global) {
				continue
			}
			init := global.Pkg.Func("init")
			if init == nil || init.Synthetic != "package initializer" {
				continue
			}
			refs = live(refs)
			valid := true
			for _, ref := range refs {
				store, ok := ref.(*ssa.Store)
				if !ok || store.Addr != global || store.Parent() != init {
					valid = false
					break
				}
			}
			if !valid {
				continue
			}
			deadGlobals[global] = true
			plan.names[global.Pkg] = append(plan.names[global.Pkg], global.String())
			for _, ref := range refs {
				remove(ref)
			}
		}
		for _, instr := range inits {
			if removed[instr] {
				continue
			}
			value, ok := instr.(ssa.Value)
			if !ok || value.Referrers() == nil {
				continue
			}
			refs := live(*value.Referrers())
			switch value := value.(type) {
			case *ssa.UnOp:
				// Loads from ordinary Go globals cannot fault. Removing unused
				// loads exposes chains such as B = A after B's store is removed.
				global, ok := value.X.(*ssa.Global)
				if ok && value.Op == token.MUL && len(refs) == 0 && !preserve(global) {
					remove(instr)
				}
			case *ssa.MakeMap:
				if !discardableMap(value) {
					continue
				}
				valid := true
				for _, ref := range refs {
					update, ok := ref.(*ssa.MapUpdate)
					if !ok || update.Map != value || update.Key == value || update.Value == value {
						valid = false
						break
					}
				}
				if valid {
					remove(instr)
					for _, ref := range refs {
						remove(ref)
					}
				}
			}
		}
	}
	for instr := range removed {
		plan.instrs[instr.Parent().Pkg] = append(plan.instrs[instr.Parent().Pkg], instr)
		if value, ok := instr.(ssa.Value); ok && value.Referrers() != nil {
			for _, ref := range *value.Referrers() {
				if _, debug := ref.(*ssa.DebugRef); debug {
					plan.instrs[instr.Parent().Pkg] = append(plan.instrs[instr.Parent().Pkg], ref)
				}
			}
		}
	}

	for _, names := range plan.names {
		slices.Sort(names)
	}
	for pkg := range plan.instrs {
		hash := sha256.New()
		for _, block := range pkg.Func("init").Blocks {
			for i, instr := range block.Instrs {
				if removed[instr] {
					fmt.Fprintf(hash, "%d:%d;", block.Index, i)
				}
			}
		}
		plan.keys[pkg] = []string{fmt.Sprintf("%s:%x", pkg.Pkg.Path(), hash.Sum(nil))}
	}
	return plan
}

// Map construction and writes can be removed only when they cannot introduce a
// language-level panic beyond the separately evaluated operands.
func discardableMap(value *ssa.MakeMap) bool {
	if hint := value.Reserve; hint != nil {
		c, ok := hint.(*ssa.Const)
		if !ok || c.Value == nil || c.Value.Kind() != constant.Int || constant.Sign(c.Value) < 0 {
			return false
		}
		if n, exact := constant.Int64Val(c.Value); !exact || n > maxStaticInitArrayElements {
			return false
		}
	}
	return mapKeyCannotPanic(value.Type().Underlying().(*types.Map).Key())
}

func mapKeyCannotPanic(typ types.Type) bool {
	switch typ := typ.Underlying().(type) {
	case *types.Interface:
		return false
	case *types.Array:
		return mapKeyCannotPanic(typ.Elem())
	case *types.Struct:
		for i := 0; i < typ.NumFields(); i++ {
			if !mapKeyCannotPanic(typ.Field(i).Type()) {
				return false
			}
		}
	}
	return true
}

func (p *context) collectUnusedGlobalInits(pkg *ssa.Package) {
	if p.options.UnusedGlobalInits == nil {
		return
	}
	p.ensureStaticInitState()
	for _, instr := range p.options.UnusedGlobalInits.instrs[pkg] {
		p.staticInitInstrs[instr] = none{}
	}
}

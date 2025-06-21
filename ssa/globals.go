/*
 * Copyright (c) 2025 The GoPlus Authors (goplus.org). All rights reserved.
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

package ssa

import (
	"fmt"

	"github.com/goplus/llvm"
)

func (pkg Package) AddGlobalString(name string, value string) {
	prog := pkg.Prog
	styp := prog.String()
	data := pkg.createGlobalStr(value)
	length := prog.IntVal(uint64(len(value)), prog.Uintptr())
	cv := llvm.ConstNamedStruct(styp.ll, []llvm.Value{data, length.impl})
	pkg.NewVarEx(name, prog.Pointer(styp)).Init(Expr{cv, styp})
}

// Undefined global string var by names
func (pkg Package) Undefined(names ...string) error {
	prog := pkg.Prog
	styp := prog.rtString()
	for _, name := range names {
		global := pkg.VarOf(name)
		if global == nil {
			continue
		}
		typ := prog.Elem(global.Type)
		if typ.ll != styp {
			return fmt.Errorf("%s: not a var of type string (type:%v)", name, typ.RawType())
		}
		newGlobal := llvm.AddGlobal(pkg.mod, styp, "")
		global.impl.ReplaceAllUsesWith(newGlobal)
		global.impl.EraseFromParentAsGlobal()
		newGlobal.SetName(name)
	}
	return nil
}

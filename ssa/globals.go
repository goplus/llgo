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
	"sort"

	"github.com/goplus/llvm"
)

func AddGlobalStrings(pkg Package, globalDatas map[string]string) Package {
	prog := pkg.Prog
	styp := prog.rtString()
	names := make([]string, len(globalDatas))
	var i int
	for name := range globalDatas {
		names[i] = name
		i++
	}
	sort.Strings(names)
	typ := prog.Pointer(prog.String())
	for _, name := range names {
		value := globalDatas[name]
		cstr := pkg.mod.Context().ConstString(value, false)
		data := llvm.AddGlobal(pkg.mod, cstr.Type(), "")
		data.SetInitializer(cstr)
		data.SetAlignment(1)
		data.SetUnnamedAddr(true)
		data.SetLinkage(llvm.PrivateLinkage)
		length := prog.IntVal(uint64(len(value)), prog.Uintptr())
		cv := llvm.ConstNamedStruct(styp, []llvm.Value{data, length.impl})
		pkg.NewVarEx(name, typ).impl.SetInitializer(cv)
	}
	return pkg
}

func UndefinedGlobalStrings(pkg Package, globalNames []string) error {
	prog := pkg.Prog
	styp := prog.rtString()
	for _, name := range globalNames {
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

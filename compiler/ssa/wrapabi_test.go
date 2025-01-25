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

package ssa

import (
	"go/token"
	"go/types"
	"testing"
)

func TestCType(t *testing.T) {
	var tests = []struct {
		typ  types.Type
		name string
		ctyp string
	}{
		{types.Typ[types.Int], "v", "GoInt v"},
		{types.Typ[types.UnsafePointer], "v", "void *v"},
		{types.NewSlice(types.Typ[types.Int]), "v", "GoSlice v"},
		{types.NewMap(types.Typ[types.Int], types.Typ[types.String]), "v", "void *v"},
		{types.NewChan(types.SendRecv, types.Typ[types.Int]), "v", "void *v"},
		{types.NewInterface(nil, nil), "v", "GoInterface v"},
		{types.NewSignature(nil, nil, nil, false), "v", "void *v"},
	}
	for _, test := range tests {
		if ctyp := toCType(test.typ, test.name); ctyp != test.ctyp {
			t.Fatalf("got %v, want %v", ctyp, test.ctyp)
		}
	}
}

func TestCTypeName(t *testing.T) {
	st := types.NewStruct([]*types.Var{types.NewVar(token.NoPos, nil, "v", types.Typ[types.Int32])}, nil)
	ar := types.NewArray(types.Typ[types.Int32], 128)
	var tests = []struct {
		typ  types.Type
		name string
	}{
		{types.NewNamed(types.NewTypeName(token.NoPos, nil, "Info", nil), st, nil), "Info"},
		{types.NewNamed(types.NewTypeName(token.NoPos, nil, "Array", nil), ar, nil), "Array"},
		{st, "T_cebf5235330d7edcaa1d4978344aeca5"},
		{ar, "T_085c4553affe27d57830441b4da93948"},
	}
	for _, test := range tests {
		if name := ctypName(test.typ); name != test.name {
			t.Fatalf("got %v, want %v", name, test.name)
		}
	}
}

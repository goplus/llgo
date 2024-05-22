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

package ssa_test

import (
	"go/types"
	"testing"

	"github.com/goplus/llgo/cl/cltest"
	"github.com/goplus/llgo/ssa"
	"github.com/goplus/llgo/ssa/ssatest"
)

func TestFromTestpy(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testpy", false)
}

func TestFromTestrt(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testrt", true)
}

func TestFromTestdata(t *testing.T) {
	cltest.FromDir(t, "", "../cl/_testdata", false)
}

func TestRuntime(t *testing.T) {
	cltest.Pkg(t, "github.com/goplus/llgo/internal/runtime", "../internal/runtime/llgo_autogen.ll")
}

func TestAbi(t *testing.T) {
	cltest.Pkg(t, "github.com/goplus/llgo/internal/abi", "../internal/abi/llgo_autogen.ll")
}

func TestMakeInterface(t *testing.T) {
	prog := ssatest.NewProgram(t, &ssa.Target{GOARCH: "x86"})
	pkg := prog.NewPackage("foo", "foo")
	fn := pkg.NewFunc("main", types.NewSignatureType(nil, nil, nil, nil, nil, false), ssa.InC)
	b := fn.MakeBody(1)
	b.MakeInterface(prog.Any(), prog.IntVal(100, prog.Int64()))
	b.MakeInterface(prog.Any(), prog.FloatVal(100, prog.Float64()))
	b.Return()
	ssatest.Assert(t, pkg, `; ModuleID = 'foo'
source_filename = "foo"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }

@runtime.type.int64 = linkonce_odr constant { i64, i64, i32, i8, i8, i8, i8, ptr, i64, i32, i32 } { i64 8, i64 0, i32 0, i8 0, i8 0, i8 0, i8 6, ptr @"github.com/goplus/llgo/internal/runtime.EqualBasic", i64 0, i32 0, i32 0 }
@runtime.type.float64 = linkonce_odr constant { i64, i64, i32, i8, i8, i8, i8, ptr, i64, i32, i32 } { i64 8, i64 0, i32 0, i8 0, i8 0, i8 0, i8 14, ptr @"github.com/goplus/llgo/internal/runtime.EqualBasic", i64 0, i32 0, i32 0 }

define void @main() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %0, align 4
  %1 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAny"(ptr @runtime.type.int64, ptr %0)
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store double 1.000000e+02, ptr %2, align 8
  %3 = call %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAny"(ptr @runtime.type.float64, ptr %2)
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare %"github.com/goplus/llgo/internal/runtime.iface" @"github.com/goplus/llgo/internal/runtime.MakeAny"(ptr, ptr)

declare i1 @"github.com/goplus/llgo/internal/runtime.EqualBasic"(ptr, ptr)
`)
}

/*
func TestCallback(t *testing.T) {
	ctx := llvm.NewContext()
	mod := ctx.NewModule("foo/bar")

	tc := llvm.FunctionType(ctx.VoidType(), nil, false)
	callback := llvm.PointerType(tc, 0)
	params := []llvm.Type{callback}

	tfn := llvm.FunctionType(ctx.VoidType(), params, false)
	f := llvm.AddFunction(mod, "fn", tfn)
	b := ctx.NewBuilder()
	blk := llvm.AddBasicBlock(f, "")
	b.SetInsertPointAtEnd(blk)

	arg := f.Param(0)
	// arg = b.CreateLoad(tc, arg, "")
	b.CreateCall(tc, arg, nil, "")
	b.CreateRetVoid()

	expected := `; ModuleID = 'foo/bar'
`
	if v := mod.String(); v != expected {
		t.Fatalf("\n==> got:\n%s\n==> expected:\n%s\n", v, expected)
	}
}

/*
func TestMap(t *testing.T) {
	var m typeutil.Map
	sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
	m.Set(sig, 1)
	csig := (*ssa.CFuncPtr)(sig)
	m.Set(csig, 2)
	if v := m.At(sig); v.(int) != 1 {
		t.Fatal("At(sig):", v)
	}
	if v := m.At(csig); v.(int) != 2 {
		t.Fatal("At(csig):", v)
	}
}
*/

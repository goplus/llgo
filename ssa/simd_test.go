//go:build !llgo

package ssa

import (
	"go/token"
	"go/types"
	"strings"
	"testing"

	"github.com/xgo-dev/llvm"
)

func TestSIMDFeaturesPreserveExistingRequirements(t *testing.T) {
	prog := NewProgram(&Target{GOOS: "wasip1", GOARCH: "wasm"})
	defer prog.Dispose()
	pkg := prog.NewPackage("p", "p")
	fn := pkg.NewFunc("p.f", NoArgsNoRet, GoDecl)
	fn.impl.AddFunctionAttr(prog.ctx.CreateStringAttribute("target-features", "+bulk-memory"))
	b := fn.MakeBody(1)
	b.requireSIMDFeatures()
	b.requireSIMDFeatures()
	b.Return()
	b.EndBuild()
	for _, attr := range fn.impl.GetFunctionAttributes() {
		if attr.IsString() && attr.GetStringKind() == "target-features" {
			got := attr.GetStringValue()
			if !strings.Contains(got, "+bulk-memory") || strings.Count(got, "+simd128") != 1 {
				t.Fatalf("target features = %q", got)
			}
			return
		}
	}
	t.Fatal("missing target features")
}

func TestSIMDValueAndStorageLayout(t *testing.T) {
	rawPkg := types.NewPackage("simd/archsimd", "archsimd")
	marker := types.NewNamed(types.NewTypeName(token.NoPos, rawPkg, "v128", nil), types.NewStruct([]*types.Var{
		types.NewField(token.NoPos, rawPkg, "tag", types.NewArray(types.NewSignatureType(nil, nil, nil, nil, nil, false), 0), false),
	}, nil), nil)
	for _, target := range []*Target{{GOOS: "linux", GOARCH: "amd64"}, {GOOS: "linux", GOARCH: "arm64"}, {GOOS: "wasip1", GOARCH: "wasm", WasmProfile: "w32", WasmProvider: "wasi"}} {
		t.Run(target.GOARCH, func(t *testing.T) {
			prog := NewProgram(target)
			defer prog.Dispose()
			raw := types.NewNamed(types.NewTypeName(token.NoPos, rawPkg, "Float32x4", nil), types.NewStruct([]*types.Var{
				types.NewField(token.NoPos, rawPkg, "tag", marker, false),
				types.NewField(token.NoPos, rawPkg, "vals", types.NewArray(types.Typ[types.Float32], 4), false),
			}, nil), nil)
			typ := prog.rawType(raw)
			if typ.ll.TypeKind() != llvm.VectorTypeKind || prog.SizeOf(typ) != 16 || prog.AlignOf(typ) != 8 || prog.OffsetOf(typ, 1) != 0 {
				t.Fatal("incorrect vector value or Go storage layout")
			}
			fields := types.NewStruct([]*types.Var{types.NewField(token.NoPos, nil, "prefix", types.Typ[types.Byte], false), types.NewField(token.NoPos, nil, "value", raw, false), types.NewField(token.NoPos, nil, "suffix", types.Typ[types.Byte], false)}, nil)
			record := prog.rawType(fields)
			if prog.OffsetOf(record, 1) != 8 || prog.OffsetOf(record, 2) != 24 || prog.SizeOf(record) != 32 {
				t.Fatal("LLVM vector alignment leaked into Go struct layout")
			}
			setTestRuntime(t, prog)
			pkg := prog.NewPackage("p", "p")
			sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(types.NewParam(token.NoPos, nil, "x", raw)), types.NewTuple(types.NewParam(token.NoPos, nil, "", raw)), false)
			fn := pkg.NewFunc("p.roundtrip", sig, GoDecl)
			b := fn.MakeBody(1)
			defer b.Dispose()
			ptr := b.AllocaT(typ)
			// Source-level field access and aggregate construction must bridge the
			// representation used inside archsimd without changing its Go type.
			rebuilt := b.Aggregate(typ, prog.Zero(prog.rawType(marker)), b.Field(fn.Param(0), 1))
			converted := b.ChangeType(typ, b.ChangeType(prog.rawType(raw.Underlying()), rebuilt))
			if converted.Type != typ {
				t.Fatal("SIMD conversion lost its named type")
			}
			b.Store(ptr, fn.Param(0))
			b.Return(b.Load(ptr))
			b.EndBuild()
			ir := fn.impl.String()
			if !strings.Contains(ir, "load <4 x float>") || !strings.Contains(ir, "store <4 x float>") {
				t.Fatalf("memory access scalarizes vectors:\n%s", ir)
			}
			clearSig := types.NewSignatureType(nil, nil, nil, types.NewTuple(types.NewParam(token.NoPos, nil, "p", types.NewPointer(raw))), nil, false)
			clear := pkg.NewFunc("p.clear", clearSig, GoDecl)
			cb := clear.MakeBody(1)
			cb.Store(clear.Param(0), prog.Zero(typ))
			cb.Return()
			cb.EndBuild()
			cb.Dispose()
			zero := prog.Zero(typ)
			constant := prog.toStorageConstant(typ, zero.impl)
			if constant.Type() != prog.storageType(typ) {
				t.Fatal("wrong global storage constant")
			}
			if err := llvm.VerifyModule(pkg.Module(), llvm.ReturnStatusAction); err != nil {
				t.Fatal(err)
			}
		})
	}
}

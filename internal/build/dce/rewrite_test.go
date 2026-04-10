package dce

import (
	"testing"

	llvm "github.com/goplus/llvm"
)

func TestEmitStrongTypeOverrides(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	src := ctx.NewModule("src")
	defer src.Dispose()
	dst := ctx.NewModule("dst")
	defer dst.Dispose()

	i32 := ctx.Int32Type()
	void := ctx.VoidType()
	textPtr := llvm.PointerType(void, 0)

	abiType := ctx.StructCreateNamed(runtimeABIPrefix + "Type")
	abiType.StructSetBody([]llvm.Type{i32}, false)
	uncommonType := ctx.StructCreateNamed(runtimeABIPrefix + "UncommonType")
	uncommonType.StructSetBody([]llvm.Type{i32}, false)
	methodType := ctx.StructCreateNamed(runtimeABIPrefix + "Method")
	methodType.StructSetBody([]llvm.Type{i32, i32, textPtr, textPtr}, false)

	zeroABIType := llvm.ConstNamedStruct(abiType, []llvm.Value{
		llvm.ConstInt(i32, 0, false),
	})
	zeroUncommon := llvm.ConstNamedStruct(uncommonType, []llvm.Value{
		llvm.ConstInt(i32, 0, false),
	})

	keepFn := llvm.AddFunction(src, "keep.fn", llvm.FunctionType(void, nil, false))
	dropFn := llvm.AddFunction(src, "drop.fn", llvm.FunctionType(void, nil, false))

	methods := llvm.ConstArray(methodType, []llvm.Value{
		llvm.ConstNamedStruct(methodType, []llvm.Value{
			llvm.ConstInt(i32, 11, false),
			llvm.ConstInt(i32, 21, false),
			keepFn,
			keepFn,
		}),
		llvm.ConstNamedStruct(methodType, []llvm.Value{
			llvm.ConstInt(i32, 12, false),
			llvm.ConstInt(i32, 22, false),
			dropFn,
			dropFn,
		}),
	})

	typeTType := llvm.StructType([]llvm.Type{abiType, uncommonType, methods.Type()}, false)
	typeT := llvm.AddGlobal(src, typeTType, "_llgo_type.T")
	typeT.SetInitializer(llvm.ConstNamedStruct(typeTType, []llvm.Value{
		zeroABIType,
		zeroUncommon,
		methods,
	}))
	typeT.SetGlobalConstant(true)
	typeT.SetLinkage(llvm.WeakODRLinkage)

	result := Result{
		"_llgo_type.T": {
			0: {},
		},
	}
	if err := EmitStrongTypeOverrides(dst, []llvm.Module{src}, result); err != nil {
		t.Fatalf("EmitStrongTypeOverrides() error = %v", err)
	}

	override := dst.NamedGlobal("_llgo_type.T")
	if override.IsNil() {
		t.Fatal("override type global not emitted")
	}
	if override.Linkage() != llvm.ExternalLinkage {
		t.Fatalf("override linkage = %v, want ExternalLinkage", override.Linkage())
	}

	overrideMethods, _, ok := methodArray(override.Initializer())
	if !ok {
		t.Fatal("override initializer missing abi.Method array")
	}
	if got := overrideMethods.Operand(0).Operand(2).Name(); got != "keep.fn" {
		t.Fatalf("keep slot Ifn = %q, want keep.fn", got)
	}
	if !overrideMethods.Operand(1).Operand(2).IsNull() {
		t.Fatalf("dead slot Ifn = %v, want null", overrideMethods.Operand(1).Operand(2))
	}
	if !overrideMethods.Operand(1).Operand(3).IsNull() {
		t.Fatalf("dead slot Tfn = %v, want null", overrideMethods.Operand(1).Operand(3))
	}
}

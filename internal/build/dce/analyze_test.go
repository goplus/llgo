package dce

import (
	"reflect"
	"testing"

	llvm "github.com/goplus/llvm"
)

func TestAnalyzeEmpty(t *testing.T) {
	got, err := Analyze(nil, nil)
	if err != nil {
		t.Fatalf("Analyze(nil, nil) error = %v", err)
	}
	if len(got) != 0 {
		t.Fatalf("Analyze(nil, nil) = %#v, want empty result", got)
	}
}

func TestBuildInputEmpty(t *testing.T) {
	input, err := BuildInput([]llvm.Module{})
	if err != nil {
		t.Fatalf("BuildInput(empty) error = %v", err)
	}
	if input.OrdinaryEdges == nil {
		t.Fatal("BuildInput(empty) returned nil OrdinaryEdges")
	}
	if input.TypeChildren == nil {
		t.Fatal("BuildInput(empty) returned nil TypeChildren")
	}
}

func TestBuildInputReadsMetadataAndOrdinaryEdges(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("test")
	defer mod.Dispose()

	void := ctx.VoidType()
	fnType := llvm.FunctionType(void, nil, false)
	caller := llvm.AddFunction(mod, "caller", fnType)
	callee := llvm.AddFunction(mod, "callee", fnType)

	builder := ctx.NewBuilder()
	defer builder.Dispose()
	entry := ctx.AddBasicBlock(caller, "entry")
	builder.SetInsertPointAtEnd(entry)
	builder.CreateCall(fnType, callee, nil, "")
	builder.CreateRetVoid()

	target := llvm.AddGlobal(mod, ctx.Int32Type(), "target")
	target.SetInitializer(llvm.ConstInt(ctx.Int32Type(), 7, false))
	holder := llvm.AddGlobal(mod, llvm.PointerType(ctx.Int32Type(), 0), "holder")
	holder.SetInitializer(target)

	mod.AddNamedMetadataOperand(llgoUseIfaceMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("owner.useiface"),
		ctx.MDString("_llgo_type.T"),
	}))
	mod.AddNamedMetadataOperand(llgoUseIfaceMethodMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("owner.ifacemethod"),
		ctx.MDString("_llgo_iface.I"),
		ctx.MDString("M"),
		ctx.MDString("_llgo_func$abc"),
	}))
	mod.AddNamedMetadataOperand(llgoMethodOffMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("_llgo_type.T"),
		llvm.ConstInt(ctx.Int32Type(), 3, false).ConstantAsMetadata(),
		ctx.MDString("M"),
		ctx.MDString("_llgo_func$abc"),
	}))
	mod.AddNamedMetadataOperand(llgoUseNamedMethodMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("owner.named"),
		ctx.MDString("M"),
	}))
	mod.AddNamedMetadataOperand(llgoReflectMethodMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("owner.reflect"),
	}))

	input, err := BuildInput([]llvm.Module{mod})
	if err != nil {
		t.Fatalf("BuildInput(module) error = %v", err)
	}

	if _, ok := input.OrdinaryEdges["caller"]["callee"]; !ok {
		t.Fatalf("OrdinaryEdges[caller] missing callee: %#v", input.OrdinaryEdges["caller"])
	}
	if _, ok := input.OrdinaryEdges["holder"]["target"]; !ok {
		t.Fatalf("OrdinaryEdges[holder] missing target: %#v", input.OrdinaryEdges["holder"])
	}

	if got, want := input.UseIface, []UseIfaceRow{{
		Owner:  "owner.useiface",
		Target: "_llgo_type.T",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseIface = %#v, want %#v", got, want)
	}
	if got, want := input.UseIfaceMethod, []UseIfaceMethodRow{{
		Owner:  "owner.ifacemethod",
		Target: "_llgo_iface.I",
		Name:   "M",
		MTyp:   "_llgo_func$abc",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseIfaceMethod = %#v, want %#v", got, want)
	}
	if got, want := input.MethodOff, []MethodOffRow{{
		TypeName: "_llgo_type.T",
		Index:    3,
		Name:     "M",
		MTyp:     "_llgo_func$abc",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("MethodOff = %#v, want %#v", got, want)
	}
	if got, want := input.UseNamedMethod, []UseNamedMethodRow{{
		Owner: "owner.named",
		Name:  "M",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseNamedMethod = %#v, want %#v", got, want)
	}
	if got, want := input.ReflectMethod, []ReflectMethodRow{{
		Owner: "owner.reflect",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("ReflectMethod = %#v, want %#v", got, want)
	}
}

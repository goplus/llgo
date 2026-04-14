package dce

import (
	"bytes"
	"os"
	"path/filepath"
	"reflect"
	"testing"
	"time"

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
	if input.MethodInfo == nil {
		t.Fatal("BuildInput(empty) returned nil MethodInfo")
	}

	input, stats, err := BuildInputWithStats([]llvm.Module{})
	if err != nil {
		t.Fatalf("BuildInputWithStats(empty) error = %v", err)
	}
	if stats.Modules != 0 {
		t.Fatalf("BuildInputWithStats(empty).Modules = %d, want 0", stats.Modules)
	}
	if input.OrdinaryEdges == nil || input.TypeChildren == nil || input.MethodInfo == nil {
		t.Fatal("BuildInputWithStats(empty) returned nil maps")
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
	mod.AddNamedMetadataOperand(llgoInterfaceInfoMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("_llgo_iface.I"),
		ctx.MDString("M"),
		ctx.MDString("_llgo_func$abc"),
	}))
	mod.AddNamedMetadataOperand(llgoInterfaceInfoMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("_llgo_iface.I"),
		ctx.MDString("N"),
		ctx.MDString("_llgo_func$def"),
	}))
	mod.AddNamedMetadataOperand(llgoMethodInfoMetadata, ctx.MDNode([]llvm.Metadata{
		ctx.MDString("_llgo_type.T"),
		llvm.ConstInt(ctx.Int32Type(), 3, false).ConstantAsMetadata(),
		ctx.MDString("M"),
		ctx.MDString("_llgo_func$abc"),
		ctx.MDString("pkg.T.ifn"),
		ctx.MDString("pkg.T.tfn"),
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

	if got, want := input.UseIface, []IfaceUse{{
		Owner:  "owner.useiface",
		Target: "_llgo_type.T",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseIface = %#v, want %#v", got, want)
	}
	if got, want := input.UseIfaceMethod, []IfaceMethodUse{{
		Owner:  "owner.ifacemethod",
		Target: "_llgo_iface.I",
		Sig: MethodSig{
			Name:  "M",
			MType: "_llgo_func$abc",
		},
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseIfaceMethod = %#v, want %#v", got, want)
	}
	if got, want := input.InterfaceInfo, []InterfaceMethod{
		{
			Target: "_llgo_iface.I",
			Sig: MethodSig{
				Name:  "M",
				MType: "_llgo_func$abc",
			},
		},
		{
			Target: "_llgo_iface.I",
			Sig: MethodSig{
				Name:  "N",
				MType: "_llgo_func$def",
			},
		},
	}; !reflect.DeepEqual(got, want) {
		t.Fatalf("InterfaceInfo = %#v, want %#v", got, want)
	}
	if got, want := input.MethodInfo, map[Symbol][]MethodSlot{
		"_llgo_type.T": {{
			Index: 3,
			Sig: MethodSig{
				Name:  "M",
				MType: "_llgo_func$abc",
			},
			IFn: "pkg.T.ifn",
			TFn: "pkg.T.tfn",
		}},
	}; !reflect.DeepEqual(got, want) {
		t.Fatalf("MethodInfo = %#v, want %#v", got, want)
	}
	if got, want := input.UseNamedMethod, []NamedMethodUse{{
		Owner: "owner.named",
		Name:  "M",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("UseNamedMethod = %#v, want %#v", got, want)
	}
	if got, want := input.ReflectMethod, []ReflectMethodUse{{
		Owner: "owner.reflect",
	}}; !reflect.DeepEqual(got, want) {
		t.Fatalf("ReflectMethod = %#v, want %#v", got, want)
	}
}

func TestBuildInputReadsConstExprEdgesFromInstruction(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("const-expr")
	defer mod.Dispose()

	i8ptr := llvm.PointerType(ctx.Int8Type(), 0)
	calleeType := llvm.FunctionType(ctx.VoidType(), []llvm.Type{i8ptr}, false)
	callerType := llvm.FunctionType(ctx.VoidType(), nil, false)

	caller := llvm.AddFunction(mod, "caller", callerType)
	callee := llvm.AddFunction(mod, "callee", calleeType)
	target := llvm.AddGlobal(mod, ctx.Int32Type(), "target")
	target.SetInitializer(llvm.ConstInt(ctx.Int32Type(), 1, false))

	builder := ctx.NewBuilder()
	defer builder.Dispose()
	entry := ctx.AddBasicBlock(caller, "entry")
	builder.SetInsertPointAtEnd(entry)
	arg := llvm.ConstBitCast(target, i8ptr)
	builder.CreateCall(calleeType, callee, []llvm.Value{arg}, "")
	builder.CreateRetVoid()

	input, err := BuildInput([]llvm.Module{mod})
	if err != nil {
		t.Fatalf("BuildInput(const expr) error = %v", err)
	}
	if _, ok := input.OrdinaryEdges["caller"]["callee"]; !ok {
		t.Fatalf("OrdinaryEdges[caller] missing callee: %#v", input.OrdinaryEdges["caller"])
	}
	if _, ok := input.OrdinaryEdges["caller"]["target"]; !ok {
		t.Fatalf("OrdinaryEdges[caller] missing target from const expr: %#v", input.OrdinaryEdges["caller"])
	}
}

func TestBuildInputReadsTypeChildren(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("types")
	defer mod.Dispose()

	i32 := ctx.Int32Type()
	abiType := ctx.StructCreateNamed(runtimeABIPrefix + "Type")
	abiType.StructSetBody([]llvm.Type{i32}, false)

	zeroABIType := llvm.ConstNamedStruct(abiType, []llvm.Value{
		llvm.ConstInt(i32, 0, false),
	})

	typeC := llvm.AddGlobal(mod, abiType, "_llgo_type.C")
	typeC.SetInitializer(zeroABIType)

	typeBType := llvm.StructType([]llvm.Type{abiType, llvm.PointerType(abiType, 0)}, false)
	typeB := llvm.AddGlobal(mod, typeBType, "_llgo_type.B")
	typeB.SetInitializer(llvm.ConstNamedStruct(typeBType, []llvm.Value{
		zeroABIType,
		typeC,
	}))

	helperElem := llvm.PointerType(abiType, 0)
	helper := llvm.AddGlobal(mod, llvm.ArrayType(helperElem, 1), "helper")
	helper.SetInitializer(llvm.ConstArray(helperElem, []llvm.Value{typeB}))

	typeAType := llvm.StructType([]llvm.Type{abiType, llvm.PointerType(helper.GlobalValueType(), 0)}, false)
	typeA := llvm.AddGlobal(mod, typeAType, "_llgo_type.A")
	typeA.SetInitializer(llvm.ConstNamedStruct(typeAType, []llvm.Value{
		zeroABIType,
		helper,
	}))

	input, err := BuildInput([]llvm.Module{mod})
	if err != nil {
		t.Fatalf("BuildInput(type children) error = %v", err)
	}

	if got, want := input.TypeChildren["_llgo_type.A"], map[string]struct{}{
		"_llgo_type.B": {},
	}; !reflect.DeepEqual(got, want) {
		t.Fatalf("TypeChildren[A] = %#v, want %#v", got, want)
	}
	if got, want := input.TypeChildren["_llgo_type.B"], map[string]struct{}{
		"_llgo_type.C": {},
	}; !reflect.DeepEqual(got, want) {
		t.Fatalf("TypeChildren[B] = %#v, want %#v", got, want)
	}
	if _, ok := input.TypeChildren["_llgo_type.C"]; ok {
		t.Fatalf("TypeChildren[C] = %#v, want no direct children", input.TypeChildren["_llgo_type.C"])
	}
	if _, ok := input.TypeChildren["helper"]; ok {
		t.Fatalf("TypeChildren[helper] = %#v, helper global should not be a type node", input.TypeChildren["helper"])
	}
}

func TestBuildInputSkipsTypeMethodBodiesInOrdinaryEdges(t *testing.T) {
	ctx := llvm.NewContext()
	defer ctx.Dispose()

	mod := ctx.NewModule("methods")
	defer mod.Dispose()

	i32 := ctx.Int32Type()
	void := ctx.VoidType()

	abiType := ctx.StructCreateNamed(runtimeABIPrefix + "Type")
	abiType.StructSetBody([]llvm.Type{i32}, false)
	uncommonType := ctx.StructCreateNamed(runtimeABIPrefix + "UncommonType")
	uncommonType.StructSetBody([]llvm.Type{i32}, false)
	methodType := ctx.StructCreateNamed(runtimeABIPrefix + "Method")
	methodType.StructSetBody([]llvm.Type{
		abiType,
		llvm.PointerType(void, 0),
		llvm.PointerType(void, 0),
		llvm.PointerType(void, 0),
	}, false)

	zeroABIType := llvm.ConstNamedStruct(abiType, []llvm.Value{
		llvm.ConstInt(i32, 0, false),
	})
	zeroUncommon := llvm.ConstNamedStruct(uncommonType, []llvm.Value{
		llvm.ConstInt(i32, 0, false),
	})

	mtyp := llvm.AddGlobal(mod, abiType, "_llgo_func$abc")
	mtyp.SetInitializer(zeroABIType)

	fnType := llvm.FunctionType(void, nil, false)
	ifn := llvm.AddFunction(mod, "pkg.T.ifn", fnType)
	ifnBlock := ctx.AddBasicBlock(ifn, "entry")
	builder := ctx.NewBuilder()
	defer builder.Dispose()
	builder.SetInsertPointAtEnd(ifnBlock)
	builder.CreateRetVoid()

	tfn := llvm.AddFunction(mod, "pkg.T.tfn", fnType)
	tfnBlock := ctx.AddBasicBlock(tfn, "entry")
	builder.SetInsertPointAtEnd(tfnBlock)
	builder.CreateRetVoid()

	methods := llvm.ConstArray(methodType, []llvm.Value{
		llvm.ConstNamedStruct(methodType, []llvm.Value{
			zeroABIType,
			mtyp,
			ifn,
			tfn,
		}),
	})
	typeTType := llvm.StructType([]llvm.Type{abiType, uncommonType, llvm.ArrayType(methodType, 1)}, false)
	typeT := llvm.AddGlobal(mod, typeTType, "_llgo_type.T")
	typeT.SetInitializer(llvm.ConstNamedStruct(typeTType, []llvm.Value{
		zeroABIType,
		zeroUncommon,
		methods,
	}))

	input, err := BuildInput([]llvm.Module{mod})
	if err != nil {
		t.Fatalf("BuildInput(type methods) error = %v", err)
	}
	if got := input.OrdinaryEdges["_llgo_type.T"]; len(got) != 0 {
		t.Fatalf("OrdinaryEdges[type] = %#v, want no method refs in ordinary graph", got)
	}
}

func TestAnalyzeInputFollowsMethodInfo(t *testing.T) {
	input := Input{
		OrdinaryEdges: map[string]map[string]struct{}{
			"root":       {"owner.useiface": {}},
			"method.one": {"owner.named": {}},
		},
		TypeChildren: make(map[string]map[string]struct{}),
		InterfaceInfo: []InterfaceMethod{{
			Target: "_llgo_iface.I",
			Sig: MethodSig{
				Name:  "IfaceM",
				MType: "_llgo_func$iface",
			},
		}},
		UseIface: []IfaceUse{{
			Owner:  "owner.useiface",
			Target: "_llgo_type.T",
		}},
		UseIfaceMethod: []IfaceMethodUse{{
			Owner:  "owner.useiface",
			Target: "_llgo_iface.I",
			Sig: MethodSig{
				Name:  "IfaceM",
				MType: "_llgo_func$iface",
			},
		}},
		MethodInfo: map[Symbol][]MethodSlot{
			"_llgo_type.T": {
				{
					Index: 0,
					Sig: MethodSig{
						Name:  "IfaceM",
						MType: "_llgo_func$iface",
					},
					TFn: "method.one",
				},
				{
					Index: 1,
					Sig: MethodSig{
						Name:  "NamedM",
						MType: "_llgo_func$named",
					},
					TFn: "method.two",
				},
			},
		},
		UseNamedMethod: []NamedMethodUse{{
			Owner: "owner.named",
			Name:  "NamedM",
		}},
	}

	got := AnalyzeInput(input, []string{"root"})
	want := Result{
		"_llgo_type.T": {
			0: {},
			1: {},
		},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("AnalyzeInput(method info) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeInputPropagatesUsedInIfaceToChildTypes(t *testing.T) {
	input := Input{
		OrdinaryEdges: map[string]map[string]struct{}{
			"root": {"owner.useiface": {}},
		},
		TypeChildren: map[string]map[string]struct{}{
			"_llgo_type.Parent": {"_llgo_type.Child": {}},
		},
		InterfaceInfo: []InterfaceMethod{{
			Target: "_llgo_iface.Parent",
			Sig: MethodSig{
				Name:  "M",
				MType: "_llgo_func$child",
			},
		}},
		UseIface: []IfaceUse{{
			Owner:  "owner.useiface",
			Target: "_llgo_type.Parent",
		}},
		UseIfaceMethod: []IfaceMethodUse{{
			Owner:  "owner.useiface",
			Target: "_llgo_iface.Parent",
			Sig: MethodSig{
				Name:  "M",
				MType: "_llgo_func$child",
			},
		}},
		MethodInfo: map[Symbol][]MethodSlot{
			"_llgo_type.Child": {{
				Index: 0,
				Sig: MethodSig{
					Name:  "M",
					MType: "_llgo_func$child",
				},
				TFn: "child.method",
			}},
		},
	}

	got := AnalyzeInput(input, []string{"root"})
	want := Result{
		"_llgo_type.Child": {0: {}},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("AnalyzeInput(used in iface) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeInputReflectKeepsExportedMethods(t *testing.T) {
	input := Input{
		OrdinaryEdges: map[string]map[string]struct{}{
			"root": {"owner.reflect": {}},
		},
		TypeChildren: make(map[string]map[string]struct{}),
		UseIface: []IfaceUse{{
			Owner:  "owner.reflect",
			Target: "_llgo_type.T",
		}},
		ReflectMethod: []ReflectMethodUse{{
			Owner: "owner.reflect",
		}},
		MethodInfo: map[Symbol][]MethodSlot{
			"_llgo_type.T": {
				{Index: 0, Sig: MethodSig{Name: "Exported", MType: "_llgo_func$exported"}},
				{Index: 1, Sig: MethodSig{Name: "pkg.unexported", MType: "_llgo_func$unexported"}},
			},
		},
	}

	got := AnalyzeInput(input, []string{"root"})
	want := Result{
		"_llgo_type.T": {0: {}},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("AnalyzeInput(reflect) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeInputIfaceMethodRequiresFullInterfaceImplementation(t *testing.T) {
	input := Input{
		OrdinaryEdges: map[string]map[string]struct{}{
			"root": {"owner.useiface": {}, "owner.ifacecall": {}},
		},
		TypeChildren: make(map[string]map[string]struct{}),
		InterfaceInfo: []InterfaceMethod{
			{Target: "_llgo_iface.BI", Sig: MethodSig{Name: "Foo", MType: "_llgo_func$foo"}},
			{Target: "_llgo_iface.BI", Sig: MethodSig{Name: "Bar", MType: "_llgo_func$bar"}},
			{Target: "_llgo_iface.BI", Sig: MethodSig{Name: "Car", MType: "_llgo_func$car"}},
		},
		UseIface: []IfaceUse{
			{Owner: "owner.useiface", Target: "_llgo_type.A"},
			{Owner: "owner.useiface", Target: "_llgo_type.B"},
		},
		UseIfaceMethod: []IfaceMethodUse{
			{Owner: "owner.ifacecall", Target: "_llgo_iface.BI", Sig: MethodSig{Name: "Foo", MType: "_llgo_func$foo"}},
			{Owner: "owner.ifacecall", Target: "_llgo_iface.BI", Sig: MethodSig{Name: "Bar", MType: "_llgo_func$bar"}},
		},
		MethodInfo: map[Symbol][]MethodSlot{
			"_llgo_type.A": {
				{Index: 0, Sig: MethodSig{Name: "Foo", MType: "_llgo_func$foo"}, TFn: "A.Foo"},
				{Index: 1, Sig: MethodSig{Name: "Bar", MType: "_llgo_func$bar"}, TFn: "A.Bar"},
			},
			"_llgo_type.B": {
				{Index: 0, Sig: MethodSig{Name: "Foo", MType: "_llgo_func$foo"}, TFn: "B.Foo"},
				{Index: 1, Sig: MethodSig{Name: "Bar", MType: "_llgo_func$bar"}, TFn: "B.Bar"},
				{Index: 2, Sig: MethodSig{Name: "Car", MType: "_llgo_func$car"}, TFn: "B.Car"},
			},
		},
	}

	got := AnalyzeInput(input, []string{"root"})
	want := Result{
		"_llgo_type.B": {
			0: {},
			1: {},
		},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("AnalyzeInput(partial interface impl) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeInputOmitsEmptyMethodSets(t *testing.T) {
	input := Input{
		UseIface: []IfaceUse{{
			Owner:  "main",
			Target: "_llgo_type.T",
		}},
		MethodInfo: map[Symbol][]MethodSlot{
			"_llgo_type.T": nil,
		},
	}

	got := AnalyzeInput(input, []string{"main"})
	want := Result{}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("AnalyzeInput(omit empty method set) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeClosureallModule(t *testing.T) {
	mod := loadIRModule(t, "../../../cl/_testgo/closureall/out.ll")
	got, err := Analyze([]llvm.Module{mod}, []string{
		"github.com/goplus/llgo/cl/_testgo/closureall.main",
	})
	if err != nil {
		t.Fatalf("Analyze(closureall) error = %v", err)
	}
	want := Result{
		"*_llgo_github.com/goplus/llgo/cl/_testgo/closureall.S": {0: {}},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("Analyze(closureall) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeReflectmethodModule(t *testing.T) {
	mod := loadIRModule(t, "../../../cl/_testgo/reflectmethod/out.ll")
	got, err := Analyze([]llvm.Module{mod}, []string{
		"github.com/goplus/llgo/cl/_testgo/reflectmethod.main",
	})
	if err != nil {
		t.Fatalf("Analyze(reflectmethod) error = %v", err)
	}
	want := Result{
		"*_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T": {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/reflectmethod.T":  {0: {}},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("Analyze(reflectmethod) = %#v, want %#v", got, want)
	}
}

func TestAnalyzeInvokeModule(t *testing.T) {
	mod := loadIRModule(t, "../../../cl/_testgo/invoke/out.ll")
	got, err := Analyze([]llvm.Module{mod}, []string{
		"github.com/goplus/llgo/cl/_testgo/invoke.main",
	})
	if err != nil {
		t.Fatalf("Analyze(invoke) error = %v", err)
	}
	want := Result{
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T":  {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1": {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2": {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T3": {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4": {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5": {0: {}},
		"*_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6": {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T":   {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T1":  {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T2":  {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T4":  {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T5":  {0: {}},
		"_llgo_github.com/goplus/llgo/cl/_testgo/invoke.T6":  {0: {}},
	}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("Analyze(invoke) = %#v, want %#v", got, want)
	}
}

func TestFormatResult(t *testing.T) {
	result := Result{
		"_llgo_type.B": {2: {}, 0: {}},
		"_llgo_type.A": {1: {}},
	}
	got := FormatResult(result)
	want := "_llgo_type.A: [1]\n_llgo_type.B: [0 2]\n"
	if got != want {
		t.Fatalf("FormatResult() = %q, want %q", got, want)
	}
}

func TestFormatAnalyzeStats(t *testing.T) {
	stats := AnalyzeStats{
		BuildInput: BuildInputStats{
			Modules:       3,
			OrdinaryEdges: time.Millisecond,
			TypeChildren:  2 * time.Millisecond,
			Metadata:      4 * time.Millisecond,
			Total:         10 * time.Millisecond,
		},
		AnalyzeInput: AnalyzeInputStats{
			Iterations:       5,
			ReachableSymbols: 7,
			UsedInIfaceTypes: 11,
			LiveTypes:        13,
			LiveMethods:      17,
			Total:            6 * time.Millisecond,
		},
		Total: 16 * time.Millisecond,
	}
	got := FormatAnalyzeStats(stats)
	want := "" +
		"build_input.total: 10ms\n" +
		"build_input.modules: 3\n" +
		"build_input.ordinary_edges: 1ms\n" +
		"build_input.type_children: 2ms\n" +
		"build_input.metadata: 4ms\n" +
		"analyze_input.total: 6ms\n" +
		"analyze_input.iterations: 5\n" +
		"analyze_input.reachable_symbols: 7\n" +
		"analyze_input.used_in_iface_types: 11\n" +
		"analyze_input.live_types: 13\n" +
		"analyze_input.live_methods: 17\n" +
		"total: 16ms\n"
	if got != want {
		t.Fatalf("FormatAnalyzeStats() = %q, want %q", got, want)
	}
}

func TestAnalyzeModuleOutputs(t *testing.T) {
	tests := []struct {
		name   string
		llPath string
		root   string
		golden string
	}{
		{
			name:   "closureall",
			llPath: "../../../cl/_testgo/closureall/out.ll",
			root:   "github.com/goplus/llgo/cl/_testgo/closureall.main",
			golden: "testdata/closureall.txt",
		},
		{
			name:   "invoke",
			llPath: "../../../cl/_testgo/invoke/out.ll",
			root:   "github.com/goplus/llgo/cl/_testgo/invoke.main",
			golden: "testdata/invoke.txt",
		},
		{
			name:   "reader",
			llPath: "../../../cl/_testgo/reader/out.ll",
			root:   "github.com/goplus/llgo/cl/_testgo/reader.main",
			golden: "testdata/reader.txt",
		},
		{
			name:   "reflectmethod",
			llPath: "../../../cl/_testgo/reflectmethod/out.ll",
			root:   "github.com/goplus/llgo/cl/_testgo/reflectmethod.main",
			golden: "testdata/reflectmethod.txt",
		},
		{
			name:   "ifaceconv",
			llPath: "../../../cl/_testgo/ifaceconv/out.ll",
			root:   "github.com/goplus/llgo/cl/_testgo/ifaceconv.main",
			golden: "testdata/ifaceconv.txt",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			mod := loadIRModule(t, tt.llPath)
			got, err := Analyze([]llvm.Module{mod}, []string{tt.root})
			if err != nil {
				t.Fatalf("Analyze(%s) error = %v", tt.name, err)
			}
			assertGoldenText(t, tt.golden, FormatResult(got))
		})
	}
}

func loadIRModule(t *testing.T, rel string) llvm.Module {
	t.Helper()

	path := filepath.Clean(rel)
	if _, err := os.Stat(path); err != nil {
		t.Fatalf("Stat(%s) error = %v", path, err)
	}
	buf, err := llvm.NewMemoryBufferFromFile(path)
	if err != nil {
		t.Fatalf("NewMemoryBufferFromFile(%s) error = %v", path, err)
	}

	ctx := llvm.NewContext()
	t.Cleanup(ctx.Dispose)

	mod, err := (&ctx).ParseIR(buf)
	if err != nil {
		t.Fatalf("ParseIR(%s) error = %v", path, err)
	}
	t.Cleanup(mod.Dispose)
	return mod
}

func assertGoldenText(t *testing.T, rel string, got string) {
	t.Helper()

	path := filepath.Clean(rel)
	want, err := os.ReadFile(path)
	if err != nil {
		t.Fatalf("ReadFile(%s) error = %v", path, err)
	}
	if !bytes.Equal([]byte(got), want) {
		t.Fatalf("golden mismatch for %s\n==> got:\n%s==> want:\n%s", path, got, string(want))
	}
}

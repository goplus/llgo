package pullmodel

import (
	"fmt"
	"go/types"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
)

func (g *PullIRCodeGen) deferWrapperKey(fnType types.Type, argTypes []types.Type) string {
	qual := func(p *types.Package) string {
		if p == nil {
			return ""
		}
		return p.Path()
	}
	var b strings.Builder
	b.WriteString(types.TypeString(fnType, qual))
	for _, t := range argTypes {
		b.WriteString("|")
		b.WriteString(types.TypeString(t, qual))
	}
	return b.String()
}

func (g *PullIRCodeGen) ensureDeferWrapper(fnType types.Type, argTypes []types.Type) deferWrapperInfo {
	key := g.deferWrapperKey(fnType, argTypes)
	if info, ok := g.deferWraps[key]; ok {
		return info
	}
	fields := make([]*types.Var, 0, len(argTypes)+1)
	fields = append(fields, types.NewVar(0, nil, "fn", fnType))
	for i, t := range argTypes {
		fields = append(fields, types.NewVar(0, nil, fmt.Sprintf("a%d", i), t))
	}
	argStruct := types.NewStruct(fields, nil)
	argStructType := g.prog.Type(argStruct, llssa.InGo)

	g.deferWrapSeq++
	base := g.pullIR.Original.String()
	base = strings.NewReplacer(
		"*", "",
		"(", "",
		")", "",
		"/", "_",
		".", "_",
		"[", "_",
		"]", "_",
		" ", "_",
		",", "_",
	).Replace(base)
	wrapperName := fmt.Sprintf("__llgo_defer_wrap$%s$%d", base, g.deferWrapSeq)
	wrapper := g.buildDeferWrapper(wrapperName, argStruct)

	info := deferWrapperInfo{
		fn:            wrapper,
		argStruct:     argStruct,
		argStructType: argStructType,
	}
	g.deferWraps[key] = info
	return info
}

func (g *PullIRCodeGen) buildDeferWrapper(name string, argStruct *types.Struct) llssa.Function {
	sig := types.NewSignatureType(
		nil,
		nil,
		nil,
		types.NewTuple(types.NewVar(0, nil, "arg", types.Typ[types.UnsafePointer])),
		nil,
		false,
	)
	fn := g.pkg.NewFunc(name, sig, llssa.InGo)
	fn.MakeBlocks(1)
	b := fn.NewBuilder()
	b.SetBlock(fn.Block(0))

	argParam := fn.Param(0)
	argStructType := g.prog.Type(argStruct, llssa.InGo)
	argStructPtr := g.prog.Pointer(argStructType)
	argPtr := b.PtrCast(argStructPtr, argParam)

	fnVal := b.Load(b.FieldAddr(argPtr, 0))
	numFields := argStruct.NumFields()
	callArgs := make([]llssa.Expr, numFields-1)
	for i := 1; i < numFields; i++ {
		callArgs[i-1] = b.Load(b.FieldAddr(argPtr, i))
	}
	b.Call(fnVal, callArgs...)
	b.Return()
	return fn
}

// getDeferStateType returns the types.Type for async.DeferState.
func (g *PullIRCodeGen) getDeferStateType() types.Type {
	asyncPkg := g.getAsyncPackage()
	if asyncPkg == nil {
		asyncPkg = types.NewPackage(FuturePkgPath, "async")
	}

	if obj := asyncPkg.Scope().Lookup("DeferState"); obj != nil {
		if named, ok := obj.Type().(*types.Named); ok {
			return named
		}
	}

	unsafePkg := types.Unsafe
	fields := []*types.Var{
		types.NewField(0, asyncPkg, "DeferHead", unsafePkg.Scope().Lookup("Pointer").Type(), false),
		types.NewField(0, asyncPkg, "PanicValue", types.NewInterfaceType(nil, nil), false),
		types.NewField(0, asyncPkg, "IsPanicking", types.Typ[types.Bool], false),
		types.NewField(0, asyncPkg, "Recovered", types.Typ[types.Bool], false),
	}
	structType := types.NewStruct(fields, nil)
	return types.NewNamed(types.NewTypeName(0, asyncPkg, "DeferState", nil), structType, nil)
}

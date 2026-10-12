package cl

import (
	"go/types"

	"github.com/xgo-dev/llgo/internal/llvmfmv"
	llssa "github.com/xgo-dev/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

func simdCPUQuery(fn *ssa.Function) string {
	obj, ok := fn.Object().(*types.Func)
	if !ok || obj.Pkg() == nil || obj.Pkg().Path() != "simd/archsimd" || obj.Name() != "AVX2" ||
		!types.Identical(obj.Type(), fn.Signature) {
		return ""
	}
	sig := fn.Signature
	if sig.Recv() == nil || sig.Params().Len() != 0 || sig.Results().Len() != 1 ||
		!types.Identical(sig.Results().At(0).Type(), types.Typ[types.Bool]) {
		return ""
	}
	recv, ok := sig.Recv().Type().(*types.Named)
	if !ok || recv.Obj().Pkg() != obj.Pkg() || recv.Obj().Name() != "X86Features" {
		return ""
	}
	return llvmfmv.AVX2Query
}

func (p *context) markSIMDFMV(fn llssa.Function, source *ssa.Function) {
	if fn == nil || p.prog.Target().GOARCH != "amd64" {
		return
	}
	// Bodyless assembly/linkname declarations do not promise a compiler-emitted
	// entry. Official SIMD intrinsic declarations have LLGo-generated bodies.
	_, intrinsic := lookupSIMD(source, "amd64")
	available := len(source.Blocks) != 0 || intrinsic
	hasVector := false
	sig := source.Signature
	seen := make(map[types.Type]bool)
	var check func(types.Type)
	check = func(t types.Type) {
		t = types.Unalias(t)
		if hasVector || seen[t] {
			return
		}
		seen[t] = true
		if _, ok := llssa.SIMDVectorShape(t); ok {
			hasVector = true
			return
		}
		// Only by-value containment changes the vector call boundary; do not
		// walk through pointers, slices, or recursive reference graphs.
		switch t := t.Underlying().(type) {
		case *types.Struct:
			for i := 0; i < t.NumFields(); i++ {
				check(t.Field(i).Type())
			}
		case *types.Array:
			check(t.Elem())
		}
	}
	if sig.Recv() != nil {
		check(sig.Recv().Type())
	}
	for i := 0; i < sig.Params().Len(); i++ {
		check(sig.Params().At(i).Type())
	}
	for i := 0; i < sig.Results().Len(); i++ {
		check(sig.Results().At(i).Type())
	}
	fn.MarkSIMDFMV(available && hasVector, simdCPUQuery(source))
}

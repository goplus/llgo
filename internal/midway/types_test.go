package midway

import (
	"go/ast"
	"go/parser"
	"go/token"
	"go/types"
	"strings"
	"testing"
)

func TestTypeExprConstraintRoundTrip(t *testing.T) {
	for _, constraint := range []string{"~int | ~int64", "int | string", "~[]byte"} {
		t.Run(constraint, func(t *testing.T) {
			fset := token.NewFileSet()
			file, err := parser.ParseFile(fset, "generic.go", "package generic\nfunc Identity[T interface { "+constraint+" }](x T) T { return x }", 0)
			if err != nil {
				t.Fatal(err)
			}
			info := testInfo()
			cfg := types.Config{}
			pkg, err := cfg.Check("generic", fset, []*ast.File{file}, info)
			if err != nil {
				t.Fatal(err)
			}
			fn := file.Decls[0].(*ast.FuncDecl)
			sig := pkg.Scope().Lookup("Identity").Type().(*types.Signature)
			param := sig.TypeParams().At(0)
			r := &rewriter{fset: fset, a: analyze(pkg, info, []*ast.File{file}), imports: make(map[string]bool)}
			fr := r.file(file)
			// Reconstruct the constraint and its bound uses from checked types,
			// then verify the result with a fresh checker and fresh identities.
			fn.Type.TypeParams.List[0].Type = fr.typeExpr(param.Constraint(), -1, fn.Pos())
			fn.Type.Params.List[0].Type = fr.typeExpr(param, -1, fn.Pos())
			fn.Type.Results.List[0].Type = fr.typeExpr(param, -1, fn.Pos())
			if r.err != nil {
				t.Fatal(r.err)
			}
			rebuilt, err := cfg.Check("generic", fset, []*ast.File{file}, testInfo())
			if err != nil {
				t.Fatal(err)
			}
			got := rebuilt.Scope().Lookup("Identity").Type().(*types.Signature)
			if !types.Identical(sig, got) {
				t.Fatalf("type reconstruction changed signature: %v -> %v", sig, got)
			}
		})
	}
}

func TestTypeExprRejectsNonValueType(t *testing.T) {
	fset := token.NewFileSet()
	file := fset.AddFile("initializer.go", -1, 10)
	r := &rewriter{fset: fset}
	fr := &fileRewriter{rewriter: r}
	// A result tuple must be split into individual initializer result types;
	// it cannot itself become the type of a generated Go variable.
	tuple := types.NewTuple(types.NewVar(token.NoPos, nil, "", types.Typ[types.Int]))
	expr := fr.typeExpr(tuple, -1, file.Pos(0))
	if r.err == nil || !strings.Contains(r.err.Error(), "initializer.go:1:1: unsupported SIMD initializer type") {
		t.Fatalf("missing diagnostic for a non-value type: %v", r.err)
	}
	if _, ok := expr.(*ast.BadExpr); !ok {
		t.Fatalf("unsupported type produced usable syntax: %T", expr)
	}
}

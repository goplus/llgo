package types_test

import (
	"go/token"
	gotypes "go/types"
	"testing"
)

func TestCoreConstructorsAndScopes(t *testing.T) {
	pkg := gotypes.NewPackage("example.org/ctor", "ctor")
	if pkg.Name() != "ctor" || pkg.Path() != "example.org/ctor" {
		t.Fatalf("package metadata mismatch: name=%q path=%q", pkg.Name(), pkg.Path())
	}
	scope := pkg.Scope()
	if scope == nil || scope.Lookup("missing") != nil {
		t.Fatal("invalid initial scope state")
	}

	v := gotypes.NewVar(token.NoPos, pkg, "V", gotypes.Typ[gotypes.Int])
	if alt := scope.Insert(v); alt != nil {
		t.Fatalf("unexpected existing object: %v", alt)
	}
	if got := scope.Lookup("V"); got != v {
		t.Fatalf("scope lookup mismatch: got %v, want %v", got, v)
	}

	child := gotypes.NewScope(scope, token.NoPos, token.NoPos, "child")
	if child.Parent() != scope {
		t.Fatal("child scope parent mismatch")
	}

	pkg2 := gotypes.NewPackage("example.org/dep", "dep")
	pkg.SetImports([]*gotypes.Package{pkg2})
	if len(pkg.Imports()) != 1 || pkg.Imports()[0] != pkg2 {
		t.Fatal("SetImports/Imports mismatch")
	}
}

func TestTypeConstructors(t *testing.T) {
	pkg := gotypes.NewPackage("example.org/types", "types")
	field := gotypes.NewField(token.NoPos, pkg, "X", gotypes.Typ[gotypes.Int], false)
	st := gotypes.NewStruct([]*gotypes.Var{field}, []string{`json:"x"`})
	if st.NumFields() != 1 || st.Field(0).Name() != "X" {
		t.Fatalf("struct fields mismatch: %d", st.NumFields())
	}
	if st.Tag(0) != `json:"x"` {
		t.Fatalf("struct tag mismatch: %q", st.Tag(0))
	}

	ptr := gotypes.NewPointer(st)
	sl := gotypes.NewSlice(gotypes.Typ[gotypes.String])
	arr := gotypes.NewArray(gotypes.Typ[gotypes.Byte], 4)
	mp := gotypes.NewMap(gotypes.Typ[gotypes.String], gotypes.Typ[gotypes.Int])
	ch := gotypes.NewChan(gotypes.SendRecv, gotypes.Typ[gotypes.Int])
	if ptr.Elem() != st || sl.Elem() != gotypes.Typ[gotypes.String] || arr.Len() != 4 || mp.Key() != gotypes.Typ[gotypes.String] || ch.Dir() != gotypes.SendRecv {
		t.Fatal("type constructors produced unexpected members")
	}

	tn := gotypes.NewTypeName(token.NoPos, pkg, "MyInt", nil)
	named := gotypes.NewNamed(tn, gotypes.Typ[gotypes.Int], nil)
	if named.Obj() != tn {
		t.Fatal("named type object mismatch")
	}
	if named.Underlying() != gotypes.Typ[gotypes.Int] {
		t.Fatalf("named underlying mismatch: %v", named.Underlying())
	}
}

func TestSignaturesInterfacesAndSizes(t *testing.T) {
	pkg := gotypes.NewPackage("example.org/sig", "sig")
	p := gotypes.NewVar(token.NoPos, pkg, "p", gotypes.Typ[gotypes.Int])
	r := gotypes.NewVar(token.NoPos, pkg, "", gotypes.Typ[gotypes.Bool])
	sig := gotypes.NewSignatureType(nil, nil, nil, gotypes.NewTuple(p), gotypes.NewTuple(r), false)
	if sig.Params().Len() != 1 || sig.Results().Len() != 1 {
		t.Fatalf("signature tuple lens mismatch: params=%d results=%d", sig.Params().Len(), sig.Results().Len())
	}
	if sig.Variadic() {
		t.Fatal("signature should be non-variadic")
	}

	m := gotypes.NewFunc(token.NoPos, pkg, "M", gotypes.NewSignatureType(nil, nil, nil, nil, nil, false))
	iface := gotypes.NewInterfaceType([]*gotypes.Func{m}, nil)
	iface.Complete()
	if iface.NumMethods() != 1 || iface.Method(0).Name() != "M" {
		t.Fatalf("interface methods mismatch: %d", iface.NumMethods())
	}
	if !iface.IsMethodSet() {
		t.Fatal("interface should be a method set")
	}

	sizes := gotypes.SizesFor("gc", "amd64")
	if sizes == nil {
		t.Fatal("SizesFor(gc, amd64) returned nil")
	}
	if sizes.Sizeof(gotypes.Typ[gotypes.Int]) <= 0 {
		t.Fatalf("Sizeof(int) invalid: %d", sizes.Sizeof(gotypes.Typ[gotypes.Int]))
	}

	std := &gotypes.StdSizes{WordSize: 8, MaxAlign: 8}
	if std.Alignof(gotypes.Typ[gotypes.Int32]) <= 0 {
		t.Fatal("StdSizes.Alignof invalid")
	}
	if std.Sizeof(gotypes.NewStruct([]*gotypes.Var{
		gotypes.NewField(token.NoPos, nil, "A", gotypes.Typ[gotypes.Int8], false),
		gotypes.NewField(token.NoPos, nil, "B", gotypes.Typ[gotypes.Int64], false),
	}, nil)) <= 0 {
		t.Fatal("StdSizes.Sizeof(struct) invalid")
	}
}

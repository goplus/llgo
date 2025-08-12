//go:build !llgo
// +build !llgo

package cabi_test

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/llvm"

	"github.com/goplus/llgo/internal/build"
	"github.com/goplus/llgo/internal/cabi"
)

var (
	modes   = []cabi.Mode{cabi.ModeNone, cabi.ModeCFunc, cabi.ModeAllFunc}
	archs   = []string{"amd64", "arm64", "riscv64", "arm"}
	archDir = []string{"amd64", "arm64", "riscv64", "armv6"}
)

func TestBuild(t *testing.T) {
	for _, mode := range modes {
		for _, arch := range archs {
			conf := build.NewDefaultConf(build.ModeGen)
			conf.AbiMode = mode
			conf.Goarch = arch
			conf.Goos = "linux"
			_, err := build.Do([]string{"./_testdata/demo/main.go"}, conf)
			if err != nil {
				t.Fatalf("build error: %v-%v %v", arch, mode, err)
			}
		}
	}
}

func TestABI(t *testing.T) {
	dirs, err := os.ReadDir("./_testdata/demo")
	if err != nil {
		t.Fatal(err)
	}
	var files []string
	for _, f := range dirs {
		if !f.IsDir() && strings.HasSuffix(f.Name(), ".go") {
			files = append(files, f.Name())
		}
	}
	for i, arch := range archs {
		t.Run(arch, func(t *testing.T) {
			t.Parallel()
			testArch(t, arch, archDir[i], files)
		})
	}
}

func testArch(t *testing.T, arch string, archDir string, files []string) {
	conf := build.NewDefaultConf(build.ModeGen)
	conf.AbiMode = cabi.ModeAllFunc
	conf.Goarch = arch
	conf.Goos = "linux"
	for _, file := range files {
		pkgs, err := build.Do([]string{filepath.Join("./_testdata/demo", file)}, conf)
		if err != nil {
			t.Fatalf("build error: %v %v", arch, err)
		}
		ctx := llvm.NewContext()
		llfile := filepath.Join("./_testdata/arch", archDir, file[:len(file)-3]+".ll")
		buf, err := llvm.NewMemoryBufferFromFile(llfile)
		if err != nil {
			t.Fatalf("bad file: %v %v", llfile, err)
		}
		m, err := ctx.ParseIR(buf)
		if err != nil {
			t.Fatalf("parser IR error %v", arch)
		}
		pkg := pkgs[0].LPkg
		testModule(t, context{arch: arch, file: file}, pkg.Prog.TargetData(), pkg.Module(), m)
	}
}

type context struct {
	arch string
	file string
}

func testModule(t *testing.T, ctx context, td llvm.TargetData, m llvm.Module, c llvm.Module) {
	var fns []llvm.Value
	fn := c.FirstFunction()
	for !fn.IsNil() {
		if !fn.IsDeclaration() {
			fns = append(fns, fn)
		}
		fn = llvm.NextFunction(fn)
	}
	for _, fn := range fns {
		testFunc(t, ctx, td, m.NamedFunction(fn.Name()), fn)
	}
}

func testFunc(t *testing.T, ctx context, td llvm.TargetData, fn llvm.Value, cfn llvm.Value) {
	ft := fn.GlobalValueType()
	cft := cfn.GlobalValueType()
	pts := ft.ParamTypes()
	cpts := cft.ParamTypes()
	if len(pts) != len(cpts) {
		t.Fatalf("%v %v: bad param types count %v != %v", ctx, fn.Name(), len(pts), len(cpts))
	}
	for i, pt := range pts {
		if !checkType(td, pt, cpts[i]) {
			t.Fatalf("%v %v: bad param type %v != %v", ctx, fn.Name(), pt, cpts[i])
		}
		if i == 0 {
			if fn.GetStringAttributeAtIndex(1, "sret") != cfn.GetStringAttributeAtIndex(1, "sret") {
				t.Fatalf("%v %v: bad sret attr", ctx, fn.Name())
			}
		}
		if fn.GetStringAttributeAtIndex(1, "byval") != cfn.GetStringAttributeAtIndex(1, "byval") {
			t.Fatalf("%v %v: bad byval attr %v", ctx, fn.Name(), i)
		}
	}
	if !checkType(td, ft.ReturnType(), cft.ReturnType()) {
		t.Fatalf("%v %v: bad return type %v != %v", ctx, fn.Name(), ft.ReturnType(), cft.ReturnType())
	}
}

func checkType(td llvm.TargetData, ft llvm.Type, cft llvm.Type) bool {
	if ft == cft {
		return true
	}
	if ft.TypeKind() == llvm.VoidTypeKind && cft.TypeKind() == llvm.VoidTypeKind {
		return true
	} else if ft.TypeKind() == llvm.VoidTypeKind || cft.TypeKind() == llvm.VoidTypeKind {
		return false
	}
	if td.ABITypeAlignment(ft) != td.ABITypeAlignment(cft) {
		return false
	}
	if td.TypeAllocSize(ft) != td.TypeAllocSize(cft) {
		return false
	}
	et := elementTypes(td, ft)
	cet := elementTypes(td, cft)
	if len(et) != len(cet) {
		return false
	}
	if len(et) == 1 {
		return true
	}
	for i, t := range et {
		if !checkType(td, t, cet[i]) {
			return false
		}
	}
	return true
}

func elementTypes(td llvm.TargetData, typ llvm.Type) (types []llvm.Type) {
	switch typ.TypeKind() {
	case llvm.VoidTypeKind:
	case llvm.StructTypeKind:
		for _, t := range typ.StructElementTypes() {
			types = append(types, elementTypes(td, t)...)
		}
	case llvm.ArrayTypeKind:
		sub := elementTypes(td, typ.ElementType())
		n := typ.ArrayLength()
		for i := 0; i < n; i++ {
			types = append(types, sub...)
		}
	default:
		types = append(types, typ)
	}
	return
}

func byvalAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("byval")
	return ctx.CreateTypeAttribute(id, typ)
}

func sretAttribute(ctx llvm.Context, typ llvm.Type) llvm.Attribute {
	id := llvm.AttributeKindID("sret")
	return ctx.CreateTypeAttribute(id, typ)
}

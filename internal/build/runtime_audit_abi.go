// Copyright 2026 The XGo Authors. All rights reserved.
// Use of this source code is governed by the Apache 2.0 license.

package build

import (
	"fmt"
	"go/ast"
	"go/importer"
	"go/parser"
	"go/token"
	"go/types"
	"go/version"
	"path/filepath"
	"slices"

	llssa "github.com/xgo-dev/llgo/ssa"
)

// Layouts are measured from the selected sources, using gc's target sizes for
// GOROOT and LLVM's actual LLGo representation (including two-word funcvals)
// for LLGo. Matching an offset alone would not establish ABI compatibility.
type RuntimeABI struct {
	LLGoTarget         string            `json:"llgo_target"`
	GoType             RuntimeTypeLayout `json:"go_type"`
	LLGoType           RuntimeTypeLayout `json:"llgo_type"`
	GoFuncValueBytes   uint64            `json:"go_func_value_bytes"`
	LLGoFuncValueBytes uint64            `json:"llgo_func_value_bytes"`
	ClosureTransport   string            `json:"closure_transport"`
	GoRuntimeASMReady  bool              `json:"go_runtime_assembly_ready"`
	Blockers           []string          `json:"blockers"`
}

type RuntimeTypeLayout struct {
	Size   uint64               `json:"size"`
	Align  uint64               `json:"align"`
	Fields []RuntimeFieldLayout `json:"fields"`
}

type RuntimeFieldLayout struct {
	Name   string `json:"name"`
	Type   string `json:"type"`
	Offset uint64 `json:"offset"`
	Size   uint64 `json:"size"`
}

func auditRuntimeABI(runtimeDir, goroot, goVersion string, target *llssa.Target) (*RuntimeABI, error) {
	path, typeName := filepath.Join(goroot, "src/internal/abi/type.go"), "Type"
	if version.Compare(goVersion, "go1.21") < 0 {
		path, typeName = filepath.Join(goroot, "src/runtime/type.go"), "_type"
	}
	gc, err := runtimeMetadataType(path, typeName)
	if err != nil {
		return nil, err
	}
	llgo, err := runtimeMetadataType(filepath.Join(runtimeDir, "abi/type.go"), "Type")
	if err != nil {
		return nil, err
	}
	sizes := types.SizesFor("gc", target.GOARCH)
	if sizes == nil {
		return nil, fmt.Errorf("runtime ABI audit: no Go sizes for %s", target.GOARCH)
	}
	llssaInitOnce.Do(func() { llssa.Initialize(llssa.InitAll) })
	prog := llssa.NewProgram(target)
	defer prog.Dispose()
	stringABI, err := runtimeBoundaryPackage(filepath.Join(runtimeDir, "internal/runtime/z_string.go"), "String")
	if err != nil {
		return nil, err
	}
	prog.SetRuntime(stringABI)
	lltyp := prog.Type(llgo, llssa.GoDecl)
	sig := types.NewSignatureType(nil, nil, nil, types.NewTuple(), types.NewTuple(), false)
	report := &RuntimeABI{
		LLGoTarget:       target.Spec().Triple,
		GoType:           RuntimeTypeLayout{Size: uint64(sizes.Sizeof(gc)), Align: uint64(sizes.Alignof(gc))},
		LLGoType:         RuntimeTypeLayout{Size: prog.SizeOf(lltyp), Align: prog.AlignOf(lltyp)},
		GoFuncValueBytes: uint64(sizes.Sizeof(sig)), LLGoFuncValueBytes: prog.SizeOf(prog.Type(sig, llssa.GoDecl)),
		ClosureTransport: target.ClosureEnvBuildTag(),
		Blockers: []string{
			"Go and LLGo type descriptors and function values have different representations; matching fields do not permit reinterpretation",
			"LLVM nest/swiftself or explicit environments are not Go ABIInternal register/argument transport",
			"LLGo g/m/p and backend contexts do not provide Go g0, gobuf, getg/TLS or generated runtime offsets",
			"Native pthread stacks and Wasm contexts do not provide Go stack growth, stack maps, write barriers or preemption",
		},
	}
	var fields []*types.Var
	for i := 0; i < gc.NumFields(); i++ {
		fields = append(fields, gc.Field(i))
	}
	for i, offset := range sizes.Offsetsof(fields) {
		field := fields[i]
		report.GoType.Fields = append(report.GoType.Fields, RuntimeFieldLayout{field.Name(), field.Type().String(), uint64(offset), uint64(sizes.Sizeof(field.Type()))})
	}
	for i := 0; i < llgo.NumFields(); i++ {
		field := llgo.Field(i)
		ft := prog.Type(field.Type(), llssa.GoDecl)
		report.LLGoType.Fields = append(report.LLGoType.Fields, RuntimeFieldLayout{field.Name(), field.Type().String(), prog.OffsetOf(lltyp, i), prog.SizeOf(ft)})
	}
	return report, nil
}

// Keep only the descriptor and its boundary scalar types. This intentionally
// fails if an upgrade adds a new dependency that needs a compatibility review.
func runtimeMetadataType(path, name string) (*types.Struct, error) {
	pkg, err := runtimeBoundaryPackage(path, name, "Kind", "TFlag", "NameOff", "TypeOff", "tflag", "nameOff", "typeOff")
	if err != nil {
		return nil, err
	}
	obj := pkg.Scope().Lookup(name)
	if obj == nil {
		return nil, fmt.Errorf("runtime metadata boundary %s: missing %s", path, name)
	}
	st, ok := obj.Type().Underlying().(*types.Struct)
	if !ok {
		return nil, fmt.Errorf("runtime metadata boundary %s: %s is not a struct", path, name)
	}
	return st, nil
}

func runtimeBoundaryPackage(path string, names ...string) (*types.Package, error) {
	fset := token.NewFileSet()
	file, err := parser.ParseFile(fset, path, nil, 0)
	if err != nil {
		return nil, err
	}
	decls := []ast.Decl{&ast.GenDecl{Tok: token.IMPORT, Specs: []ast.Spec{&ast.ImportSpec{Path: &ast.BasicLit{Kind: token.STRING, Value: `"unsafe"`}}}}}
	for _, decl := range file.Decls {
		gen, ok := decl.(*ast.GenDecl)
		if !ok || gen.Tok != token.TYPE {
			continue
		}
		for _, spec := range gen.Specs {
			typ := spec.(*ast.TypeSpec)
			if slices.Contains(names, typ.Name.Name) {
				decls = append(decls, &ast.GenDecl{TokPos: gen.TokPos, Tok: token.TYPE, Specs: []ast.Spec{typ}})
			}
		}
	}
	file.Decls = decls
	file.Imports = nil
	config := types.Config{Importer: importer.Default()}
	pkg, err := config.Check("runtimeabi", fset, []*ast.File{file}, nil)
	if err != nil {
		return nil, fmt.Errorf("runtime metadata boundary %s: %w", path, err)
	}
	return pkg, nil
}

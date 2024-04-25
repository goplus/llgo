/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package cl

import (
	"bytes"
	"go/ast"
	"go/token"
	"go/types"
	"os"
	"strings"

	llssa "github.com/goplus/llgo/ssa"
	"golang.org/x/tools/go/ssa"
)

type contentLines = [][]byte
type contentMap = map[string]contentLines

func contentOf(m contentMap, file string) (lines contentLines, err error) {
	if v, ok := m[file]; ok {
		return v, nil
	}
	b, err := os.ReadFile(file)
	if err == nil {
		lines = bytes.Split(b, []byte{'\n'})
		m[file] = lines
	}
	return
}

func (p *context) importPkg(pkg *types.Package) {
	scope := pkg.Scope()
	if scope.Lookup("LLGoPackage") == nil {
		return
	}
	fset := p.fset
	names := scope.Names()
	contents := make(contentMap)
	pkgPath := pathOf(pkg)
	for _, name := range names {
		if token.IsExported(name) {
			obj := scope.Lookup(name)
			if obj, ok := obj.(*types.Func); ok {
				if pos := obj.Pos(); pos != token.NoPos {
					f := fset.File(pos)
					if fp := f.Position(pos); fp.Line > 2 {
						lines, err := contentOf(contents, fp.Filename)
						if err != nil {
							panic(err)
						}
						if i := fp.Line - 2; i < len(lines) {
							line := string(lines[i])
							p.initLinkname(pkgPath, line)
						}
					}
				}
			}
		}
	}
}

func (p *context) initFiles(pkgPath string, files []*ast.File) {
	for _, file := range files {
		for _, decl := range file.Decls {
			if decl, ok := decl.(*ast.FuncDecl); ok {
				if decl.Recv == nil {
					if doc := decl.Doc; doc != nil {
						if n := len(doc.List); n > 0 {
							line := doc.List[n-1].Text
							p.initLinkname(pkgPath, line)
						}
					}
				}
			}
		}
	}
}

func (p *context) initLinkname(pkgPath, line string) {
	const (
		linkname = "//go:linkname "
	)
	if strings.HasPrefix(line, linkname) {
		text := strings.TrimSpace(line[len(linkname):])
		if idx := strings.IndexByte(text, ' '); idx > 0 {
			name := pkgPath + "." + text[:idx]
			link := strings.TrimLeft(text[idx+1:], " ")
			p.link[name] = link
		}
	}
}

func pathOf(pkg *types.Package) string {
	if pkg.Name() == "main" {
		return "main"
	}
	return pkg.Path()
}

func fullName(pkg *types.Package, name string) string {
	return pathOf(pkg) + "." + name
}

// func: pkg.name
// method: (pkg.T).name, (*pkg.T).name
func funcName(pkg *types.Package, fn *ssa.Function) string {
	sig := fn.Signature
	name := fn.Name()
	if recv := sig.Recv(); recv != nil {
		var tName string
		t := recv.Type()
		if tp, ok := t.(*types.Pointer); ok {
			t, tName = tp.Elem(), "*"
		}
		tName += t.(*types.Named).Obj().Name()
		return "(" + tName + ")." + name
	}
	ret := fullName(pkg, name)
	if ret == "main.main" {
		ret = "main"
	}
	return ret
}

func (p *context) funcName(pkg *types.Package, fn *ssa.Function) string {
	name := funcName(pkg, fn)
	if v, ok := p.link[name]; ok {
		return v
	}
	return name
}

func (p *context) funcOf(fn *ssa.Function) llssa.Function {
	pkgTypes := p.ensureLoaded(fn.Pkg.Pkg)
	pkg := p.pkg
	name := p.funcName(pkgTypes, fn)
	if ret := pkg.FuncOf(name); ret != nil {
		return ret
	}
	return pkg.NewFunc(name, fn.Signature)
}

func (p *context) varOf(v *ssa.Global) llssa.Global {
	pkgTypes := p.ensureLoaded(v.Pkg.Pkg)
	pkg := p.pkg
	name := fullName(pkgTypes, v.Name())
	if ret := pkg.VarOf(name); ret != nil {
		return ret
	}
	return pkg.NewVar(name, v.Type())
}

func (p *context) ensureLoaded(pkgTypes *types.Package) *types.Package {
	if p.goTyps != pkgTypes {
		if _, ok := p.loaded[pkgTypes]; !ok {
			p.loaded[pkgTypes] = none{}
			p.importPkg(pkgTypes)
		}
	}
	return pkgTypes
}

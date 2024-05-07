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
	"go/constant"
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

// PkgKindOf returns the kind of a package.
func PkgKindOf(pkg *types.Package) int {
	scope := pkg.Scope()
	kind := pkgKindByScope(scope)
	if kind == PkgNormal {
		kind = pkgKindByPath(pkg.Path())
	}
	return kind
}

// decl: a package that only contains declarations
// noinit: a package that does not need to be initialized
func pkgKind(v string) int {
	switch v {
	case "link":
		return PkgLinkOnly
	case "decl":
		return PkgDeclOnly
	case "noinit":
		return PkgNoInit
	}
	return PkgLLGo
}

func pkgKindByScope(scope *types.Scope) int {
	if v, ok := scope.Lookup("LLGoPackage").(*types.Const); ok {
		if v := v.Val(); v.Kind() == constant.String {
			return pkgKind(constant.StringVal(v))
		}
		return PkgLLGo
	}
	return PkgNormal
}

func (p *context) importPkg(pkg *types.Package, i *pkgInfo) {
	scope := pkg.Scope()
	kind := pkgKindByScope(scope)
	if kind == PkgNormal {
		return
	}
	i.kind = kind
	fset := p.fset
	names := scope.Names()
	contents := make(contentMap)
	pkgPath := llssa.PathOf(pkg)
	for _, name := range names {
		if token.IsExported(name) {
			obj := scope.Lookup(name)
			switch obj := obj.(type) {
			case *types.Func:
				if pos := obj.Pos(); pos != token.NoPos {
					p.initLinknameByPos(fset, pos, pkgPath, contents, false)
				}
			case *types.Var:
				if pos := obj.Pos(); pos != token.NoPos {
					p.initLinknameByPos(fset, pos, pkgPath, contents, true)
				}
			}
		}
	}
}

func (p *context) initFiles(pkgPath string, files []*ast.File) {
	for _, file := range files {
		for _, decl := range file.Decls {
			switch decl := decl.(type) {
			case *ast.FuncDecl:
				if decl.Recv == nil {
					p.initLinknameByDoc(decl.Doc, pkgPath, false)
				}
			case *ast.GenDecl:
				if decl.Tok == token.VAR && len(decl.Specs) == 1 {
					p.initLinknameByDoc(decl.Doc, pkgPath, true)
				}
			}
		}
	}
}

func (p *context) initLinknameByDoc(doc *ast.CommentGroup, pkgPath string, isVar bool) {
	if doc != nil {
		if n := len(doc.List); n > 0 {
			line := doc.List[n-1].Text
			p.initLinkname(pkgPath, line, isVar)
		}
	}
}

func (p *context) initLinknameByPos(fset *token.FileSet, pos token.Pos, pkgPath string, contents contentMap, isVar bool) {
	f := fset.File(pos)
	if fp := f.Position(pos); fp.Line > 2 {
		lines, err := contentOf(contents, fp.Filename)
		if err != nil {
			panic(err)
		}
		if i := fp.Line - 2; i < len(lines) {
			line := string(lines[i])
			p.initLinkname(pkgPath, line, isVar)
		}
	}
}

func (p *context) initLinkname(pkgPath, line string, isVar bool) {
	const (
		linkname  = "//go:linkname "
		llgolink  = "//llgo:link "
		llgolink2 = "// llgo:link "
	)
	if strings.HasPrefix(line, linkname) {
		p.initLink(pkgPath, line, len(linkname), isVar)
	} else if strings.HasPrefix(line, llgolink2) {
		p.initLink(pkgPath, line, len(llgolink2), isVar)
	} else if strings.HasPrefix(line, llgolink) {
		p.initLink(pkgPath, line, len(llgolink), isVar)
	}
}

func (p *context) initLink(pkgPath string, line string, prefix int, isVar bool) {
	text := strings.TrimSpace(line[prefix:])
	if idx := strings.IndexByte(text, ' '); idx > 0 {
		link := strings.TrimLeft(text[idx+1:], " ")
		if isVar || strings.Contains(link, ".") { // eg. C.printf, C.strlen, llgo.cstr
			name := pkgPath + "." + text[:idx]
			p.link[name] = link
		} else {
			panic(line + ": no specified call convention. eg. //go:linkname Printf C.printf")
		}
	}
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
		tName += llssa.NameOf(t.(*types.Named))
		return "(" + tName + ")." + name
	}
	ret := llssa.FullName(pkg, name)
	if ret == "main.main" {
		ret = "main"
	}
	return ret
}

func checkCgo(fnName string) bool {
	return len(fnName) > 4 && fnName[0] == '_' && fnName[2] == 'g' && fnName[3] == 'o' &&
		(fnName[1] == 'C' || fnName[1] == 'c') &&
		(fnName[4] == '_' || strings.HasPrefix(fnName[4:], "Check"))
}

const (
	ignoredFunc = iota
	goFunc      = int(llssa.InGo)
	cFunc       = int(llssa.InC)
	llgoInstr   = -1

	llgoInstrBase   = 0x80
	llgoUnreachable = llgoInstrBase + 0
	llgoCstr        = llgoInstrBase + 1
	llgoAlloca      = llgoInstrBase + 2
	llgoAllocaCStr  = llgoInstrBase + 3
	llgoAdvance     = llgoInstrBase + 4
)

func (p *context) funcName(fn *ssa.Function, ignore bool) (*types.Package, string, int) {
	var pkg *types.Package
	var orgName string
	if origin := fn.Origin(); origin != nil {
		pkg = origin.Pkg.Pkg
		p.ensureLoaded(pkg)
		orgName = funcName(pkg, origin)
	} else {
		pkg = fn.Pkg.Pkg
		p.ensureLoaded(pkg)
		orgName = funcName(pkg, fn)
		if ignore && ignoreName(orgName) || checkCgo(fn.Name()) {
			return nil, orgName, ignoredFunc
		}
	}
	if v, ok := p.link[orgName]; ok {
		if strings.HasPrefix(v, "C.") {
			return nil, v[2:], cFunc
		}
		if strings.HasPrefix(v, "llgo.") {
			return nil, v[5:], llgoInstr
		}
		return pkg, v, goFunc
	}
	return pkg, funcName(pkg, fn), goFunc
}

const (
	ignoredVar = iota
	goVar      = int(llssa.InGo)
	cVar       = int(llssa.InC)
)

func (p *context) varName(pkg *types.Package, v *ssa.Global) (vName string, vtype int) {
	name := llssa.FullName(pkg, v.Name())
	if v, ok := p.link[name]; ok {
		return v, cVar
	}
	return name, goVar
}

func (p *context) varOf(v *ssa.Global) (ret llssa.Global) {
	pkgTypes := p.ensureLoaded(v.Pkg.Pkg)
	pkg := p.pkg
	name, vtype := p.varName(pkgTypes, v)
	if ret = pkg.VarOf(name); ret == nil {
		ret = pkg.NewVar(name, v.Type(), llssa.Background(vtype))
	}
	return
}

func (p *context) ensureLoaded(pkgTypes *types.Package) *types.Package {
	if p.goTyps != pkgTypes {
		if _, ok := p.loaded[pkgTypes]; !ok {
			i := &pkgInfo{
				kind: pkgKindByPath(pkgTypes.Path()),
			}
			p.loaded[pkgTypes] = i
			p.importPkg(pkgTypes, i)
		}
	}
	return pkgTypes
}

func pkgKindByPath(pkgPath string) int {
	switch pkgPath {
	case "syscall", "runtime/cgo", "unsafe":
		return PkgDeclOnly
	}
	return PkgNormal
}

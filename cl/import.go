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
	"fmt"
	"go/ast"
	"go/constant"
	"go/token"
	"go/types"
	"os"
	"strings"

	"golang.org/x/tools/go/ssa"

	"github.com/goplus/llgo/internal/env"
	llssa "github.com/goplus/llgo/ssa"
)

// -----------------------------------------------------------------------------

type symInfo struct {
	file     string
	fullName string
	isVar    bool
}

type pkgSymInfo struct {
	files map[string][]byte  // file => content
	syms  map[string]symInfo // name => isVar
}

func newPkgSymInfo() *pkgSymInfo {
	return &pkgSymInfo{
		files: make(map[string][]byte),
		syms:  make(map[string]symInfo),
	}
}

func (p *pkgSymInfo) addSym(fset *token.FileSet, pos token.Pos, fullName, inPkgName string, isVar bool) {
	f := fset.File(pos)
	if fp := f.Position(pos); fp.Line > 2 {
		file := fp.Filename
		if _, ok := p.files[file]; !ok {
			b, err := os.ReadFile(file)
			if err == nil {
				p.files[file] = b
			}
		}
		p.syms[inPkgName] = symInfo{file, fullName, isVar}
	}
}

func (p *pkgSymInfo) initLinknames(ctx *context) {
	sep := []byte{'\n'}
	commentPrefix := []byte{'/', '/'}
	for file, b := range p.files {
		lines := bytes.Split(b, sep)
		for _, line := range lines {
			if bytes.HasPrefix(line, commentPrefix) {
				ctx.initLinkname(string(line), func(inPkgName string) (fullName string, isVar, ok bool) {
					if sym, ok := p.syms[inPkgName]; ok && file == sym.file {
						return sym.fullName, sym.isVar, true
					}
					return
				})
			}
		}
	}
}

// PkgKindOf returns the kind of a package.
func PkgKindOf(pkg *types.Package) (int, string) {
	scope := pkg.Scope()
	kind, param := pkgKindByScope(scope)
	if kind == PkgNormal {
		kind = pkgKindByPath(pkg.Path())
	}
	return kind, param
}

// decl: a package that only contains declarations
// noinit: a package that does not need to be initialized
func pkgKind(v string) (int, string) {
	switch v {
	case "link":
		return PkgLinkIR, ""
	case "decl":
		return PkgDeclOnly, ""
	case "noinit":
		return PkgNoInit, ""
	default:
		// case "link:bc":
		//	return PkgLinkBitCode
		if strings.HasPrefix(v, "link:") { // "link: <libpath>"
			return PkgLinkExtern, v[5:]
		} else if strings.HasPrefix(v, "py.") { // "py.<module>"
			return PkgPyModule, v[3:]
		} else if strings.HasPrefix(v, "decl:") { // "decl: <param>"
			return PkgDeclOnly, v[5:]
		}
	}
	return PkgLLGo, ""
}

func pkgKindByScope(scope *types.Scope) (int, string) {
	if v, ok := scope.Lookup("LLGoPackage").(*types.Const); ok {
		if v := v.Val(); v.Kind() == constant.String {
			return pkgKind(constant.StringVal(v))
		}
		return PkgLLGo, ""
	}
	return PkgNormal, ""
}

func (p *context) importPkg(pkg *types.Package, i *pkgInfo) {
	pkgPath := llssa.PathOf(pkg)
	scope := pkg.Scope()
	kind, _ := pkgKindByScope(scope)
	if kind == PkgNormal {
		if patch, ok := p.patches[pkgPath]; ok {
			pkg = patch.Alt.Pkg
			scope = pkg.Scope()
			if kind, _ = pkgKindByScope(scope); kind != PkgNormal {
				goto start
			}
		}
		return
	}
start:
	i.kind = kind
	fset := p.fset
	names := scope.Names()
	syms := newPkgSymInfo()
	for _, name := range names {
		obj := scope.Lookup(name)
		switch obj := obj.(type) {
		case *types.Func:
			if pos := obj.Pos(); pos != token.NoPos {
				fullName, inPkgName := typesFuncName(pkgPath, obj)
				syms.addSym(fset, pos, fullName, inPkgName, false)
			}
		case *types.TypeName:
			if !obj.IsAlias() {
				if t, ok := obj.Type().(*types.Named); ok {
					for i, n := 0, t.NumMethods(); i < n; i++ {
						fn := t.Method(i)
						fullName, inPkgName := typesFuncName(pkgPath, fn)
						syms.addSym(fset, fn.Pos(), fullName, inPkgName, false)
					}
				}
			}
		case *types.Var:
			if pos := obj.Pos(); pos != token.NoPos {
				syms.addSym(fset, pos, pkgPath+"."+name, name, true)
			}
		}
	}
	syms.initLinknames(p)
}

func (p *context) initFiles(pkgPath string, files []*ast.File) {
	for _, file := range files {
		for _, decl := range file.Decls {
			switch decl := decl.(type) {
			case *ast.FuncDecl:
				fullName, inPkgName := astFuncName(pkgPath, decl)
				p.initLinknameByDoc(decl.Doc, fullName, inPkgName, false)
			case *ast.GenDecl:
				switch decl.Tok {
				case token.VAR:
					if len(decl.Specs) == 1 {
						if names := decl.Specs[0].(*ast.ValueSpec).Names; len(names) == 1 {
							inPkgName := names[0].Name
							p.initLinknameByDoc(decl.Doc, pkgPath+"."+inPkgName, inPkgName, true)
						}
					}
				case token.CONST:
					fallthrough
				case token.TYPE:
					p.collectSkipNamesByDoc(decl.Doc)
				case token.IMPORT:
					if doc := decl.Doc; doc != nil {
						if n := len(doc.List); n > 0 {
							line := doc.List[n-1].Text
							if p.collectSkipNames(line) {
								// Deprecate on import since conflict with cgo
								fmt.Fprintf(os.Stderr, "DEPRECATED: llgo:skip on import is deprecated %v\n", line)
							}
						}
					}
				}
			}
		}
	}
}

// Collect skip names and skip other annotations, such as go: and llgo:
// llgo:skip symbol1 symbol2 ...
// llgo:skipall
func (p *context) collectSkipNames(line string) bool {
	const (
		llgo1   = "//llgo:"
		llgo2   = "// llgo:"
		go1     = "//go:"
		skip    = "skip"
		skipAll = "skipall"
	)
	if strings.HasPrefix(line, go1) {
		return true
	}
	var skipLine string
	if strings.HasPrefix(line, llgo1) {
		skipLine = line[len(llgo1):]
	} else if strings.HasPrefix(line, llgo2) {
		skipLine = line[len(llgo2):]
	} else {
		return false
	}
	if strings.HasPrefix(skipLine, skip) {
		p.collectSkip(skipLine, len(skip))
	}
	return true
}

func (p *context) collectSkipNamesByDoc(doc *ast.CommentGroup) {
	if doc != nil {
		for n := len(doc.List) - 1; n >= 0; n-- {
			line := doc.List[n].Text
			if !p.collectSkipNames(line) {
				break
			}
		}
	}
}

func (p *context) collectSkip(line string, prefix int) {
	line = line[prefix:]
	if line == "all" {
		p.skipall = true
		return
	}
	if len(line) == 0 || line[0] != ' ' {
		return
	}
	names := strings.Split(line[1:], " ")
	for _, name := range names {
		if name != "" {
			p.skips[name] = none{}
		}
	}
}

func (p *context) initLinknameByDoc(doc *ast.CommentGroup, fullName, inPkgName string, isVar bool) {
	if doc != nil {
		for n := len(doc.List) - 1; n >= 0; n-- {
			line := doc.List[n].Text
			found := p.initLinkname(line, func(name string) (_ string, _, ok bool) {
				return fullName, isVar, name == inPkgName
			})
			if !found {
				break
			}
		}
	}
}

func (p *context) initLinkname(line string, f func(inPkgName string) (fullName string, isVar, ok bool)) bool {
	const (
		linkname   = "//go:linkname "
		llgolink   = "//llgo:link "
		llgolink2  = "// llgo:link "
		exportName = "//export "
		directive  = "//go:"
	)
	if strings.HasPrefix(line, linkname) {
		p.initLink(line, len(linkname), f)
		return true
	} else if strings.HasPrefix(line, llgolink2) {
		p.initLink(line, len(llgolink2), f)
		return true
	} else if strings.HasPrefix(line, llgolink) {
		p.initLink(line, len(llgolink), f)
		return true
	} else if strings.HasPrefix(line, exportName) {
		p.initCgoExport(line, len(exportName), f)
		return true
	} else if strings.HasPrefix(line, directive) {
		// skip unknown annotation but continue to parse the next annotation
		return true
	}
	return false
}

func (p *context) initCgoExport(line string, prefix int, f func(inPkgName string) (fullName string, isVar, ok bool)) {
	name := strings.TrimSpace(line[prefix:])
	if fullName, _, ok := f(name); ok {
		p.cgoExports[fullName] = name
	}
}

func (p *context) initLink(line string, prefix int, f func(inPkgName string) (fullName string, isVar, ok bool)) {
	text := strings.TrimSpace(line[prefix:])
	if idx := strings.IndexByte(text, ' '); idx > 0 {
		inPkgName := text[:idx]
		if fullName, isVar, ok := f(inPkgName); ok {
			link := strings.TrimLeft(text[idx+1:], " ")
			if isVar || strings.Contains(link, ".") { // eg. C.printf, C.strlen, llgo.cstr
				p.prog.SetLinkname(fullName, link)
			} else {
				p.prog.SetLinkname(fullName, "C."+link)
			}
		} else {
			fmt.Fprintln(os.Stderr, "==>", line)
			fmt.Fprintf(os.Stderr, "llgo: linkname %s not found and ignored\n", inPkgName)
		}
	}
}

func recvTypeName(typ ast.Expr) string {
retry:
	switch t := typ.(type) {
	case *ast.Ident:
		return t.Name
	case *ast.IndexExpr:
		return trecvTypeName(t.X, t.Index)
	case *ast.IndexListExpr:
		return trecvTypeName(t.X, t.Indices...)
	case *ast.ParenExpr:
		typ = t.X
		goto retry
	}
	panic("unreachable")
}

// TODO(xsw): support generic type
func trecvTypeName(t ast.Expr, indices ...ast.Expr) string {
	_ = indices
	return t.(*ast.Ident).Name
}

// inPkgName:
// - func: name
// - method: T.name, (*T).name
// fullName:
// - func: pkg.name
// - method: pkg.(T).name, pkg.(*T).name
func astFuncName(pkgPath string, fn *ast.FuncDecl) (fullName, inPkgName string) {
	name := fn.Name.Name
	if recv := fn.Recv; recv != nil && len(recv.List) == 1 {
		var method string
		t := recv.List[0].Type
		if tp, ok := t.(*ast.StarExpr); ok {
			method = "(*" + recvTypeName(tp.X) + ")." + name
		} else {
			method = recvTypeName(t) + "." + name
		}
		return pkgPath + "." + method, method
	}
	return pkgPath + "." + name, name
}

func typesFuncName(pkgPath string, fn *types.Func) (fullName, inPkgName string) {
	sig := fn.Type().(*types.Signature)
	name := fn.Name()
	if recv := sig.Recv(); recv != nil {
		var method string
		t := recv.Type()
		if tp, ok := t.(*types.Pointer); ok {
			method = "(*" + tp.Elem().(*types.Named).Obj().Name() + ")." + name
		} else {
			method = t.(*types.Named).Obj().Name() + "." + name
		}
		return pkgPath + "." + method, method
	}
	return pkgPath + "." + name, name
}

// TODO(xsw): may can use typesFuncName
// fullName:
// - func: pkg.name
// - method: pkg.(T).name, pkg.(*T).name
func funcName(pkg *types.Package, fn *ssa.Function, org bool) string {
	var recv *types.Var
	parent := fn.Parent()
	if parent != nil { // closure in method
		recv = parent.Signature.Recv()
	} else {
		recv = fn.Signature.Recv()
	}
	var fnName string
	if org := fn.Origin(); org != nil {
		fnName = org.Name()
		if fn.Signature.Recv() == nil {
			fnName += llssa.TypeArgs(fn.TypeArgs())
		}
	} else {
		fnName = fn.Name()
	}
	return llssa.FuncName(pkg, fnName, recv, org)
}

func checkCgo(fnName string) bool {
	return len(fnName) > 4 && fnName[0] == '_' && fnName[2] == 'g' && fnName[3] == 'o' &&
		(fnName[1] == 'C' || fnName[1] == 'c') &&
		(fnName[4] == '_' || strings.HasPrefix(fnName[4:], "Check"))
}

var cgoIgnoredNames = map[string]none{
	"_Cgo_ptr":        {},
	"_Cgo_use":        {},
	"_cgoCheckResult": {},
	"cgoCheckResult":  {},
}

func cgoIgnored(fnName string) bool {
	_, ok := cgoIgnoredNames[fnName]
	return ok
}

const (
	ignoredFunc = iota
	goFunc      = int(llssa.InGo)
	cFunc       = int(llssa.InC)
	pyFunc      = int(llssa.InPython)
	llgoInstr   = -1

	llgoInstrBase   = 0x80
	llgoUnreachable = llgoInstrBase + 0
	llgoCstr        = llgoInstrBase + 1
	llgoAlloca      = llgoInstrBase + 2
	llgoAllocaCStr  = llgoInstrBase + 3
	llgoAllocaCStrs = llgoInstrBase + 4
	llgoAdvance     = llgoInstrBase + 5
	llgoIndex       = llgoInstrBase + 6
	llgoStringData  = llgoInstrBase + 7
	llgoString      = llgoInstrBase + 8
	llgoDeferData   = llgoInstrBase + 9

	llgoSigjmpbuf  = llgoInstrBase + 0xa
	llgoSigsetjmp  = llgoInstrBase + 0xb
	llgoSiglongjmp = llgoInstrBase + 0xc

	llgoFuncAddr = llgoInstrBase + 0xd

	llgoPyList  = llgoInstrBase + 0x10
	llgoPyStr   = llgoInstrBase + 0x11
	llgoPyTuple = llgoInstrBase + 0x12

	llgoAtomicLoad    = llgoInstrBase + 0x1d
	llgoAtomicStore   = llgoInstrBase + 0x1e
	llgoAtomicCmpXchg = llgoInstrBase + 0x1f
	llgoAtomicOpBase  = llgoInstrBase + 0x20

	llgoAtomicXchg = llgoAtomicOpBase + llssa.OpXchg
	llgoAtomicAdd  = llgoAtomicOpBase + llssa.OpAdd
	llgoAtomicSub  = llgoAtomicOpBase + llssa.OpSub
	llgoAtomicAnd  = llgoAtomicOpBase + llssa.OpAnd
	llgoAtomicNand = llgoAtomicOpBase + llssa.OpNand
	llgoAtomicOr   = llgoAtomicOpBase + llssa.OpOr
	llgoAtomicXor  = llgoAtomicOpBase + llssa.OpXor
	llgoAtomicMax  = llgoAtomicOpBase + llssa.OpMax
	llgoAtomicMin  = llgoAtomicOpBase + llssa.OpMin
	llgoAtomicUMax = llgoAtomicOpBase + llssa.OpUMax
	llgoAtomicUMin = llgoAtomicOpBase + llssa.OpUMin

	llgoCgoBase         = llgoInstrBase + 0x30
	llgoCgoCString      = llgoCgoBase + 0x0
	llgoCgoCBytes       = llgoCgoBase + 0x1
	llgoCgoGoString     = llgoCgoBase + 0x2
	llgoCgoGoStringN    = llgoCgoBase + 0x3
	llgoCgoGoBytes      = llgoCgoBase + 0x4
	llgoCgoCMalloc      = llgoCgoBase + 0x5
	llgoCgoCheckPointer = llgoCgoBase + 0x6
	llgoCgoCgocall      = llgoCgoBase + 0x7

	llgoAtomicOpLast = llgoAtomicOpBase + int(llssa.OpUMin)
)

func (p *context) funcName(fn *ssa.Function, ignore bool) (*types.Package, string, int) {
	var pkg *types.Package
	var orgName string
	if origin := fn.Origin(); origin != nil {
		pkg = origin.Pkg.Pkg
		p.ensureLoaded(pkg)
		orgName = funcName(pkg, origin, true)
	} else {
		fname := fn.Name()
		if checkCgo(fname) && !cgoIgnored(fname) {
			return nil, fname, llgoInstr
		}
		if isCgoExternSymbol(fn) {
			if _, ok := llgoInstrs[fname]; ok {
				return nil, fname, llgoInstr
			}
		}
		if fnPkg := fn.Pkg; fnPkg != nil {
			pkg = fnPkg.Pkg
		} else {
			pkg = p.goTyps
		}
		p.ensureLoaded(pkg)
		orgName = funcName(pkg, fn, false)
	}
	if v, ok := p.prog.Linkname(orgName); ok {
		if strings.HasPrefix(v, "C.") {
			return nil, v[2:], cFunc
		}
		if strings.HasPrefix(v, "py.") {
			return pkg, v[3:], pyFunc
		}
		if strings.HasPrefix(v, "llgo.") {
			return nil, v[5:], llgoInstr
		}
		return pkg, v, goFunc
	}
	return pkg, funcName(pkg, fn, false), goFunc
}

const (
	ignoredVar = iota
	goVar      = int(llssa.InGo)
	cVar       = int(llssa.InC)
	pyVar      = int(llssa.InPython)
)

func (p *context) varName(pkg *types.Package, v *ssa.Global) (vName string, vtype int, define bool) {
	name := llssa.FullName(pkg, v.Name())
	// TODO(lijie): need a bettery way to process linkname (maybe alias)
	if !isCgoCfpvar(v.Name()) && !isCgoVar(v.Name()) {
		if v, ok := p.prog.Linkname(name); ok {
			if pos := strings.IndexByte(v, '.'); pos >= 0 {
				if pos == 2 && v[0] == 'p' && v[1] == 'y' {
					return v[3:], pyVar, false
				}
				return replaceGoName(v, pos), goVar, false
			}
			return v, cVar, false
		}
	}
	return name, goVar, true
}

func (p *context) varOf(b llssa.Builder, v *ssa.Global) llssa.Expr {
	pkgTypes := p.ensureLoaded(v.Pkg.Pkg)
	pkg := p.pkg
	name, vtype, _ := p.varName(pkgTypes, v)
	if vtype == pyVar {
		if kind, mod := pkgKindByScope(pkgTypes.Scope()); kind == PkgPyModule {
			return b.PyNewVar(pysymPrefix+mod, name).Expr
		}
		panic("unreachable")
	}
	ret := pkg.VarOf(name)
	if ret == nil {
		ret = pkg.NewVar(name, p.patchType(v.Type()), llssa.Background(vtype))
	}
	return ret.Expr
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

// -----------------------------------------------------------------------------

const (
	pysymPrefix = "__llgo_py."
)

func (p *context) initPyModule() {
	if kind, mod := pkgKindByScope(p.goTyps.Scope()); kind == PkgPyModule {
		p.pyMod = mod
	}
}

// ParsePkgSyntax parses AST of a package to check llgo:type in type declaration.
func ParsePkgSyntax(prog llssa.Program, pkg *types.Package, files []*ast.File) {
	for _, file := range files {
		for _, decl := range file.Decls {
			switch decl := decl.(type) {
			case *ast.GenDecl:
				switch decl.Tok {
				case token.TYPE:
					handleTypeDecl(prog, pkg, decl)
				}
			}
		}
	}
}

func handleTypeDecl(prog llssa.Program, pkg *types.Package, decl *ast.GenDecl) {
	if len(decl.Specs) == 1 {
		if bg := typeBackground(decl.Doc); bg != "" {
			inPkgName := decl.Specs[0].(*ast.TypeSpec).Name.Name
			prog.SetTypeBackground(pkg.Path()+"."+inPkgName, toBackground(bg))
		}
	}
}

const (
	llgotype  = "//llgo:type "
	llgotype2 = "// llgo:type "
)

func typeBackground(doc *ast.CommentGroup) (bg string) {
	if doc != nil {
		if n := len(doc.List); n > 0 {
			line := doc.List[n-1].Text
			if strings.HasPrefix(line, llgotype) {
				return strings.TrimSpace(line[len(llgotype):])
			}
			if strings.HasPrefix(line, llgotype2) {
				return strings.TrimSpace(line[len(llgotype2):])
			}
		}
	}
	return
}

func toBackground(bg string) llssa.Background {
	switch bg {
	case "C":
		return llssa.InC
	}
	return llssa.InGo
}

// -----------------------------------------------------------------------------

func pkgKindByPath(pkgPath string) int {
	switch pkgPath {
	case "runtime/cgo", "unsafe":
		return PkgDeclOnly
	}
	return PkgNormal
}

func replaceGoName(v string, pos int) string {
	switch v[:pos] {
	case "runtime":
		return env.LLGoRuntimePkg + "/internal/runtime" + v[pos:]
	}
	return v
}

// -----------------------------------------------------------------------------

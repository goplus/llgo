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

package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"go/ast"
	"go/token"
	"go/types"
	"log"
	"os"
	"os/exec"
	"strings"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/llpyg/pysig"
	"github.com/goplus/llgo/ssa"
)

type symbol struct {
	Name string `json:"name"`
	Type string `json:"type"`
	Doc  string `json:"doc"`
	Sig  string `json:"sig"`
}

type module struct {
	Name  string    `json:"name"`
	Items []*symbol `json:"items"`
}

func main() {
	if len(os.Args) < 2 {
		fmt.Fprintln(os.Stderr, "Usage: llpyg <pythonLibPath>")
		return
	}
	pyLib := os.Args[1]

	var out bytes.Buffer
	pydump := exec.Command("pydump", pyLib)
	pydump.Stdout = &out
	pydump.Run()

	var mod module
	json.Unmarshal(out.Bytes(), &mod)

	modName := mod.Name
	if modName == "" {
		log.Printf("import module %s failed\n", pyLib)
		os.Exit(1)
	}
	pkg := gogen.NewPackage("", modName, nil)
	pkg.Import("unsafe").MarkForceUsed(pkg)       // import _ "unsafe"
	py := pkg.Import("github.com/goplus/llgo/py") // import "github.com/goplus/llgo/py"

	f := func(cb *gogen.CodeBuilder) int {
		cb.Val("py." + modName)
		return 1
	}
	defs := pkg.NewConstDefs(pkg.Types.Scope())
	defs.New(f, 0, 0, nil, "LLGoPackage")

	obj := py.Ref("Object").(*types.TypeName).Type().(*types.Named)
	objPtr := types.NewPointer(obj)
	ret := types.NewTuple(pkg.NewParam(0, "", objPtr))

	ctx := &context{pkg, obj, objPtr, ret, py}
	for _, sym := range mod.Items {
		switch sym.Type {
		case "builtin_function_or_method", "function", "ufunc", "method-wrapper":
			ctx.genFunc(pkg, sym)
		case "str", "float", "bool", "type", "dict", "tuple", "list", "object",
			"module", "int", "set", "frozenset", "flags", "bool_": // skip
		default:
			t := sym.Type
			if len(t) > 0 && (t[0] >= 'a' && t[0] <= 'z') && !strings.HasSuffix(t, "_info") {
				log.Panicln("unsupport type:", sym.Type)
			}
		}
	}
	pkg.WriteTo(os.Stdout)
}

type context struct {
	pkg    *gogen.Package
	obj    *types.Named
	objPtr *types.Pointer
	ret    *types.Tuple
	py     gogen.PkgRef
}

func (ctx *context) genFunc(pkg *gogen.Package, sym *symbol) {
	name, symSig := sym.Name, sym.Sig
	if len(name) == 0 || name[0] == '_' {
		return
	}
	if symSig == "<NULL>" {
		// TODO(xsw): don't skip any func
		log.Println("skip func:", name, symSig)
		return
	}
	params, variadic := ctx.genParams(pkg, symSig)
	name = genName(name, -1)
	sig := types.NewSignatureType(nil, nil, nil, params, ctx.ret, variadic)
	fn := pkg.NewFuncDecl(token.NoPos, name, sig)
	list := ctx.genDoc(sym.Doc)
	list = append(list, emptyCommentLine)
	list = append(list, ctx.genLinkname(name, sym))
	fn.SetComments(pkg, &ast.CommentGroup{List: list})
	// fn.BodyStart(pkg).End()
}

func (ctx *context) genParams(pkg *gogen.Package, sig string) (*types.Tuple, bool) {
	args := pysig.Parse(sig)
	if len(args) == 0 {
		return nil, false
	}
	n := len(args)
	objPtr := ctx.objPtr
	list := make([]*types.Var, 0, n)
	for i := 0; i < n; i++ {
		name := args[i].Name
		if name == "/" {
			continue
		}
		if name == "*" {
			break
		}
		if strings.HasPrefix(name, "*") {
			if name[1] != '*' {
				list = append(list, ssa.VArg())
				return types.NewTuple(list...), true
			}
			return types.NewTuple(list...), false
		}
		list = append(list, pkg.NewParam(0, genName(name, 0), objPtr))
	}
	return types.NewTuple(list...), false
}

func genName(name string, idxDontTitle int) string {
	parts := strings.Split(name, "_")
	for i, part := range parts {
		if i != idxDontTitle && part != "" {
			if c := part[0]; c >= 'a' && c <= 'z' {
				part = string(c+'A'-'a') + part[1:]
			}
			parts[i] = part
		}
	}
	name = strings.Join(parts, "")
	switch name {
	case "default", "func", "":
		name += "_"
	}
	return name
}

func (ctx *context) genLinkname(name string, sym *symbol) *ast.Comment {
	return &ast.Comment{Text: "//go:linkname " + name + " py." + sym.Name}
}

func (ctx *context) genDoc(doc string) []*ast.Comment {
	lines := strings.Split(doc, "\n")
	list := make([]*ast.Comment, len(lines), len(lines)+2)
	for i, line := range lines {
		list[i] = &ast.Comment{Text: "// " + line}
	}
	return list
}

var (
	emptyCommentLine = &ast.Comment{Text: "//"}
)

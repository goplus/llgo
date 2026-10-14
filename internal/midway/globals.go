// Copyright (c) 2026 The XGo Authors (xgo.dev). All rights reserved.
// Use of this source code is governed by an Apache 2.0 license.

package midway

import (
	"go/ast"
	"go/token"
	"go/types"
	"slices"
	"strconv"
)

// globalDependencies recovers the original package-init edges through local
// functions and methods, before their bodies become dispatchers or stubs.
// Reads of the retained original variables keep those edges visible to the
// second checker even though execution uses a different concrete global.
func (a *analysis) globalDependencies(node ast.Node) []*types.Var {
	vars := make(map[*types.Var]bool)
	seen := make(map[*types.Func]bool)
	var visit func(ast.Node)
	visit = func(node ast.Node) {
		if node == nil {
			return
		}
		ast.Inspect(node, func(n ast.Node) bool {
			id, ok := n.(*ast.Ident)
			if !ok {
				return true
			}
			switch obj := a.info.Uses[id].(type) {
			case *types.Var:
				if obj.Pkg() == a.pkg && packageObject(obj) && obj.Name() != "_" {
					vars[obj] = true
				}
			case *types.Func:
				obj = obj.Origin()
				if !seen[obj] {
					seen[obj] = true
					if decl := a.funcs[obj]; decl != nil && decl.Body != nil {
						visit(decl.Body)
					}
				}
			}
			return true
		})
	}
	visit(node)
	result := make([]*types.Var, 0, len(vars))
	for v := range vars {
		result = append(result, v)
	}
	slices.SortFunc(result, func(x, y *types.Var) int { return int(x.Pos() - y.Pos()) })
	return result
}

func dependencyReads(vars []*types.Var, pos token.Pos) []ast.Stmt {
	var result []ast.Stmt
	for _, v := range vars {
		result = append(result, &ast.AssignStmt{TokPos: pos, Tok: token.ASSIGN,
			Lhs: []ast.Expr{ident("_", pos)}, Rhs: []ast.Expr{ident(v.Name(), pos)}})
	}
	return result
}

func (f *fileRewriter) global(spec *ast.ValueSpec) (extra []ast.Decl, changed bool) {
	dependent := false
	for _, id := range spec.Names {
		dependent = dependent || f.a.types[f.a.info.Defs[id].Type()]
	}
	if !dependent && !f.a.bodyDependent(spec) {
		return nil, false
	}
	pos := spec.Pos()
	for _, id := range spec.Names {
		obj := f.a.info.Defs[id]
		if !f.a.types[obj.Type()] || id.Name == "_" {
			continue
		}
		for _, width := range widths {
			extra = append(extra, &ast.GenDecl{TokPos: pos, Tok: token.VAR, Specs: []ast.Spec{&ast.ValueSpec{
				Names: []*ast.Ident{ident(id.Name+suffix(width), pos)}, Type: f.typeExpr(obj.Type(), width, pos),
			}}})
		}
	}
	if len(spec.Values) == 0 {
		return extra, true
	}

	results := &ast.FieldList{Opening: pos, Closing: pos}
	for _, id := range spec.Names {
		results.List = append(results.List, &ast.Field{Type: f.typeExpr(f.a.info.Defs[id].Type(), -1, pos)})
	}
	branch := func(width int) []ast.Stmt {
		var stmts []ast.Stmt
		var lhs, values, returns []ast.Expr
		for i := range spec.Names {
			name := "@value" + strconv.Itoa(i)
			lhs = append(lhs, ident(name, pos))
			stmts = append(stmts, &ast.DeclStmt{Decl: &ast.GenDecl{TokPos: pos, Tok: token.VAR, Specs: []ast.Spec{&ast.ValueSpec{
				Names: []*ast.Ident{ident(name, pos)}, Type: f.typeExpr(f.a.info.Defs[spec.Names[i]].Type(), width, pos),
			}}}})
		}
		for _, expr := range spec.Values {
			values = append(values, f.specialize(expr, width).(ast.Expr))
		}
		stmts = append(stmts, &ast.AssignStmt{TokPos: pos, Tok: token.ASSIGN, Lhs: lhs, Rhs: values})
		for i, id := range spec.Names {
			obj := f.a.info.Defs[id]
			value := ident("@value"+strconv.Itoa(i), pos)
			if f.a.types[obj.Type()] {
				if id.Name != "_" {
					stmts = append(stmts, &ast.AssignStmt{TokPos: pos, Tok: token.ASSIGN,
						Lhs: []ast.Expr{ident(id.Name+suffix(width), pos)}, Rhs: []ast.Expr{value}})
				} else {
					stmts = append(stmts, &ast.AssignStmt{TokPos: pos, Tok: token.ASSIGN, Lhs: []ast.Expr{ident("_", pos)}, Rhs: []ast.Expr{value}})
				}
				zero := ident("@zero"+strconv.Itoa(i), pos)
				stmts = append(stmts, &ast.DeclStmt{Decl: &ast.GenDecl{TokPos: pos, Tok: token.VAR, Specs: []ast.Spec{&ast.ValueSpec{
					Names: []*ast.Ident{zero}, Type: f.typeExpr(obj.Type(), -1, pos),
				}}}})
				returns = append(returns, ident(zero.Name, pos))
			} else {
				returns = append(returns, value)
			}
		}
		return append(stmts, &ast.ReturnStmt{Return: pos, Results: returns})
	}
	reads := dependencyReads(f.dependencies[spec], pos)
	body := &ast.BlockStmt{Lbrace: pos, Rbrace: pos, List: append(reads,
		&ast.IfStmt{If: pos, Cond: &ast.CallExpr{Fun: f.qualify(simdPath, "Emulated", pos), Lparen: pos, Rparen: pos},
			Body: &ast.BlockStmt{Lbrace: pos, Rbrace: pos, List: branch(0)}},
	)}
	body.List = append(body.List, branch(128)...)
	spec.Values = []ast.Expr{&ast.CallExpr{Lparen: pos, Rparen: pos, Fun: &ast.FuncLit{
		Type: &ast.FuncType{Func: pos, Params: &ast.FieldList{Opening: pos, Closing: pos}, Results: results}, Body: body,
	}}}
	return extra, true
}

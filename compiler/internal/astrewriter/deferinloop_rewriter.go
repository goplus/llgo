package astrewriter

import (
	"go/ast"
	"go/token"
	"go/types"

	"golang.org/x/tools/go/ast/astutil"
)

// DeferInLoopRewriter creates a new rewriter for handling defer statements in loops
func DeferInLoopRewriter(typeInfo *types.Info) *NodeRewriter {
	return &NodeRewriter{
		Rewrite: func(c *astutil.Cursor) bool {
			switch n := c.Node().(type) {
			case *ast.FuncDecl:
				return rewriteBlock(typeInfo, n.Body)
			case *ast.FuncLit:
				return rewriteBlock(typeInfo, n.Body)
			}
			return true
		},
	}
}

func rewriteBlock(typeInfo *types.Info, n *ast.BlockStmt) bool {
	if n == nil {
		return true
	}

	var deferStmts []*ast.DeferStmt

	// Create slice type and variable at the beginning
	emptyTuple := types.NewTuple()
	funcSig := types.NewSignatureType(nil, nil, nil, emptyTuple, emptyTuple, false)
	sliceType := types.NewSlice(funcSig)

	// Create and define _llgoDeferFns variable
	sliceVar := ast.NewIdent("_llgoDeferFns")
	sliceVarObj := types.NewVar(token.NoPos, nil, "_llgoDeferFns", sliceType)
	typeInfo.Defs[sliceVar] = sliceVarObj

	// First pass: find loops with defer statements
	astutil.Apply(n, func(c *astutil.Cursor) bool {
		switch node := c.Node().(type) {
		case *ast.ForStmt, *ast.RangeStmt:
			var block *ast.BlockStmt
			if forStmt, ok := node.(*ast.ForStmt); ok {
				block = forStmt.Body
			} else if rangeStmt, ok := node.(*ast.RangeStmt); ok {
				block = rangeStmt.Body
			}

			// Find all defer statements in this loop
			astutil.Apply(block, func(c *astutil.Cursor) bool {
				switch n := c.Node().(type) {
				case *ast.DeferStmt:
					deferStmts = append(deferStmts, n)
					// Replace defer statement with append
					wrapperFuncType := &ast.FuncType{
						Params: &ast.FieldList{},
					}

					wrapperFuncLit := &ast.FuncLit{
						Type: wrapperFuncType,
						Body: &ast.BlockStmt{
							List: []ast.Stmt{
								&ast.ExprStmt{
									X: n.Call,
								},
							},
						},
					}

					// Add type information for the wrapper function
					wrapperSig := types.NewSignature(nil, emptyTuple, emptyTuple, false)
					typeInfo.Types[wrapperFuncType] = types.TypeAndValue{Type: wrapperSig}
					typeInfo.Types[wrapperFuncLit] = types.TypeAndValue{Type: wrapperSig}

					// Create append identifier and add type information
					appendIdent := ast.NewIdent("append")
					appendObj := types.Universe.Lookup("append")
					typeInfo.Uses[appendIdent] = appendObj

					// Create append function signature
					sliceParam := types.NewVar(token.NoPos, nil, "", sliceType)
					elemParam := types.NewVar(token.NoPos, nil, "", funcSig)
					appendParams := types.NewTuple(sliceParam, elemParam)
					appendResults := types.NewTuple(types.NewVar(token.NoPos, nil, "", sliceType))
					appendSig := types.NewSignature(nil, appendParams, appendResults, false)

					// Create slice variable use for append
					sliceVarUse := ast.NewIdent("_llgoDeferFns")
					typeInfo.Uses[sliceVarUse] = sliceVarObj

					appendCall := &ast.CallExpr{
						Fun:  appendIdent,
						Args: []ast.Expr{sliceVarUse, wrapperFuncLit},
					}

					// Add type information for append call
					typeInfo.Types[appendIdent] = types.TypeAndValue{Type: appendSig}
					typeInfo.Types[appendCall] = types.TypeAndValue{Type: sliceType}

					// Create slice variable use for assignment
					sliceVarAssign := ast.NewIdent("_llgoDeferFns")
					typeInfo.Uses[sliceVarAssign] = sliceVarObj

					appendStmt := &ast.AssignStmt{
						Lhs: []ast.Expr{sliceVarAssign},
						Tok: token.ASSIGN,
						Rhs: []ast.Expr{appendCall},
					}

					c.Replace(appendStmt)
					return false
				case *ast.FuncLit:
					// Skip nested function literals, they will be handled separately
					return false
				}
				return true
			}, nil)
			return true
		case *ast.FuncLit:
			// Handle nested function literals separately
			rewriteBlock(typeInfo, node.Body)
			return false
		}
		return true
	}, nil)

	if len(deferStmts) > 0 {
		// Create function type for the slice element
		funcType := &ast.FuncType{
			Params:  &ast.FieldList{},
			Results: &ast.FieldList{},
		}

		// Create array type for the slice
		arrayType := &ast.ArrayType{
			Elt: funcType,
		}

		// Add type information for the function type and slice type
		typeInfo.Types[funcType] = types.TypeAndValue{Type: funcSig}
		typeInfo.Types[arrayType] = types.TypeAndValue{Type: sliceType}

		// Create slice declaration: var _deferFuncs []func()
		sliceDecl := &ast.DeclStmt{
			Decl: &ast.GenDecl{
				TokPos: n.Pos(),
				Tok:    token.VAR,
				Specs: []ast.Spec{
					&ast.ValueSpec{
						Names: []*ast.Ident{sliceVar},
						Type:  arrayType,
					},
				},
			},
		}

		// Create defer statement to execute collected functions
		deferExecFuncType := &ast.FuncType{
			Params: &ast.FieldList{},
		}

		// Create identifiers for len function and loop variable
		iIdent := ast.NewIdent("i")
		typeInfo.Defs[iIdent] = types.NewVar(token.NoPos, nil, "i", types.Typ[types.Int])
		typeInfo.Uses[iIdent] = typeInfo.Defs[iIdent]

		// Create slice variable use
		sliceVarUse := ast.NewIdent("_llgoDeferFns")
		typeInfo.Uses[sliceVarUse] = sliceVarObj

		// Create call expression for indexed function
		indexExpr := &ast.IndexExpr{
			X:     sliceVarUse,
			Index: iIdent,
		}
		typeInfo.Types[indexExpr] = types.TypeAndValue{Type: funcSig}

		indexedCall := &ast.CallExpr{
			Fun: indexExpr,
		}
		typeInfo.Types[indexedCall] = types.TypeAndValue{Type: emptyTuple}

		// Create range statement
		rangeStmt := &ast.RangeStmt{
			Key: iIdent,
			Tok: token.DEFINE,
			X:   sliceVarUse,
			Body: &ast.BlockStmt{
				List: []ast.Stmt{
					&ast.ExprStmt{
						X: indexedCall,
					},
				},
			},
		}

		deferExecBody := &ast.BlockStmt{
			List: []ast.Stmt{rangeStmt},
		}

		deferExecFuncLit := &ast.FuncLit{
			Type: deferExecFuncType,
			Body: deferExecBody,
		}

		deferExec := &ast.DeferStmt{
			Call: &ast.CallExpr{
				Fun: deferExecFuncLit,
			},
		}

		// Add type information for the defer execution function
		deferExecSig := types.NewSignature(nil, emptyTuple, emptyTuple, false)
		typeInfo.Types[deferExecFuncType] = types.TypeAndValue{Type: deferExecSig}
		typeInfo.Types[deferExecFuncLit] = types.TypeAndValue{Type: deferExecSig}

		// Insert declarations at the beginning of the function
		n.List = append([]ast.Stmt{sliceDecl, deferExec}, n.List...)
	}
	return true
}

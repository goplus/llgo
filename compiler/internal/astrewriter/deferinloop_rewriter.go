package astrewriter

import (
	"go/ast"
	"go/types"

	"golang.org/x/tools/go/ast/astutil"
)

/*
Rewrite defer statements in for loops

Example 1:

	for _, v := range []int{1, 2, 3} {
		defer fmt.Println(v)
	}

becomes

	for _, v := range []int{1, 2, 3} { // without defer
		func() {                       // wrap block has defer
			defer fmt.Println(v)
		}()
	}

Example 2:

	for _, v := range []int{1, 2, 3} {
		for _, v2 := range []int{1, 2, 3} {
			switch v {
			case 1:
				defer fmt.Println(v2)
			case 2:
				defer fmt.Println(v2)
			case 3:
				defer fmt.Println(v2)
			}
		}
	}

becomes

	for _, v := range []int{1, 2, 3} {      // without defer
		for _, v2 := range []int{1, 2, 3} { // with defer
			func() {                        // wrap block has defer
				switch v {
				case 1:
					defer fmt.Println(v2)
				case 2:
					defer fmt.Println(v2)
				case 3:
					defer fmt.Println(v2)
				}
			}()
		}
	}

Example 3:

	for i := range []int{1,2,3} {
		defer func() {
			for j := range []int{4,5,6} {
				defer println(i, j)
			}
		}()
	}

becomes

	for i := range []int{1, 2, 3} {
		func() {
			defer func() {
				for j := range []int{4, 5, 6} {
					func() {
						defer println(i, j)
					}()
				}
			}()
		}()
	}
*/
func DeferInLoopRewriter(typeInfo *types.Info) *NodeRewriter {
	nodeRewriterFn := func(c *astutil.Cursor) bool {
		node := c.Node()
		bodyStmt, ok := node.(*ast.BlockStmt)
		if !ok {
			return true
		}
		parent := c.Parent()
		switch parent.(type) {
		case *ast.ForStmt, *ast.RangeStmt:
			break
		default:
			return true
		}

		hasDefer := false
		ast.Inspect(bodyStmt, func(n ast.Node) bool {
			if _, ok := n.(*ast.FuncLit); ok {
				return false
			}
			if _, ok := n.(*ast.DeferStmt); ok {
				hasDefer = true
				return false
			}
			return true
		})
		if !hasDefer {
			return true
		}

		// Get position information from the for statement
		pos := node.Pos()
		end := node.End()

		// Create function type
		fnType := &ast.FuncType{
			Func: pos,
			Params: &ast.FieldList{
				Opening: pos,
				Closing: end,
			},
			Results: &ast.FieldList{
				Opening: pos,
				Closing: end,
			},
		}

		// Create function literal
		funcLit := &ast.FuncLit{
			Type: fnType,
			Body: bodyStmt,
		}

		// Create call expression
		callExpr := &ast.CallExpr{
			Fun:    funcLit,
			Lparen: pos,
			Rparen: end,
		}

		// Add type information for the function literal and call
		sig := types.NewSignatureType(nil, nil, nil, nil, nil, false)
		typeInfo.Types[fnType] = types.TypeAndValue{Type: sig}
		typeInfo.Types[funcLit] = types.TypeAndValue{Type: sig}

		// Add type information for the call expression
		typeInfo.Types[callExpr] = types.TypeAndValue{
			Type:  types.NewTuple(), // Call returns nothing
			Value: nil,
		}

		// Wrap the loop body in an immediately-invoked function
		body := &ast.BlockStmt{
			List: []ast.Stmt{
				&ast.ExprStmt{
					X: callExpr,
				},
			},
		}

		c.Replace(body)
		return true
	}
	return &NodeRewriter{
		post: nodeRewriterFn,
	}
}

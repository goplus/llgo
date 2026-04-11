// LITTEST
package main

import (
	"go/ast"
	"iter"
	"math"
)

func main() {
	c := &Cursor{in: &Inspector{}}
	_ = c
}

type Cursor struct {
	in    *Inspector
	index int32 // index of push node; -1 for virtual root node
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/cursor.Cursor.FindNode"{{.*}}
// CHECK: Cursor.Preorder
// CHECK: maskOf
// CHECK: Cursor.indices
// CHECK: IfaceType
// CHECK: EfaceEqual
// CHECK: ret
func (c Cursor) FindNode(n ast.Node) (Cursor, bool) {

	// FindNode is equivalent to this code,
	// but more convenient and 15-20% faster:
	if false {
		for candidate := range c.Preorder(n) {
			if candidate.Node() == n {
				return candidate, true
			}
		}
		return Cursor{}, false
	}

	// TODO(adonovan): opt: should we assume Node.Pos is accurate
	// and combine type-based filtering with position filtering
	// like FindByPos?

	mask := maskOf([]ast.Node{n})
	events := c.in.events

	for i, limit := c.indices(); i < limit; i++ {
		ev := events[i]
		if ev.index > i { // push?
			if ev.typ&mask != 0 && ev.node == n {
				return Cursor{c.in, i}, true
			}
			pop := ev.index
			if events[pop].typ&mask == 0 {
				// Subtree does not contain type of n: skip.
				i = pop
			}
		}
	}
	return Cursor{}, false
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/cursor.Cursor.Node"{{.*}}
// CHECK: AssertIndexRange
// CHECK: ret
func (c Cursor) Node() ast.Node {
	if c.index < 0 {
		return nil
	}
	return c.in.events[c.index].node
}

type event struct {
	node   ast.Node
	typ    uint64 // typeOf(node) on push event, or union of typ strictly between push and pop events on pop events
	index  int32  // index of corresponding push or pop event
	parent int32  // index of parent's push node (push nodes only), or packed edge kind/index (pop nodes only)
}

type Inspector struct {
	events []event
}

func maskOf(nodes []ast.Node) uint64 {
	if len(nodes) == 0 {
		return math.MaxUint64 // match all node types
	}
	var mask uint64
	for _, n := range nodes {
		mask |= typeOf(n)
	}
	return mask
}

// indices return the [start, end) half-open interval of event indices.
func (c Cursor) indices() (int32, int32) {
	if c.index < 0 {
		return 0, int32(len(c.in.events)) // root: all events
	} else {
		return c.index, c.in.events[c.index].index + 1 // just one subtree
	}
}

// CHECK-LABEL: define {{.*}} @"{{.*}}/cursor.Cursor.Preorder"{{.*}}
// CHECK: maskOf
// CHECK: AllocZ
// CHECK: ret
func (c Cursor) Preorder(types ...ast.Node) iter.Seq[Cursor] {
	mask := maskOf(types)

	return func(yield func(Cursor) bool) {
		events := c.in.events

		for i, limit := c.indices(); i < limit; {
			ev := events[i]
			if ev.index > i { // push?
				if ev.typ&mask != 0 && !yield(Cursor{c.in, i}) {
					break
				}
				pop := ev.index
				if events[pop].typ&mask == 0 {
					// Subtree does not contain types: skip.
					i = pop + 1
					continue
				}
			}
			i++
		}
	}
}

func typeOf(n ast.Node) uint64 {
	// Fast path: nearly half of all nodes are identifiers.
	if _, ok := n.(*ast.Ident); ok {
		return 1 << nIdent
	}

	// These cases include all nodes encountered by ast.Inspect.
	switch n.(type) {
	case *ast.ArrayType:
		return 1 << nArrayType
	case *ast.AssignStmt:
		return 1 << nAssignStmt
	case *ast.BadDecl:
		return 1 << nBadDecl
	case *ast.BadExpr:
		return 1 << nBadExpr
	case *ast.BadStmt:
		return 1 << nBadStmt
	case *ast.BasicLit:
		return 1 << nBasicLit
	case *ast.BinaryExpr:
		return 1 << nBinaryExpr
	case *ast.BlockStmt:
		return 1 << nBlockStmt
	case *ast.BranchStmt:
		return 1 << nBranchStmt
	case *ast.CallExpr:
		return 1 << nCallExpr
	case *ast.CaseClause:
		return 1 << nCaseClause
	case *ast.ChanType:
		return 1 << nChanType
	case *ast.CommClause:
		return 1 << nCommClause
	case *ast.Comment:
		return 1 << nComment
	case *ast.CommentGroup:
		return 1 << nCommentGroup
	case *ast.CompositeLit:
		return 1 << nCompositeLit
	case *ast.DeclStmt:
		return 1 << nDeclStmt
	case *ast.DeferStmt:
		return 1 << nDeferStmt
	case *ast.Ellipsis:
		return 1 << nEllipsis
	case *ast.EmptyStmt:
		return 1 << nEmptyStmt
	case *ast.ExprStmt:
		return 1 << nExprStmt
	case *ast.Field:
		return 1 << nField
	case *ast.FieldList:
		return 1 << nFieldList
	case *ast.File:
		return 1 << nFile
	case *ast.ForStmt:
		return 1 << nForStmt
	case *ast.FuncDecl:
		return 1 << nFuncDecl
	case *ast.FuncLit:
		return 1 << nFuncLit
	case *ast.FuncType:
		return 1 << nFuncType
	case *ast.GenDecl:
		return 1 << nGenDecl
	case *ast.GoStmt:
		return 1 << nGoStmt
	case *ast.Ident:
		return 1 << nIdent
	case *ast.IfStmt:
		return 1 << nIfStmt
	case *ast.ImportSpec:
		return 1 << nImportSpec
	case *ast.IncDecStmt:
		return 1 << nIncDecStmt
	case *ast.IndexExpr:
		return 1 << nIndexExpr
	case *ast.IndexListExpr:
		return 1 << nIndexListExpr
	case *ast.InterfaceType:
		return 1 << nInterfaceType
	case *ast.KeyValueExpr:
		return 1 << nKeyValueExpr
	case *ast.LabeledStmt:
		return 1 << nLabeledStmt
	case *ast.MapType:
		return 1 << nMapType
	case *ast.Package:
		return 1 << nPackage
	case *ast.ParenExpr:
		return 1 << nParenExpr
	case *ast.RangeStmt:
		return 1 << nRangeStmt
	case *ast.ReturnStmt:
		return 1 << nReturnStmt
	case *ast.SelectStmt:
		return 1 << nSelectStmt
	case *ast.SelectorExpr:
		return 1 << nSelectorExpr
	case *ast.SendStmt:
		return 1 << nSendStmt
	case *ast.SliceExpr:
		return 1 << nSliceExpr
	case *ast.StarExpr:
		return 1 << nStarExpr
	case *ast.StructType:
		return 1 << nStructType
	case *ast.SwitchStmt:
		return 1 << nSwitchStmt
	case *ast.TypeAssertExpr:
		return 1 << nTypeAssertExpr
	case *ast.TypeSpec:
		return 1 << nTypeSpec
	case *ast.TypeSwitchStmt:
		return 1 << nTypeSwitchStmt
	case *ast.UnaryExpr:
		return 1 << nUnaryExpr
	case *ast.ValueSpec:
		return 1 << nValueSpec
	}
	return 0
}

const (
	nArrayType = iota
	nAssignStmt
	nBadDecl
	nBadExpr
	nBadStmt
	nBasicLit
	nBinaryExpr
	nBlockStmt
	nBranchStmt
	nCallExpr
	nCaseClause
	nChanType
	nCommClause
	nComment
	nCommentGroup
	nCompositeLit
	nDeclStmt
	nDeferStmt
	nEllipsis
	nEmptyStmt
	nExprStmt
	nField
	nFieldList
	nFile
	nForStmt
	nFuncDecl
	nFuncLit
	nFuncType
	nGenDecl
	nGoStmt
	nIdent
	nIfStmt
	nImportSpec
	nIncDecStmt
	nIndexExpr
	nIndexListExpr
	nInterfaceType
	nKeyValueExpr
	nLabeledStmt
	nMapType
	nPackage
	nParenExpr
	nRangeStmt
	nReturnStmt
	nSelectStmt
	nSelectorExpr
	nSendStmt
	nSliceExpr
	nStarExpr
	nStructType
	nSwitchStmt
	nTypeAssertExpr
	nTypeSpec
	nTypeSwitchStmt
	nUnaryExpr
	nValueSpec
)

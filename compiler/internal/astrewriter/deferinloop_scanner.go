package astrewriter

import (
	"go/ast"
	"go/token"

	"golang.org/x/tools/go/ast/astutil"
)

// DeferLocation stores the location information of a defer statement
type DeferLocation struct {
	Filename string
	Line     int
	Column   int
}

// DeferInLoopScanner creates a scanner to detect defer statements inside loops
func DeferInLoopScanner(fset *token.FileSet, node ast.Node) []DeferLocation {
	var locations []DeferLocation

	astutil.Apply(node, func(c *astutil.Cursor) bool {
		switch node := c.Node().(type) {
		case *ast.ForStmt, *ast.RangeStmt:
			var block *ast.BlockStmt
			if forStmt, ok := node.(*ast.ForStmt); ok {
				block = forStmt.Body
			} else if rangeStmt, ok := node.(*ast.RangeStmt); ok {
				block = rangeStmt.Body
			}

			// Find defer statements in the loop body
			astutil.Apply(block, func(c *astutil.Cursor) bool {
				switch n := c.Node().(type) {
				case *ast.DeferStmt:
					pos := fset.Position(n.Pos())
					locations = append(locations, DeferLocation{
						Filename: pos.Filename,
						Line:     pos.Line,
						Column:   pos.Column,
					})
					return false
				case *ast.FuncLit:
					// Skip nested functions, they will be handled separately
					return false
				}
				return true
			}, nil)
			return true
		case *ast.FuncLit:
			// Handle nested functions
			scanBlock(fset, node.Body, &locations)
			return false
		}
		return true
	}, nil)

	return locations
}

// scanBlock scans a block for loops and defer statements
func scanBlock(fset *token.FileSet, block *ast.BlockStmt, locations *[]DeferLocation) {
	if block == nil {
		return
	}

	astutil.Apply(block, func(c *astutil.Cursor) bool {
		switch node := c.Node().(type) {
		case *ast.ForStmt, *ast.RangeStmt:
			var loopBlock *ast.BlockStmt
			if forStmt, ok := node.(*ast.ForStmt); ok {
				loopBlock = forStmt.Body
			} else if rangeStmt, ok := node.(*ast.RangeStmt); ok {
				loopBlock = rangeStmt.Body
			}

			// Find defer statements in the loop body
			astutil.Apply(loopBlock, func(c *astutil.Cursor) bool {
				switch n := c.Node().(type) {
				case *ast.DeferStmt:
					pos := fset.Position(n.Pos())
					*locations = append(*locations, DeferLocation{
						Filename: pos.Filename,
						Line:     pos.Line,
						Column:   pos.Column,
					})
					return false
				case *ast.FuncLit:
					// Skip nested functions, they will be handled separately
					return false
				}
				return true
			}, nil)
			return true
		case *ast.FuncLit:
			// Handle nested functions
			scanBlock(fset, node.Body, locations)
			return false
		}
		return true
	}, nil)
}

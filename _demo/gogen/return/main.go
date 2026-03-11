// Converted from return_test.go for llgo testing
// Batch 1: 2 cases (TestTermCheckerIsTerminating/TestTermCheckerIsTerminatingList)
// Batch 2: 3 cases (TestTermCheckerIsPanicCall/TestHasBreak/TestUnparen)
package main

import (
	"fmt"
	"go/ast"
	"go/token"
)

type none struct{}

// termChecker checks whether statements are terminating.
type termChecker struct {
	panicCalls map[*ast.CallExpr]none
}

// isTerminating reports whether s is a terminating statement.
func (c *termChecker) isTerminating(s ast.Stmt, label string) bool {
	switch s := s.(type) {
	case *ast.BadStmt, *ast.DeclStmt, *ast.EmptyStmt, *ast.SendStmt,
		*ast.IncDecStmt, *ast.AssignStmt, *ast.GoStmt, *ast.DeferStmt,
		*ast.RangeStmt:
		return false
	case *ast.LabeledStmt:
		return c.isTerminating(s.Stmt, s.Label.Name)
	case *ast.ExprStmt:
		return c.isPanicCall(s.X)
	case *ast.ReturnStmt:
		return true
	case *ast.BranchStmt:
		return s.Tok == token.GOTO || s.Tok == token.FALLTHROUGH
	case *ast.BlockStmt:
		return c.isTerminatingList(s.List, "")
	case *ast.IfStmt:
		return s.Else != nil &&
			c.isTerminating(s.Body, "") &&
			c.isTerminating(s.Else, "")
	case *ast.SwitchStmt:
		return c.isTerminatingSwitch(s.Body, label)
	case *ast.TypeSwitchStmt:
		return c.isTerminatingSwitch(s.Body, label)
	case *ast.SelectStmt:
		for _, cc := range s.Body.List {
			body := cc.(*ast.CommClause).Body
			if !c.isTerminatingList(body, "") || hasBreakList(body, label, true) {
				return false
			}
		}
		return true
	case *ast.ForStmt:
		return s.Cond == nil && !hasBreak(s.Body, label, true)
	}
	return false
}

// isTerminatingList reports whether the last non-empty statement in list is terminating.
func (c *termChecker) isTerminatingList(list []ast.Stmt, label string) bool {
	for i := len(list) - 1; i >= 0; i-- {
		if _, ok := list[i].(*ast.EmptyStmt); !ok {
			return c.isTerminating(list[i], label)
		}
	}
	return false
}

// isTerminatingSwitch reports whether body is a terminating switch body.
func (c *termChecker) isTerminatingSwitch(body *ast.BlockStmt, label string) bool {
	hasDefault := false
	for _, cc := range body.List {
		cc := cc.(*ast.CaseClause)
		if cc.List == nil {
			hasDefault = true
		}
		if !c.isTerminatingList(cc.Body, "") || hasBreakList(cc.Body, label, true) {
			return false
		}
	}
	return hasDefault
}

// isPanicCall reports whether x is a call to a tracked panic call.
func (c *termChecker) isPanicCall(x ast.Expr) bool {
	call, ok := unparen(x).(*ast.CallExpr)
	if !ok {
		return false
	}
	_, ok = c.panicCalls[call]
	return ok
}

// hasBreak reports whether s contains a break statement referring to the label
// or (if isTarget) an unlabeled break.
func hasBreak(s ast.Stmt, label string, isTarget bool) bool {
	switch s := s.(type) {
	case *ast.BranchStmt:
		if s.Tok == token.BREAK {
			if s.Label == nil {
				return isTarget
			}
			return s.Label.Name == label
		}
	case *ast.BlockStmt:
		return hasBreakList(s.List, label, isTarget)
	case *ast.IfStmt:
		return hasBreak(s.Body, label, isTarget) || (s.Else != nil && hasBreak(s.Else, label, isTarget))
	case *ast.SwitchStmt:
		if label != "" && hasBreak(s.Body, label, false) {
			return true
		}
	case *ast.TypeSwitchStmt:
		if label != "" && hasBreak(s.Body, label, false) {
			return true
		}
	case *ast.SelectStmt:
		if label != "" && hasBreak(s.Body, label, false) {
			return true
		}
	case *ast.ForStmt:
		if label != "" && hasBreak(s.Body, label, false) {
			return true
		}
	case *ast.RangeStmt:
		if label != "" && hasBreak(s.Body, label, false) {
			return true
		}
	case *ast.LabeledStmt:
		return hasBreak(s.Stmt, label, isTarget)
	case *ast.CaseClause:
		return hasBreakList(s.Body, label, isTarget)
	case *ast.CommClause:
		return hasBreakList(s.Body, label, isTarget)
	}
	return false
}

// hasBreakList reports whether any statement in list contains a qualifying break.
func hasBreakList(list []ast.Stmt, label string, isTarget bool) bool {
	for _, s := range list {
		if hasBreak(s, label, isTarget) {
			return true
		}
	}
	return false
}

// unparen returns the expression with any enclosing parentheses removed.
func unparen(x ast.Expr) ast.Expr {
	for {
		p, ok := x.(*ast.ParenExpr)
		if !ok {
			return x
		}
		x = p.X
	}
}

func testTermCheckerIsTerminating() {
	fmt.Println("=== testTermCheckerIsTerminating ===")
	var c termChecker

	if !c.isTerminating(&ast.ReturnStmt{}, "") {
		panic("return should be terminating")
	}
	if !c.isTerminating(&ast.BranchStmt{Tok: token.GOTO, Label: &ast.Ident{Name: "label"}}, "") {
		panic("goto should be terminating")
	}
	if !c.isTerminating(&ast.BranchStmt{Tok: token.FALLTHROUGH}, "") {
		panic("fallthrough should be terminating")
	}
	if c.isTerminating(&ast.BranchStmt{Tok: token.BREAK}, "") {
		panic("break should not be terminating")
	}
	if c.isTerminating(&ast.BranchStmt{Tok: token.CONTINUE}, "") {
		panic("continue should not be terminating")
	}
	if !c.isTerminating(&ast.LabeledStmt{Label: &ast.Ident{Name: "done"}, Stmt: &ast.ReturnStmt{}}, "") {
		panic("labeled return should be terminating")
	}
	if c.isTerminating(&ast.LabeledStmt{Label: &ast.Ident{Name: "done"}, Stmt: &ast.EmptyStmt{}}, "") {
		panic("labeled empty statement should not be terminating")
	}

	infiniteFor := &ast.ForStmt{Cond: nil, Body: &ast.BlockStmt{List: []ast.Stmt{&ast.ExprStmt{X: &ast.Ident{Name: "x"}}}}}
	if !c.isTerminating(infiniteFor, "") {
		panic("infinite for without break should be terminating")
	}

	infiniteForWithBreak := &ast.ForStmt{Cond: nil, Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}
	if c.isTerminating(infiniteForWithBreak, "") {
		panic("infinite for with break should not be terminating")
	}

	infiniteForWithLabeledBreak := &ast.ForStmt{Cond: nil, Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}}}
	if !c.isTerminating(infiniteForWithLabeledBreak, "") {
		panic("infinite for with break to different label should be terminating")
	}

	selectStmt := &ast.SelectStmt{Body: &ast.BlockStmt{List: []ast.Stmt{
		&ast.CommClause{Comm: &ast.SendStmt{}, Body: []ast.Stmt{&ast.ReturnStmt{}}},
		&ast.CommClause{Comm: nil, Body: []ast.Stmt{&ast.ReturnStmt{}}},
	}}}
	if !c.isTerminating(selectStmt, "") {
		panic("select with all cases terminating should be terminating")
	}

	selectNotTerm := &ast.SelectStmt{Body: &ast.BlockStmt{List: []ast.Stmt{
		&ast.CommClause{Comm: &ast.SendStmt{}, Body: []ast.Stmt{&ast.ReturnStmt{}}},
		&ast.CommClause{Comm: nil, Body: []ast.Stmt{&ast.EmptyStmt{}}},
	}}}
	if c.isTerminating(selectNotTerm, "") {
		panic("select with non-terminating case should not be terminating")
	}

	if !c.isTerminating(&ast.SelectStmt{Body: &ast.BlockStmt{List: []ast.Stmt{}}}, "") {
		panic("empty select should be terminating")
	}

	switchWithLabeledBreak := &ast.SwitchStmt{Body: &ast.BlockStmt{List: []ast.Stmt{
		&ast.CaseClause{List: []ast.Expr{&ast.BasicLit{Kind: token.INT, Value: "1"}}, Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}},
		&ast.CaseClause{List: nil, Body: []ast.Stmt{&ast.ReturnStmt{}}},
	}}}
	if c.isTerminating(switchWithLabeledBreak, "outer") {
		panic("switch with break to outer label should not be terminating")
	}

	typeSwitchTerm := &ast.TypeSwitchStmt{Body: &ast.BlockStmt{List: []ast.Stmt{
		&ast.CaseClause{List: []ast.Expr{&ast.Ident{Name: "int"}}, Body: []ast.Stmt{&ast.ReturnStmt{}}},
		&ast.CaseClause{List: nil, Body: []ast.Stmt{&ast.ReturnStmt{}}},
	}}}
	if !c.isTerminating(typeSwitchTerm, "") {
		panic("type switch with default and all cases terminating should be terminating")
	}

	typeSwitchNoDefault := &ast.TypeSwitchStmt{Body: &ast.BlockStmt{List: []ast.Stmt{
		&ast.CaseClause{List: []ast.Expr{&ast.Ident{Name: "int"}}, Body: []ast.Stmt{&ast.ReturnStmt{}}},
	}}}
	if c.isTerminating(typeSwitchNoDefault, "") {
		panic("type switch without default should not be terminating")
	}

	stmts := []ast.Stmt{
		nil,
		&ast.EmptyStmt{},
		&ast.DeclStmt{},
		&ast.SendStmt{},
		&ast.IncDecStmt{},
		&ast.AssignStmt{},
		&ast.GoStmt{},
		&ast.DeferStmt{},
		&ast.RangeStmt{},
	}
	for _, stmt := range stmts {
		if c.isTerminating(stmt, "") {
			panic(fmt.Sprintf("%T should not be terminating", stmt))
		}
	}
}

func testTermCheckerIsTerminatingList() {
	fmt.Println("=== testTermCheckerIsTerminatingList ===")
	var c termChecker

	if c.isTerminatingList(nil, "") {
		panic("empty list should not be terminating")
	}
	if c.isTerminatingList([]ast.Stmt{&ast.EmptyStmt{}, &ast.EmptyStmt{}}, "") {
		panic("list with only empty statements should not be terminating")
	}
	if !c.isTerminatingList([]ast.Stmt{&ast.EmptyStmt{}, &ast.ReturnStmt{}}, "") {
		panic("list ending with return should be terminating")
	}
	if !c.isTerminatingList([]ast.Stmt{&ast.ReturnStmt{}, &ast.EmptyStmt{}}, "") {
		panic("list with return before trailing empty should be terminating")
	}
}

func testTermCheckerIsPanicCall() {
	fmt.Println("=== testTermCheckerIsPanicCall ===")
	var c termChecker

	if c.isPanicCall(&ast.Ident{Name: "x"}) {
		panic("non-call expression should not be panic call")
	}

	call := &ast.CallExpr{Fun: &ast.Ident{Name: "panic"}}
	if c.isPanicCall(call) {
		panic("call not tracked in panicCalls should not be panic call")
	}

	c.panicCalls = map[*ast.CallExpr]none{call: {}}
	if !c.isPanicCall(call) {
		panic("call tracked in panicCalls should be panic call")
	}

	if !c.isPanicCall(&ast.ParenExpr{X: call}) {
		panic("parenthesized call tracked in panicCalls should be panic call")
	}
}

func testHasBreak() {
	fmt.Println("=== testHasBreak ===")
	breakStmt := &ast.BranchStmt{Tok: token.BREAK}
	if !hasBreak(breakStmt, "", true) {
		panic("break without label should match implicit")
	}
	if hasBreak(breakStmt, "", false) {
		panic("break without label should not match when implicit=false")
	}

	breakWithLabel := &ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}
	if !hasBreak(breakWithLabel, "outer", false) {
		panic("break with label should match the label")
	}
	if hasBreak(breakWithLabel, "other", false) {
		panic("break with label should not match different label")
	}

	if hasBreak(&ast.BranchStmt{Tok: token.CONTINUE}, "", true) {
		panic("continue should not be treated as break")
	}

	block := &ast.BlockStmt{List: []ast.Stmt{&ast.EmptyStmt{}, &ast.BranchStmt{Tok: token.BREAK}}}
	if !hasBreak(block, "", true) {
		panic("block with break should have break")
	}

	ifWithBreak := &ast.IfStmt{Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}
	if !hasBreak(ifWithBreak, "", true) {
		panic("if with break in body should have break")
	}

	ifWithBreakInElse := &ast.IfStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.EmptyStmt{}}},
		Else: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}},
	}
	if !hasBreak(ifWithBreakInElse, "", true) {
		panic("if with break in else should have break")
	}

	if hasBreak(&ast.IfStmt{Body: &ast.BlockStmt{List: []ast.Stmt{&ast.EmptyStmt{}}}}, "", true) {
		panic("if without break should not have break")
	}

	if !hasBreak(&ast.CaseClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}, "", true) {
		panic("case clause with break should have break")
	}

	if !hasBreak(&ast.CommClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}, "", true) {
		panic("comm clause with break should have break")
	}

	switchStmt := &ast.SwitchStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.CaseClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}},
	}
	if hasBreak(switchStmt, "", true) {
		panic("switch should not propagate implicit break")
	}

	switchWithLabeledBreak := &ast.SwitchStmt{
		Body: &ast.BlockStmt{
			List: []ast.Stmt{&ast.CaseClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}}},
		},
	}
	if !hasBreak(switchWithLabeledBreak, "outer", false) {
		panic("switch with labeled break should propagate labeled break")
	}

	typeSwitchStmt := &ast.TypeSwitchStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.CaseClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}},
	}
	if hasBreak(typeSwitchStmt, "", true) {
		panic("type switch should not propagate implicit break")
	}

	typeSwitchWithLabeledBreak := &ast.TypeSwitchStmt{
		Body: &ast.BlockStmt{
			List: []ast.Stmt{&ast.CaseClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}}},
		},
	}
	if !hasBreak(typeSwitchWithLabeledBreak, "outer", false) {
		panic("type switch with labeled break should propagate labeled break")
	}

	selectStmt := &ast.SelectStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.CommClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}},
	}
	if hasBreak(selectStmt, "", true) {
		panic("select should not propagate implicit break")
	}

	selectWithLabeledBreak := &ast.SelectStmt{
		Body: &ast.BlockStmt{
			List: []ast.Stmt{&ast.CommClause{Body: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}}},
		},
	}
	if !hasBreak(selectWithLabeledBreak, "outer", false) {
		panic("select with labeled break should propagate labeled break")
	}

	forStmt := &ast.ForStmt{Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}
	if hasBreak(forStmt, "", true) {
		panic("for should not propagate implicit break")
	}

	forWithLabeledBreak := &ast.ForStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}},
	}
	if !hasBreak(forWithLabeledBreak, "outer", false) {
		panic("for with labeled break should propagate labeled break")
	}

	rangeStmt := &ast.RangeStmt{Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK}}}}
	if hasBreak(rangeStmt, "", true) {
		panic("range should not propagate implicit break")
	}

	rangeWithLabeledBreak := &ast.RangeStmt{
		Body: &ast.BlockStmt{List: []ast.Stmt{&ast.BranchStmt{Tok: token.BREAK, Label: &ast.Ident{Name: "outer"}}}},
	}
	if !hasBreak(rangeWithLabeledBreak, "outer", false) {
		panic("range with labeled break should propagate labeled break")
	}

	labeled := &ast.LabeledStmt{Label: &ast.Ident{Name: "inner"}, Stmt: &ast.BranchStmt{Tok: token.BREAK}}
	if !hasBreak(labeled, "", true) {
		panic("labeled statement with break should have break")
	}
}

func testUnparen() {
	fmt.Println("=== testUnparen ===")
	ident := &ast.Ident{Name: "x"}

	if unparen(ident) != ident {
		panic("unparen should return same expr when no parentheses")
	}

	paren1 := &ast.ParenExpr{X: ident}
	if unparen(paren1) != ident {
		panic("unparen should remove single parentheses")
	}

	paren2 := &ast.ParenExpr{X: paren1}
	if unparen(paren2) != ident {
		panic("unparen should remove all parentheses")
	}
}

func main() {
	fmt.Println("Running return_test tests (5 cases)...")
	fmt.Println()

	testTermCheckerIsTerminating()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTermCheckerIsTerminatingList()
	fmt.Println("  [PASS]")
	fmt.Println()

	testTermCheckerIsPanicCall()
	fmt.Println("  [PASS]")
	fmt.Println()

	testHasBreak()
	fmt.Println("  [PASS]")
	fmt.Println()

	testUnparen()
	fmt.Println("  [PASS]")
	fmt.Println()

	fmt.Println("All tests PASSED!")
}

package ast_test

import (
	"go/ast"
	"testing"
)

func TestPublicAPISymbols(t *testing.T) {
	_ = t
	var _ ast.ArrayType
	{
		var v ast.ArrayType
		_ = v.End
	}
	{
		var v ast.ArrayType
		_ = v.Pos
	}
	var _ ast.AssignStmt
	{
		var v ast.AssignStmt
		_ = v.End
	}
	{
		var v ast.AssignStmt
		_ = v.Pos
	}
	var _ ast.BadDecl
	{
		var v ast.BadDecl
		_ = v.End
	}
	{
		var v ast.BadDecl
		_ = v.Pos
	}
	var _ ast.BadExpr
	{
		var v ast.BadExpr
		_ = v.End
	}
	{
		var v ast.BadExpr
		_ = v.Pos
	}
	var _ ast.BadStmt
	{
		var v ast.BadStmt
		_ = v.End
	}
	{
		var v ast.BadStmt
		_ = v.Pos
	}
	var _ ast.BasicLit
	{
		var v ast.BasicLit
		_ = v.End
	}
	{
		var v ast.BasicLit
		_ = v.Pos
	}
	var _ ast.BinaryExpr
	{
		var v ast.BinaryExpr
		_ = v.End
	}
	{
		var v ast.BinaryExpr
		_ = v.Pos
	}
	var _ ast.BlockStmt
	{
		var v ast.BlockStmt
		_ = v.End
	}
	{
		var v ast.BlockStmt
		_ = v.Pos
	}
	var _ ast.BranchStmt
	{
		var v ast.BranchStmt
		_ = v.End
	}
	{
		var v ast.BranchStmt
		_ = v.Pos
	}
	var _ ast.CallExpr
	{
		var v ast.CallExpr
		_ = v.End
	}
	{
		var v ast.CallExpr
		_ = v.Pos
	}
	var _ ast.CaseClause
	{
		var v ast.CaseClause
		_ = v.End
	}
	{
		var v ast.CaseClause
		_ = v.Pos
	}
	var _ ast.ChanDir
	var _ ast.ChanType
	{
		var v ast.ChanType
		_ = v.End
	}
	{
		var v ast.ChanType
		_ = v.Pos
	}
	var _ ast.CommClause
	{
		var v ast.CommClause
		_ = v.End
	}
	{
		var v ast.CommClause
		_ = v.Pos
	}
	var _ ast.Comment
	{
		var v ast.Comment
		_ = v.End
	}
	{
		var v ast.Comment
		_ = v.Pos
	}
	var _ ast.CommentGroup
	{
		var v ast.CommentGroup
		_ = v.End
	}
	{
		var v ast.CommentGroup
		_ = v.Pos
	}
	{
		var v ast.CommentGroup
		_ = v.Text
	}
	var _ ast.CommentMap
	{
		var v ast.CommentMap
		_ = v.Comments
	}
	{
		var v ast.CommentMap
		_ = v.Filter
	}
	{
		var v ast.CommentMap
		_ = v.String
	}
	{
		var v ast.CommentMap
		_ = v.Update
	}
	var _ ast.CompositeLit
	{
		var v ast.CompositeLit
		_ = v.End
	}
	{
		var v ast.CompositeLit
		_ = v.Pos
	}
	var _ ast.Decl
	var _ ast.DeclStmt
	{
		var v ast.DeclStmt
		_ = v.End
	}
	{
		var v ast.DeclStmt
		_ = v.Pos
	}
	var _ ast.DeferStmt
	{
		var v ast.DeferStmt
		_ = v.End
	}
	{
		var v ast.DeferStmt
		_ = v.Pos
	}
	var _ ast.Ellipsis
	{
		var v ast.Ellipsis
		_ = v.End
	}
	{
		var v ast.Ellipsis
		_ = v.Pos
	}
	var _ ast.EmptyStmt
	{
		var v ast.EmptyStmt
		_ = v.End
	}
	{
		var v ast.EmptyStmt
		_ = v.Pos
	}
	var _ ast.Expr
	var _ ast.ExprStmt
	{
		var v ast.ExprStmt
		_ = v.End
	}
	{
		var v ast.ExprStmt
		_ = v.Pos
	}
	var _ ast.Field
	{
		var v ast.Field
		_ = v.End
	}
	{
		var v ast.Field
		_ = v.Pos
	}
	var _ ast.FieldFilter
	var _ ast.FieldList
	{
		var v ast.FieldList
		_ = v.End
	}
	{
		var v ast.FieldList
		_ = v.NumFields
	}
	{
		var v ast.FieldList
		_ = v.Pos
	}
	var _ ast.File
	{
		var v ast.File
		_ = v.End
	}
	{
		var v ast.File
		_ = v.Pos
	}
	_ = ast.FileExports
	var _ ast.Filter
	_ = ast.FilterDecl
	_ = ast.FilterFile
	_ = ast.FilterPackage
	var _ ast.ForStmt
	{
		var v ast.ForStmt
		_ = v.End
	}
	{
		var v ast.ForStmt
		_ = v.Pos
	}
	_ = ast.Fprint
	var _ ast.FuncDecl
	{
		var v ast.FuncDecl
		_ = v.End
	}
	{
		var v ast.FuncDecl
		_ = v.Pos
	}
	var _ ast.FuncLit
	{
		var v ast.FuncLit
		_ = v.End
	}
	{
		var v ast.FuncLit
		_ = v.Pos
	}
	var _ ast.FuncType
	{
		var v ast.FuncType
		_ = v.End
	}
	{
		var v ast.FuncType
		_ = v.Pos
	}
	var _ ast.GenDecl
	{
		var v ast.GenDecl
		_ = v.End
	}
	{
		var v ast.GenDecl
		_ = v.Pos
	}
	var _ ast.GoStmt
	{
		var v ast.GoStmt
		_ = v.End
	}
	{
		var v ast.GoStmt
		_ = v.Pos
	}
	var _ ast.Ident
	{
		var v ast.Ident
		_ = v.End
	}
	{
		var v ast.Ident
		_ = v.IsExported
	}
	{
		var v ast.Ident
		_ = v.Pos
	}
	{
		var v ast.Ident
		_ = v.String
	}
	var _ ast.IfStmt
	{
		var v ast.IfStmt
		_ = v.End
	}
	{
		var v ast.IfStmt
		_ = v.Pos
	}
	var _ ast.ImportSpec
	{
		var v ast.ImportSpec
		_ = v.End
	}
	{
		var v ast.ImportSpec
		_ = v.Pos
	}
	var _ ast.Importer
	var _ ast.IncDecStmt
	{
		var v ast.IncDecStmt
		_ = v.End
	}
	{
		var v ast.IncDecStmt
		_ = v.Pos
	}
	var _ ast.IndexExpr
	{
		var v ast.IndexExpr
		_ = v.End
	}
	{
		var v ast.IndexExpr
		_ = v.Pos
	}
	var _ ast.IndexListExpr
	{
		var v ast.IndexListExpr
		_ = v.End
	}
	{
		var v ast.IndexListExpr
		_ = v.Pos
	}
	var _ ast.InterfaceType
	{
		var v ast.InterfaceType
		_ = v.End
	}
	{
		var v ast.InterfaceType
		_ = v.Pos
	}
	_ = ast.IsExported
	_ = ast.IsGenerated
	var _ ast.KeyValueExpr
	{
		var v ast.KeyValueExpr
		_ = v.End
	}
	{
		var v ast.KeyValueExpr
		_ = v.Pos
	}
	var _ ast.LabeledStmt
	{
		var v ast.LabeledStmt
		_ = v.End
	}
	{
		var v ast.LabeledStmt
		_ = v.Pos
	}
	var _ ast.MapType
	{
		var v ast.MapType
		_ = v.End
	}
	{
		var v ast.MapType
		_ = v.Pos
	}
	var _ ast.MergeMode
	_ = ast.NotNilFilter
	var _ ast.ObjKind
	{
		var v ast.ObjKind
		_ = v.String
	}
	var _ ast.Object
	{
		var v ast.Object
		_ = v.Pos
	}
	var _ ast.Package
	{
		var v ast.Package
		_ = v.End
	}
	{
		var v ast.Package
		_ = v.Pos
	}
	_ = ast.PackageExports
	var _ ast.ParenExpr
	{
		var v ast.ParenExpr
		_ = v.End
	}
	{
		var v ast.ParenExpr
		_ = v.Pos
	}
	_ = ast.Print
	var _ ast.RangeStmt
	{
		var v ast.RangeStmt
		_ = v.End
	}
	{
		var v ast.RangeStmt
		_ = v.Pos
	}
	var _ ast.ReturnStmt
	{
		var v ast.ReturnStmt
		_ = v.End
	}
	{
		var v ast.ReturnStmt
		_ = v.Pos
	}
	var _ ast.Scope
	{
		var v ast.Scope
		_ = v.Insert
	}
	{
		var v ast.Scope
		_ = v.Lookup
	}
	{
		var v ast.Scope
		_ = v.String
	}
	var _ ast.SelectStmt
	{
		var v ast.SelectStmt
		_ = v.End
	}
	{
		var v ast.SelectStmt
		_ = v.Pos
	}
	var _ ast.SelectorExpr
	{
		var v ast.SelectorExpr
		_ = v.End
	}
	{
		var v ast.SelectorExpr
		_ = v.Pos
	}
	var _ ast.SendStmt
	{
		var v ast.SendStmt
		_ = v.End
	}
	{
		var v ast.SendStmt
		_ = v.Pos
	}
	var _ ast.SliceExpr
	{
		var v ast.SliceExpr
		_ = v.End
	}
	{
		var v ast.SliceExpr
		_ = v.Pos
	}
	_ = ast.SortImports
	var _ ast.Spec
	var _ ast.StarExpr
	{
		var v ast.StarExpr
		_ = v.End
	}
	{
		var v ast.StarExpr
		_ = v.Pos
	}
	var _ ast.Stmt
	var _ ast.StructType
	{
		var v ast.StructType
		_ = v.End
	}
	{
		var v ast.StructType
		_ = v.Pos
	}
	var _ ast.SwitchStmt
	{
		var v ast.SwitchStmt
		_ = v.End
	}
	{
		var v ast.SwitchStmt
		_ = v.Pos
	}
	var _ ast.TypeAssertExpr
	{
		var v ast.TypeAssertExpr
		_ = v.End
	}
	{
		var v ast.TypeAssertExpr
		_ = v.Pos
	}
	var _ ast.TypeSpec
	{
		var v ast.TypeSpec
		_ = v.End
	}
	{
		var v ast.TypeSpec
		_ = v.Pos
	}
	var _ ast.TypeSwitchStmt
	{
		var v ast.TypeSwitchStmt
		_ = v.End
	}
	{
		var v ast.TypeSwitchStmt
		_ = v.Pos
	}
	var _ ast.UnaryExpr
	{
		var v ast.UnaryExpr
		_ = v.End
	}
	{
		var v ast.UnaryExpr
		_ = v.Pos
	}
	var _ ast.ValueSpec
	{
		var v ast.ValueSpec
		_ = v.End
	}
	{
		var v ast.ValueSpec
		_ = v.Pos
	}
	var _ ast.Visitor
	_ = ast.Walk
}

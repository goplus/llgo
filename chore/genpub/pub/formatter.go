package pub

import (
	"go/ast"
	"go/token"
	"log"
	"strings"
)

type TypeFormatter struct {
	name string
	typ  ast.Expr
	fset *token.FileSet
}

func NewTypeFormatter(name string, typ ast.Expr, fset *token.FileSet) *TypeFormatter {
	return &TypeFormatter{name: name, typ: typ, fset: fset}
}

func (p *TypeFormatter) FormatSelectorExprType(expr *ast.SelectorExpr) string {
	xType := ""
	if expr.X != nil {
		xType = p.FormatExpr(expr.X)
	}
	if len(xType) > 0 {
		return xType + "." + expr.Sel.Name
	}
	return ""
}

func (p *TypeFormatter) FormatStarExprType(expr *ast.StarExpr) string {
	xType := ""
	if expr.X != nil {
		xType = p.FormatExpr(expr.X)
	}
	if len(xType) > 0 {
		return "*" + xType
	}
	return ""
}

func (p *TypeFormatter) FormatIdentType(expr *ast.Ident) string {
	return expr.Name
}

func (p *TypeFormatter) FormatStructType(expr *ast.StructType) string {
	return ""
}

func (p *TypeFormatter) FormatFuncType(expr *ast.FuncType) string {
	ret := ""
	if expr.Results != nil && expr.Results.List != nil {
		for _, field := range expr.Results.List {
			if len(ret) > 0 {
				ret += ", "
			}
			ret += p.FormatExpr(field.Type)
		}
	}
	params := ""
	if expr.Params != nil && expr.Params.List != nil {
		for _, param := range expr.Params.List {
			if len(params) > 0 {
				params += ", "
			}
			params += p.FormatExpr(param.Type)
		}
	}
	if strings.Contains(ret, ",") {
		ret = "(" + ret + ")"
	}
	return "func" + "(" + params + ")" + ret
}

func (p *TypeFormatter) FormatExpr(expr ast.Expr) string {
	switch t := expr.(type) {
	case *ast.SelectorExpr:
		return p.FormatSelectorExprType(t)
	case *ast.Ident:
		return p.FormatIdentType(t)
	case *ast.StarExpr:
		return p.FormatStarExprType(t)
	case *ast.StructType:
		return p.name
	case *ast.FuncType:
		return p.FormatFuncType(t)
	default:
		position := p.fset.Position(t.Pos())
		log.Printf("unknown %T at position: %s\n", t, position)
		return ""
	}
}

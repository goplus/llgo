package convert

import (
	"fmt"
	"strconv"

	"github.com/goplus/llgo/chore/llcppg/ast"
)

type ConvertExpr struct {
	e ast.Expr
}

func Expr(e ast.Expr) *ConvertExpr {
	return &ConvertExpr{e: e}
}

func (p *ConvertExpr) ToInt() (int, error) {
	v, ok := p.e.(*ast.BasicLit)
	if ok && v.Kind == ast.IntLit {
		return strconv.Atoi(v.Value)
	}
	return 0, fmt.Errorf("%v can't convert to int", p.e)
}

func (p *ConvertExpr) ToFloat(bitSize int) (float64, error) {
	v, ok := p.e.(*ast.BasicLit)
	if ok && v.Kind == ast.FloatLit {
		return strconv.ParseFloat(v.Value, bitSize)
	}
	return 0, fmt.Errorf("%v can't convert to float", v)
}

func (p *ConvertExpr) ToString() (string, error) {
	v, ok := p.e.(*ast.BasicLit)
	if ok && v.Kind == ast.StringLit {
		return v.Value, nil
	}
	return "", fmt.Errorf("%v can't convert to string", v)
}

func (p *ConvertExpr) ToChar() (int8, error) {
	v, ok := p.e.(*ast.BasicLit)
	if ok && v.Kind == ast.CharLit {
		iV, err := strconv.Atoi(v.Value)
		if err == nil {
			return int8(iV), nil
		}
	}
	return 0, fmt.Errorf("%v can't convert to char", p.e)
}

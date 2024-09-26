package convert_test

import (
	"testing"

	"github.com/google/go-cmp/cmp"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg/gentypes/convert"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestBasicLitFail(t *testing.T) {
	t.Parallel()
	type CaseType[T any] struct {
		name string
		expr ast.Expr
		want T
	}
	type CaseTypeSlice[T any] []CaseType[T]
	testCases := CaseTypeSlice[any]{
		{
			name: "ToInt",
			expr: &ast.TagExpr{Tag: ast.Class, Name: &ast.Ident{Name: "Foo"}},
			want: 123,
		},
		{
			name: "ToFloat",
			expr: &ast.TagExpr{Tag: ast.Class, Name: &ast.Ident{Name: "Foo"}},
			want: 123.123,
		},
		{
			name: "ToString",
			expr: &ast.TagExpr{Tag: ast.Class, Name: &ast.Ident{Name: "Foo"}},
			want: "abcd",
		},
		{
			name: "ToChar",
			expr: &ast.TagExpr{Tag: ast.Class, Name: &ast.Ident{Name: "Foo"}},
			want: (int8)(98),
		},
	}

	for _, tc := range testCases {
		t.Run("convert "+tc.name, func(t *testing.T) {
			if tc.name == "ToInt" {
				_, err := convert.Expr(tc.expr).ToInt()
				expectError(t, err)
			} else if tc.name == "ToFloat" {
				_, err := convert.Expr(tc.expr).ToFloat(64)
				expectError(t, err)
			} else if tc.name == "ToChar" {
				_, err := convert.Expr(tc.expr).ToChar()
				expectError(t, err)
			} else if tc.name == "ToString" {
				_, err := convert.Expr(tc.expr).ToString()
				expectError(t, err)
			}
		})
	}
}

func TestBasicLitOK(t *testing.T) {
	t.Parallel()
	type CaseType[T any] struct {
		name string
		expr ast.Expr
		want T
	}
	type CaseTypeSlice[T any] []CaseType[T]
	testCases := CaseTypeSlice[any]{
		{
			name: "ToInt",
			expr: &ast.BasicLit{Kind: ast.IntLit, Value: "123"},
			want: 123,
		},
		{
			name: "ToFloat",
			expr: &ast.BasicLit{Kind: ast.FloatLit, Value: "123.123"},
			want: 123.123,
		},
		{
			name: "ToString",
			expr: &ast.BasicLit{Kind: ast.StringLit, Value: "abcd"},
			want: "abcd",
		},
		{
			name: "ToChar",
			expr: &ast.BasicLit{Kind: ast.CharLit, Value: "98"},
			want: (int8)(98),
		},
	}

	for _, tc := range testCases {
		t.Run("convert "+tc.name, func(t *testing.T) {
			if tc.name == "ToInt" {
				result, err := convert.Expr(tc.expr).ToInt()
				checkResult(t, result, err, tc.want)
			} else if tc.name == "ToFloat" {
				result, err := convert.Expr(tc.expr).ToFloat(64)
				checkResult(t, result, err, tc.want)
			} else if tc.name == "ToChar" {
				result, err := convert.Expr(tc.expr).ToChar()
				checkResult(t, result, err, tc.want)
			} else if tc.name == "ToString" {
				result, err := convert.Expr(tc.expr).ToString()
				checkResult(t, result, err, tc.want)
			}
		})
	}
}

func expectError(t *testing.T, err error) {
	if err == nil {
		t.Error("expect error")
	}
}

func checkResult(t *testing.T, result any, err error, want any) {
	t.Helper()
	if err != nil {
		t.Error(err)
	}
	if !cmp.Equal(result, want) {
		t.Error(cmp.Diff(result, want))
	}
}

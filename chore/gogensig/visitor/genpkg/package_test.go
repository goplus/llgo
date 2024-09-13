package genpkg_test

import (
	"bytes"
	"strings"
	"testing"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/visitor/genpkg"
	"github.com/goplus/llgo/chore/llcppg/ast"
)

func TestToType(t *testing.T) {
	pkg := genpkg.NewPackage(".", "testpkg", &gogen.Config{})

	testCases := []struct {
		name     string
		input    *ast.BuiltinType
		expected string
	}{
		{"Void", &ast.BuiltinType{Kind: ast.Void}, "untyped nil"},
		{"Bool", &ast.BuiltinType{Kind: ast.Bool}, "bool"},
		{"Char_S", &ast.BuiltinType{Kind: ast.Char, Flags: ast.Signed}, "int8"},
		{"Char_U", &ast.BuiltinType{Kind: ast.Char, Flags: ast.Unsigned}, "int8"},
		{"WChar", &ast.BuiltinType{Kind: ast.WChar}, "int16"},
		{"Char16", &ast.BuiltinType{Kind: ast.Char16}, "int16"},
		{"Char32", &ast.BuiltinType{Kind: ast.Char32}, "int32"},
		{"Short", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Short}, "int16"},
		{"UShort", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Short | ast.Unsigned}, "uint16"},
		{"Int", &ast.BuiltinType{Kind: ast.Int}, "github.com/goplus/llgo/c.Int"},
		{"UInt", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned}, "github.com/goplus/llgo/c.Uint"},
		{"Long", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long}, "github.com/goplus/llgo/c.Long"},
		{"ULong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned}, "github.com/goplus/llgo/c.Ulong"},
		{"LongLong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong}, "github.com/goplus/llgo/c.LongLong"},
		{"ULongLong", &ast.BuiltinType{Kind: ast.Int, Flags: ast.LongLong | ast.Unsigned}, "github.com/goplus/llgo/c.UlongLong"},
		{"Float", &ast.BuiltinType{Kind: ast.Float}, "float32"},
		{"Double", &ast.BuiltinType{Kind: ast.Float, Flags: ast.Double}, "float64"},
		{"ComplexFloat", &ast.BuiltinType{Kind: ast.Complex}, "complex64"},
		{"ComplexDouble", &ast.BuiltinType{Kind: ast.Complex, Flags: ast.Double}, "complex128"},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			result := pkg.ToType(tc.input)
			if result == nil || result.String() != tc.expected {
				t.Errorf("unexpected result:%s expected:%s", result.String(), tc.expected)
			}
		})
	}
}

func TestNewPackage(t *testing.T) {
	pkg := genpkg.NewPackage(".", "testpkg", &gogen.Config{})
	if pkg == nil {
		t.Fatal("NewPackage failed")
	}
	comparePackageOutput(t, pkg, `package testpkg`)
}

func TestFuncDeclWithType(t *testing.T) {
	testCases := []struct {
		name     string
		decl     *ast.FuncDecl
		expected string
	}{
		{
			name: "empty func",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: nil,
					Ret:    nil,
				},
			},
			expected: `
package testpkg

//go:linkname Foo C.foo
func Foo()`,
		},
		{
			name: "explict void return",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: nil,
					Ret:    &ast.BuiltinType{Kind: ast.Void},
				},
			},
			expected: `
package testpkg

//go:linkname Foo C.foo
func Foo()`,
		},
		{
			name: "builtin type",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{
									{Name: "a"},
								},
								Type: &ast.BuiltinType{
									Kind:  ast.Int,
									Flags: ast.Short | ast.Unsigned},
							},
							{
								Names: []*ast.Ident{
									{Name: "b"},
								},
								Type: &ast.BuiltinType{
									Kind: ast.Bool,
								},
							},
						},
					},
					Ret: &ast.BuiltinType{
						Kind:  ast.Float,
						Flags: ast.Double,
					},
				},
			},
			expected: `
package testpkg

//go:linkname Foo C.foo
func Foo(a uint16, b bool) float64`,
		},
		{
			name: "c builtin type",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type:  &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type:  &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long},
							},
						},
					},
					Ret: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

//go:linkname Foo C.foo
func Foo(a c.Uint, b c.Long) c.Ulong
`,
		},
		{
			name: "basic decl with c type",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type:  &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type:  &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long},
							},
						},
					},
					Ret: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long | ast.Unsigned},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

//go:linkname Foo C.foo
func Foo(a c.Uint, b c.Long) c.Ulong
`,
		},
		{
			name: "pointer type",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned},
								},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Long},
								},
							},
						},
					},
					Ret: &ast.PointerType{
						X: &ast.BuiltinType{
							Kind:  ast.Float,
							Flags: ast.Double,
						},
					},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

//go:linkname Foo C.foo
func Foo(a *c.Uint, b *c.Long) *float64
`,
		},
		{
			name: "void *",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{Kind: ast.Void},
								},
							},
						},
					},
					Ret: &ast.PointerType{
						X: &ast.BuiltinType{Kind: ast.Void},
					},
				},
			},
			expected: `
package testpkg

import "unsafe"

//go:linkname Foo C.foo
func Foo(a unsafe.Pointer) unsafe.Pointer
			`,
		},
		{
			name: "array",
			decl: &ast.FuncDecl{
				Name: &ast.Ident{Name: "foo"},
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								// Uint[]
								Type: &ast.ArrayType{
									Elt: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Unsigned},
								},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								// Double[3]
								Type: &ast.ArrayType{
									Elt: &ast.BuiltinType{Kind: ast.Float, Flags: ast.Double},
									Len: &ast.BasicLit{Kind: ast.IntLit, Value: "3"},
								},
							},
						},
					},
					Ret: &ast.ArrayType{
						// char[3][4]
						Elt: &ast.ArrayType{
							Elt: &ast.BuiltinType{
								Kind:  ast.Char,
								Flags: ast.Signed,
							},
							Len: &ast.BasicLit{Kind: ast.IntLit, Value: "4"},
						},
						Len: &ast.BasicLit{Kind: ast.IntLit, Value: "3"},
					},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

//go:linkname Foo C.foo
func Foo(a *c.Uint, b *float64) **int8
			`,
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			pkg := genpkg.NewPackage(".", "testpkg", &gogen.Config{})
			if pkg == nil {
				t.Fatal("NewPackage failed")
			}
			err := pkg.NewFuncDecl(tc.decl)
			if err != nil {
				t.Fatalf("NewFuncDecl failed: %v", err)
			}
			comparePackageOutput(t, pkg, tc.expected)
		})
	}
}

func TestStructDecl(t *testing.T) {
	testCases := []struct {
		name     string
		decl     *ast.TypeDecl
		expected string
	}{
		{
			name: "empty struct",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.RecordType{
					Tag:    ast.Struct,
					Fields: nil,
				},
			},
			expected: `
package testpkg

type Foo struct {
}`,
		},
		{
			name: "struct field builtin type",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.RecordType{
					Tag: ast.Struct,
					Fields: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type: &ast.BuiltinType{
									Kind: ast.Int,
								},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type: &ast.BuiltinType{
									Kind:  ast.Float,
									Flags: ast.Double,
								},
							},
							{
								Names: []*ast.Ident{{Name: "c"}},
								Type: &ast.BuiltinType{
									Kind: ast.Bool,
								},
							},
						},
					},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

type Foo struct {
	a c.Int
	b float64
	c bool
}`,
		},
		{
			name: "struct field pointer",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.RecordType{
					Tag: ast.Struct,
					Fields: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{
										Kind: ast.Int,
									},
								},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{
										Kind:  ast.Float,
										Flags: ast.Double,
									}},
							},
							{
								Names: []*ast.Ident{{Name: "c"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{
										Kind: ast.Bool,
									},
								},
							},
							{
								Names: []*ast.Ident{{Name: "d"}},
								Type: &ast.PointerType{
									X: &ast.BuiltinType{
										Kind: ast.Void,
									},
								},
							},
						},
					},
				},
			},
			expected: `
package testpkg

import (
	"github.com/goplus/llgo/c"
	"unsafe"
)

type Foo struct {
	a *c.Int
	b *float64
	c *bool
	d unsafe.Pointer
}`},
		{
			name: "struct array field",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.RecordType{
					Tag: ast.Struct,
					Fields: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type: &ast.ArrayType{
									Elt: &ast.BuiltinType{
										Kind:  ast.Char,
										Flags: ast.Signed,
									},
									Len: &ast.BasicLit{
										Kind:  ast.IntLit,
										Value: "4",
									},
								},
							},
							{
								Names: []*ast.Ident{{Name: "b"}},
								Type: &ast.ArrayType{
									Elt: &ast.ArrayType{
										Elt: &ast.BuiltinType{
											Kind: ast.Int,
										},
										Len: &ast.BasicLit{Kind: ast.IntLit, Value: "4"},
									},
									Len: &ast.BasicLit{Kind: ast.IntLit, Value: "3"},
								},
							},
						},
					},
				},
			},
			expected: `
package testpkg

import "github.com/goplus/llgo/c"

type Foo struct {
	a [4]int8
	b [3][4]c.Int
}`},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			pkg := genpkg.NewPackage(".", "testpkg", &gogen.Config{})
			if pkg == nil {
				t.Fatal("NewPackage failed")
			}
			err := pkg.NewTypeDecl(tc.decl)
			if err != nil {
				t.Fatalf("NewBasic failed: %v", err)
			}
			comparePackageOutput(t, pkg, tc.expected)
		})
	}
}

// compares the output of a gogen.Package with the expected
func comparePackageOutput(t *testing.T, pkg *genpkg.Package, expect string) {
	t.Helper()
	gogenPkg := pkg.GetGogenPackage()
	var buf bytes.Buffer
	err := gogenPkg.WriteTo(&buf)
	if err != nil {
		t.Fatalf("WriteTo failed: %v", err)
	}
	actual := strings.TrimSpace(buf.String())
	expect = strings.TrimSpace(expect)
	if actual != expect {
		t.Errorf("unexpected output:\n%s\nexpected get:\n%s", actual, expect)
	}
}

package convert_test

import (
	"bytes"
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/goplus/gogen"
	"github.com/goplus/llgo/chore/gogensig/cmp"
	cfg "github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/gogensig/convert/names"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func init() {
	convert.SetDebug(convert.DbgFlagAll)
}

func TestUnionDecl(t *testing.T) {
	testCases := []genDeclTestCase{
		/*
			union  u
			{
			    int a;
			    long b;
			    long c;
			    bool f;
			};
		*/
		{
			name: "union u{int a; long b; long c; bool f;};",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "u"},
				Type: &ast.RecordType{
					Tag: ast.Union,
					Fields: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{
									{Name: "a"},
								},
								Type: &ast.BuiltinType{
									Kind: ast.Int},
							},
							{
								Names: []*ast.Ident{
									{Name: "b"},
								},
								Type: &ast.BuiltinType{
									Kind:  ast.Int,
									Flags: ast.Long,
								},
							},
							{
								Names: []*ast.Ident{
									{Name: "c"},
								},
								Type: &ast.BuiltinType{
									Kind:  ast.Int,
									Flags: ast.Long,
								},
							},
							{
								Names: []*ast.Ident{
									{Name: "f"},
								},
								Type: &ast.BuiltinType{
									Kind: ast.Bool,
								},
							},
						},
					},
				},
			},
			expected: `package testpkg
import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)
type U struct {
	B c.Long
}`,
		},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

func TestLinkFileOK(t *testing.T) {
	tempDir, err := os.MkdirTemp("", "test_package_link")
	if err != nil {
		t.Fatalf("Failed to create temporary directory: %v", err)
	}
	defer os.RemoveAll(tempDir)
	pkg := createTestPkg(t, &convert.PackageConfig{
		OutputDir: tempDir,
		CppgConf: &cppgtypes.Config{
			Libs: "pkg-config --libs libcjson",
		},
	})
	filePath, _ := pkg.WriteLinkFile()
	_, err = os.Stat(filePath)
	if os.IsNotExist(err) {
		t.FailNow()
	}
}

func TestLinkFileFail(t *testing.T) {

	t.Run("not link lib", func(t *testing.T) {
		tempDir, err := os.MkdirTemp("", "test_package_link")
		if err != nil {
			t.Fatalf("Failed to create temporary directory: %v", err)
		}
		defer os.RemoveAll(tempDir)
		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: tempDir,
			CppgConf:  &cppgtypes.Config{},
		})

		_, err = pkg.WriteLinkFile()
		if err == nil {
			t.FailNow()
		}
	})
	t.Run("no permission", func(t *testing.T) {
		tempDir, err := os.MkdirTemp("", "test_package_link")
		if err != nil {
			t.Fatalf("Failed to create temporary directory: %v", err)
		}
		defer os.RemoveAll(tempDir)
		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: tempDir,
			CppgConf: &cppgtypes.Config{
				Libs: "${pkg-config --libs libcjson}",
			},
		})
		err = os.Chmod(filepath.Join(tempDir), 0555)
		if err != nil {
			t.Fatalf("Failed to change directory permissions: %v", err)
		}
		defer os.Chmod(filepath.Join(tempDir), 0755)
		_, err = pkg.WriteLinkFile()
		if err == nil {
			t.FailNow()
		}
	})

}

func TestToType(t *testing.T) {
	pkg := createTestPkg(t, &convert.PackageConfig{
		OutputDir: "",
	})

	testCases := []struct {
		name     string
		input    *ast.BuiltinType
		expected string
	}{
		{"Void", &ast.BuiltinType{Kind: ast.Void}, "[0]byte"},
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
			result, _ := pkg.ToType(tc.input)
			if result != nil && result.String() != tc.expected {
				t.Errorf("unexpected result:%s expected:%s", result.String(), tc.expected)
			}
		})
	}
}

func TestNewPackage(t *testing.T) {
	pkg := createTestPkg(t, &convert.PackageConfig{})
	comparePackageOutput(t, pkg, `
	package testpkg
	import _ "unsafe"
	`)
}

func TestPackageWrite(t *testing.T) {
	verifyGeneratedFile := func(t *testing.T, expectedFilePath string) {
		t.Helper()
		if _, err := os.Stat(expectedFilePath); os.IsNotExist(err) {
			t.Fatalf("Expected output file does not exist: %s", expectedFilePath)
		}

		content, err := os.ReadFile(expectedFilePath)
		if err != nil {
			t.Fatalf("Unable to read generated file: %v", err)
		}

		expectedContent := "package testpkg"
		if !strings.Contains(string(content), expectedContent) {
			t.Errorf("Generated file content does not match expected.\nExpected:\n%s\nActual:\n%s", expectedContent, string(content))
		}
	}

	incPath := "mock_header.h"
	filePath := filepath.Join("/path", "to", incPath)
	genPath := names.HeaderFileToGo(filePath)

	t.Run("OutputToTempDir", func(t *testing.T) {
		tempDir, err := os.MkdirTemp("", "test_package_write")
		if err != nil {
			t.Fatalf("Failed to create temporary directory: %v", err)
		}
		defer os.RemoveAll(tempDir)

		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: tempDir,
		})
		pkg.SetCurFile(filePath, incPath, true, true, false)
		err = pkg.Write(filePath)
		if err != nil {
			t.Fatalf("Write method failed: %v", err)
		}

		expectedFilePath := filepath.Join(tempDir, genPath)
		verifyGeneratedFile(t, expectedFilePath)
	})

	t.Run("OutputToCurrentDir", func(t *testing.T) {
		currentDir, err := os.Getwd()
		if err != nil {
			t.Fatalf("Failed to get current directory: %v", err)
		}
		testpkgDir := filepath.Join(currentDir, "testpkg")
		if err := os.MkdirAll(testpkgDir, 0755); err != nil {
			t.Fatalf("Failed to create testpkg directory: %v", err)
		}

		defer func() {
			// Clean up generated files and directory
			os.RemoveAll(testpkgDir)
		}()

		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: testpkgDir,
		})
		pkg.SetCurFile(filePath, incPath, true, true, false)
		err = pkg.Write(filePath)
		if err != nil {
			t.Fatalf("Write method failed: %v", err)
		}

		expectedFilePath := filepath.Join(testpkgDir, genPath)
		verifyGeneratedFile(t, expectedFilePath)
	})

	t.Run("InvalidOutputDir", func(t *testing.T) {
		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: "/nonexistent/directory",
		})
		err := pkg.Write(incPath)
		if err == nil {
			t.Fatal("Expected an error for invalid output directory, but got nil")
		}
	})

	t.Run("UnwritableOutputDir", func(t *testing.T) {
		tempDir, err := os.MkdirTemp("", "test_package_write_unwritable")
		if err != nil {
			t.Fatalf("Failed to create temporary directory: %v", err)
		}
		defer os.RemoveAll(tempDir)

		pkg := createTestPkg(t, &convert.PackageConfig{
			OutputDir: tempDir,
		})

		// read-only
		err = os.Chmod(tempDir, 0555)
		defer os.Chmod(tempDir, 0755)
		if err != nil {
			t.Fatalf("Failed to change directory permissions: %v", err)
		}

		err = pkg.Write(incPath)
		if err == nil {
			t.Fatal("Expected an error for invalid output directory, but got nil")
		}
	})
}

/*
	func TestPreparseOutputDir(t *testing.T) {
		defer func() {
			if r := recover(); r == nil {
				t.Errorf("no permission folder: no error?")
			}
		}()
		convert.NewPackage(&convert.PackageConfig{
			PkgPath:   ".",
			Name:      "testpkg",
			GenConf:   &gogen.Config{},
			OutputDir: "invalid\x00path",
		})
	}
*/
func TestFuncDecl(t *testing.T) {
	testCases := []genDeclTestCase{
		{
			name: "empty func",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: nil,
					Ret:    &ast.BuiltinType{Kind: ast.Void},
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg
import _ "unsafe"
//go:linkname Foo C.foo
func Foo()`,
		},
		{
			name: "variadic func",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{Type: &ast.Variadic{}},
						},
					},
					Ret: &ast.BuiltinType{Kind: ast.Void},
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg
import _ "unsafe"
//go:linkname Foo C.foo
func Foo(__llgo_va_list ...interface{})`,
		},
		{
			name: "func not in symbol table",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: nil,
					Ret:    nil,
				},
			},
			expectedErr: "symbol not found",
		},
		{
			name: "invalid function type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "invalidFunc"},
				MangledName: "invalidFunc",
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "a"}},
								Type:  &ast.BuiltinType{Kind: ast.Bool, Flags: ast.Long}, // invalid
							},
						},
					},
					Ret: nil,
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "invalidFunc",
					MangleName: "invalidFunc",
					GoName:     "InvalidFunc",
				},
			},
			expectedErr: "not found in type map",
		},
		{
			name: "explict void return",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: nil,
					Ret:    &ast.BuiltinType{Kind: ast.Void},
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg
import _ "unsafe"
//go:linkname Foo C.foo
func Foo()`,
		},
		{
			name: "builtin type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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

			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg
import _ "unsafe"
//go:linkname Foo C.foo
func Foo(a uint16, b bool) float64`,
		},
		{
			name: "c builtin type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

//go:linkname Foo C.foo
func Foo(a c.Uint, b c.Long) c.Ulong
`,
		},
		{
			name: "basic decl with c type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

//go:linkname Foo C.foo
func Foo(a c.Uint, b c.Long) c.Ulong
`,
		},
		{
			name: "pointer type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

//go:linkname Foo C.foo
func Foo(a *c.Uint, b *c.Long) *float64
`,
		},
		{
			name: "void *",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
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
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
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
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			cppgconf: &cppgtypes.Config{
				Name: "testpkg",
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

//go:linkname Foo C.foo
func Foo(a *c.Uint, b *float64) **int8
			`,
		},
		{
			name: "error array param",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							{
								Type: &ast.ArrayType{
									Elt: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Double},
								},
							},
						},
					},
					Ret: nil,
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expectedErr: "error convert elem type",
		},
		{
			name: "error return type",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: nil,
					Ret:    &ast.BuiltinType{Kind: ast.Bool, Flags: ast.Double},
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expectedErr: "error convert return type",
		},
		{
			name: "error nil param",
			decl: &ast.FuncDecl{
				Name:        &ast.Ident{Name: "foo"},
				MangledName: "foo",
				Type: &ast.FuncType{
					Params: &ast.FieldList{
						List: []*ast.Field{
							nil,
						},
					},
					Ret: nil,
				},
			},
			symbs: []cfg.SymbolEntry{
				{
					CppName:    "foo",
					MangleName: "foo",
					GoName:     "Foo",
				},
			},
			expectedErr: "unexpected nil field",
		},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

func TestStructDecl(t *testing.T) {
	testCases := []genDeclTestCase{
		// struct Foo {}
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

import _ "unsafe"

type Foo struct {
}`,
		},
		// invalid struct type
		{
			name: "invalid struct type",
			decl: &ast.TypeDecl{
				Name: &ast.Ident{Name: "InvalidStruct"},
				Type: &ast.RecordType{
					Tag: ast.Struct,
					Fields: &ast.FieldList{
						List: []*ast.Field{
							{
								Names: []*ast.Ident{{Name: "invalidField"}},
								Type:  &ast.BuiltinType{Kind: ast.Bool, Flags: ast.Long},
							},
						},
					},
				},
			},
			expectedErr: "not found in type map",
		},
		// struct Foo { int a; double b; bool c; }
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

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

type Foo struct {
	A c.Int
	B float64
	C bool
}`,
		},
		// struct Foo { int* a; double* b; bool* c;void* d; }
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
	A *c.Int
	B *float64
	C *bool
	D unsafe.Pointer
}`},
		// struct Foo { char a[4]; int b[3][4]; }
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

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

type Foo struct {
	A [4]int8
	B [3][4]c.Int
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

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

type Foo struct {
	A [4]int8
	B [3][4]c.Int
}`},
		{
			name: "anonymous struct",
			decl: &ast.TypeDecl{
				Name: nil,
				Type: &ast.RecordType{
					Tag:    ast.Struct,
					Fields: &ast.FieldList{},
				},
			},
			expected: `
package testpkg
import _ "unsafe"
			`},
		{
			name: "struct array field without len",
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
								},
							},
						},
					},
				},
			},
			expectedErr: "unsupport field with array without length",
		},
		{
			name: "struct array field without len",
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
									Len: &ast.BuiltinType{Kind: ast.TypeKind(ast.Signed)}, //invalid
								},
							},
						},
					},
				},
			},
			expectedErr: "can't determine the array length",
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

func TestTypedefFunc(t *testing.T) {
	testCases := []genDeclTestCase{
		// typedef int (*Foo) (int a, int b);
		{
			name: "typedef func",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "Foo"},
				Type: &ast.PointerType{
					X: &ast.FuncType{
						Params: &ast.FieldList{
							List: []*ast.Field{
								{
									Type: &ast.BuiltinType{
										Kind: ast.Int,
									},
									Names: []*ast.Ident{{Name: "a"}},
								},
								{
									Type: &ast.BuiltinType{
										Kind: ast.Int,
									},
									Names: []*ast.Ident{{Name: "b"}},
								},
							},
						},
						Ret: &ast.BuiltinType{
							Kind: ast.Int,
						},
					},
				},
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)
// llgo:type C
type Foo func(a c.Int, b c.Int) c.Int`,
		},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

// Test Redefine error
func TestRedef(t *testing.T) {
	pkg := createTestPkg(t, &convert.PackageConfig{
		OutputDir: "",
		SymbolTable: cfg.CreateSymbolTable(
			[]cfg.SymbolEntry{
				{CppName: "Bar", MangleName: "Bar", GoName: "Bar"},
			},
		),
	})

	flds := &ast.FieldList{
		List: []*ast.Field{
			{
				Type: &ast.BuiltinType{Kind: ast.Int},
			},
		},
	}
	pkg.NewTypeDecl(&ast.TypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.RecordType{
			Tag:    ast.Struct,
			Fields: flds,
		},
	})

	err := pkg.NewTypeDecl(&ast.TypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.RecordType{
			Tag:    ast.Struct,
			Fields: flds,
		},
	})
	if err == nil {
		t.Fatal("Expect a redefine err")
	}

	pkg.NewTypedefDecl(&ast.TypedefDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.Ident{Name: "Foo"},
	})

	err = pkg.NewFuncDecl(&ast.FuncDecl{
		Name:        &ast.Ident{Name: "Bar"},
		MangledName: "Bar",
		Type: &ast.FuncType{
			Ret: &ast.BuiltinType{
				Kind: ast.Void,
			},
		},
	})
	if err != nil {
		t.Fatal("NewFuncDecl failed", err)
	}

	err = pkg.NewFuncDecl(&ast.FuncDecl{
		Name:        &ast.Ident{Name: "Bar"},
		MangledName: "Bar",
		Type:        &ast.FuncType{},
	})
	if err == nil {
		t.Fatal("Expect a redefine err")
	}

	err = pkg.NewEnumTypeDecl(&ast.EnumTypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.EnumType{},
	})

	if err == nil {
		t.Fatal("Expect a redefine err")
	}

	err = pkg.NewEnumTypeDecl(&ast.EnumTypeDecl{
		Name: nil,
		Type: &ast.EnumType{
			Items: []*ast.EnumItem{
				{Name: &ast.Ident{Name: "Foo"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "0"}},
			},
		},
	})

	if err == nil {
		t.Fatal("Expect a redefine err")
	}

	var buf bytes.Buffer
	err = pkg.GetGenPackage().WriteTo(&buf)
	if err != nil {
		t.Fatalf("WriteTo failed: %v", err)
	}

	expect := `
package testpkg

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Foo struct {
	c.Int
}
//go:linkname Bar C.Bar
func Bar()
`
	comparePackageOutput(t, pkg, expect)
}

func TestTypedef(t *testing.T) {
	testCases := []genDeclTestCase{
		// typedef double DOUBLE;
		{
			name: "typedef double",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "DOUBLE"},
				Type: &ast.BuiltinType{
					Kind:  ast.Float,
					Flags: ast.Double,
				},
			},
			expected: `
package testpkg

import _ "unsafe"

type DOUBLE float64`,
		},
		// invalid typedef
		{
			name: "invalid typedef",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "INVALID"},
				Type: &ast.BuiltinType{
					Kind:  ast.Bool,
					Flags: ast.Double,
				},
			},
			expectedErr: "not found in type map",
		},
		// typedef int INT;
		{
			name: "typedef int",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "INT"},
				Type: &ast.BuiltinType{
					Kind: ast.Int,
				},
			},
			expected: `
package testpkg

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

type INT c.Int
			`,
		},
		{
			name: "typedef array",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "name"},
				Type: &ast.ArrayType{
					Elt: &ast.BuiltinType{
						Kind:  ast.Char,
						Flags: ast.Signed,
					},
					Len: &ast.BasicLit{Kind: ast.IntLit, Value: "5"},
				},
			},
			expected: `
package testpkg

import _ "unsafe"

type Name [5]int8`,
		},
		// typedef void* ctx;
		{
			name: "typedef pointer",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "ctx"},
				Type: &ast.PointerType{
					X: &ast.BuiltinType{
						Kind: ast.Void,
					},
				},
			},
			expected: `
package testpkg

import "unsafe"

type Ctx unsafe.Pointer`,
		},

		// typedef char* name;
		{
			name: "typedef pointer",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "name"},
				Type: &ast.PointerType{
					X: &ast.BuiltinType{
						Kind:  ast.Char,
						Flags: ast.Signed,
					},
				},
			},
			expected: `
package testpkg
import _ "unsafe"
type Name *int8`,
		},
		{
			name: "typedef invalid pointer",
			decl: &ast.TypedefDecl{
				Name: &ast.Ident{Name: "name"},
				Type: &ast.PointerType{
					X: &ast.BuiltinType{
						Kind:  ast.Char,
						Flags: ast.Double,
					},
				},
			},
			expectedErr: "error convert baseType",
		},
	}

	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

func TestEnumDecl(t *testing.T) {
	testCases := []genDeclTestCase{
		{
			name: "enum",
			decl: &ast.EnumTypeDecl{
				Name: &ast.Ident{Name: "Color"},
				Type: &ast.EnumType{
					Items: []*ast.EnumItem{
						{Name: &ast.Ident{Name: "Red"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "0"}},
						{Name: &ast.Ident{Name: "Green"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "1"}},
						{Name: &ast.Ident{Name: "Blue"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "2"}},
					},
				},
			},
			expected: `
package testpkg

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Color c.Int
const (
	ColorRed   Color = 0
	ColorGreen Color = 1
	ColorBlue  Color = 2
)`,
		},
		{
			name: "anonymous enum",
			decl: &ast.EnumTypeDecl{
				Name: nil,
				Type: &ast.EnumType{
					Items: []*ast.EnumItem{
						{Name: &ast.Ident{Name: "red"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "0"}},
						{Name: &ast.Ident{Name: "green"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "1"}},
						{Name: &ast.Ident{Name: "blue"}, Value: &ast.BasicLit{Kind: ast.IntLit, Value: "2"}},
					},
				},
			},
			expected: `
package testpkg

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	Red   c.Int = 0
	Green c.Int = 1
	Blue  c.Int = 2
)`,
		},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			testGenDecl(t, tc)
		})
	}
}

func TestIdentRefer(t *testing.T) {
	t.Run("undef ident ref", func(t *testing.T) {
		pkg := createTestPkg(t, &convert.PackageConfig{})
		err := pkg.NewTypeDecl(&ast.TypeDecl{
			Name: &ast.Ident{Name: "Foo"},
			Type: &ast.RecordType{
				Tag: ast.Struct,
				Fields: &ast.FieldList{
					List: []*ast.Field{
						{
							Names: []*ast.Ident{{Name: "notfound"}},
							Type: &ast.Ident{
								Name: "undefType",
							},
						},
					},
				},
			},
		})
		compareError(t, err, "undefType not found")
	})
	t.Run("undef tag ident ref", func(t *testing.T) {
		pkg := createTestPkg(t, &convert.PackageConfig{})
		err := pkg.NewTypeDecl(&ast.TypeDecl{
			Name: &ast.Ident{Name: "Foo"},
			Type: &ast.RecordType{
				Tag: ast.Struct,
				Fields: &ast.FieldList{
					List: []*ast.Field{
						{
							Names: []*ast.Ident{{Name: "notfound"}},
							Type: &ast.TagExpr{
								Tag: ast.Class,
								Name: &ast.Ident{
									Name: "undefType",
								},
							},
						},
					},
				},
			},
		})
		compareError(t, err, "undefType not found")
	})
	t.Run("type alias", func(t *testing.T) {
		pkg := createTestPkg(t, &convert.PackageConfig{
			CppgConf: &cppgtypes.Config{},
		})
		pkg.NewTypedefDecl(&ast.TypedefDecl{
			Name: &ast.Ident{Name: "int8_t"},
			Type: &ast.BuiltinType{
				Kind:  ast.Char,
				Flags: ast.Signed,
			},
		})
		pkg.NewTypeDecl(&ast.TypeDecl{
			Name: &ast.Ident{Name: "Foo"},
			Type: &ast.RecordType{
				Tag: ast.Struct,
				Fields: &ast.FieldList{
					List: []*ast.Field{
						{
							Names: []*ast.Ident{{Name: "a"}},
							Type: &ast.Ident{
								Name: "int8_t",
							},
						},
					},
				},
			},
		})
		comparePackageOutput(t, pkg, `
		package testpkg
		import _ "unsafe"
		type Int8T int8
		type Foo struct {
			A Int8T
		}
		`)
	})
}

func TestForwardDecl(t *testing.T) {
	pkg := createTestPkg(t, &convert.PackageConfig{
		OutputDir: "",
		SymbolTable: cfg.CreateSymbolTable(
			[]cfg.SymbolEntry{
				{CppName: "Bar", MangleName: "Bar", GoName: "Bar"},
			},
		),
	})

	// forward decl
	err := pkg.NewTypeDecl(&ast.TypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.RecordType{
			Tag:    ast.Struct,
			Fields: &ast.FieldList{},
		},
	})

	if err != nil {
		t.Fatalf("NewTypeDecl failed: %v", err)
	}

	// complete decl
	err = pkg.NewTypeDecl(&ast.TypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.RecordType{
			Tag: ast.Struct,
			Fields: &ast.FieldList{
				List: []*ast.Field{
					{
						Names: []*ast.Ident{{Name: "a"}},
						Type:  &ast.BuiltinType{Kind: ast.Int},
					},
				},
			},
		},
	})

	if err != nil {
		t.Fatalf("NewTypeDecl failed: %v", err)
	}

	expect := `
package testpkg

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Foo struct {
	A c.Int
}
`
	comparePackageOutput(t, pkg, expect)
}

type genDeclTestCase struct {
	name        string
	decl        ast.Decl
	symbs       []cfg.SymbolEntry
	cppgconf    *cppgtypes.Config
	expected    string
	expectedErr string
}

func testGenDecl(t *testing.T, tc genDeclTestCase) {
	t.Helper()
	pkg := createTestPkg(t, &convert.PackageConfig{
		SymbolTable: cfg.CreateSymbolTable(tc.symbs),
		CppgConf:    tc.cppgconf,
	})
	if pkg == nil {
		t.Fatal("NewPackage failed")
	}
	var err error
	switch d := tc.decl.(type) {
	case *ast.TypeDecl:
		err = pkg.NewTypeDecl(d)
	case *ast.TypedefDecl:
		err = pkg.NewTypedefDecl(d)
	case *ast.FuncDecl:
		err = pkg.NewFuncDecl(d)
	case *ast.EnumTypeDecl:
		err = pkg.NewEnumTypeDecl(d)
	default:
		t.Errorf("Unsupported declaration type: %T", tc.decl)
		return
	}
	if tc.expectedErr != "" {
		compareError(t, err, tc.expectedErr)
	} else {
		if err != nil {
			t.Errorf("Declaration generation failed: %v", err)
		} else {
			comparePackageOutput(t, pkg, tc.expected)
		}
	}
}

// compare error
func compareError(t *testing.T, err error, expectErr string) {
	t.Helper()
	if err == nil {
		t.Errorf("Expected error containing %q, but got nil", expectErr)
	} else if !strings.Contains(err.Error(), expectErr) {
		t.Errorf("Expected error contain %q, but got %q", expectErr, err.Error())
	}
}

func createTestPkg(t *testing.T, config *convert.PackageConfig) *convert.Package {
	t.Helper()
	if config.CppgConf == nil {
		config.CppgConf = &cppgtypes.Config{}
	}
	if config.SymbolTable == nil {
		config.SymbolTable = cfg.CreateSymbolTable([]cfg.SymbolEntry{})
	}
	if config.CppgConf == nil {
		config.CppgConf = &cppgtypes.Config{}
	}
	if config.SymbolTable == nil {
		config.SymbolTable = cfg.CreateSymbolTable([]cfg.SymbolEntry{})
	}
	pkg := convert.NewPackage(&convert.PackageConfig{
		PkgPath:     ".",
		Name:        "testpkg",
		GenConf:     &gogen.Config{},
		OutputDir:   config.OutputDir,
		SymbolTable: config.SymbolTable,
		CppgConf:    config.CppgConf,
		Public:      make(map[string]string),
	})
	if pkg == nil {
		t.Fatal("NewPackage failed")
	}
	return pkg
}

// compares the output of a gogen.Package with the expected
func comparePackageOutput(t *testing.T, pkg *convert.Package, expect string) {
	t.Helper()
	// For Test,The Test package's header filename same as package name
	buf, err := pkg.WriteDefaultFileToBuffer()
	if err != nil {
		t.Fatalf("WriteTo failed: %v", err)
	}
	eq, diff := cmp.EqualStringIgnoreSpace(buf.String(), expect)
	if !eq {
		t.Error(diff)
	}
}

/** multiple package test **/

func TestTypeClean(t *testing.T) {
	pkg := createTestPkg(t, &convert.PackageConfig{
		OutputDir: "",
		SymbolTable: cfg.CreateSymbolTable(
			[]cfg.SymbolEntry{
				{CppName: "Func1", MangleName: "Func1", GoName: "Func1"},
				{CppName: "Func2", MangleName: "Func2", GoName: "Func2"},
			},
		),
	})

	testCases := []struct {
		addType    func()
		headerFile string
		incPath    string
		newType    string
	}{
		{
			addType: func() {
				pkg.NewTypeDecl(&ast.TypeDecl{
					Name: &ast.Ident{Name: "Foo1"},
					Type: &ast.RecordType{Tag: ast.Struct},
				})
			},
			headerFile: "/path/to/file1.h",
			incPath:    "file1.h",
			newType:    "Foo1",
		},
		{
			addType: func() {
				pkg.NewTypedefDecl(&ast.TypedefDecl{
					Name: &ast.Ident{Name: "Bar2"},
					Type: &ast.BuiltinType{Kind: ast.Int},
				})
			},
			headerFile: "/path/to/file2.h",
			incPath:    "file2.h",
			newType:    "Bar2",
		},
		{
			addType: func() {
				pkg.NewFuncDecl(&ast.FuncDecl{
					Name: &ast.Ident{Name: "Func1"}, MangledName: "Func1",
					Type: &ast.FuncType{Params: nil, Ret: &ast.BuiltinType{Kind: ast.Void}},
				})
			},
			headerFile: "/path/to/file3.h",
			incPath:    "file3.h",
			newType:    "Func1",
		},
	}

	for i, tc := range testCases {
		pkg.SetCurFile(tc.headerFile, tc.incPath, true, true, false)
		tc.addType()

		goFileName := names.HeaderFileToGo(tc.headerFile)
		buf, err := pkg.WriteToBuffer(goFileName)
		if err != nil {
			t.Fatal(err)
		}
		result := buf.String()

		if !strings.Contains(result, tc.newType) {
			t.Errorf("Case %d: Generated type does not contain %s", i, tc.newType)
		}

		for j := 0; j < i; j++ {
			oldType := testCases[j].newType
			if strings.Contains(result, oldType) {
				t.Errorf("Case %d: Previously added type %s (from case %d) still exists", i, oldType, j)
			}
		}
	}
}

func TestHeaderFileToGo(t *testing.T) {
	testCases := []struct {
		name     string
		input    string
		expected string
	}{
		{
			name:     "normal",
			input:    "/path/to/sys/dirent.h",
			expected: "dirent.go",
		},
		{
			name:     "sys",
			input:    "/path/to/sys/_pthread/_pthread_types.h",
			expected: "X_pthread_types.go",
		},
		{
			name:     "sys",
			input:    "/path/to/_types.h",
			expected: "X_types.go",
		},
	}
	for _, tc := range testCases {
		t.Run(tc.name, func(t *testing.T) {
			result := names.HeaderFileToGo(tc.input)
			if result != tc.expected {
				t.Errorf("Expected %s, but got %s", tc.expected, result)
			}
		})
	}
}

func TestIncPathToPkg(t *testing.T) {
	testCases := map[string]map[string][]string{
		// macos 14.0
		"darwin": {
			convert.LLGO_C: []string{
				"_stdio.h",
				"secure/_stdio.h",
				"stdio.h",
				"sys/_types/_int16_t.h",
				"sys/_types/_int32_t.h",
				"sys/_types/_int64_t.h",
				"sys/_types/_int8_t.h",
				"sys/_types/_intptr_t.h",
				"sys/_types/_size_t.h",
				"sys/_types/_u_int16_t.h",
				"sys/_types/_u_int32_t.h",
				"sys/_types/_u_int64_t.h",
				"sys/_types/_u_int8_t.h",
				"sys/_types/_uintptr_t.h",
				"sys/_types.h",
				"arm/_types.h",
				"sys/_types/_ct_rune_t.h",
				"sys/_types/_dev_t.h",
				"sys/_types/_id_t.h",
				"sys/_types.h",
				"arm/_types.h",
				"sys/_types/_errno_t.h",
			},
			convert.LLGO_PTHREAD: []string{
				"sys/_pthread/_pthread_types.h",
			},
			convert.LLGO_SYSTEM: []string{
				"sys/signal.h",
				"sys/resource.h",
				"sys/wait.h",
			},
			convert.LLGO_TIME: []string{
				"time.h",
				"sys/_types/_time_t.h",
			},
			convert.LLGO_UNIX_NET: []string{
				"sys/socket.h",
				"arpa/inet.h",
				"netinet6/in6.h",
				"netinet/in.h",
				"net/if.h",
				"net/if_var.h",
			},
		},
	}
	for testVer, pkgMap := range testCases {
		for expectPkg, incs := range pkgMap {
			for _, inc := range incs {
				if gotPkg, _ := convert.IncPathToPkg(inc); gotPkg != expectPkg {
					t.Errorf("testVer: %s, inc: %s, expect: %s, got: %s", testVer, inc, expectPkg, gotPkg)
				}
			}
		}
	}
}

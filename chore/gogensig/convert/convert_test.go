package convert_test

import (
	"log"
	"os"
	"path/filepath"
	"runtime"
	"strings"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmp"
	"github.com/goplus/llgo/chore/gogensig/cmptest"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	"github.com/goplus/llgo/chore/llcppg/ast"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestUnion(t *testing.T) {
	cmptest.RunTest(t, "union", false, []config.SymbolEntry{}, map[string]string{}, &cppgtypes.Config{}, `
typedef union  __u
{
    int a;
    long b;
    float c;
}u;
	`, `
package union

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type X__u struct {
	B c.Long
}
type U X__u
	`, nil)
}

func TestReferStdSizeT(t *testing.T) {
	cmptest.RunTest(t, "size_t", false, []config.SymbolEntry{
		{MangleName: "testSize", CppName: "testSize", GoName: "TestSize"},
	}, map[string]string{}, &cppgtypes.Config{}, `
#include <stddef.h>

void testSize(size_t a);
	`, `
package size_t

import _ "unsafe"
//go:linkname TestSize C.testSize
func TestSize(a Size_t)
	`, nil)
}

func TestCommentSlashSlashSlash(t *testing.T) {
	cmptest.RunTest(t, "comment", false, []config.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	}, map[string]string{}, &cppgtypes.Config{}, `
/// Foo comment
struct Foo { int a; double b; bool c; };

/// ExecuteFoo comment
int ExecuteFoo(int a,Foo b);
	`, `
package comment

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)
/// Foo comment
type Foo struct {
	A c.Int
	B float64
	C c.Int
}
/// ExecuteFoo comment
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`, nil)
}

func TestEnum(t *testing.T) {
	cmptest.RunTestWithCheckEqual(t, "spectrum", true, []config.SymbolEntry{}, map[string]string{}, &cppgtypes.Config{
		Cplusplus: true,
	},
		`
	enum{
		enum1,
		enum2
	};
	enum spectrum
	{
	    red,
	    orange,
	    yello,
	    green,
	    blue,
	    violet
	};

	enum kids
	{
	    nippy,
	    slats,
	    skippy,
	    nina,
	    liz
	};

	enum levels
	{
	    low = 100,
	    medium = 500,
	    high = 2000
	};

	enum feline
	{
	    cat,
	    lynx = 10,
	    puma,
	    tiger
	};

	enum class PieceType
	{
	    King = 1,
	    Queen,
	    Rook = 10,
	    Pawn
	};`,
		`
package spectrum

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

const (
	Enum1 c.Int = 0
	Enum2 c.Int = 1
)

type Spectrum c.Int

const (
	Spectrum_red    Spectrum = 0
	Spectrum_orange Spectrum = 1
	Spectrum_yello  Spectrum = 2
	Spectrum_green  Spectrum = 3
	Spectrum_blue   Spectrum = 4
	Spectrum_violet Spectrum = 5
)

type Kids c.Int

const (
	Kids_nippy  Kids = 0
	Kids_slats  Kids = 1
	Kids_skippy Kids = 2
	Kids_nina   Kids = 3
	Kids_liz    Kids = 4
)

type Levels c.Int

const (
	Levels_low    Levels = 100
	Levels_medium Levels = 500
	Levels_high   Levels = 2000
)

type Feline c.Int

const (
	Feline_cat   Feline = 0
	Feline_lynx  Feline = 10
	Feline_puma  Feline = 11
	Feline_tiger Feline = 12
)

type PieceType c.Int

const (
	PieceType_King  PieceType = 1
	PieceType_Queen PieceType = 2
	PieceType_Rook  PieceType = 10
	PieceType_Pawn  PieceType = 11
)
`, nil, func(t *testing.T, expected, content string) {
			eq, diff := cmp.EqualStringIgnoreSpace(expected, content)
			if !eq {
				t.Errorf(diff)
			}
		})
}

// Test generating a basic struct, correctly converting its fields,
// and properly referencing it in a function
func TestStructDeclRef(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	}, map[string]string{},
		&cppgtypes.Config{},
		`
struct Foo { int a; double b; bool c; };
int ExecuteFoo(int a,Foo b);
	`, `
package typeref

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Foo struct {
	A c.Int
	B float64
	C c.Int
}
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`, nil)
}

// Test if function names and type names can remove specified prefixes,
// generate correct linkname, and use function names defined in llcppg.symb.json
func TestCustomStruct(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{MangleName: "lua_close", CppName: "lua_close", GoName: "Close"},
		{MangleName: "lua_newthread", CppName: "lua_newthread", GoName: "Newthread"},
		{MangleName: "lua_closethread", CppName: "lua_closethread", GoName: "Closethread"},
		{MangleName: "lua_resetthread", CppName: "lua_resetthread", GoName: "Resetthread"},
	}, map[string]string{}, &cppgtypes.Config{
		TrimPrefixes: []string{"lua_"},
		Include:      []string{"temp.h"},
		// prefix only remove in the llcppg.cfg includes
	}, `
typedef struct lua_State lua_State;
typedef int (*lua_CFunction)(lua_State *L);
LUA_API void(lua_close)(lua_State *L);
LUA_API lua_State *(lua_newthread)(lua_State *L);
LUA_API int(lua_closethread)(lua_State *L, lua_State *from);
LUA_API int(lua_resetthread)(lua_State *L);
	`, `
package typeref

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type State struct {
	Unused [8]uint8
}
// llgo:type C
type CFunction func(*State) c.Int
//go:linkname Close C.lua_close
func Close(L *State) c.Int
//go:linkname Closethread C.lua_closethread
func Closethread(L *State, from *State) c.Int
//go:linkname Resetthread C.lua_resetthread
func Resetthread(L *State) c.Int
	`, nil)
}

func TestAvoidKeyword(t *testing.T) {
	cmptest.RunTest(t, "avoid", false, []config.SymbolEntry{
		{MangleName: "lua_sethook", CppName: "lua_sethook", GoName: "Sethook"},
	}, map[string]string{}, &cppgtypes.Config{}, `
	typedef struct lua_State lua_State;
	typedef void (*lua_Hook)(lua_State *L, lua_Debug *ar);
	void(lua_sethook)(lua_State *L, lua_Hook func, int mask, int count);
	`, `
package avoid

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Lua_State struct {
	Unused [8]uint8
}
// llgo:type C
type Lua_Hook func(*Lua_State, *c.Int)
//go:linkname Sethook C.lua_sethook
func Sethook(L *Lua_State, func_ Lua_Hook, mask c.Int, count c.Int)
	`, nil)
}

// todo(zzy): https://github.com/luoliwoshang/llgo/issues/78 error in linux
// Test if it can properly skip types from packages that have already been confirmed to be mapped
// The _int8_t, _int16_t, _int32_t, _int64_t below are types that have already been confirmed to be mapped (macos).
// The corresponding header files only define these aliases. For these header files, we skip them directly.
//
// In the follow include,the follow header files are included in the stdint.
// And this sys/_types/* int header files are have mapped,so we need skip them.
// And stdint.h's other included header files are not mapped yet, so we need to gradually generate them and create mappings for them.
//
// #include <sys/_types/_int8_t.h>
// #include <sys/_types/_int16_t.h>
// #include <sys/_types/_int32_t.h>
// #include <sys/_types/_int64_t.h>

// #include <sys/_types/_u_int8_t.h>
// #include <sys/_types/_u_int16_t.h>
// #include <sys/_types/_u_int32_t.h>
// #include <sys/_types/_u_int64_t.h>
func TestSkipBuiltinTypedefine(t *testing.T) {
	// current only support macos
	if runtime.GOOS != "darwin" {
		t.Skip("skip on non-macos")
	}

	cmptest.RunTest(t, "skip", false, []config.SymbolEntry{
		{MangleName: "testInt", CppName: "testInt", GoName: "TestInt"},
		{MangleName: "testUint", CppName: "testUint", GoName: "TestUint"},
		{MangleName: "testFile", CppName: "testFile", GoName: "TestFile"},
	}, map[string]string{}, &cppgtypes.Config{
		Deps: []string{
			"github.com/goplus/llgo/chore/gogensig/convert/testdata/stdint",
			"github.com/goplus/llgo/chore/gogensig/convert/testdata/stdio",
		},
	}, `
#include <stdint.h>
#include <stdio.h>

void testInt(int8_t a, int16_t b, int32_t c, int64_t d);
void testUint(u_int8_t a, u_int16_t b, u_int32_t c, u_int64_t d);

void testFile(FILE *f);
	`,
		`package skip

import (
	"github.com/goplus/llgo/chore/gogensig/convert/testdata/stdint"
	"github.com/goplus/llgo/chore/gogensig/convert/testdata/stdio"
	_ "unsafe"
)
//go:linkname TestInt C.testInt
func TestInt(a stdint.Int8_t, b stdint.Int16_t, c stdint.Int32_t, d stdint.Int64_t)
//go:linkname TestUint C.testUint
func TestUint(a stdint.U_int8_t, b stdint.U_int16_t, c stdint.U_int32_t, d stdint.U_int64_t)
//go:linkname TestFile C.testFile
func TestFile(f *stdio.FILE)
	`, func(t *testing.T, pkg *convert.Package) {
			files, err := os.ReadDir(pkg.GetOutputDir())
			if err != nil {
				t.Fatal(err)
			}
			needSkipHeaderFiles := pkg.AllDepIncs()
			for _, file := range files {
				log.Println("Generated file:", file.Name())
				for _, headerFile := range needSkipHeaderFiles {
					if file.Name() == convert.HeaderFileToGo(headerFile) {
						content, err := os.ReadFile(filepath.Join(pkg.GetOutputDir(), file.Name()))
						if err != nil {
							t.Fatal(err)
						}
						t.Fatal("skip file should not be output: " + headerFile + "\n" + string(content))
					}
				}
			}
		})
}

func TestPubFile(t *testing.T) {
	cmptest.RunTest(t, "pub", false, []config.SymbolEntry{
		{MangleName: "func", CppName: "func", GoName: "Func"},
	}, map[string]string{
		"data": "CustomData",
	}, &cppgtypes.Config{
		Include: []string{"temp.h"},
	}, `
struct point {
	int x;
	int y;
};
struct Capital {
	int x;
	int y;
};
union data {
	float f;
	char str[20];
};
typedef unsigned int uint_t;
enum color {
	RED = 0,
};
void func(int a, int b);
	`, `
package pub

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type Point struct {
	X c.Int
	Y c.Int
}

type Capital struct {
	X c.Int
	Y c.Int
}

type CustomData struct {
	Str [20]int8
}
type Uint_t c.Uint
type Color c.Int

const Color_RED Color = 0
//go:linkname Func C.func
func Func(a c.Int, b c.Int)
	`, func(t *testing.T, pkg *convert.Package) {
		bytes, err := os.ReadFile(filepath.Join(pkg.GetOutputDir(), "llcppg.pub"))
		if err != nil {
			t.Fatal("llcppg.pub not found")
		}
		expectedPub := `
Capital
color Color
data CustomData
point Point
uint_t Uint_t
`
		cmptest.CheckResult(t, expectedPub, string(bytes))
	})
}

// ===========================error
func TestNewAstConvert(t *testing.T) {
	_, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  "test",
		SymbFile: "",
		CfgFile:  "",
	})
	if err != nil {
		t.Fatal("NewAstConvert Fail")
	}
}

func TestNewAstConvertFail(t *testing.T) {
	_, err := convert.NewAstConvert(nil)
	if err == nil {
		t.Fatal("no error")
	}
}

func TestVisitDone(t *testing.T) {
	pkg, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  "test",
		SymbFile: "",
		CfgFile:  "",
	})
	if err != nil {
		t.Fatal("NewAstConvert Fail")
	}
	pkg.SetVisitDone(func(pkg *convert.Package, incPath string) {
		if pkg.Name() != "test" {
			t.Fatal("pkg name error")
		}
		if incPath != "test.h" {
			t.Fatal("doc path error")
		}
	})
	pkg.VisitDone("test.h")
}

func TestVisitFail(t *testing.T) {
	converter, err := convert.NewAstConvert(&convert.AstConvertConfig{
		PkgName:  "test",
		SymbFile: "",
		CfgFile:  "",
	})
	if err != nil {
		t.Fatal("NewAstConvert Fail")
	}

	// expect type
	converter.VisitTypedefDecl(&ast.TypedefDecl{
		Name: &ast.Ident{Name: "NormalType"},
		Type: &ast.BuiltinType{Kind: ast.Int},
	})

	// not appear in output,because expect error
	converter.VisitTypedefDecl(&ast.TypedefDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: nil,
	})

	errRecordType := &ast.RecordType{
		Tag: ast.Struct,
		Fields: &ast.FieldList{
			List: []*ast.Field{
				{Type: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Double}},
			},
		},
	}
	// error field type for struct
	converter.VisitStruct(&ast.Ident{Name: "Foo"}, nil, &ast.TypeDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: errRecordType,
	})

	// error field type for anonymous struct
	converter.VisitStruct(&ast.Ident{Name: "Foo"}, nil, &ast.TypeDecl{
		Name: nil,
		Type: errRecordType,
	})

	converter.VisitEnumTypeDecl(&ast.EnumTypeDecl{
		Name: &ast.Ident{Name: "NormalType"},
		Type: &ast.EnumType{},
	})

	// error enum item for anonymous enum
	converter.VisitEnumTypeDecl(&ast.EnumTypeDecl{
		Name: nil,
		Type: &ast.EnumType{
			Items: []*ast.EnumItem{
				{Name: &ast.Ident{Name: "Item1"}},
			},
		},
	})

	converter.VisitFuncDecl(&ast.FuncDecl{
		Name: &ast.Ident{Name: "Foo"},
		Type: &ast.FuncType{
			Params: &ast.FieldList{
				List: []*ast.Field{
					{Type: &ast.BuiltinType{Kind: ast.Int, Flags: ast.Double}},
				},
			},
		},
	})
	// not appear in output

	buf, err := converter.Pkg.WriteDefaultFileToBuffer()
	if err != nil {
		t.Fatalf("WriteTo failed: %v", err)
	}

	expectedOutput :=
		`
package test

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)

type NormalType c.Int
`
	if strings.TrimSpace(expectedOutput) != strings.TrimSpace(buf.String()) {
		t.Errorf("does not match expected.\nExpected:\n%s\nGot:\n%s", expectedOutput, buf.String())
	}
}
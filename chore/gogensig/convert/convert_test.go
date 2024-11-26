package convert_test

import (
	"runtime"
	"sort"
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

type X__U struct {
	B c.Long
}
type U X__U
	`, nil)
}

func TestReferStdType(t *testing.T) {
	cmptest.RunTest(t, "StdType", false, []config.SymbolEntry{
		{MangleName: "testStdType", CppName: "testStdType", GoName: "TestStdType"},
	}, map[string]string{}, &cppgtypes.Config{}, `
#include <stddef.h>

void testStdType(size_t a,ptrdiff_t b);
	`, `
package StdType

import (
	"github.com/goplus/llgo/c"
	_ "unsafe"
)
//go:linkname TestStdType C.testStdType
func TestStdType(a c.SizeT, b c.PtrdiffT)
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
	SpectrumRed    Spectrum = 0
	SpectrumOrange Spectrum = 1
	SpectrumYello  Spectrum = 2
	SpectrumGreen  Spectrum = 3
	SpectrumBlue   Spectrum = 4
	SpectrumViolet Spectrum = 5
)

type Kids c.Int

const (
	KidsNippy  Kids = 0
	KidsSlats  Kids = 1
	KidsSkippy Kids = 2
	KidsNina   Kids = 3
	KidsLiz    Kids = 4
)

type Levels c.Int

const (
	LevelsLow    Levels = 100
	LevelsMedium Levels = 500
	LevelsHigh   Levels = 2000
)

type Feline c.Int

const (
	FelineCat   Feline = 0
	FelineLynx  Feline = 10
	FelinePuma  Feline = 11
	FelineTiger Feline = 12
)

type PieceType c.Int

const (
	PieceTypeKing  PieceType = 1
	PieceTypeQueen PieceType = 2
	PieceTypeRook  PieceType = 10
	PieceTypePawn  PieceType = 11
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

func TestSqlite3ForwardDecl(t *testing.T) {
	tempDir := cmptest.GetTempHeaderPathDir()

	cmptest.RunTest(t, "sqlite3", false, []config.SymbolEntry{}, map[string]string{}, &cppgtypes.Config{
		CFlags:       "-I" + tempDir,
		TrimPrefixes: []string{"sqlite3_"},
		Include:      []string{"temp.h"},
	}, `
	typedef struct sqlite3_pcache_page sqlite3_pcache_page;
	struct sqlite3_pcache_page {
		void *pBuf;        /* The content of the page */
		void *pExtra;      /* Extra information associated with the page */
	};

	typedef struct sqlite3_pcache sqlite3_pcache;

	typedef struct sqlite3_pcache_methods2 sqlite3_pcache_methods2;
	struct sqlite3_pcache_methods2 {
		int iVersion;
		void *pArg;
		int (*xInit)(void*);
		void (*xShutdown)(void*);
		sqlite3_pcache *(*xCreate)(int szPage, int szExtra, int bPurgeable);
		void (*xCachesize)(sqlite3_pcache*, int nCachesize);
		int (*xPagecount)(sqlite3_pcache*);
		sqlite3_pcache_page *(*xFetch)(sqlite3_pcache*, unsigned key, int createFlag);
		void (*xUnpin)(sqlite3_pcache*, sqlite3_pcache_page*, int discard);
		void (*xRekey)(sqlite3_pcache*, sqlite3_pcache_page*,
			unsigned oldKey, unsigned newKey);
		void (*xTruncate)(sqlite3_pcache*, unsigned iLimit);
		void (*xDestroy)(sqlite3_pcache*);
		void (*xShrink)(sqlite3_pcache*);
	};
	`, `
package sqlite3

import (
	"github.com/goplus/llgo/c"
	"unsafe"
)

type PcachePage struct {
	PBuf   unsafe.Pointer
	PExtra unsafe.Pointer
}

type Pcache struct {
	Unused [8]uint8
}

type PcacheMethods2 struct {
	IVersion   c.Int
	PArg       unsafe.Pointer
	XInit      func(unsafe.Pointer) c.Int
	XShutdown  func(unsafe.Pointer)
	XCreate    func(c.Int, c.Int, c.Int) *Pcache
	XCachesize func(*Pcache, c.Int)
	XPagecount func(*Pcache) c.Int
	XFetch     func(*Pcache, c.Uint, c.Int) *PcachePage
	XUnpin     func(*Pcache, *PcachePage, c.Int)
	XRekey     func(*Pcache, *PcachePage, c.Uint, c.Uint)
	XTruncate  func(*Pcache, c.Uint)
	XDestroy   func(*Pcache)
	XShrink    func(*Pcache)
}
	`, func(t *testing.T, pkg *convert.Package) {
		cmptest.CheckPubFile(t, pkg, `
sqlite3_pcache Pcache
sqlite3_pcache_methods2 PcacheMethods2
sqlite3_pcache_page PcachePage`)
	})
}

// Test if function names and type names can remove specified prefixes,
// generate correct linkname, and use function names defined in llcppg.symb.json
func TestCustomStruct(t *testing.T) {
	// 获得当前目录的绝对路径
	tempDir := cmptest.GetTempHeaderPathDir()
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{MangleName: "lua_close", CppName: "lua_close", GoName: "Close"},
		{MangleName: "lua_newthread", CppName: "lua_newthread", GoName: "Newthread"},
		{MangleName: "lua_closethread", CppName: "lua_closethread", GoName: "Closethread"},
		{MangleName: "lua_resetthread", CppName: "lua_resetthread", GoName: "Resetthread"},
	}, map[string]string{}, &cppgtypes.Config{
		CFlags:       "-I" + tempDir,
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

type LuaState struct {
	Unused [8]uint8
}
// llgo:type C
type LuaHook func(*LuaState, *c.Int)
//go:linkname Sethook C.lua_sethook
func Sethook(L *LuaState, func_ LuaHook, mask c.Int, count c.Int)
	`, nil)
}

func TestPubFile(t *testing.T) {
	tempDir := cmptest.GetTempHeaderPathDir()

	cmptest.RunTest(t, "pub", false, []config.SymbolEntry{
		{MangleName: "func", CppName: "func", GoName: "Func"},
	}, map[string]string{
		"data": "CustomData",
	}, &cppgtypes.Config{
		CFlags:  "-I" + tempDir,
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
type UintT c.Uint
type Color c.Int

const ColorRED Color = 0
//go:linkname Func C.func
func Func(a c.Int, b c.Int)
	`, func(t *testing.T, pkg *convert.Package) {
		cmptest.CheckPubFile(t, pkg, `
Capital
color Color
data CustomData
point Point
uint_t UintT
		`)
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

// test sys type in stdinclude to package
func TestSysTypeToPkg(t *testing.T) {
	// todo(zzy): wait https://github.com/goplus/llgo/pull/870 merge
	if runtime.GOOS == "linux" {
		t.Skip("skip on linux")
	}
	tempDir := cmptest.GetTempHeaderPathDir()

	cmptest.RunTest(t, "systype", false, []config.SymbolEntry{
		{MangleName: "funcc", CppName: "funcc", GoName: "FuncC"},
	}, map[string]string{
		"data": "CustomData",
	}, &cppgtypes.Config{
		CFlags:  "-I" + tempDir,
		Include: []string{"temp.h"},
	}, `
#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdarg.h>
#include <limits.h>
#include <time.h>
#include <fenv.h>

// posix
#include <arpa/inet.h>
#include <net/if.h>

void funcc(uint_least64_t a, uint_least64_t b);
	`, `
package systype

import _ "unsafe"
	`, func(t *testing.T, pkg *convert.Package) {
		typConv := pkg.GetTypeConv()
		if typConv.SysTypeLoc == nil {
			t.Fatal("sysTypeLoc is nil")
		}
		type inf struct {
			typeName  string
			isDefault bool // is default llgo/c
			info      *convert.HeaderInfo
		}
		pkgTypes := make(map[string][]*inf)

		for name, info := range typConv.SysTypeLoc {
			targetPkg, isDefault := convert.IncPathToPkg(info.IncPath)
			pkgTypes[targetPkg] = append(pkgTypes[targetPkg], &inf{
				typeName:  name,
				info:      info,
				isDefault: isDefault,
			})
		}

		for pkg, types := range pkgTypes {
			t.Logf("Package %s contains types:", pkg)
			sort.Slice(types, func(i, j int) bool {
				if types[i].isDefault != types[j].isDefault {
					return types[i].isDefault
				}
				return types[i].typeName < types[j].typeName
			})
			for _, inf := range types {
				if !inf.isDefault {
					t.Logf("  - %s (%s)", inf.typeName, inf.info.IncPath)
				} else {
					t.Logf("  - %s (%s) [default]", inf.typeName, inf.info.IncPath)
				}
			}
		}
	})
}

package convert_test

import (
	"os"
	"testing"

	"github.com/goplus/llgo/chore/gogensig/cmptest"
	"github.com/goplus/llgo/chore/gogensig/config"
	"github.com/goplus/llgo/chore/gogensig/convert"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestCommentSlashSlashSlash(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	},
		&cppgtypes.Config{},
		`
/// Foo comment
struct Foo { int a; double b; bool c; };

/// ExecuteFoo comment
int ExecuteFoo(int a,Foo b);
	`, `
package typeref

import (
"github.com/goplus/llgo/c"
_ "unsafe"
)

/// Foo comment
type Foo struct {
	a c.Int
	b float64
	c c.Int
}

/// ExecuteFoo comment
//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`)
}

func TestEnum(t *testing.T) {
	cmptest.RunTest(t, "spectrum", true, []config.SymbolEntry{}, &cppgtypes.Config{
		Cplusplus: true,
	},
		`
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

import _ "unsafe"

const (
	Spectrum_red    = 0
	Spectrum_orange = 1
	Spectrum_yello  = 2
	Spectrum_green  = 3
	Spectrum_blue   = 4
	Spectrum_violet = 5
)
const (
	Kids_nippy  = 0
	Kids_slats  = 1
	Kids_skippy = 2
	Kids_nina   = 3
	Kids_liz    = 4
)
const (
	Levels_low    = 100
	Levels_medium = 500
	Levels_high   = 2000
)
const (
	Feline_cat   = 0
	Feline_lynx  = 10
	Feline_puma  = 11
	Feline_tiger = 12
)
const (
	Piecetype_King  = 1
	Piecetype_Queen = 2
	Piecetype_Rook  = 10
	Piecetype_Pawn  = 11
)
`)
}

func TestStructDeclRef(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{
			MangleName: "ExecuteFoo",
			CppName:    "ExecuteFoo",
			GoName:     "CustomExecuteFoo",
		},
	},
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
	a c.Int
	b float64
	c c.Int
}

//go:linkname CustomExecuteFoo C.ExecuteFoo
func CustomExecuteFoo(a c.Int, b Foo) c.Int
	`)
}

func TestCustomStruct(t *testing.T) {
	buf := cmptest.RunTest(t, "typeref", false, []config.SymbolEntry{
		{MangleName: "lua_close", CppName: "lua_close", GoName: "Close"},
		{MangleName: "lua_newthread", CppName: "lua_newthread", GoName: "Newthread"},
		{MangleName: "lua_closethread", CppName: "lua_closethread", GoName: "Closethread"},
		{MangleName: "lua_resetthread", CppName: "lua_resetthread", GoName: "Resetthread"},
	}, &cppgtypes.Config{
		TrimPrefixes: []string{"lua_"},
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
	`)
	buf.WriteTo(os.Stderr)
}

// ===========================error
func TestNewAstConvert(t *testing.T) {
	convert.NewAstConvert("test", "", "")
}

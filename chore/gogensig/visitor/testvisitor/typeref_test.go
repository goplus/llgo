package testvisitor_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/visitor/symb"
	"github.com/goplus/llgo/chore/gogensig/visitor/testvisitor/cmptest"
	cppgtypes "github.com/goplus/llgo/chore/llcppg/types"
)

func TestStructDeclRef(t *testing.T) {
	cmptest.RunTest(t, "typeref", false, []symb.SymbolEntry{
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

import "github.com/goplus/llgo/c"

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
	cmptest.RunTest(t, "typeref", false, []symb.SymbolEntry{
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

import "github.com/goplus/llgo/c"

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
}

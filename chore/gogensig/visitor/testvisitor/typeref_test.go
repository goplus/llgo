package testvisitor_test

import (
	"testing"

	"github.com/goplus/llgo/chore/gogensig/unmarshal"
	"github.com/goplus/llgo/chore/gogensig/util"
	"github.com/goplus/llgo/chore/gogensig/visitor"
)

func TestStructDeclRef(t *testing.T) {
	astConvert := visitor.NewAstConvert("typeref", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	orginCode :=
		`
struct Foo { int a; double b; bool c; };
int ExecuteFoo(int a,Foo b);
`
	bytes, err := util.Llcppsigfetch(orginCode, true, true)
	if err != nil {
		t.Fatal(err)
	}
	p.UnmarshalBytes(bytes)
	// todo(zzy):compare test

	// package typeref

	// import "github.com/goplus/llgo/c"

	// type Foo struct {
	// 	a c.Int
	// 	b float64
	// 	c bool
	// }

	// //go:linkname Executefoo C.ExecuteFoo
	// func Executefoo(a c.Int, b Foo) c.Int
}

// struct Foo { int a; double b; bool c; }

func TestCustomStruct(t *testing.T) {
	astConvert := visitor.NewAstConvert("typeref", "")
	docVisitors := []visitor.DocVisitor{astConvert}
	p := unmarshal.NewDocFileSetUnmarshaller(docVisitors)
	orginCode :=
		`
typedef struct lua_State lua_State;
LUA_API void(lua_close)(lua_State *L);
LUA_API lua_State *(lua_newthread)(lua_State *L);
LUA_API int(lua_closethread)(lua_State *L, lua_State *from);
LUA_API int(lua_resetthread)(lua_State *L); 
`
	bytes, err := util.Llcppsigfetch(orginCode, true, true)
	if err != nil {
		t.Fatal(err)
	}
	p.UnmarshalBytes(bytes)
	// todo(zzy) compare test

	package typeref

	import "github.com/goplus/llgo/c"

	type lua_State struct {
		Unused [8]uint8
	}

	//go:linkname LuaClose C.lua_close
	func LuaClose(L *lua_State) c.Int

	//go:linkname LuaClosethread C.lua_closethread
	func LuaClosethread(L *lua_State, from *lua_State) c.Int

	//go:linkname LuaResetthread C.lua_resetthread
	func LuaResetthread(L *lua_State) c.Int
}

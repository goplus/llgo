package lua

import (
	_ "unsafe"
)

// llgo:link (*Lua_State).OpenLibs C.luaL_openlibs
func (L *Lua_State) OpenLibs() {}

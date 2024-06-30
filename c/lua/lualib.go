package lua

import (
	_ "unsafe"
)

// llgo:link (*State).OpenLibs C.luaL_openlibs
func (L *State) OpenLibs() {}

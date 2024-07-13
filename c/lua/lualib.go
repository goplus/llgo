package lua

import (
	_ "unsafe"
)

// llgo:link (*State).Openlibs C.luaL_openlibs
func (L *State) Openlibs() {}

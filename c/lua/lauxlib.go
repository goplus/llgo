package lua

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// /* global table */

// /* extra error code for 'luaL_loadfilex' */

// /* key, in the registry, for table of loaded modules */

// /* key, in the registry, for table of preloaded loaders */

// /* predefined references */

// llgo:link (*Lua_State).LoadFilex C.luaL_loadfilex
func (L *Lua_State) LoadFilex(filename *c.Char, mode *c.Char) c.Int { return 0 }

func (L *Lua_State) LoadFile(filename *c.Char) c.Int { return L.LoadFilex(filename, nil) }

// llgo:link (*Lua_State).LoadString C.luaL_loadstring
func (L *Lua_State) LoadString(s *c.Char) c.Int { return 0 }

//go:linkname NewState C.luaL_newstate
func NewState() *Lua_State

// /*
// ** ===============================================================
// ** some useful macros
// ** ===============================================================
// */

func (L *Lua_State) DoFile(filename *c.Char) c.Int {
	if loadResult := L.LoadFile(filename); loadResult != 0 {
		return loadResult
	}
	return L.PCall(c.Int(0), c.Int(MULTRET), c.Int(0))
}

func (L *Lua_State) Dostring(str *c.Char) c.Int {
	if loadResult := L.LoadString(str); loadResult != 0 {
		return loadResult
	}
	return L.PCall(c.Int(0), c.Int(MULTRET), c.Int(0))
}

// /*
// ** Perform arithmetic operations on lua_Integer values with wrap-around
// ** semantics, as the Lua core does.
// */

// /* push the value used to represent failure/error */

// /*
// ** {======================================================
// ** Generic Buffer manipulation
// ** =======================================================
// */

// /* }====================================================== */

// /*
// ** {======================================================
// ** File handles for IO library
// ** =======================================================
// */

// /*
// ** A file handle is a userdata with metatable 'LUA_FILEHANDLE' and
// ** initial structure 'luaL_Stream' (it may contain other fields
// ** after that initial structure).
// */

// #define LUA_FILEHANDLE          "FILE*"

// /* }====================================================== */

// /*
// ** {==================================================================
// ** "Abstraction Layer" for basic report of messages and errors
// ** ===================================================================
// */

// /* print a string */

// /* print a newline and flush the output */

// /* print an error message */

// /* }================================================================== */

// /*
// ** {============================================================
// ** Compatibility with deprecated conversions
// ** =============================================================
// */

// /* }============================================================ */

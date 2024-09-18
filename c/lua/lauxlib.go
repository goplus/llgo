package lua

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// /* global table */

// /* extra error code for 'luaL_loadfilex' */

// /* key, in the registry, for table of loaded modules */

// /* key, in the registry, for table of preloaded loaders */

// llgo:link (*State).Checkinteger C.luaL_checkinteger
func (L *State) Checkinteger(arg c.Int) Integer { return 0 }

// llgo:link (*State).Checknumber C.luaL_checknumber
func (L *State) Checknumber(arg c.Int) Number { return 0 }

// llgo:link (*State).LError C.luaL_error
func (L *State) LError(format *c.Char, __llgo_va_list ...any) c.Int { return 0 }

// /* predefined references */

// llgo:link (*State).Loadfilex C.luaL_loadfilex
func (L *State) Loadfilex(filename *c.Char, mode *c.Char) c.Int { return 0 }

func (L *State) Loadfile(filename *c.Char) c.Int { return L.Loadfilex(filename, nil) }

// llgo:link (*State).Loadstring C.luaL_loadstring
func (L *State) Loadstring(s *c.Char) c.Int { return 0 }

//go:linkname Newstate__1 C.luaL_newstate
func Newstate__1() *State

// /*
// ** ===============================================================
// ** some useful macros
// ** ===============================================================
// */

func (L *State) Dofile(filename *c.Char) c.Int {
	if loadResult := L.Loadfile(filename); loadResult != 0 {
		return loadResult
	}
	return L.Pcall(c.Int(0), c.Int(MULTRET), c.Int(0))
}

func (L *State) Dostring(str *c.Char) c.Int {
	if loadResult := L.Loadstring(str); loadResult != 0 {
		return loadResult
	}
	return L.Pcall(c.Int(0), c.Int(MULTRET), c.Int(0))
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

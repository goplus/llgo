package lua

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs lua); -llua -lm"
)

// /* mark for precompiled code ('<esc>Lua') */

// /* option for multiple returns in 'lua_pcall' and 'lua_call' */
const (
	MULTRET = -1
)

// /*
// ** Pseudo-indices
// ** (-LUAI_MAXSTACK is the minimum valid index; we keep some free empty
// ** space after that to help overflow detection)
// */

// /* thread status */
const (
	OK        = 0
	YIELD     = 1
	ERRRUN    = 2
	ERRSYNTAX = 3
	ERRMEM    = 4
	ERRERR    = 5
)

type Lua_State struct {
	Unused [8]byte
}

// /*
// ** basic types
// */
const (
	TNONE          = -1
	TNIL           = 0
	TBOOLEAN       = 1
	TLIGHTUSERDATA = 2
	TNUMBER        = 3
	TSTRING        = 4
	TTABLE         = 5
	TFUNCTION      = 6
	TUSERDATA      = 7
	TTHREAD        = 8
	NUMTYPES       = 9
)

// /* minimum Lua stack available to a C function */
const (
	MINSTACK = 20
)

// /* predefined values in the registry */

// /* type of numbers in Lua */
type Number c.Double

// /* type for integer functions */
// TODO(zzy):consider dynamic size
type Integer c.LongLong

// /* unsigned integer type */
type Unsigned c.UlongLong

// /* type for continuation-function contexts */
// TODO(zzy): Context may not be c.Int
type KContext c.Int

// /*
// ** Type for C functions registered with Lua
// */

// /*
// ** Type for continuation functions
// */

// TODO(zzy): KFunction does not currently support
type KFunction func(L *Lua_State, status c.Int, ctx KContext) c.Int

// /*
// ** Type for functions that read/write blocks when loading/dumping Lua chunks
// */

// /*
// ** Type for memory-allocation functions
// */

// /*
// ** Type for warning functions
// */

// /*
// ** Type used by the debug API to collect debug information
// */

// /*
// ** Functions to be called by the debugger in specific events
// */

// /*
// ** generic extra include file
// */

// /*
// ** RCS ident string
// */

// /*
// ** state manipulation
// */
// llgo:link (*Lua_State).Close C.lua_close
func (L *Lua_State) Close() {}

// /*
// ** basic stack manipulation
// */

// llgo:link (*Lua_State).AbsIndex C.lua_absindex
func (L *Lua_State) AbsIndex(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).GetTop C.lua_gettop
func (L *Lua_State) GetTop() c.Int { return 0 }

// llgo:link (*Lua_State).SetTop C.lua_settop
func (L *Lua_State) SetTop(idx c.Int) {}

// llgo:link (*Lua_State).PushValue C.lua_pushvalue
func (L *Lua_State) PushValue(idx c.Int) {}

// llgo:link (*Lua_State).Rotate C.lua_rotate
func (L *Lua_State) Rotate(idx c.Int, n c.Int) {}

// llgo:link (*Lua_State).Copy C.lua_copy
func (L *Lua_State) Copy(fromidx c.Int, toidx c.Int) {}

// llgo:link (*Lua_State).CheckStack C.lua_checkstack
func (L *Lua_State) CheckStack(n c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).Xmove C.lua_xmove
func (L *Lua_State) Xmove(to *Lua_State, n c.Int) {}

// /*
// ** access functions (stack -> C)
// */

// llgo:link (*Lua_State).ToNumberx C.lua_tonumberx
func (L *Lua_State) ToNumberx(idx c.Int, isnum *c.Int) Number { return 0 }

// llgo:link (*Lua_State).IsNumber C.lua_isnumber
func (L *Lua_State) IsNumber(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).IsString C.lua_isstring
func (L *Lua_State) IsString(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).ToIntegerx C.lua_tointegerx
func (L *Lua_State) ToIntegerx(idx c.Int, isnum *c.Int) Integer { return 0 }

// llgo:link (*Lua_State).ToLString C.lua_tolstring
func (L *Lua_State) ToLString(idx c.Int, len *c.Ulong) *c.Char { return nil }

// /*
// ** Comparison and arithmetic functions
// */

// /*
// ** push functions (C -> stack)
// */
// llgo:link (*Lua_State).PushNil C.lua_pushnil
func (L *Lua_State) PushNil() {}

// llgo:link (*Lua_State).PushNumber C.lua_pushnumber
func (L *Lua_State) PushNumber(n Number) {}

// TODO(zzy): will get stuck
// llgo:link (*Lua_Stage).PushInteger C.lua_pushinteger
func (L *Lua_State) PushInteger(n Integer) {}

// llgo:link (*Lua_State).PushLString C.lua_pushlstring
func (L *Lua_State) PushLString(s *c.Char, len c.Ulong) *c.Char {
	return nil
}

// llgo:link (*Lua_State).PushString C.lua_pushstring
func (L *Lua_State) PushString(s *c.Char) *c.Char {
	return nil
}

// llgo:link (*Lua_State).PushFString C.lua_pushfstring
func (L *Lua_State) PushFString(format *c.Char, __llgo_va_list ...any) *c.Char { return nil }

// /*
// ** get functions (Lua -> stack)
// */
// int (lua_getglobal) (lua_State *L, const char *name);
// llgo:link (*Lua_State).GetGlobal C.lua_getglobal
func (L *Lua_State) GetGlobal(name *c.Char) c.Int { return 0 }

// /*
// ** set functions (stack -> Lua)
// */

// /*
// ** 'load' and 'call' functions (load and run Lua code)
// */

// llgo:link (*Lua_State).PCallk C.lua_pcallk
func (L *Lua_State) PCallk(nargs c.Int, nresults c.Int, errfunc c.Int, ctx KContext, k *KFunction) c.Int {
	return 0
}

func (L *Lua_State) PCall(nargs c.Int, nresults c.Int, errfunc c.Int) c.Int {
	return L.PCallk(nargs, nresults, errfunc, KContext(c.Int(0)), nil)
}

// /*
// ** coroutine functions
// */

// /*
// ** Warning-related functions
// */

// /*
// ** garbage-collection function and options
// */

// /*
// ** miscellaneous functions
// */

// /*
// ** {==============================================================
// ** some useful macros
// ** ===============================================================
// */
// /* }============================================================== */

func (L *Lua_State) ToNumber(idx c.Int) Number   { return L.ToNumberx(idx, nil) }
func (L *Lua_State) ToString(idx c.Int) *c.Char  { return L.ToLString(idx, nil) }
func (L *Lua_State) ToInteger(idx c.Int) Integer { return L.ToIntegerx(idx, nil) }

// /*
// ** {==============================================================
// ** compatibility macros
// ** ===============================================================
// */
// /* }============================================================== */

// /*
// ** {======================================================================
// ** Debug API
// ** =======================================================================
// */
// /*
// ** Event codes
// */
// /*
// ** Event masks
// */
// /* }====================================================================== */

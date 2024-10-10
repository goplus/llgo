package lua

import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

const (
	LLGoPackage = "link: $(pkg-config --libs lua); -llua -lm"
)

/* mark for precompiled code ('<esc>Lua') */

/* option for multiple returns in 'lua_pcall' and 'lua_call' */
const (
	MULTRET = -1
)

/*
 * Pseudo-indices
 * (-LUAI_MAXSTACK is the minimum valid index; we keep some free empty
 * space after that to help overflow detection)
 */

const (
	REGISTRYINDEX = -MAXSTACK - 1000
)

func Upvalueindex(i c.Int) c.Int {
	return c.Int(REGISTRYINDEX) - i
}

/* thread status */
const (
	OK        = 0
	YIELD     = 1
	ERRRUN    = 2
	ERRSYNTAX = 3
	ERRMEM    = 4
	ERRERR    = 5
)

type State struct {
	Unused [8]byte
}

/*
 * basic types
 */
const (
	NONE          c.Int = -1
	NIL           c.Int = 0
	BOOLEAN       c.Int = 1
	LIGHTUSERDATA c.Int = 2
	NUMBER        c.Int = 3
	STRING        c.Int = 4
	TABLE         c.Int = 5
	FUNCTION      c.Int = 6
	USERDATA      c.Int = 7
	THREAD        c.Int = 8
	NUMTYPES      c.Int = 9
)

/* minimum Lua stack available to a C function */
const (
	MINSTACK = 20
)

/* predefined values in the registry */
const (
	RIDX_MAINTHREAD = 1
	RIDX_GLOBALS    = 2
	RIDX_LAST       = RIDX_GLOBALS
)

/* type of numbers in Lua */
type Number = c.Double

/* type for integer functions */
type Integer = c.Int

/* unsigned integer type */
type Unsigned = c.Uint

/* type for continuation-function contexts */
type KContext = c.Pointer

/*
 * Type for C functions registered with Lua
 */

// llgo:type C
type CFunction func(L *State) c.Int

/*
 * Type for continuation functions
 */

// llgo:type C
type KFunction func(L *State, status c.Int, ctx KContext) c.Int

/*
 * Type for functions that read/write blocks when loading/dumping Lua chunks
 */

// llgo:type C
type Reader func(L *State, ud c.Pointer, sz *c.Ulong) *c.Char

// llgo:type C
type Writer func(L *State, p c.Pointer, sz c.Ulong, ud c.Pointer) c.Int

/*
 * Type for memory-allocation functions
 */

// llgo:type C
type Alloc func(ud c.Pointer, ptr c.Pointer, osize c.Ulong, nsize c.Ulong) c.Pointer

/*
 * Type for warning functions
 */

// llgo:type C
type WarnFunction func(ud c.Pointer, msg c.Char, tocont c.Int)

/*
 * Functions to be called by the debugger in specific events
 */

// llgo:type C
type Hook func(L *State, ar *Debug)

/*
 * RCS ident string
 */

// extern const char lua_ident[];

/*
 ** state manipulation
 */

// llgo:link (*State).Close C.lua_close
func (L *State) Close() {}

// llgo:link Newstate__0 C.lua_newstate
func Newstate__0(f Alloc, ud c.Pointer) *State { return nil }

// llgo:link (*State).Newthread C.lua_newthread
func (L *State) Newthread() *State { return nil }

// llgo:link (*State).Closethread C.lua_closethread
func (L *State) Closethread(from *State) c.Int { return 0 }

// llgo:link (*State).Resetthread C.lua_resetthread
func (L *State) Resetthread(from *State) c.Int { return 0 }

// llgo:link (*State).Atpanic C.lua_atpanic
func (L *State) Atpanic(panicf CFunction) CFunction { return nil }

// llgo:link (*State).Version C.lua_version
func (L *State) Version() Number { return 0 }

/*
 * basic stack manipulation
 */

// llgo:link (*State).Absindex C.lua_absindex
func (L *State) Absindex(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Gettop C.lua_gettop
func (L *State) Gettop() c.Int { return 0 }

// llgo:link (*State).Settop C.lua_settop
func (L *State) Settop(idx c.Int) {}

// llgo:link (*State).Pushvalue C.lua_pushvalue
func (L *State) Pushvalue(idx c.Int) {}

// llgo:link (*State).Rotate C.lua_rotate
func (L *State) Rotate(idx c.Int, n c.Int) {}

// llgo:link (*State).Copy C.lua_copy
func (L *State) Copy(fromidx c.Int, toidx c.Int) {}

// llgo:link (*State).Checkstack C.lua_checkstack
func (L *State) Checkstack(n c.Int) c.Int { return 0 }

// llgo:link (*State).Xmove C.lua_xmove
func (L *State) Xmove(to *State, n c.Int) {}

/*
 * access functions (stack -> C)
 */

// llgo:link (*State).Isnumber C.lua_isnumber
func (L *State) Isnumber(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Isstring C.lua_isstring
func (L *State) Isstring(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Iscfunction C.lua_iscfunction
func (L *State) Iscfunction(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Isinteger C.lua_isinteger
func (L *State) Isinteger(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Isuserdata C.lua_isuserdata
func (L *State) Isuserdata(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Type C.lua_type
func (L *State) Type(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Typename C.lua_typename
func (L *State) Typename(tp c.Int) *c.Char { return nil }

// llgo:link (*State).Tonumberx C.lua_tonumberx
func (L *State) Tonumberx(idx c.Int, isnum *c.Int) Number { return 0 }

// llgo:link (*State).Tointegerx C.lua_tointegerx
func (L *State) Tointegerx(idx c.Int, isnum *c.Int) Integer { return 0 }

// llgo:link (*State).Toboolean C.lua_toboolean
func (L *State) Toboolean(idx c.Int) bool { return false }

// llgo:link (*State).Tolstring C.lua_tolstring
func (L *State) Tolstring(idx c.Int, len *c.Ulong) *c.Char { return nil }

// LUA_API lua_Unsigned    (lua_rawlen) (State *L, int idx);

// llgo:link (*State).Tocfunction C.lua_tocfunction
func (L *State) Tocfunction(idx c.Int) CFunction { return nil }

// llgo:link (*State).Touserdata C.lua_touserdata
func (L *State) Touserdata(idx c.Int) c.Pointer { return nil }

// llgo:link (*State).Tothread C.lua_tothread
func (L *State) Tothread(idx c.Int) *State { return nil }

// llgo:link (*State).Topointer C.lua_topointer
func (L *State) Topointer(idx c.Int) c.Pointer { return nil }

/*
 * Comparison and arithmetic functions
 */

/*
 * push functions (C -> stack)
 */

// llgo:link (*State).Pushnil C.lua_pushnil
func (L *State) Pushnil() {}

// llgo:link (*State).Pushnumber C.lua_pushnumber
func (L *State) Pushnumber(n Number) {}

// llgo:link (*State).Pushinteger C.lua_pushinteger
func (L *State) Pushinteger(n Integer) {}

// llgo:link (*State).Pushlstring C.lua_pushlstring
func (L *State) Pushlstring(s *c.Char, len c.Ulong) *c.Char { return nil }

// llgo:link (*State).Pushstring C.lua_pushstring
func (L *State) Pushstring(s *c.Char) *c.Char { return nil }

// llgo:link (*State).Pushfstring C.lua_pushfstring
func (L *State) Pushfstring(format *c.Char, __llgo_va_list ...any) *c.Char { return nil }

// llgo:link (*State).Pushcclosure C.lua_pushcclosure
func (L *State) Pushcclosure(fn CFunction, n c.Int) {}

// llgo:link (*State).Pushboolean C.lua_pushboolean
func (L *State) Pushboolean(b c.Int) {}

// llgo:link (*State).Pushlightuserdata C.lua_pushlightuserdata
func (L *State) Pushlightuserdata(p c.Pointer) {}

// llgo:link (*State).Pushthread C.lua_pushthread
func (L *State) Pushthread() c.Int { return 0 }

/*
 * get functions (Lua -> stack)
 */

// llgo:link (*State).Getglobal C.lua_getglobal
func (L *State) Getglobal(name *c.Char) c.Int { return 0 }

// llgo:link (*State).Gettable C.lua_gettable
func (L *State) Gettable(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Getfield C.lua_getfield
func (L *State) Getfield(idx c.Int, k *c.Char) c.Int { return 0 }

// llgo:link (*State).Geti C.lua_geti
func (L *State) Geti(idx c.Int, n Integer) c.Int { return 0 }

// llgo:link (*State).Rawget C.lua_rawget
func (L *State) Rawget(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Rawgeti C.lua_rawgeti
func (L *State) Rawgeti(idx c.Int, n Integer) c.Int { return 0 }

// llgo:link (*State).Rawgetp C.lua_rawgetp
func (L *State) Rawgetp(idx c.Int, p c.Pointer) c.Int { return 0 }

// llgo:link (*State).Createtable C.lua_createtable
func (L *State) Createtable(narr c.Int, nrec c.Int) {}

// llgo:link (*State).Newuserdatauv C.lua_newuserdatauv
func (L *State) Newuserdatauv(sz uintptr, nuvalue c.Int) c.Pointer { return nil }

// llgo:link (*State).Getmetatable C.lua_getmetatable
func (L *State) Getmetatable(objindex c.Int) c.Int { return 0 }

// llgo:link (*State).Getiuservalue C.lua_getiuservalue
func (L *State) Getiuservalue(idx c.Int, n c.Int) c.Int { return 0 }

/*
 * set functions (stack -> Lua)
 */

// llgo:link (*State).Setglobal C.lua_setglobal
func (L *State) Setglobal(name *c.Char) {}

// llgo:link (*State).Settable C.lua_settable
func (L *State) Settable(idx c.Int) {}

// llgo:link (*State).Setfield C.lua_setfield
func (L *State) Setfield(idx c.Int, k *c.Char) {}

// llgo:link (*State).Seti C.lua_seti
func (L *State) Seti(idx c.Int, n Integer) {}

// llgo:link (*State).Rawset C.lua_rawset
func (L *State) Rawset(idx c.Int) {}

// llgo:link (*State).Rawseti C.lua_rawseti
func (L *State) Rawseti(idx c.Int, n Integer) {}

// llgo:link (*State).Rawsetp C.lua_rawsetp
func (L *State) Rawsetp(idx c.Int, p c.Pointer) {}

// llgo:link (*State).Setmetatable C.lua_setmetatable
func (L *State) Setmetatable(objindex c.Int) c.Int { return 0 }

// llgo:link (*State).Setiuservalue C.lua_setiuservalue
func (L *State) Setiuservalue(idx c.Int, n c.Int) c.Int { return 0 }

/*
 * 'load' and 'call' functions (load and run Lua code)
 */

// llgo:link (*State).Callk C.lua_callk
func (L *State) Callk(nargs c.Int, nresults c.Int, ctx KContext, k KFunction) c.Int {
	return 0
}

func (L *State) Call(nargs c.Int, nresults c.Int) c.Int {
	return L.Callk(nargs, nresults, nil, nil)
}

// llgo:link (*State).Pcallk C.lua_pcallk
func (L *State) Pcallk(nargs c.Int, nresults c.Int, errfunc c.Int, ctx KContext, k KFunction) c.Int {
	return 0
}

func (L *State) Pcall(nargs c.Int, nresults c.Int, errfunc c.Int) c.Int {
	return L.Pcallk(nargs, nresults, errfunc, nil, nil)
}

// llgo:link (*State).Load C.lua_load
func (L *State) Load(reader Reader, dt c.Pointer, chunkname *c.Char, mode *c.Char) c.Int { return 0 }

// llgo:link (*State).Dump C.lua_dump
func (L *State) Dump(writer Writer, data c.Pointer, strip c.Int) c.Int { return 0 }

/*
 * coroutine functions
 */

// llgo:link (*State).Resume C.lua_resume
func (L *State) Resume(from *State, narg c.Int, nres *c.Int) c.Int { return 0 }

// llgo:link (*State).Status C.lua_status
func (L *State) Status() c.Int { return 0 }

// llgo:link (*State).Isyieldable C.lua_isyieldable
func (L *State) Isyieldable() c.Int { return 0 }

// llgo:link (*State).Yieldk C.lua_yieldk
func (L *State) Yieldk(nresults c.Int, ctx KContext, k KFunction) c.Int { return 0 }
func (L *State) Yield(nresults c.Int) c.Int                             { return L.Yieldk(nresults, nil, nil) }

/*
 * Warning-related functions
 */

// llgo:link (*State).Setwarnf C.lua_setwarnf
func (L *State) Setwarnf(f WarnFunction, ud c.Pointer) {}

// llgo:link (*State).Warning C.lua_warning
func (L *State) Warning(msg *c.Char, tocont c.Int) {}

/*
 * garbage-collection function and options
 */

const (
	GCSTOP       = 0
	GCRESTART    = 1
	GCCOLLECT    = 2
	GCCOUNT      = 3
	GCCOUNTB     = 4
	GCSTEP       = 5
	GCSETPAUSE   = 6
	GCSETSTEPMUL = 7
	GCISRUNNING  = 9
	GCGEN        = 10
	GCINC        = 11
)

// llgo:link (*State).Gc C.lua_gc
func (L *State) Gc(what c.Int, __llgo_va_list ...any) c.Int { return 0 }

/*
 * miscellaneous functions
 */

// llgo:link (*State).Next C.lua_next
func (L *State) Next(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Error C.lua_error
func (L *State) Error() c.Int { return 0 }

// llgo:link (*State).Concat C.lua_concat
func (L *State) Concat(n c.Int) {}

// llgo:link (*State).Len C.lua_len
func (L *State) Len(idx c.Int) {}

// llgo:link (*State).Stringtonumber C.lua_stringtonumber
func (L *State) Stringtonumber(s *c.Char) c.Ulong { return 0 }

// llgo:link (*State).Getallocf C.lua_getallocf
func (L *State) Getallocf(ud *c.Pointer) Alloc { return nil }

// llgo:link (*State).Setallocf C.lua_setallocf
func (L *State) Setallocf(f Alloc, ud c.Pointer) Alloc { return nil }

// llgo:link (*State).Toclose C.lua_toclose
func (L *State) Toclose(idx c.Int) {}

// llgo:link (*State).Closeslot C.lua_closeslot
func (L *State) Closeslot(idx c.Int) {}

/*
 ** {==============================================================
 ** some useful macros
 ** ===============================================================
 */

func (L *State) Getextraspace() c.Pointer {
	return c.Pointer(uintptr(c.Pointer(L)) - EXTRASPACE)
}
func (L *State) Tonumber(idx c.Int) Number   { return L.Tonumberx(idx, nil) }
func (L *State) Tostring(idx c.Int) *c.Char  { return L.Tolstring(idx, nil) }
func (L *State) Tointeger(idx c.Int) Integer { return L.Tointegerx(idx, nil) }
func (L *State) Pop(n c.Int)                 { L.Settop(-(n) - 1) }
func (L *State) Newtable()                   { L.Createtable(0, 0) }

func (L *State) Register(name *c.Char, f CFunction) {
	L.Pushcfunction(f)
	L.Setglobal(name)
}
func (L *State) Pushcfunction(f CFunction) { L.Pushcclosure(f, 0) }

func (L *State) Isfunction(n c.Int) bool      { return L.Type(n) == c.Int(FUNCTION) }
func (L *State) Istable(n c.Int) bool         { return L.Type(n) == c.Int(TABLE) }
func (L *State) Islightuserdata(n c.Int) bool { return L.Type(n) == c.Int(LIGHTUSERDATA) }
func (L *State) Isnil(n c.Int) bool           { return L.Type(n) == c.Int(NIL) }
func (L *State) Isboolean(n c.Int) bool       { return L.Type(n) == c.Int(BOOLEAN) }
func (L *State) Isthread(n c.Int) bool        { return L.Type(n) == c.Int(THREAD) }
func (L *State) Isnone(n c.Int) bool          { return L.Type(n) == c.Int(NONE) }
func (L *State) Isnoneornil(n c.Int) bool     { return L.Type(n) <= 0 }
func (L *State) Pushliteral(s *c.Char) *c.Char {
	return L.Pushstring(s)
}

func (L *State) Pushglobaltable() c.Int {
	return L.Rawgeti(REGISTRYINDEX, RIDX_GLOBALS)
}

func (L *State) Insert(idx c.Int) {
	L.Rotate(idx, 1)
}

func (L *State) Remove(idx c.Int) {
	L.Rotate(idx, -1)
	L.Pop(1)
}

func (L *State) Replace(idx c.Int) {
	L.Copy(-1, idx)
	L.Pop(1)
}

/* }============================================================== */

/*
** {==============================================================
** compatibility macros
** ===============================================================
 */

func (L *State) Newuserdata(sz uintptr) c.Pointer {
	return L.Newuserdatauv(sz, 1)
}

func (L *State) Getuservalue(idx c.Int) c.Int {
	return L.Getiuservalue(idx, 1)
}

func (L *State) Setuservalue(idx c.Int) c.Int {
	return L.Setiuservalue(idx, 1)
}

const (
	NUMTAGS = NUMTYPES
)

/* }============================================================== */

/*
** {======================================================================
** Debug API
** =======================================================================
 */

/*
 * Event codes
 */

const (
	HOOKCALL     = 0
	HOOKRET      = 1
	HOOKLINE     = 2
	HOOKCOUNT    = 3
	HOOKTAILCALL = 4
)

/*
 * Event masks
 */

const (
	MASKCALL  = 1 << HOOKCOUNT
	MASKRET   = 1 << HOOKRET
	MASKLINE  = 1 << HOOKLINE
	MASKCOUNT = 1 << HOOKCOUNT
)

// llgo:link (*State).Getstack C.lua_getstack
func (L *State) Getstack(level c.Int, ar *Debug) c.Int { return 0 }

// llgo:link (*State).Getinfo C.lua_getinfo
func (L *State) Getinfo(what *c.Char, ar *Debug) c.Int { return 0 }

// llgo:link (*State).Getlocal C.lua_getlocal
func (L *State) Getlocal(ar *Debug, n c.Int) *c.Char { return nil }

// llgo:link (*State).Setlocal C.lua_setlocal
func (L *State) Setlocal(ar *Debug, n c.Int) *c.Char { return nil }

// llgo:link (*State).Getupvalue C.lua_getupvalue
func (L *State) Getupvalue(funcindex c.Int, n c.Int) *c.Char { return nil }

// llgo:link (*State).Setupvalue C.lua_setupvalue
func (L *State) Setupvalue(funcindex c.Int, n c.Int) *c.Char { return nil }

// llgo:link (*State).Upvalueid C.lua_upvalueid
func (L *State) Upvalueid(fidx c.Int, n c.Int) c.Pointer { return nil }

// llgo:link (*State).Upvaluejoin C.lua_upvaluejoin
func (L *State) Upvaluejoin(fidx1 c.Int, n1 c.Int, fidx2 c.Int, n2 c.Int) {}

// llgo:link (*State).Sethook C.lua_sethook
func (L *State) Sethook(fn Hook, mask c.Int, count c.Int) {}

// llgo:link (*State).Gethook C.lua_gethook
func (L *State) Gethook() Hook { return nil }

// llgo:link (*State).Gethookmask C.lua_gethookmask
func (L *State) Gethookmask() c.Int { return 0 }

// llgo:link (*State).Gethookcount C.lua_gethookcount
func (L *State) Gethookcount() c.Int { return 0 }

// llgo:link (*State).Setcstacklimit C.lua_setcstacklimit
func (L *State) Setcstacklimit(limit c.Uint) c.Int { return 0 }

type CallInfo struct {
	Unused [8]byte
}

type Debug struct {
	Event           c.Int
	Name            *c.Char        /* (n) */
	Namewhat        *c.Char        /* (n) 'global', 'local', 'field', 'method' */
	What            *c.Char        /* (S) 'Lua', 'C', 'main', 'tail' */
	Source          *c.Char        /* (S) */
	Srclen          uintptr        /* (S) */
	Currentline     c.Int          /* (l) */
	Linedefined     c.Int          /* (S) */
	Lastlinedefined c.Int          /* (S) */
	Nups            byte           /* (u) number of upvalues */
	Nparams         byte           /* (u) number of parameters */
	Isvararg        c.Char         /* (u) */
	Istailcall      c.Char         /* (t) */
	Ftransfer       uint16         /* (r) index of first value transferred */
	Ntransfer       uint16         /* (r) number of transferred values */
	ShortSrc        [IDSIZE]c.Char /* (S) */
	/* private part */
	ICi *CallInfo
}

/* }====================================================================== */

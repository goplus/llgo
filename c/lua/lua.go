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

type State struct {
	Unused [8]byte
}

// /*
// ** basic types
// */
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
	UMTYPES       c.Int = 9
)

// /* minimum Lua stack available to a C function */
const (
	MINSTACK = 20
)

// /* predefined values in the registry */
const (
	RIDX_MAINTHREAD = 1
	RIDX_GLOBALS    = 2
	RIDX_LAST       = RIDX_GLOBALS
)

// /* type of numbers in Lua */
type Number = c.Double

// /* type for integer functions */
// TODO(zzy):consider dynamic size

type Integer = c.Int

// /* unsigned integer type */
type Unsigned = c.Uint

// /* type for continuation-function contexts */
type KContext = c.Pointer

// /*
// ** Type for C functions registered with Lua
// */

// llgo:type C
type CFunction func(L *State) c.Int

// /*
// ** Type for continuation functions
// */

// TODO(zzy): KFunction does not currently support
type KFunction func(L *State, status c.Int, ctx KContext) c.Int

// /*
// ** Type for functions that read/write blocks when loading/dumping Lua chunks
// */

// typedef const char * (*lua_Reader) (State *L, void *ud, size_t *sz);
// typedef int (*lua_Writer) (State *L, const void *p, size_t sz, void *ud);

// /*
// ** Type for memory-allocation functions
// */

// typedef void * (*lua_Alloc) (void *ud, void *ptr, size_t osize, size_t nsize);

// /*
// ** Type for warning functions
// */

// typedef void (*lua_WarnFunction) (void *ud, const char *msg, int tocont);

// /*
// ** Type used by the debug API to collect debug information
// */

// typedef struct lua_Debug lua_Debug;

// /*
// ** Functions to be called by the debugger in specific events
// */

// typedef void (*lua_Hook) (State *L, lua_Debug *ar);

// /*
// ** generic extra include file
// */

// #if defined(LUA_USER_H)
// #include LUA_USER_H
// #endif

// /*
// ** RCS ident string
// */

// extern const char lua_ident[];

// /*
// ** state manipulation
// */
// llgo:link (*State).Close C.lua_close
func (L *State) Close() {}

// State *(lua_newstate) (lua_Alloc f, void *ud);

// llgo:link (*State).Newthread C.lua_newthread
func (L *State) Newthread() *State { return nil }

// int        (lua_closethread) (State *L, State *from);
// int        (lua_resetthread) (State *L);  /* Deprecated! */

// llgo:link (*State).Atpanic C.lua_atpanic
func (L *State) Atpanic(panicf CFunction) CFunction { return nil }

// lua_Number (lua_version) (State *L);

// /*
// ** basic stack manipulation
// */

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

// /*
// ** access functions (stack -> C)
// */

// llgo:link (*State).Isnumber C.lua_isnumber
func (L *State) Isnumber(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Isstring C.lua_isstring
func (L *State) Isstring(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Iscfunction C.lua_iscfunction
func (L *State) Iscfunction(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Isinteger C.lua_isinteger
func (L *State) Isinteger(idx c.Int) c.Int { return 0 }

// LUA_API int             (lua_isuserdata) (State *L, int idx);

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

// LUA_API void	       *(lua_touserdata) (State *L, int idx);
// LUA_API State      *(lua_tothread) (State *L, int idx);
// LUA_API const void     *(lua_topointer) (State *L, int idx);

// /*
// ** Comparison and arithmetic functions
// */

// /*
// ** push functions (C -> stack)
// */
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

//void  (lua_pushlightuserdata) (State *L, void *p);
//int   (lua_pushthread) (State *L);

// /*
// ** get functions (Lua -> stack)
// */

// llgo:link (*State).Getglobal C.lua_getglobal
func (L *State) Getglobal(name *c.Char) c.Int { return 0 }

// llgo:link (*State).Gettable C.lua_gettable
func (L *State) Gettable(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Getfield C.lua_getfield
func (L *State) Getfield(idx c.Int, k *c.Char) c.Int { return 0 }

// LUA_API int (lua_geti) (State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawget) (State *L, int idx);
// LUA_API int (lua_rawgeti) (State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawgetp) (State *L, int idx, const void *p);

// llgo:link (*State).Createtable C.lua_createtable
func (L *State) Createtable(narr c.Int, nrec c.Int) {}

// LUA_API void *(lua_newuserdatauv) (State *L, size_t sz, int nuvalue);

// llgo:link (*State).Getmetatable C.lua_getmetatable
func (L *State) Getmetatable(objindex c.Int) c.Int { return 0 }

// LUA_API int  (lua_getiuservalue) (State *L, int idx, int n);

// /*
// ** set functions (stack -> Lua)
// */

// llgo:link (*State).Setglobal C.lua_setglobal
func (L *State) Setglobal(name *c.Char) {}

// llgo:link (*State).Settable C.lua_settable
func (L *State) Settable(idx c.Int) {}

// llgo:link (*State).Setfield C.lua_setfield
func (L *State) Setfield(idx c.Int, k *c.Char) {}

//void  (lua_seti) (State *L, int idx, lua_Integer n);
//void  (lua_rawset) (State *L, int idx);
//void  (lua_rawseti) (State *L, int idx, lua_Integer n);
//void  (lua_rawsetp) (State *L, int idx, const void *p);

// llgo:link (*State).Setmetatable C.lua_setmetatable
func (L *State) Setmetatable(objindex c.Int) c.Int { return 0 }

//int   (lua_setiuservalue) (State *L, int idx, int n);

// /*
// ** 'load' and 'call' functions (load and run Lua code)
// */

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

// int   (lua_load) (State *L, lua_Reader reader, void *dt, const char *chunkname, const char *mode);

// int (lua_dump) (State *L, lua_Writer writer, void *data, int strip);

// /*
// ** coroutine functions
// */

// llgo:link (*State).Resume C.lua_resume
func (L *State) Resume(from *State, narg c.Int, nres *c.Int) c.Int { return 0 }

// llgo:link (*State).Status C.lua_status
func (L *State) Status() c.Int { return 0 }

// llgo:link (*State).Isyieldable C.lua_isyieldable
func (L *State) Isyieldable() c.Int { return 0 }

// llgo:link (*State).Yieldk C.lua_yieldk
func (L *State) Yieldk(nresults c.Int, ctx KContext, k KFunction) c.Int { return 0 }
func (L *State) Yield(nresults c.Int) c.Int                             { return L.Yieldk(nresults, nil, nil) }

// /*
// ** Warning-related functions
// */

//void (lua_setwarnf) (State *L, lua_WarnFunction f, void *ud);
//void (lua_warning)  (State *L, const char *msg, int tocont);

// /*
// ** garbage-collection function and options
// */

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

// LUA_API int (lua_gc) (State *L, int what, ...);

// /*
// ** miscellaneous functions
// */
// llgo:link (*State).Next C.lua_next
func (L *State) Next(idx c.Int) c.Int { return 0 }

// llgo:link (*State).Error C.lua_error
func (L *State) Error() c.Int { return 0 }

// LUA_API void  (lua_concat) (State *L, int n);
// LUA_API void  (lua_len)    (State *L, int idx);

// LUA_API size_t   (lua_stringtonumber) (State *L, const char *s);

// LUA_API lua_Alloc (lua_getallocf) (State *L, void **ud);
// LUA_API void      (lua_setallocf) (State *L, lua_Alloc f, void *ud);

// LUA_API void (lua_toclose) (State *L, int idx);
// LUA_API void (lua_closeslot) (State *L, int idx);

// /*
// ** {==============================================================
// ** some useful macros
// ** ===============================================================
// */

// #define lua_getextraspace(L)	((void *)((char *)(L) - LUA_EXTRASPACE))

func (L *State) Tonumber(idx c.Int) Number   { return L.Tonumberx(idx, nil) }
func (L *State) Tostring(idx c.Int) *c.Char  { return L.Tolstring(idx, nil) }
func (L *State) Tointeger(idx c.Int) Integer { return L.Tointegerx(idx, nil) }
func (L *State) Pop(n c.Int)                 { L.Settop(-(n) - 1) }
func (L *State) Newtable()                   { L.Createtable(0, 0) }

// #define lua_register(L,n,f) (lua_pushcfunction(L, (f)), lua_setglobal(L, (n)))
func (L *State) Pushcfunction(f CFunction) { L.Pushcclosure(f, 0) }

func (L *State) Isfunction(n c.Int) bool      { return L.Type(n) == c.Int(FUNCTION) }
func (L *State) Istable(n c.Int) bool         { return L.Type(n) == c.Int(TABLE) }
func (L *State) Islightuserdata(n c.Int) bool { return L.Type(n) == c.Int(LIGHTUSERDATA) }
func (L *State) Isnil(n c.Int) bool           { return L.Type(n) == c.Int(NIL) }
func (L *State) Isboolean(n c.Int) bool       { return L.Type(n) == c.Int(BOOLEAN) }
func (L *State) Isthread(n c.Int) bool        { return L.Type(n) == c.Int(THREAD) }
func (L *State) Isnone(n c.Int) bool          { return L.Type(n) == c.Int(NONE) }
func (L *State) Isnoneornil(n c.Int) bool     { return L.Type(n) <= 0 }

// #define lua_pushliteral(L, s)	lua_pushstring(L, "" s)
// #define lua_pushglobaltable(L)  ((void)lua_rawgeti(L, LUA_REGISTRYINDEX, LUA_RIDX_GLOBALS))

// #define lua_insert(L,idx)	lua_rotate(L, (idx), 1)
// #define lua_remove(L,idx)	(lua_rotate(L, (idx), -1), lua_pop(L, 1))
// #define lua_replace(L,idx)	(lua_copy(L, -1, (idx)), lua_pop(L, 1))

// /* }============================================================== */

// /*
// ** {==============================================================
// ** compatibility macros
// ** ===============================================================
// */

// #define lua_newuserdata(L,s)	lua_newuserdatauv(L,s,1)
// #define lua_getuservalue(L,idx)	lua_getiuservalue(L,idx,1)
// #define lua_setuservalue(L,idx)	lua_setiuservalue(L,idx,1)

// #define LUA_NUMTAGS		LUA_NUMTYPES

// /* }============================================================== */

// /*
// ** {======================================================================
// ** Debug API
// ** =======================================================================
// */
// /*
// ** Event codes
// */

const (
	HOOKCALL     = 0
	HOOKRET      = 1
	HOOKLINE     = 2
	HOOKCOUNT    = 3
	HOOKTAILCALL = 4
)

// /*
// ** Event masks
// */
// #define LUA_MASKCALL	(1 << LUA_HOOKCALL)
// #define LUA_MASKRET	(1 << LUA_HOOKRET)
// #define LUA_MASKLINE	(1 << LUA_HOOKLINE)
// #define LUA_MASKCOUNT	(1 << LUA_HOOKCOUNT)

const (
	MASKCALL  = 1 << HOOKCOUNT
	MASKRET   = 1 << HOOKRET
	MASKLINE  = 1 << HOOKLINE
	MASKCOUNT = 1 << HOOKCOUNT
)

// LUA_API int (lua_getstack) (State *L, int level, lua_Debug *ar);
// LUA_API int (lua_getinfo) (State *L, const char *what, lua_Debug *ar);
// LUA_API const char *(lua_getlocal) (State *L, const lua_Debug *ar, int n);
// LUA_API const char *(lua_setlocal) (State *L, const lua_Debug *ar, int n);
// LUA_API const char *(lua_getupvalue) (State *L, int funcindex, int n);
// LUA_API const char *(lua_setupvalue) (State *L, int funcindex, int n);

// LUA_API void *(lua_upvalueid) (State *L, int fidx, int n);
// LUA_API void  (lua_upvaluejoin) (State *L, int fidx1, int n1, int fidx2, int n2);

// LUA_API void (lua_sethook) (State *L, lua_Hook func, int mask, int count);
// LUA_API lua_Hook (lua_gethook) (State *L);
// LUA_API int (lua_gethookmask) (State *L);
// LUA_API int (lua_gethookcount) (State *L);

// LUA_API int (lua_setcstacklimit) (State *L, unsigned int limit);

// struct lua_Debug
// /* }====================================================================== */

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
	NONE          = int(-1)
	NIL           = int(0)
	BOOLEAN       = int(1)
	LIGHTUSERDATA = int(2)
	NUMBER        = int(3)
	STRING        = int(4)
	TABLE         = int(5)
	FUNCTION      = int(6)
	USERDATA      = int(7)
	THREAD        = int(8)
	UMTYPES       = int(9)
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
// TODO(zzy): Context may not be c.Int
type KContext c.Int

// /*
// ** Type for C functions registered with Lua
// */

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
// State *(lua_newthread) (State *L);

// llgo:link (*State).NewThread C.lua_newthread
func (L *State) NewThread() *State { return nil }

// int        (lua_closethread) (State *L, State *from);
// int        (lua_resetthread) (State *L);  /* Deprecated! */
// lua_CFunction (lua_atpanic) (State *L, lua_CFunction panicf);
// lua_Number (lua_version) (State *L);

// /*
// ** basic stack manipulation
// */

// llgo:link (*State).AbsIndex C.lua_absindex
func (L *State) AbsIndex(idx c.Int) c.Int { return 0 }

// llgo:link (*State).GetTop C.lua_gettop
func (L *State) GetTop() c.Int { return 0 }

// llgo:link (*State).SetTop C.lua_settop
func (L *State) SetTop(idx c.Int) {}

// llgo:link (*State).PushValue C.lua_pushvalue
func (L *State) PushValue(idx c.Int) {}

// llgo:link (*State).Rotate C.lua_rotate
func (L *State) Rotate(idx c.Int, n c.Int) {}

// llgo:link (*State).Copy C.lua_copy
func (L *State) Copy(fromidx c.Int, toidx c.Int) {}

// llgo:link (*State).CheckStack C.lua_checkstack
func (L *State) CheckStack(n c.Int) c.Int { return 0 }

// llgo:link (*State).XMove C.lua_xmove
func (L *State) XMove(to *State, n c.Int) {}

// /*
// ** access functions (stack -> C)
// */
// LUA_API int             (lua_isinteger) (State *L, int idx);
// llgo:link (*State).IsInteger C.lua_isinteger
func (L *State) IsInteger(idx c.Int) c.Int { return 0 }

// llgo:link (*State).IsNumber C.lua_isnumber
func (L *State) IsNumber(idx c.Int) c.Int { return 0 }

// llgo:link (*State).IsString C.lua_isstring
func (L *State) IsString(idx c.Int) c.Int { return 0 }

// TODO(zzy):add to demo
// llgo:link (*State).Type C.lua_type
func (L *State) Type(idx c.Int) c.Int { return 0 }

// TODO(zzy)
// llgo:link (*State).TypeName C.lua_typename
func (L *State) TypeName(tp c.Int) *c.Char { return nil }

// llgo:link (*State).ToNumberx C.lua_tonumberx
func (L *State) ToNumberx(idx c.Int, isnum *c.Int) Number { return 0 }

// llgo:link (*State).ToIntegerx C.lua_tointegerx
func (L *State) ToIntegerx(idx c.Int, isnum *c.Int) Integer { return 0 }

// llgo:link (*State).ToBoolean C.lua_toboolean
func (L *State) ToBoolean(idx c.Int) bool { return false }

// llgo:link (*State).ToLString C.lua_tolstring
func (L *State) ToLString(idx c.Int, len *c.Ulong) *c.Char { return nil }

// LUA_API int             (lua_iscfunction) (State *L, int idx);
// LUA_API int             (lua_isuserdata) (State *L, int idx);

// LUA_API lua_Unsigned    (lua_rawlen) (State *L, int idx);
// LUA_API lua_CFunction   (lua_tocfunction) (State *L, int idx);
// LUA_API void	       *(lua_touserdata) (State *L, int idx);
// LUA_API State      *(lua_tothread) (State *L, int idx);
// LUA_API const void     *(lua_topointer) (State *L, int idx);

// /*
// ** Comparison and arithmetic functions
// */

// /*
// ** push functions (C -> stack)
// */
// llgo:link (*State).PushNil C.lua_pushnil
func (L *State) PushNil() {}

// llgo:link (*State).PushNumber C.lua_pushnumber
func (L *State) PushNumber(n Number) {}

// llgo:link (*State).PushInteger C.lua_pushinteger
func (L *State) PushInteger(n Integer) {}

// llgo:link (*State).PushString C.lua_pushstring
func (L *State) PushString(s *c.Char) *c.Char {
	return nil
}

// llgo:link (*State).PushLString C.lua_pushlstring
func (L *State) PushLString(s *c.Char, len c.Ulong) *c.Char {
	return nil
}

// llgo:link (*State).PushFString C.lua_pushfstring
func (L *State) PushFString(format *c.Char, __llgo_va_list ...any) *c.Char { return nil }

// llgo:link (*State).PushBoolean C.lua_pushboolean
func (L *State) PushBoolean(b c.Int) {}

//const char *(lua_pushvfstring) (State *L, const char *fmt,va_list argp);
//void  (lua_pushcclosure) (State *L, lua_CFunction fn, int n);
//void  (lua_pushlightuserdata) (State *L, void *p);
//int   (lua_pushthread) (State *L);

// /*
// ** get functions (Lua -> stack)
// */

// llgo:link (*State).GetGlobal C.lua_getglobal
func (L *State) GetGlobal(name *c.Char) c.Int { return 0 }

// llgo:link (*State).GetTable C.lua_gettable
func (L *State) GetTable(idx c.Int) c.Int { return 0 }

// llgo:link (*State).GetField C.lua_getfield
func (L *State) GetField(idx c.Int, k *c.Char) c.Int { return 0 }

// llgo:link (*State).CreateTable C.lua_createtable
func (L *State) CreateTable(narr c.Int, nrec c.Int) {}

// LUA_API int (lua_geti) (State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawget) (State *L, int idx);
// LUA_API int (lua_rawgeti) (State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawgetp) (State *L, int idx, const void *p);

// LUA_API void *(lua_newuserdatauv) (State *L, size_t sz, int nuvalue);
// LUA_API int   (lua_getmetatable) (State *L, int objindex);
// LUA_API int  (lua_getiuservalue) (State *L, int idx, int n);

// /*
// ** set functions (stack -> Lua)
// */

// TODO(zzy):add to demo
// llgo:link (*State).SetGlobal C.lua_setglobal
func (L *State) SetGlobal(name *c.Char) {}

// llgo:link (*State).SetTable C.lua_settable
func (L *State) SetTable(idx c.Int) {}

// llgo:link (*State).SetField C.lua_setfield
func (L *State) SetField(idx c.Int, k *c.Char) {}

//void  (lua_seti) (State *L, int idx, lua_Integer n);
//void  (lua_rawset) (State *L, int idx);
//void  (lua_rawseti) (State *L, int idx, lua_Integer n);
//void  (lua_rawsetp) (State *L, int idx, const void *p);
//int   (lua_setmetatable) (State *L, int objindex);
//int   (lua_setiuservalue) (State *L, int idx, int n);

// /*
// ** 'load' and 'call' functions (load and run Lua code)
// */

// llgo:link (*State).PCallk C.lua_pcallk
func (L *State) PCallk(nargs c.Int, nresults c.Int, errfunc c.Int, ctx KContext, k *KFunction) c.Int {
	return 0
}

func (L *State) PCall(nargs c.Int, nresults c.Int, errfunc c.Int) c.Int {
	return L.PCallk(nargs, nresults, errfunc, KContext(c.Int(0)), nil)
}

// void  (lua_callk) (State *L, int nargs, int nresults, lua_KContext ctx, lua_KFunction k);
// #define lua_call(L,n,r)		lua_callk(L, (n), (r), 0, NULL)

// int   (lua_load) (State *L, lua_Reader reader, void *dt, const char *chunkname, const char *mode);

// int (lua_dump) (State *L, lua_Writer writer, void *data, int strip);

// /*
// ** coroutine functions
// */

// llgo:link (*State).Resume C.lua_resume
func (L *State) Resume(from *State, narg c.Int, nres *c.Int) c.Int { return 0 }

// llgo:link (*State).Status C.lua_status
func (L *State) Status() c.Int { return 0 }

// llgo:link (*State).IsYieldable C.lua_isyieldable
func (L *State) IsYieldable() c.Int { return 0 }

// TODO(zzy)
// int  (lua_yieldk)     (State *L, int nresults, lua_KContext ctx, lua_KFunction k);
// #define lua_yield(L,n)	lua_yieldk(L, (n), 0, NULL)

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

// LUA_API int   (lua_error) (State *L);

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

func (L *State) ToNumber(idx c.Int) Number    { return L.ToNumberx(idx, nil) }
func (L *State) ToString(idx c.Int) *c.Char   { return L.ToLString(idx, nil) }
func (L *State) ToInteger(idx c.Int) Integer  { return L.ToIntegerx(idx, nil) }
func (L *State) Pop(n c.Int)                  { L.SetTop(-(n) - 1) }
func (L *State) NewTable()                    { L.CreateTable(0, 0) }
func (L *State) IsFunction(n c.Int) bool      { return L.Type(n) == c.Int(FUNCTION) }
func (L *State) IsTable(n c.Int) bool         { return L.Type(n) == c.Int(TABLE) }
func (L *State) IsLightUserData(n c.Int) bool { return L.Type(n) == c.Int(LIGHTUSERDATA) }
func (L *State) IsNil(n c.Int) bool           { return L.Type(n) == c.Int(NIL) }
func (L *State) IsBoolean(n c.Int) bool       { return L.Type(n) == c.Int(BOOLEAN) }
func (L *State) IsThread(n c.Int) bool        { return L.Type(n) == c.Int(THREAD) }
func (L *State) IsNone(n c.Int) bool          { return L.Type(n) == c.Int(NONE) }
func (L *State) IsNoneOrNil(n c.Int) bool     { return L.Type(n) <= 0 }

// #define lua_getextraspace(L)	((void *)((char *)(L) - LUA_EXTRASPACE))

// #define lua_register(L,n,f) (lua_pushcfunction(L, (f)), lua_setglobal(L, (n)))

// #define lua_pushcfunction(L,f)	lua_pushcclosure(L, (f), 0)

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

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
type Number c.Double

// /* type for integer functions */
// TODO(zzy):consider dynamic size

type Integer = c.Int

// /* unsigned integer type */
type Unsigned c.Uint

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

// typedef const char * (*lua_Reader) (lua_State *L, void *ud, size_t *sz);
// typedef int (*lua_Writer) (lua_State *L, const void *p, size_t sz, void *ud);

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

// typedef void (*lua_Hook) (lua_State *L, lua_Debug *ar);

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
// llgo:link (*Lua_State).Close C.lua_close
func (L *Lua_State) Close() {}

// lua_State *(lua_newstate) (lua_Alloc f, void *ud);
// lua_State *(lua_newthread) (lua_State *L);

// llgo:link (*Lua_State).NewThread C.lua_newthread
func (L *Lua_State) NewThread() *Lua_State { return nil }

// int        (lua_closethread) (lua_State *L, lua_State *from);
// int        (lua_resetthread) (lua_State *L);  /* Deprecated! */
// lua_CFunction (lua_atpanic) (lua_State *L, lua_CFunction panicf);
// lua_Number (lua_version) (lua_State *L);

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

// llgo:link (*Lua_State).XMove C.lua_xmove
func (L *Lua_State) XMove(to *Lua_State, n c.Int) {}

// /*
// ** access functions (stack -> C)
// */
// LUA_API int             (lua_isinteger) (lua_State *L, int idx);
// llgo:link (*Lua_State).IsInteger C.lua_isinteger
func (L *Lua_State) IsInteger(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).IsNumber C.lua_isnumber
func (L *Lua_State) IsNumber(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).IsString C.lua_isstring
func (L *Lua_State) IsString(idx c.Int) c.Int { return 0 }

// TODO(zzy):add to demo
// llgo:link (*Lua_State).Type C.lua_type
func (L *Lua_State) Type(idx c.Int) c.Int { return 0 }

// TODO(zzy)
// llgo:link (*Lua_State).TypeName C.lua_typename
func (L *Lua_State) TypeName(tp c.Int) *c.Char { return nil }

// llgo:link (*Lua_State).ToNumberx C.lua_tonumberx
func (L *Lua_State) ToNumberx(idx c.Int, isnum *c.Int) Number { return 0 }

// llgo:link (*Lua_State).ToIntegerx C.lua_tointegerx
func (L *Lua_State) ToIntegerx(idx c.Int, isnum *c.Int) Integer { return 0 }

// llgo:link (*Lua_State).ToBoolean C.lua_toboolean
func (L *Lua_State) ToBoolean(idx c.Int) bool { return false }

// llgo:link (*Lua_State).ToLString C.lua_tolstring
func (L *Lua_State) ToLString(idx c.Int, len *c.Ulong) *c.Char { return nil }

// LUA_API int             (lua_iscfunction) (lua_State *L, int idx);
// LUA_API int             (lua_isuserdata) (lua_State *L, int idx);

// LUA_API lua_Unsigned    (lua_rawlen) (lua_State *L, int idx);
// LUA_API lua_CFunction   (lua_tocfunction) (lua_State *L, int idx);
// LUA_API void	       *(lua_touserdata) (lua_State *L, int idx);
// LUA_API lua_State      *(lua_tothread) (lua_State *L, int idx);
// LUA_API const void     *(lua_topointer) (lua_State *L, int idx);

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

// llgo:link (*Lua_State).PushInteger C.lua_pushinteger
func (L *Lua_State) PushInteger(n Integer) {}

// llgo:link (*Lua_State).PushString C.lua_pushstring
func (L *Lua_State) PushString(s *c.Char) *c.Char {
	return nil
}

// llgo:link (*Lua_State).PushLString C.lua_pushlstring
func (L *Lua_State) PushLString(s *c.Char, len c.Ulong) *c.Char {
	return nil
}

// llgo:link (*Lua_State).PushFString C.lua_pushfstring
func (L *Lua_State) PushFString(format *c.Char, __llgo_va_list ...any) *c.Char { return nil }

// llgo:link (*Lua_State).PushBoolean C.lua_pushboolean
func (L *Lua_State) PushBoolean(b c.Int) {}

//const char *(lua_pushvfstring) (lua_State *L, const char *fmt,va_list argp);
//void  (lua_pushcclosure) (lua_State *L, lua_CFunction fn, int n);
//void  (lua_pushlightuserdata) (lua_State *L, void *p);
//int   (lua_pushthread) (lua_State *L);

// /*
// ** get functions (Lua -> stack)
// */

// llgo:link (*Lua_State).GetGlobal C.lua_getglobal
func (L *Lua_State) GetGlobal(name *c.Char) c.Int { return 0 }

// llgo:link (*Lua_State).GetTable C.lua_gettable
func (L *Lua_State) GetTable(idx c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).GetField C.lua_getfield
func (L *Lua_State) GetField(idx c.Int, k *c.Char) c.Int { return 0 }

// llgo:link (*Lua_State).CreateTable C.lua_createtable
func (L *Lua_State) CreateTable(narr c.Int, nrec c.Int) {}

// LUA_API int (lua_geti) (lua_State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawget) (lua_State *L, int idx);
// LUA_API int (lua_rawgeti) (lua_State *L, int idx, lua_Integer n);
// LUA_API int (lua_rawgetp) (lua_State *L, int idx, const void *p);

// LUA_API void *(lua_newuserdatauv) (lua_State *L, size_t sz, int nuvalue);
// LUA_API int   (lua_getmetatable) (lua_State *L, int objindex);
// LUA_API int  (lua_getiuservalue) (lua_State *L, int idx, int n);

// /*
// ** set functions (stack -> Lua)
// */

// TODO(zzy):add to demo
// llgo:link (*Lua_State).SetGlobal C.lua_setglobal
func (L *Lua_State) SetGlobal(name *c.Char) {}

// llgo:link (*Lua_State).SetTable C.lua_settable
func (L *Lua_State) SetTable(idx c.Int) {}

// llgo:link (*Lua_State).SetField C.lua_setfield
func (L *Lua_State) SetField(idx c.Int, k *c.Char) {}

//void  (lua_seti) (lua_State *L, int idx, lua_Integer n);
//void  (lua_rawset) (lua_State *L, int idx);
//void  (lua_rawseti) (lua_State *L, int idx, lua_Integer n);
//void  (lua_rawsetp) (lua_State *L, int idx, const void *p);
//int   (lua_setmetatable) (lua_State *L, int objindex);
//int   (lua_setiuservalue) (lua_State *L, int idx, int n);

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

// void  (lua_callk) (lua_State *L, int nargs, int nresults, lua_KContext ctx, lua_KFunction k);
// #define lua_call(L,n,r)		lua_callk(L, (n), (r), 0, NULL)

// int   (lua_load) (lua_State *L, lua_Reader reader, void *dt, const char *chunkname, const char *mode);

// int (lua_dump) (lua_State *L, lua_Writer writer, void *data, int strip);

// /*
// ** coroutine functions
// */

// llgo:link (*Lua_State).Resume C.lua_resume
func (L *Lua_State) Resume(from *Lua_State, narg c.Int, nres *c.Int) c.Int { return 0 }

// llgo:link (*Lua_State).Status C.lua_status
func (L *Lua_State) Status() c.Int { return 0 }

// llgo:link (*Lua_State).IsYieldable C.lua_isyieldable
func (L *Lua_State) IsYieldable() c.Int { return 0 }

// TODO(zzy)
// int  (lua_yieldk)     (lua_State *L, int nresults, lua_KContext ctx, lua_KFunction k);
// #define lua_yield(L,n)	lua_yieldk(L, (n), 0, NULL)

// /*
// ** Warning-related functions
// */

//void (lua_setwarnf) (lua_State *L, lua_WarnFunction f, void *ud);
//void (lua_warning)  (lua_State *L, const char *msg, int tocont);

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

// LUA_API int (lua_gc) (lua_State *L, int what, ...);

// /*
// ** miscellaneous functions
// */
// llgo:link (*Lua_State).Next C.lua_next
func (L *Lua_State) Next(idx c.Int) c.Int { return 0 }

// LUA_API int   (lua_error) (lua_State *L);

// LUA_API void  (lua_concat) (lua_State *L, int n);
// LUA_API void  (lua_len)    (lua_State *L, int idx);

// LUA_API size_t   (lua_stringtonumber) (lua_State *L, const char *s);

// LUA_API lua_Alloc (lua_getallocf) (lua_State *L, void **ud);
// LUA_API void      (lua_setallocf) (lua_State *L, lua_Alloc f, void *ud);

// LUA_API void (lua_toclose) (lua_State *L, int idx);
// LUA_API void (lua_closeslot) (lua_State *L, int idx);

// /*
// ** {==============================================================
// ** some useful macros
// ** ===============================================================
// */

func (L *Lua_State) ToNumber(idx c.Int) Number    { return L.ToNumberx(idx, nil) }
func (L *Lua_State) ToString(idx c.Int) *c.Char   { return L.ToLString(idx, nil) }
func (L *Lua_State) ToInteger(idx c.Int) Integer  { return L.ToIntegerx(idx, nil) }
func (L *Lua_State) Pop(n c.Int)                  { L.SetTop(-(n) - 1) }
func (L *Lua_State) NewTable()                    { L.CreateTable(0, 0) }
func (L *Lua_State) IsFunction(n c.Int) bool      { return L.Type(n) == c.Int(FUNCTION) }
func (L *Lua_State) IsTable(n c.Int) bool         { return L.Type(n) == c.Int(TABLE) }
func (L *Lua_State) IsLightUserData(n c.Int) bool { return L.Type(n) == c.Int(LIGHTUSERDATA) }
func (L *Lua_State) IsNil(n c.Int) bool           { return L.Type(n) == c.Int(NIL) }
func (L *Lua_State) IsBoolean(n c.Int) bool       { return L.Type(n) == c.Int(BOOLEAN) }
func (L *Lua_State) IsThread(n c.Int) bool        { return L.Type(n) == c.Int(THREAD) }
func (L *Lua_State) IsNone(n c.Int) bool          { return L.Type(n) == c.Int(NONE) }
func (L *Lua_State) IsNoneOrNil(n c.Int) bool     { return L.Type(n) <= 0 }

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

// LUA_API int (lua_getstack) (lua_State *L, int level, lua_Debug *ar);
// LUA_API int (lua_getinfo) (lua_State *L, const char *what, lua_Debug *ar);
// LUA_API const char *(lua_getlocal) (lua_State *L, const lua_Debug *ar, int n);
// LUA_API const char *(lua_setlocal) (lua_State *L, const lua_Debug *ar, int n);
// LUA_API const char *(lua_getupvalue) (lua_State *L, int funcindex, int n);
// LUA_API const char *(lua_setupvalue) (lua_State *L, int funcindex, int n);

// LUA_API void *(lua_upvalueid) (lua_State *L, int fidx, int n);
// LUA_API void  (lua_upvaluejoin) (lua_State *L, int fidx1, int n1, int fidx2, int n2);

// LUA_API void (lua_sethook) (lua_State *L, lua_Hook func, int mask, int count);
// LUA_API lua_Hook (lua_gethook) (lua_State *L);
// LUA_API int (lua_gethookmask) (lua_State *L);
// LUA_API int (lua_gethookcount) (lua_State *L);

// LUA_API int (lua_setcstacklimit) (lua_State *L, unsigned int limit);

// struct lua_Debug
// /* }====================================================================== */

typedef struct lua_State lua_State;
typedef void (*lua_Hook)(lua_State *L);
void(lua_sethook)(lua_State *L, lua_Hook func, int mask, int count);
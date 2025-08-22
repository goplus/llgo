package pyenvrt

/*
#include <stdlib.h>
#include <string.h>

#if defined(__APPLE__)
static int llgo_is_darwin() { return 1; }
#else
static int llgo_is_darwin() { return 0; }
#endif

static void set_env(const char* k, const char* v) { if (k && v) setenv(k, v, 1); }
static void unset_env(const char* k) { if (k) unsetenv(k); }
static const char* get_env(const char* k) { return k ? getenv(k) : NULL; }

static void prepend_path(const char* k, const char* v) {
	if (!k || !v || !*v) return;
	const char* cur = getenv(k);
	if (!cur || !*cur) { setenv(k, v, 1); return; }
	size_t lv = strlen(v), lc = strlen(cur);
	char* buf = (char*)malloc(lv + 1 + lc + 1);
	if (!buf) return;
	memcpy(buf, v, lv); buf[lv] = ':'; memcpy(buf+lv+1, cur, lc); buf[lv+1+lc] = 0;
	setenv(k, buf, 1);
	free(buf);
}
*/
import "C"
import "unsafe"

func init() {

	pyHome := getenv("LLPYG_PYHOME")
	if pyHome == "" {
		if base := cacheBase(); base != "" {
			pyHome = base + "/python_env/python"
		}
	}
	if pyHome == "" {
		return
	}
	setenv("PYTHONHOME", pyHome)
	prependPath("PATH", pyHome+"/bin")
}

func getenv(k string) string {
	ck := C.CString(k)
	defer C.free(unsafe.Pointer(ck))
	cv := C.get_env(ck)
	if cv == nil {
		return ""
	}
	return C.GoString(cv)
}

func setenv(k, v string) {
	ck, cv := C.CString(k), C.CString(v)
	C.set_env(ck, cv)
	C.free(unsafe.Pointer(ck))
	C.free(unsafe.Pointer(cv))
}

func unsetenv(k string) {
	ck := C.CString(k)
	C.unset_env(ck)
	C.free(unsafe.Pointer(ck))
}

func prependPath(k, v string) {
	ck, cv := C.CString(k), C.CString(v)
	C.prepend_path(ck, cv)
	C.free(unsafe.Pointer(ck))
	C.free(unsafe.Pointer(cv))
}

func cacheBase() string {
	if v := getenv("LLGO_CACHE_DIR"); v != "" {
		return v
	}
	if home := getenv("HOME"); home != "" {
		return home + "/Library/Caches/llgo"
	}
	if xdg := getenv("XDG_CACHE_HOME"); xdg != "" {
		return xdg + "/llgo"
	}
	return ""
}

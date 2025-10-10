#include <Python.h>
#include <dlfcn.h>
#include <limits.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static void parent_dir(char* path) {
	size_t n = strlen(path);
	while (n > 0 && path[n-1] == '/') path[--n] = '\0';
	char* s = strrchr(path, '/');
	if (!s) { path[0]='.'; path[1]='\0'; return; }
	if (s == path) s[1] = '\0';
	else *s = '\0';
}
void __llgo_py_init_from_exedir(void) {
	Dl_info info;
	if (dladdr((void*)Py_Initialize, &info) == 0 || !info.dli_fname) return;

	char p[PATH_MAX]; strncpy(p, info.dli_fname, sizeof(p)-1); p[sizeof(p)-1]='\0';

	char d1[PATH_MAX]; strncpy(d1, p, sizeof(d1)-1); d1[sizeof(d1)-1]='\0';
	parent_dir(d1); // d1 = dirname(p)

	char d2[PATH_MAX]; strncpy(d2, d1, sizeof(d1)-1); d2[sizeof(d1)-1]='\0';
	parent_dir(d2); // d2 = dirname(d1)

	char home[PATH_MAX]; snprintf(home, sizeof(home), "%s", d2);

	wchar_t *wHome = Py_DecodeLocale(home, NULL);
	if (!wHome) return;

	PyStatus st;
	PyConfig cfg; PyConfig_InitPythonConfig(&cfg);
	cfg.module_search_paths_set = 0;
	st = PyConfig_SetString(&cfg, &cfg.home, wHome);
	PyMem_RawFree(wHome);
	if (PyStatus_Exception(st)) { PyConfig_Clear(&cfg); return; }

	st = Py_InitializeFromConfig(&cfg);
	PyConfig_Clear(&cfg);
	(void)st;
}
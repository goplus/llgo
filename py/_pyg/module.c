#include <stdlib.h>
#include <stdarg.h>
#include <stdio.h>

// example:
// llgoLoadPyModSyms(mod, "name1", &func1, "name2", &func2, NULL)

typedef struct PyObject PyObject;

PyObject* PyObject_GetAttrString(PyObject* mod, const char* attrName);

void llgoLoadPyModSyms(PyObject* mod, ...) {
    va_list ap;
    va_start(ap, mod);
    for (;;) {
        const char* name = va_arg(ap, const char*);
        if (name == NULL) {
            break;
        }
        PyObject** pfunc = va_arg(ap, PyObject**);
        if (*pfunc == NULL) {
            *pfunc = PyObject_GetAttrString(mod, name);
        }
    }
    va_end(ap);
}

/*
wchar_t* toWcs(const char* str) {
    size_t len = mbstowcs(NULL, str, 0);
    wchar_t* wstr = (wchar_t*)malloc((len + 1) * sizeof(wchar_t));
    mbstowcs(wstr, str, len + 1);
    return wstr;
}

char* toMbs(const wchar_t* str) {
    size_t len = wcstombs(NULL, str, 0);
    char* mstr = (char*)malloc(len + 1);
    wcstombs(mstr, str, len + 1);
    return mstr;
}

wchar_t *Py_GetPath();

void Py_SetPath(const wchar_t* path);
void Py_Initialize();

void llgoPyInitialize() {
    setenv("PYTHONPATH", "/opt/homebrew/lib/python3.12/site-packages", 1);
    Py_Initialize();
    printf("sys.path = %s\n", toMbs(Py_GetPath()));
}
*/

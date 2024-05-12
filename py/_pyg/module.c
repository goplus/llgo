#include <stdlib.h>
#include <stdarg.h>

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

#include <stdlib.h>
#include <stdio.h>

typedef struct PyObject PyObject;

void Py_Initialize();

PyObject* PyImport_ImportModule(const char* modName);
PyObject* PyModule_GetDict(PyObject* mod);
PyObject* PyObject_Str(PyObject* obj);
PyObject* PyDict_Keys(PyObject* dict);
PyObject* PyList_GetItem(PyObject* list, size_t index);
PyObject* PyTuple_GetItem(PyObject* tuple, size_t index);
PyObject* PyObject_GetAttr(PyObject* mod, PyObject* attrName);
PyObject* PyObject_GetAttrString(PyObject* mod, const char* attrName);
PyObject* PyObject_CallOneArg(PyObject* fn, PyObject* arg);

const char* PyUnicode_AsUTF8(PyObject* str);

size_t PyList_Size(PyObject* list);

int PyCallable_Check(PyObject*);

int main() {
    Py_Initialize();
    PyObject* inspect = PyImport_ImportModule("inspect");
    PyObject* signature = PyObject_GetAttrString(inspect, "signature");
	PyObject* mod = PyImport_ImportModule("numpy");
	PyObject* dict = PyModule_GetDict(mod);
	PyObject* keys = PyDict_Keys(dict);
    size_t i, n;
    n = PyList_Size(keys);
	for (i = 0; i < n; i++) {
		PyObject* key = PyList_GetItem(keys, i);
        PyObject* val = PyObject_GetAttr(mod, key);
		if (PyCallable_Check(val) != 0) {
			PyObject* doc = PyObject_GetAttrString(val, "__doc__");
			PyObject* sig = PyObject_CallOneArg(signature, val);
			printf("-----------------------------------\n");
			printf("sig: %p\n", sig);
			printf("%s: %s\n", PyUnicode_AsUTF8(key), PyUnicode_AsUTF8(PyObject_Str(sig)));
			printf("%s\n", PyUnicode_AsUTF8(key));
			if (doc != NULL) {
				printf("%s\n", PyUnicode_AsUTF8(doc));
			}
		}
	}
    return 0;
}

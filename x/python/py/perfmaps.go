package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyUnstable_PerfMapState_Init(void)
// Open the “/tmp/perf-$pid.map“ file, unless it's already opened, and create
// a lock to ensure thread-safe writes to the file (provided the writes are
// done through :c:func:`PyUnstable_WritePerfMapEntry`). Normally, there's no need
// to call this explicitly; just use :c:func:`PyUnstable_WritePerfMapEntry`
// and it will initialize the state on first call.
//
// Returns “0“ on success, “-1“ on failure to create/open the perf map file,
// or “-2“ on failure to create a lock. Check “errno“ for more information
// about the cause of a failure.
//
//go:linkname UnstablePerfMapStateInit C.PyUnstable_PerfMapState_Init
func UnstablePerfMapStateInit() Int

// int PyUnstable_WritePerfMapEntry(const void *code_addr, unsigned int code_size, const char *entry_name)
// Write one single entry to the “/tmp/perf-$pid.map“ file. This function is
// thread safe. Here is what an example entry looks like::
//
// # address      size  name
// 7f3529fcf759 b     py::bar:/run/t.py
//
// Will call :c:func:`PyUnstable_PerfMapState_Init` before writing the entry, if
// the perf map file is not already opened. Returns “0“ on success, or the
// same error codes as :c:func:`PyUnstable_PerfMapState_Init` on failure.
//
//go:linkname UnstableWritePerfMapEntry C.PyUnstable_WritePerfMapEntry
func UnstableWritePerfMapEntry(codeAddr Pointer, codeSize Uint, entryName *Char) Int

// void PyUnstable_PerfMapState_Fini(void)
// Close the perf map file opened by :c:func:`PyUnstable_PerfMapState_Init`.
// This is called by the runtime itself during interpreter shut-down. In
// general, there shouldn't be a reason to explicitly call this, except to
// handle specific scenarios such as forking.
//
//go:linkname UnstablePerfMapStateFini C.PyUnstable_PerfMapState_Fini
func UnstablePerfMapStateFini()

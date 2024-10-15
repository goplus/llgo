package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyTime_Monotonic(PyTime_t *result)
// Read the monotonic clock.
// See :func:`time.monotonic` for important details on this clock.
//
//go:linkname TimeMonotonic C.PyTime_Monotonic
func TimeMonotonic(result *TimeT) Int

// int PyTime_PerfCounter(PyTime_t *result)
// Read the performance counter.
// See :func:`time.perf_counter` for important details on this clock.
//
//go:linkname TimePerfCounter C.PyTime_PerfCounter
func TimePerfCounter(result *TimeT) Int

// int PyTime_Time(PyTime_t *result)
// Read the “wall clock” time.
// See :func:`time.time` for details important on this clock.
//
// Raw Clock Functions
// -------------------
//
// Similar to clock functions, but don't set an exception on error and don't
// require the caller to hold the GIL.
//
// On success, the functions return “0“.
//
// On failure, they set “*result“ to “0“ and return “-1“, *without* setting
// an exception. To get the cause of the error, acquire the GIL and call the
// regular (non-“Raw“) function. Note that the regular function may succeed after
// the “Raw“ one failed.
//
//go:linkname TimeTime C.PyTime_Time
func TimeTime(result *TimeT) Int

// int PyTime_MonotonicRaw(PyTime_t *result)
// Similar to :c:func:`PyTime_Monotonic`,
// but don't set an exception on error and don't require holding the GIL.
//
//go:linkname TimeMonotonicRaw C.PyTime_MonotonicRaw
func TimeMonotonicRaw(result *TimeT) Int

// int PyTime_PerfCounterRaw(PyTime_t *result)
// Similar to :c:func:`PyTime_PerfCounter`,
// but don't set an exception on error and don't require holding the GIL.
//
//go:linkname TimePerfCounterRaw C.PyTime_PerfCounterRaw
func TimePerfCounterRaw(result *TimeT) Int

// int PyTime_TimeRaw(PyTime_t *result)
// Similar to :c:func:`PyTime_Time`,
// but don't set an exception on error and don't require holding the GIL.
//
// Conversion functions
// --------------------
//
//go:linkname TimeTimeRaw C.PyTime_TimeRaw
func TimeTimeRaw(result *TimeT) Int

// double PyTime_AsSecondsDouble(PyTime_t t)
// Convert a timestamp to a number of seconds as a C :c:expr:`double`.
//
// The function cannot fail, but note that :c:expr:`double` has limited
// accuracy for large values.
//
//go:linkname TimeAsSecondsDouble C.PyTime_AsSecondsDouble
func TimeAsSecondsDouble(t TimeT) Double

// PyTime_t
// A timestamp or duration in nanoseconds, represented as a signed 64-bit
// integer.
//
// The reference point for timestamps depends on the clock used. For example,
// :c:func:`PyTime_Time` returns timestamps relative to the UNIX epoch.
//
// The supported range is around [-292.3 years; +292.3 years].
// Using the Unix epoch (January 1st, 1970) as reference, the supported date
// range is around [1677-09-21; 2262-04-11].
// The exact limits are exposed as constants:
type TimeT LongLong

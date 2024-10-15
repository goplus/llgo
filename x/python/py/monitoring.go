package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyMonitoring_FirePyStartEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “PY_START“ event.
//
//go:linkname MonitoringFirePyStartEvent PyMonitoring_FirePyStartEvent
func MonitoringFirePyStartEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FirePyResumeEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “PY_RESUME“ event.
//
//go:linkname MonitoringFirePyResumeEvent PyMonitoring_FirePyResumeEvent
func MonitoringFirePyResumeEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FirePyReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject* retval)
// Fire a “PY_RETURN“ event.
//
//go:linkname MonitoringFirePyReturnEvent PyMonitoring_FirePyReturnEvent
func MonitoringFirePyReturnEvent(state *MonitoringState, codelike *Object, offset Int, retval *Object) Int

// int PyMonitoring_FirePyYieldEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject* retval)
// Fire a “PY_YIELD“ event.
//
//go:linkname MonitoringFirePyYieldEvent PyMonitoring_FirePyYieldEvent
func MonitoringFirePyYieldEvent(state *MonitoringState, codelike *Object, offset Int, retval *Object) Int

// int PyMonitoring_FireCallEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject* callable, PyObject *arg0)
// Fire a “CALL“ event.
//
//go:linkname MonitoringFireCallEvent PyMonitoring_FireCallEvent
func MonitoringFireCallEvent(state *MonitoringState, codelike *Object, offset Int, callable *Object, arg0 *Object) Int

// int PyMonitoring_FireLineEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, int lineno)
// Fire a “LINE“ event.
//
//go:linkname MonitoringFireLineEvent PyMonitoring_FireLineEvent
func MonitoringFireLineEvent(state *MonitoringState, codelike *Object, offset Int, lineno Int) Int

// int PyMonitoring_FireJumpEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *target_offset)
// Fire a “JUMP“ event.
//
//go:linkname MonitoringFireJumpEvent PyMonitoring_FireJumpEvent
func MonitoringFireJumpEvent(state *MonitoringState, codelike *Object, offset Int, targetOffset *Object) Int

// int PyMonitoring_FireBranchEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *target_offset)
// Fire a “BRANCH“ event.
//
//go:linkname MonitoringFireBranchEvent PyMonitoring_FireBranchEvent
func MonitoringFireBranchEvent(state *MonitoringState, codelike *Object, offset Int, targetOffset *Object) Int

// int PyMonitoring_FireCReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *retval)
// Fire a “C_RETURN“ event.
//
//go:linkname MonitoringFireCReturnEvent PyMonitoring_FireCReturnEvent
func MonitoringFireCReturnEvent(state *MonitoringState, codelike *Object, offset Int, retval *Object) Int

// int PyMonitoring_FirePyThrowEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “PY_THROW“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFirePyThrowEvent PyMonitoring_FirePyThrowEvent
func MonitoringFirePyThrowEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FireRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “RAISE“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFireRaiseEvent PyMonitoring_FireRaiseEvent
func MonitoringFireRaiseEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FireCRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “C_RAISE“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFireCRaiseEvent PyMonitoring_FireCRaiseEvent
func MonitoringFireCRaiseEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FireReraiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “RERAISE“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFireReraiseEvent PyMonitoring_FireReraiseEvent
func MonitoringFireReraiseEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FireExceptionHandledEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire an “EXCEPTION_HANDLED“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFireExceptionHandledEvent PyMonitoring_FireExceptionHandledEvent
func MonitoringFireExceptionHandledEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FirePyUnwindEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
// Fire a “PY_UNWIND“ event with the current exception (as returned by
// :c:func:`PyErr_GetRaisedException`).
//
//go:linkname MonitoringFirePyUnwindEvent PyMonitoring_FirePyUnwindEvent
func MonitoringFirePyUnwindEvent(state *MonitoringState, codelike *Object, offset Int) Int

// int PyMonitoring_FireStopIterationEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *value)
// Fire a “STOP_ITERATION“ event. If “value“ is an instance of :exc:`StopIteration`, it is used. Otherwise,
// a new :exc:`StopIteration` instance is created with “value“ as its argument.
//
// Managing the Monitoring State
// -----------------------------
//
// Monitoring states can be managed with the help of monitoring scopes. A scope
// would typically correspond to a python function.
//
//go:linkname MonitoringFireStopIterationEvent PyMonitoring_FireStopIterationEvent
func MonitoringFireStopIterationEvent(state *MonitoringState, codelike *Object, offset Int, value *Object) Int

// int PyMonitoring_EnterScope(PyMonitoringState *state_array, uint64_t *version, const uint8_t *event_types, Py_ssize_t length)
// Enter a monitored scope. “event_types“ is an array of the event IDs for
// events that may be fired from the scope. For example, the ID of a “PY_START“
// event is the value “PY_MONITORING_EVENT_PY_START“, which is numerically equal
// to the base-2 logarithm of “sys.monitoring.events.PY_START“.
// “state_array“ is an array with a monitoring state entry for each event in
// “event_types“, it is allocated by the user but populated by
// :c:func:`!PyMonitoring_EnterScope` with information about the activation state of
// the event. The size of “event_types“ (and hence also of “state_array“)
// is given in “length“.
//
// The “version“ argument is a pointer to a value which should be allocated
// by the user together with “state_array“ and initialized to 0,
// and then set only by :c:func:`!PyMonitoring_EnterScope` itelf. It allows this
// function to determine whether event states have changed since the previous call,
// and to return quickly if they have not.
//
// The scopes referred to here are lexical scopes: a function, class or method.
// :c:func:`!PyMonitoring_EnterScope` should be called whenever the lexical scope is
// entered. Scopes can be reentered, reusing the same *state_array* and *version*,
// in situations like when emulating a recursive Python function. When a code-like's
// execution is paused, such as when emulating a generator, the scope needs to
// be exited and re-entered.
//
// The macros for *event_types* are:
//
//go:linkname MonitoringEnterScope PyMonitoring_EnterScope
func MonitoringEnterScope(stateArray *MonitoringState, version *LongLong, eventTypes *Uchar, length SSizeT) Int

// int PyMonitoring_ExitScope(void)
// Exit the last scope that was entered with :c:func:`!PyMonitoring_EnterScope`.
//
//go:linkname MonitoringExitScope PyMonitoring_ExitScope
func MonitoringExitScope() Int

// PyMonitoringState
// Representation of the state of an event type. It is allocated by the user
// while its contents are maintained by the monitoring API functions described below.
//
// All of the functions below return 0 on success and -1 (with an exception set) on error.
//
// See :mod:`sys.monitoring` for descriptions of the events.
type MonitoringState struct{}

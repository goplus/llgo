package py

/*
#cgo pkg-config: python-3.12-embed
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"

	"github.com/goplus/llgo/c"
)

// int PyDate_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateType` or a subtype of
// :c:data:`!PyDateTime_DateType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DateCheck C.PyDate_Check
func DateCheck(ob *Object) c.Int

// int PyDate_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname DateCheckExact C.PyDate_CheckExact
func DateCheckExact(ob *Object) c.Int

// int PyDateTime_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateTimeType` or a subtype of
// :c:data:`!PyDateTime_DateTimeType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DateTimeCheck C.PyDateTime_Check
func DateTimeCheck(ob *Object) c.Int

// int PyDateTime_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateTimeType`. *ob* must not
// be “NULL“.  This function always succeeds.
//
//go:linkname DateTimeCheckExact C.PyDateTime_CheckExact
func DateTimeCheckExact(ob *Object) c.Int

// int PyTime_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TimeType` or a subtype of
// :c:data:`!PyDateTime_TimeType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname TimeCheck C.PyTime_Check
func TimeCheck(ob *Object) c.Int

// int PyTime_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TimeType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname TimeCheckExact C.PyTime_CheckExact
func TimeCheckExact(ob *Object) c.Int

// int PyDelta_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DeltaType` or a subtype of
// :c:data:`!PyDateTime_DeltaType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DeltaCheck C.PyDelta_Check
func DeltaCheck(ob *Object) c.Int

// int PyDelta_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DeltaType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname DeltaCheckExact C.PyDelta_CheckExact
func DeltaCheckExact(ob *Object) c.Int

// int PyTZInfo_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TZInfoType` or a subtype of
// :c:data:`!PyDateTime_TZInfoType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname TZInfoCheck C.PyTZInfo_Check
func TZInfoCheck(ob *Object) c.Int

// int PyTZInfo_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TZInfoType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
// Macros to create objects:
//
//go:linkname TZInfoCheckExact C.PyTZInfo_CheckExact
func TZInfoCheckExact(ob *Object) c.Int

// PyObject* PyDate_FromDate(int year, int month, int day)
// Return a :class:`datetime.date` object with the specified year, month and day.
//
//go:linkname DateFromDate C.PyDate_FromDate
func DateFromDate(year c.Int, month c.Int, day c.Int) *Object

// PyObject* PyDateTime_FromDateAndTime(int year, int month, int day, int hour, int minute, int second, int usecond)
// Return a :class:`datetime.datetime` object with the specified year, month, day, hour,
// minute, second and microsecond.
//
//go:linkname DateTimeFromDateAndTime C.PyDateTime_FromDateAndTime
func DateTimeFromDateAndTime(year c.Int, month c.Int, day c.Int, hour c.Int, minute c.Int, second c.Int, usecond c.Int) *Object

// PyObject* PyDateTime_FromDateAndTimeAndFold(int year, int month, int day, int hour, int minute, int second, int usecond, int fold)
// Return a :class:`datetime.datetime` object with the specified year, month, day, hour,
// minute, second, microsecond and fold.
//
//go:linkname DateTimeFromDateAndTimeAndFold C.PyDateTime_FromDateAndTimeAndFold
func DateTimeFromDateAndTimeAndFold(year c.Int, month c.Int, day c.Int, hour c.Int, minute c.Int, second c.Int, usecond c.Int, fold c.Int) *Object

// PyObject* PyTime_FromTime(int hour, int minute, int second, int usecond)
// Return a :class:`datetime.time` object with the specified hour, minute, second and
// microsecond.
//
//go:linkname TimeFromTime C.PyTime_FromTime
func TimeFromTime(hour c.Int, minute c.Int, second c.Int, usecond c.Int) *Object

// PyObject* PyTime_FromTimeAndFold(int hour, int minute, int second, int usecond, int fold)
// Return a :class:`datetime.time` object with the specified hour, minute, second,
// microsecond and fold.
//
//go:linkname TimeFromTimeAndFold C.PyTime_FromTimeAndFold
func TimeFromTimeAndFold(hour c.Int, minute c.Int, second c.Int, usecond c.Int, fold c.Int) *Object

// PyObject* PyDelta_FromDSU(int days, int seconds, int useconds)
// Return a :class:`datetime.timedelta` object representing the given number
// of days, seconds and microseconds.  Normalization is performed so that the
// resulting number of microseconds and seconds lie in the ranges documented for
// :class:`datetime.timedelta` objects.
//
//go:linkname DeltaFromDSU C.PyDelta_FromDSU
func DeltaFromDSU(days c.Int, seconds c.Int, useconds c.Int) *Object

// PyObject* PyTimeZone_FromOffset(PyObject *offset)
// Return a :class:`datetime.timezone` object with an unnamed fixed offset
// represented by the *offset* argument.
//
//go:linkname TimeZoneFromOffset C.PyTimeZone_FromOffset
func TimeZoneFromOffset(offset *Object) *Object

// PyObject* PyTimeZone_FromOffsetAndName(PyObject *offset, PyObject *name)
// Return a :class:`datetime.timezone` object with a fixed offset represented
// by the *offset* argument and with tzname *name*.
//
// Macros to extract fields from date objects.  The argument must be an instance of
// :c:type:`PyDateTime_Date`, including subclasses (such as
// :c:type:`PyDateTime_DateTime`).  The argument must not be “NULL“, and the type is
// not checked:
//
//go:linkname TimeZoneFromOffsetAndName C.PyTimeZone_FromOffsetAndName
func TimeZoneFromOffsetAndName(offset *Object, name *Object) *Object

// int PyDateTime_GET_YEAR(PyDateTime_Date *o)
// Return the year, as a positive int.
//
//go:linkname DateTimeGETYEAR C.PyDateTime_GET_YEAR
func DateTimeGETYEAR(o *DateTimeDate) c.Int

// int PyDateTime_GET_MONTH(PyDateTime_Date *o)
// Return the month, as an int from 1 through 12.
//
//go:linkname DateTimeGETMONTH C.PyDateTime_GET_MONTH
func DateTimeGETMONTH(o *DateTimeDate) c.Int

// int PyDateTime_GET_DAY(PyDateTime_Date *o)
// Return the day, as an int from 1 through 31.
//
// Macros to extract fields from datetime objects.  The argument must be an
// instance of :c:type:`PyDateTime_DateTime`, including subclasses. The argument
// must not be “NULL“, and the type is not checked:
//
//go:linkname DateTimeGETDAY C.PyDateTime_GET_DAY
func DateTimeGETDAY(o *DateTimeDate) c.Int

// int PyDateTime_DATE_GET_HOUR(PyDateTime_DateTime *o)
// Return the hour, as an int from 0 through 23.
//
//go:linkname DateTimeDATEGETHOUR C.PyDateTime_DATE_GET_HOUR
func DateTimeDATEGETHOUR(o *DateTimeDateTime) c.Int

// int PyDateTime_DATE_GET_MINUTE(PyDateTime_DateTime *o)
// Return the minute, as an int from 0 through 59.
//
//go:linkname DateTimeDATEGETMINUTE C.PyDateTime_DATE_GET_MINUTE
func DateTimeDATEGETMINUTE(o *DateTimeDateTime) c.Int

// int PyDateTime_DATE_GET_SECOND(PyDateTime_DateTime *o)
// Return the second, as an int from 0 through 59.
//
//go:linkname DateTimeDATEGETSECOND C.PyDateTime_DATE_GET_SECOND
func DateTimeDATEGETSECOND(o *DateTimeDateTime) c.Int

// int PyDateTime_DATE_GET_MICROSECOND(PyDateTime_DateTime *o)
// Return the microsecond, as an int from 0 through 999999.
//
//go:linkname DateTimeDATEGETMICROSECOND C.PyDateTime_DATE_GET_MICROSECOND
func DateTimeDATEGETMICROSECOND(o *DateTimeDateTime) c.Int

// int PyDateTime_DATE_GET_FOLD(PyDateTime_DateTime *o)
// Return the fold, as an int from 0 through 1.
//
//go:linkname DateTimeDATEGETFOLD C.PyDateTime_DATE_GET_FOLD
func DateTimeDATEGETFOLD(o *DateTimeDateTime) c.Int

// PyObject* PyDateTime_DATE_GET_TZINFO(PyDateTime_DateTime *o)
// Return the tzinfo (which may be “None“).
//
// Macros to extract fields from time objects.  The argument must be an instance of
// :c:type:`PyDateTime_Time`, including subclasses. The argument must not be “NULL“,
// and the type is not checked:
//
//go:linkname DateTimeDATEGETTZINFO C.PyDateTime_DATE_GET_TZINFO
func DateTimeDATEGETTZINFO(o *DateTimeDateTime) *Object

// int PyDateTime_TIME_GET_HOUR(PyDateTime_Time *o)
// Return the hour, as an int from 0 through 23.
//
//go:linkname DateTimeTIMEGETHOUR C.PyDateTime_TIME_GET_HOUR
func DateTimeTIMEGETHOUR(o *DateTimeTime) c.Int

// int PyDateTime_TIME_GET_MINUTE(PyDateTime_Time *o)
// Return the minute, as an int from 0 through 59.
//
//go:linkname DateTimeTIMEGETMINUTE C.PyDateTime_TIME_GET_MINUTE
func DateTimeTIMEGETMINUTE(o *DateTimeTime) c.Int

// int PyDateTime_TIME_GET_SECOND(PyDateTime_Time *o)
// Return the second, as an int from 0 through 59.
//
//go:linkname DateTimeTIMEGETSECOND C.PyDateTime_TIME_GET_SECOND
func DateTimeTIMEGETSECOND(o *DateTimeTime) c.Int

// int PyDateTime_TIME_GET_MICROSECOND(PyDateTime_Time *o)
// Return the microsecond, as an int from 0 through 999999.
//
//go:linkname DateTimeTIMEGETMICROSECOND C.PyDateTime_TIME_GET_MICROSECOND
func DateTimeTIMEGETMICROSECOND(o *DateTimeTime) c.Int

// int PyDateTime_TIME_GET_FOLD(PyDateTime_Time *o)
// Return the fold, as an int from 0 through 1.
//
//go:linkname DateTimeTIMEGETFOLD C.PyDateTime_TIME_GET_FOLD
func DateTimeTIMEGETFOLD(o *DateTimeTime) c.Int

// PyObject* PyDateTime_TIME_GET_TZINFO(PyDateTime_Time *o)
// Return the tzinfo (which may be “None“).
//
// Macros to extract fields from time delta objects.  The argument must be an
// instance of :c:type:`PyDateTime_Delta`, including subclasses. The argument must
// not be “NULL“, and the type is not checked:
//
//go:linkname DateTimeTIMEGETTZINFO C.PyDateTime_TIME_GET_TZINFO
func DateTimeTIMEGETTZINFO(o *DateTimeTime) *Object

// int PyDateTime_DELTA_GET_DAYS(PyDateTime_Delta *o)
// Return the number of days, as an int from -999999999 to 999999999.
//
//go:linkname DateTimeDELTAGETDAYS C.PyDateTime_DELTA_GET_DAYS
func DateTimeDELTAGETDAYS(o *DateTimeDelta) c.Int

// int PyDateTime_DELTA_GET_SECONDS(PyDateTime_Delta *o)
// Return the number of seconds, as an int from 0 through 86399.
//
//go:linkname DateTimeDELTAGETSECONDS C.PyDateTime_DELTA_GET_SECONDS
func DateTimeDELTAGETSECONDS(o *DateTimeDelta) c.Int

// int PyDateTime_DELTA_GET_MICROSECONDS(PyDateTime_Delta *o)
// Return the number of microseconds, as an int from 0 through 999999.
//
// Macros for the convenience of modules implementing the DB API:
//
//go:linkname DateTimeDELTAGETMICROSECONDS C.PyDateTime_DELTA_GET_MICROSECONDS
func DateTimeDELTAGETMICROSECONDS(o *DateTimeDelta) c.Int

// PyObject* PyDateTime_FromTimestamp(PyObject *args)
// Create and return a new :class:`datetime.datetime` object given an argument
// tuple suitable for passing to :meth:`datetime.datetime.fromtimestamp`.
//
//go:linkname DateTimeFromTimestamp C.PyDateTime_FromTimestamp
func DateTimeFromTimestamp(args *Object) *Object

// PyObject* PyDate_FromTimestamp(PyObject *args)
// Create and return a new :class:`datetime.date` object given an argument
// tuple suitable for passing to :meth:`datetime.date.fromtimestamp`.
//
//go:linkname DateFromTimestamp C.PyDate_FromTimestamp
func DateFromTimestamp(args *Object) *Object

// PyDateTime_Date
// This subtype of :c:type:`PyObject` represents a Python date object.
type DateTimeDate struct{}

// PyDateTime_DateTime
// This subtype of :c:type:`PyObject` represents a Python datetime object.
type DateTimeDateTime struct{}

// PyDateTime_Time
// This subtype of :c:type:`PyObject` represents a Python time object.
type DateTimeTime struct{}

// PyDateTime_Delta
// This subtype of :c:type:`PyObject` represents the difference between two datetime values.
type DateTimeDelta struct{}

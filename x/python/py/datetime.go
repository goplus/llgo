package py

/*
#include <Python.h>
*/
import "C"
import (
	_ "unsafe"
)

// int PyDate_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateType` or a subtype of
// :c:data:`!PyDateTime_DateType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DateCheck PyDate_Check
func DateCheck(ob *Object) Int

// int PyDate_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname DateCheckExact PyDate_CheckExact
func DateCheckExact(ob *Object) Int

// int PyDateTime_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateTimeType` or a subtype of
// :c:data:`!PyDateTime_DateTimeType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DateTimeCheck PyDateTime_Check
func DateTimeCheck(ob *Object) Int

// int PyDateTime_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DateTimeType`. *ob* must not
// be “NULL“.  This function always succeeds.
//
//go:linkname DateTimeCheckExact PyDateTime_CheckExact
func DateTimeCheckExact(ob *Object) Int

// int PyTime_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TimeType` or a subtype of
// :c:data:`!PyDateTime_TimeType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname TimeCheck PyTime_Check
func TimeCheck(ob *Object) Int

// int PyTime_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TimeType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname TimeCheckExact PyTime_CheckExact
func TimeCheckExact(ob *Object) Int

// int PyDelta_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DeltaType` or a subtype of
// :c:data:`!PyDateTime_DeltaType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname DeltaCheck PyDelta_Check
func DeltaCheck(ob *Object) Int

// int PyDelta_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_DeltaType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
//go:linkname DeltaCheckExact PyDelta_CheckExact
func DeltaCheckExact(ob *Object) Int

// int PyTZInfo_Check(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TZInfoType` or a subtype of
// :c:data:`!PyDateTime_TZInfoType`.  *ob* must not be “NULL“.  This function always
// succeeds.
//
//go:linkname TZInfoCheck PyTZInfo_Check
func TZInfoCheck(ob *Object) Int

// int PyTZInfo_CheckExact(PyObject *ob)
// Return true if *ob* is of type :c:data:`PyDateTime_TZInfoType`. *ob* must not be
// “NULL“.  This function always succeeds.
//
// Macros to create objects:
//
//go:linkname TZInfoCheckExact PyTZInfo_CheckExact
func TZInfoCheckExact(ob *Object) Int

// PyObject* PyDate_FromDate(int year, int month, int day)
// Return a :class:`datetime.date` object with the specified year, month and day.
//
//go:linkname DateFromDate PyDate_FromDate
func DateFromDate(year Int, month Int, day Int) *Object

// PyObject* PyDateTime_FromDateAndTime(int year, int month, int day, int hour, int minute, int second, int usecond)
// Return a :class:`datetime.datetime` object with the specified year, month, day, hour,
// minute, second and microsecond.
//
//go:linkname DateTimeFromDateAndTime PyDateTime_FromDateAndTime
func DateTimeFromDateAndTime(year Int, month Int, day Int, hour Int, minute Int, second Int, usecond Int) *Object

// PyObject* PyDateTime_FromDateAndTimeAndFold(int year, int month, int day, int hour, int minute, int second, int usecond, int fold)
// Return a :class:`datetime.datetime` object with the specified year, month, day, hour,
// minute, second, microsecond and fold.
//
//go:linkname DateTimeFromDateAndTimeAndFold PyDateTime_FromDateAndTimeAndFold
func DateTimeFromDateAndTimeAndFold(year Int, month Int, day Int, hour Int, minute Int, second Int, usecond Int, fold Int) *Object

// PyObject* PyTime_FromTime(int hour, int minute, int second, int usecond)
// Return a :class:`datetime.time` object with the specified hour, minute, second and
// microsecond.
//
//go:linkname TimeFromTime PyTime_FromTime
func TimeFromTime(hour Int, minute Int, second Int, usecond Int) *Object

// PyObject* PyTime_FromTimeAndFold(int hour, int minute, int second, int usecond, int fold)
// Return a :class:`datetime.time` object with the specified hour, minute, second,
// microsecond and fold.
//
//go:linkname TimeFromTimeAndFold PyTime_FromTimeAndFold
func TimeFromTimeAndFold(hour Int, minute Int, second Int, usecond Int, fold Int) *Object

// PyObject* PyDelta_FromDSU(int days, int seconds, int useconds)
// Return a :class:`datetime.timedelta` object representing the given number
// of days, seconds and microseconds.  Normalization is performed so that the
// resulting number of microseconds and seconds lie in the ranges documented for
// :class:`datetime.timedelta` objects.
//
//go:linkname DeltaFromDSU PyDelta_FromDSU
func DeltaFromDSU(days Int, seconds Int, useconds Int) *Object

// PyObject* PyTimeZone_FromOffset(PyObject *offset)
// Return a :class:`datetime.timezone` object with an unnamed fixed offset
// represented by the *offset* argument.
//
//go:linkname TimeZoneFromOffset PyTimeZone_FromOffset
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
//go:linkname TimeZoneFromOffsetAndName PyTimeZone_FromOffsetAndName
func TimeZoneFromOffsetAndName(offset *Object, name *Object) *Object

// int PyDateTime_GET_YEAR(PyDateTime_Date *o)
// Return the year, as a positive int.
//
//go:linkname DateTimeGETYEAR PyDateTime_GET_YEAR
func DateTimeGETYEAR(o *DateTimeDate) Int

// int PyDateTime_GET_MONTH(PyDateTime_Date *o)
// Return the month, as an int from 1 through 12.
//
//go:linkname DateTimeGETMONTH PyDateTime_GET_MONTH
func DateTimeGETMONTH(o *DateTimeDate) Int

// int PyDateTime_GET_DAY(PyDateTime_Date *o)
// Return the day, as an int from 1 through 31.
//
// Macros to extract fields from datetime objects.  The argument must be an
// instance of :c:type:`PyDateTime_DateTime`, including subclasses. The argument
// must not be “NULL“, and the type is not checked:
//
//go:linkname DateTimeGETDAY PyDateTime_GET_DAY
func DateTimeGETDAY(o *DateTimeDate) Int

// int PyDateTime_DATE_GET_HOUR(PyDateTime_DateTime *o)
// Return the hour, as an int from 0 through 23.
//
//go:linkname DateTimeDATEGETHOUR PyDateTime_DATE_GET_HOUR
func DateTimeDATEGETHOUR(o *DateTimeDateTime) Int

// int PyDateTime_DATE_GET_MINUTE(PyDateTime_DateTime *o)
// Return the minute, as an int from 0 through 59.
//
//go:linkname DateTimeDATEGETMINUTE PyDateTime_DATE_GET_MINUTE
func DateTimeDATEGETMINUTE(o *DateTimeDateTime) Int

// int PyDateTime_DATE_GET_SECOND(PyDateTime_DateTime *o)
// Return the second, as an int from 0 through 59.
//
//go:linkname DateTimeDATEGETSECOND PyDateTime_DATE_GET_SECOND
func DateTimeDATEGETSECOND(o *DateTimeDateTime) Int

// int PyDateTime_DATE_GET_MICROSECOND(PyDateTime_DateTime *o)
// Return the microsecond, as an int from 0 through 999999.
//
//go:linkname DateTimeDATEGETMICROSECOND PyDateTime_DATE_GET_MICROSECOND
func DateTimeDATEGETMICROSECOND(o *DateTimeDateTime) Int

// int PyDateTime_DATE_GET_FOLD(PyDateTime_DateTime *o)
// Return the fold, as an int from 0 through 1.
//
//go:linkname DateTimeDATEGETFOLD PyDateTime_DATE_GET_FOLD
func DateTimeDATEGETFOLD(o *DateTimeDateTime) Int

// PyObject* PyDateTime_DATE_GET_TZINFO(PyDateTime_DateTime *o)
// Return the tzinfo (which may be “None“).
//
// Macros to extract fields from time objects.  The argument must be an instance of
// :c:type:`PyDateTime_Time`, including subclasses. The argument must not be “NULL“,
// and the type is not checked:
//
//go:linkname DateTimeDATEGETTZINFO PyDateTime_DATE_GET_TZINFO
func DateTimeDATEGETTZINFO(o *DateTimeDateTime) *Object

// int PyDateTime_TIME_GET_HOUR(PyDateTime_Time *o)
// Return the hour, as an int from 0 through 23.
//
//go:linkname DateTimeTIMEGETHOUR PyDateTime_TIME_GET_HOUR
func DateTimeTIMEGETHOUR(o *DateTimeTime) Int

// int PyDateTime_TIME_GET_MINUTE(PyDateTime_Time *o)
// Return the minute, as an int from 0 through 59.
//
//go:linkname DateTimeTIMEGETMINUTE PyDateTime_TIME_GET_MINUTE
func DateTimeTIMEGETMINUTE(o *DateTimeTime) Int

// int PyDateTime_TIME_GET_SECOND(PyDateTime_Time *o)
// Return the second, as an int from 0 through 59.
//
//go:linkname DateTimeTIMEGETSECOND PyDateTime_TIME_GET_SECOND
func DateTimeTIMEGETSECOND(o *DateTimeTime) Int

// int PyDateTime_TIME_GET_MICROSECOND(PyDateTime_Time *o)
// Return the microsecond, as an int from 0 through 999999.
//
//go:linkname DateTimeTIMEGETMICROSECOND PyDateTime_TIME_GET_MICROSECOND
func DateTimeTIMEGETMICROSECOND(o *DateTimeTime) Int

// int PyDateTime_TIME_GET_FOLD(PyDateTime_Time *o)
// Return the fold, as an int from 0 through 1.
//
//go:linkname DateTimeTIMEGETFOLD PyDateTime_TIME_GET_FOLD
func DateTimeTIMEGETFOLD(o *DateTimeTime) Int

// PyObject* PyDateTime_TIME_GET_TZINFO(PyDateTime_Time *o)
// Return the tzinfo (which may be “None“).
//
// Macros to extract fields from time delta objects.  The argument must be an
// instance of :c:type:`PyDateTime_Delta`, including subclasses. The argument must
// not be “NULL“, and the type is not checked:
//
//go:linkname DateTimeTIMEGETTZINFO PyDateTime_TIME_GET_TZINFO
func DateTimeTIMEGETTZINFO(o *DateTimeTime) *Object

// int PyDateTime_DELTA_GET_DAYS(PyDateTime_Delta *o)
// Return the number of days, as an int from -999999999 to 999999999.
//
//go:linkname DateTimeDELTAGETDAYS PyDateTime_DELTA_GET_DAYS
func DateTimeDELTAGETDAYS(o *DateTimeDelta) Int

// int PyDateTime_DELTA_GET_SECONDS(PyDateTime_Delta *o)
// Return the number of seconds, as an int from 0 through 86399.
//
//go:linkname DateTimeDELTAGETSECONDS PyDateTime_DELTA_GET_SECONDS
func DateTimeDELTAGETSECONDS(o *DateTimeDelta) Int

// int PyDateTime_DELTA_GET_MICROSECONDS(PyDateTime_Delta *o)
// Return the number of microseconds, as an int from 0 through 999999.
//
// Macros for the convenience of modules implementing the DB API:
//
//go:linkname DateTimeDELTAGETMICROSECONDS PyDateTime_DELTA_GET_MICROSECONDS
func DateTimeDELTAGETMICROSECONDS(o *DateTimeDelta) Int

// PyObject* PyDateTime_FromTimestamp(PyObject *args)
// Create and return a new :class:`datetime.datetime` object given an argument
// tuple suitable for passing to :meth:`datetime.datetime.fromtimestamp`.
//
//go:linkname DateTimeFromTimestamp PyDateTime_FromTimestamp
func DateTimeFromTimestamp(args *Object) *Object

// PyObject* PyDate_FromTimestamp(PyObject *args)
// Create and return a new :class:`datetime.date` object given an argument
// tuple suitable for passing to :meth:`datetime.date.fromtimestamp`.
//
//go:linkname DateFromTimestamp PyDate_FromTimestamp
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

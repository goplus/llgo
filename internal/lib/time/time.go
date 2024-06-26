/*
 * Copyright (c) 2024 The GoPlus Authors (goplus.org). All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package time

// llgo:skipall
import (
	_ "unsafe"
)

type Time struct {
	// wall and ext encode the wall time seconds, wall time nanoseconds,
	// and optional monotonic clock reading in nanoseconds.
	//
	// From high to low bit position, wall encodes a 1-bit flag (hasMonotonic),
	// a 33-bit seconds field, and a 30-bit wall time nanoseconds field.
	// The nanoseconds field is in the range [0, 999999999].
	// If the hasMonotonic bit is 0, then the 33-bit field must be zero
	// and the full signed 64-bit wall seconds since Jan 1 year 1 is stored in ext.
	// If the hasMonotonic bit is 1, then the 33-bit field holds a 33-bit
	// unsigned wall seconds since Jan 1 year 1885, and ext holds a
	// signed 64-bit monotonic clock reading, nanoseconds since process start.
	wall uint64
	ext  int64

	// loc specifies the Location that should be used to
	// determine the minute, hour, month, day, and year
	// that correspond to this Time.
	// The nil location means UTC.
	// All UTC times are represented with loc==nil, never loc==&utcLoc.
	loc *Location
}

const (
	hasMonotonic = 1 << 63
	maxWall      = wallToInternal + (1<<33 - 1) // year 2157
	minWall      = wallToInternal               // year 1885
	nsecMask     = 1<<30 - 1
	nsecShift    = 30
)

// These helpers for manipulating the wall and monotonic clock readings
// take pointer receivers, even when they don't modify the time,
// to make them cheaper to call.

// nsec returns the time's nanoseconds.
func (t *Time) nsec() int32 {
	return int32(t.wall & nsecMask)
}

// sec returns the time's seconds since Jan 1 year 1.
func (t *Time) sec() int64 {
	if t.wall&hasMonotonic != 0 {
		return wallToInternal + int64(t.wall<<1>>(nsecShift+1))
	}
	return t.ext
}

// unixSec returns the time's seconds since Jan 1 1970 (Unix time).
func (t *Time) unixSec() int64 { return t.sec() + internalToUnix }

// addSec adds d seconds to the time.
func (t *Time) addSec(d int64) {
	if t.wall&hasMonotonic != 0 {
		sec := int64(t.wall << 1 >> (nsecShift + 1))
		dsec := sec + d
		if 0 <= dsec && dsec <= 1<<33-1 {
			t.wall = t.wall&nsecMask | uint64(dsec)<<nsecShift | hasMonotonic
			return
		}
		// Wall second now out of range for packed field.
		// Move to ext.
		t.stripMono()
	}

	// Check if the sum of t.ext and d overflows and handle it properly.
	sum := t.ext + d
	if (sum > t.ext) == (d > 0) {
		t.ext = sum
	} else if d > 0 {
		t.ext = 1<<63 - 1
	} else {
		t.ext = -(1<<63 - 1)
	}
}

// setLoc sets the location associated with the time.
func (t *Time) setLoc(loc *Location) {
	if loc == &utcLoc {
		loc = nil
	}
	t.stripMono()
	t.loc = loc
}

// stripMono strips the monotonic clock reading in t.
func (t *Time) stripMono() {
	if t.wall&hasMonotonic != 0 {
		t.ext = t.sec()
		t.wall &= nsecMask
	}
}

// setMono sets the monotonic clock reading in t.
// If t cannot hold a monotonic clock reading,
// because its wall time is too large,
// setMono is a no-op.
func (t *Time) setMono(m int64) {
	if t.wall&hasMonotonic == 0 {
		sec := t.ext
		if sec < minWall || maxWall < sec {
			return
		}
		t.wall |= hasMonotonic | uint64(sec-minWall)<<nsecShift
	}
	t.ext = m
}

// mono returns t's monotonic clock reading.
// It returns 0 for a missing reading.
// This function is used only for testing,
// so it's OK that technically 0 is a valid
// monotonic clock reading as well.
func (t *Time) mono() int64 {
	if t.wall&hasMonotonic == 0 {
		return 0
	}
	return t.ext
}

// After reports whether the time instant t is after u.
func (t Time) After(u Time) bool {
	if t.wall&u.wall&hasMonotonic != 0 {
		return t.ext > u.ext
	}
	ts := t.sec()
	us := u.sec()
	return ts > us || ts == us && t.nsec() > u.nsec()
}

// Before reports whether the time instant t is before u.
func (t Time) Before(u Time) bool {
	if t.wall&u.wall&hasMonotonic != 0 {
		return t.ext < u.ext
	}
	ts := t.sec()
	us := u.sec()
	return ts < us || ts == us && t.nsec() < u.nsec()
}

// Compare compares the time instant t with u. If t is before u, it returns -1;
// if t is after u, it returns +1; if they're the same, it returns 0.
func (t Time) Compare(u Time) int {
	var tc, uc int64
	if t.wall&u.wall&hasMonotonic != 0 {
		tc, uc = t.ext, u.ext
	} else {
		tc, uc = t.sec(), u.sec()
		if tc == uc {
			tc, uc = int64(t.nsec()), int64(u.nsec())
		}
	}
	switch {
	case tc < uc:
		return -1
	case tc > uc:
		return +1
	}
	return 0
}

// Equal reports whether t and u represent the same time instant.
// Two times can be equal even if they are in different locations.
// For example, 6:00 +0200 and 4:00 UTC are Equal.
// See the documentation on the Time type for the pitfalls of using == with
// Time values; most code should use Equal instead.
func (t Time) Equal(u Time) bool {
	if t.wall&u.wall&hasMonotonic != 0 {
		return t.ext == u.ext
	}
	return t.sec() == u.sec() && t.nsec() == u.nsec()
}

// A Month specifies a month of the year (January = 1, ...).
type Month int

const (
	January Month = 1 + iota
	February
	March
	April
	May
	June
	July
	August
	September
	October
	November
	December
)

// String returns the English name of the month ("January", "February", ...).
func (m Month) String() string {
	if January <= m && m <= December {
		return longMonthNames[m-1]
	}
	buf := make([]byte, 20)
	n := fmtInt(buf, uint64(m))
	return "%!Month(" + string(buf[n:]) + ")"
}

// A Weekday specifies a day of the week (Sunday = 0, ...).
type Weekday int

const (
	Sunday Weekday = iota
	Monday
	Tuesday
	Wednesday
	Thursday
	Friday
	Saturday
)

// String returns the English name of the day ("Sunday", "Monday", ...).
func (d Weekday) String() string {
	if Sunday <= d && d <= Saturday {
		return longDayNames[d]
	}
	buf := make([]byte, 20)
	n := fmtInt(buf, uint64(d))
	return "%!Weekday(" + string(buf[n:]) + ")"
}

const (
	secondsPerMinute = 60
	secondsPerHour   = 60 * secondsPerMinute
	secondsPerDay    = 24 * secondsPerHour
	secondsPerWeek   = 7 * secondsPerDay
	daysPer400Years  = 365*400 + 97
	daysPer100Years  = 365*100 + 24
	daysPer4Years    = 365*4 + 1
)

// absDate is like date but operates on an absolute time.
func absDate(abs uint64, full bool) (year int, month Month, day int, yday int) {
	// Split into time and day.
	d := abs / secondsPerDay

	// Account for 400 year cycles.
	n := d / daysPer400Years
	y := 400 * n
	d -= daysPer400Years * n

	// Cut off 100-year cycles.
	// The last cycle has one extra leap year, so on the last day
	// of that year, day / daysPer100Years will be 4 instead of 3.
	// Cut it back down to 3 by subtracting n>>2.
	n = d / daysPer100Years
	n -= n >> 2
	y += 100 * n
	d -= daysPer100Years * n

	// Cut off 4-year cycles.
	// The last cycle has a missing leap year, which does not
	// affect the computation.
	n = d / daysPer4Years
	y += 4 * n
	d -= daysPer4Years * n

	// Cut off years within a 4-year cycle.
	// The last year is a leap year, so on the last day of that year,
	// day / 365 will be 4 instead of 3. Cut it back down to 3
	// by subtracting n>>2.
	n = d / 365
	n -= n >> 2
	y += n
	d -= 365 * n

	year = int(int64(y) + absoluteZeroYear)
	yday = int(d)

	if !full {
		return
	}

	day = yday
	if isLeap(year) {
		// Leap year
		switch {
		case day > 31+29-1:
			// After leap day; pretend it wasn't there.
			day--
		case day == 31+29-1:
			// Leap day.
			month = February
			day = 29
			return
		}
	}

	// Estimate month on assumption that every month has 31 days.
	// The estimate may be too low by at most one month, so adjust.
	month = Month(day / 31)
	end := int(daysBefore[month+1])
	var begin int
	if day >= end {
		month++
		begin = end
	} else {
		begin = int(daysBefore[month])
	}

	month++ // because January is 1
	day = day - begin + 1
	return
}

// daysBefore[m] counts the number of days in a non-leap year
// before month m begins. There is an entry for m=12, counting
// the number of days before January of next year (365).
var daysBefore = [...]int32{
	0,
	31,
	31 + 28,
	31 + 28 + 31,
	31 + 28 + 31 + 30,
	31 + 28 + 31 + 30 + 31,
	31 + 28 + 31 + 30 + 31 + 30,
	31 + 28 + 31 + 30 + 31 + 30 + 31,
	31 + 28 + 31 + 30 + 31 + 30 + 31 + 31,
	31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30,
	31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31,
	31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30,
	31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + 31,
}

func daysIn(m Month, year int) int {
	if m == February && isLeap(year) {
		return 29
	}
	return int(daysBefore[m] - daysBefore[m-1])
}

// daysSinceEpoch takes a year and returns the number of days from
// the absolute epoch to the start of that year.
// This is basically (year - zeroYear) * 365, but accounting for leap days.
func daysSinceEpoch(year int) uint64 {
	y := uint64(int64(year) - absoluteZeroYear)

	// Add in days from 400-year cycles.
	n := y / 400
	y -= 400 * n
	d := daysPer400Years * n

	// Add in 100-year cycles.
	n = y / 100
	y -= 100 * n
	d += daysPer100Years * n

	// Add in 4-year cycles.
	n = y / 4
	y -= 4 * n
	d += daysPer4Years * n

	// Add in non-leap years.
	n = y
	d += 365 * n

	return d
}

const (
	// The unsigned zero year for internal calculations.
	// Must be 1 mod 400, and times before it will not compute correctly,
	// but otherwise can be changed at will.
	absoluteZeroYear = -292277022399

	// The year of the zero Time.
	// Assumed by the unixToInternal computation below.
	internalYear = 1

	// Offsets to convert between internal and absolute or Unix times.
	absoluteToInternal int64 = (absoluteZeroYear - internalYear) * 365.2425 * secondsPerDay
	internalToAbsolute       = -absoluteToInternal

	unixToInternal int64 = (1969*365 + 1969/4 - 1969/100 + 1969/400) * secondsPerDay
	internalToUnix int64 = -unixToInternal

	wallToInternal int64 = (1884*365 + 1884/4 - 1884/100 + 1884/400) * secondsPerDay
)

// IsZero reports whether t represents the zero time instant,
// January 1, year 1, 00:00:00 UTC.
func (t Time) IsZero() bool {
	return t.sec() == 0 && t.nsec() == 0
}

// abs returns the time t as an absolute time, adjusted by the zone offset.
// It is called when computing a presentation property like Month or Hour.
func (t Time) abs() uint64 {
	l := t.loc
	// Avoid function calls when possible.
	if l == nil || l == &localLoc {
		l = l.get()
	}
	sec := t.unixSec()
	if l != &utcLoc {
		if l.cacheZone != nil && l.cacheStart <= sec && sec < l.cacheEnd {
			sec += int64(l.cacheZone.offset)
		} else {
			_, offset, _, _, _ := l.lookup(sec)
			sec += int64(offset)
		}
	}
	return uint64(sec + (unixToInternal + internalToAbsolute))
}

// locabs is a combination of the Zone and abs methods,
// extracting both return values from a single zone lookup.
func (t Time) locabs() (name string, offset int, abs uint64) {
	l := t.loc
	if l == nil || l == &localLoc {
		l = l.get()
	}
	// Avoid function call if we hit the local time cache.
	sec := t.unixSec()
	if l != &utcLoc {
		if l.cacheZone != nil && l.cacheStart <= sec && sec < l.cacheEnd {
			name = l.cacheZone.name
			offset = l.cacheZone.offset
		} else {
			name, offset, _, _, _ = l.lookup(sec)
		}
		sec += int64(offset)
	} else {
		name = "UTC"
	}
	abs = uint64(sec + (unixToInternal + internalToAbsolute))
	return
}

// Date returns the Time corresponding to
//
//	yyyy-mm-dd hh:mm:ss + nsec nanoseconds
//
// in the appropriate zone for that time in the given location.
//
// The month, day, hour, min, sec, and nsec values may be outside
// their usual ranges and will be normalized during the conversion.
// For example, October 32 converts to November 1.
//
// A daylight savings time transition skips or repeats times.
// For example, in the United States, March 13, 2011 2:15am never occurred,
// while November 6, 2011 1:15am occurred twice. In such cases, the
// choice of time zone, and therefore the time, is not well-defined.
// Date returns a time that is correct in one of the two zones involved
// in the transition, but it does not guarantee which.
//
// Date panics if loc is nil.
func Date(year int, month Month, day, hour, min, sec, nsec int, loc *Location) Time {
	if loc == nil {
		panic("time: missing Location in call to Date")
	}

	// Normalize month, overflowing into year.
	m := int(month) - 1
	year, m = norm(year, m, 12)
	month = Month(m) + 1

	// Normalize nsec, sec, min, hour, overflowing into day.
	sec, nsec = norm(sec, nsec, 1e9)
	min, sec = norm(min, sec, 60)
	hour, min = norm(hour, min, 60)
	day, hour = norm(day, hour, 24)

	// Compute days since the absolute epoch.
	d := daysSinceEpoch(year)

	// Add in days before this month.
	d += uint64(daysBefore[month-1])
	if isLeap(year) && month >= March {
		d++ // February 29
	}

	// Add in days before today.
	d += uint64(day - 1)

	// Add in time elapsed today.
	abs := d * secondsPerDay
	abs += uint64(hour*secondsPerHour + min*secondsPerMinute + sec)

	unix := int64(abs) + (absoluteToInternal + internalToUnix)

	// Look for zone offset for expected time, so we can adjust to UTC.
	// The lookup function expects UTC, so first we pass unix in the
	// hope that it will not be too close to a zone transition,
	// and then adjust if it is.
	_, offset, start, end, _ := loc.lookup(unix)
	if offset != 0 {
		utc := unix - int64(offset)
		// If utc is valid for the time zone we found, then we have the right offset.
		// If not, we get the correct offset by looking up utc in the location.
		if utc < start || utc >= end {
			_, offset, _, _, _ = loc.lookup(utc)
		}
		unix -= int64(offset)
	}

	t := unixTime(unix, int32(nsec))
	t.setLoc(loc)
	return t
}

/* TODO(xsw):
// Year returns the year in which t occurs.
func (t Time) Year() int {
	year, _, _, _ := t.date(false)
	return year
}

// Month returns the month of the year specified by t.
func (t Time) Month() Month {
	_, month, _, _ := t.date(true)
	return month
}

// Day returns the day of the month specified by t.
func (t Time) Day() int {
	_, _, day, _ := t.date(true)
	return day
}
*/

// Weekday returns the day of the week specified by t.
func (t Time) Weekday() Weekday {
	return absWeekday(t.abs())
}

// absWeekday is like Weekday but operates on an absolute time.
func absWeekday(abs uint64) Weekday {
	// January 1 of the absolute year, like January 1 of 2001, was a Monday.
	sec := (abs + uint64(Monday)*secondsPerDay) % secondsPerWeek
	return Weekday(int(sec) / secondsPerDay)
}

// ISOWeek returns the ISO 8601 year and week number in which t occurs.
// Week ranges from 1 to 53. Jan 01 to Jan 03 of year n might belong to
// week 52 or 53 of year n-1, and Dec 29 to Dec 31 might belong to week 1
// of year n+1.
func (t Time) ISOWeek() (year, week int) {
	// According to the rule that the first calendar week of a calendar year is
	// the week including the first Thursday of that year, and that the last one is
	// the week immediately preceding the first calendar week of the next calendar year.
	// See https://www.iso.org/obp/ui#iso:std:iso:8601:-1:ed-1:v1:en:term:3.1.1.23 for details.

	// weeks start with Monday
	// Monday Tuesday Wednesday Thursday Friday Saturday Sunday
	// 1      2       3         4        5      6        7
	// +3     +2      +1        0        -1     -2       -3
	// the offset to Thursday
	abs := t.abs()
	d := Thursday - absWeekday(abs)
	// handle Sunday
	if d == 4 {
		d = -3
	}
	// find the Thursday of the calendar week
	abs += uint64(d) * secondsPerDay
	year, _, _, yday := absDate(abs, false)
	return year, yday/7 + 1
}

// Clock returns the hour, minute, and second within the day specified by t.
func (t Time) Clock() (hour, min, sec int) {
	return absClock(t.abs())
}

// absClock is like clock but operates on an absolute time.
func absClock(abs uint64) (hour, min, sec int) {
	sec = int(abs % secondsPerDay)
	hour = sec / secondsPerHour
	sec -= hour * secondsPerHour
	min = sec / secondsPerMinute
	sec -= min * secondsPerMinute
	return
}

// Hour returns the hour within the day specified by t, in the range [0, 23].
func (t Time) Hour() int {
	return int(t.abs()%secondsPerDay) / secondsPerHour
}

// Minute returns the minute offset within the hour specified by t, in the range [0, 59].
func (t Time) Minute() int {
	return int(t.abs()%secondsPerHour) / secondsPerMinute
}

// Second returns the second offset within the minute specified by t, in the range [0, 59].
func (t Time) Second() int {
	return int(t.abs() % secondsPerMinute)
}

// Nanosecond returns the nanosecond offset within the second specified by t,
// in the range [0, 999999999].
func (t Time) Nanosecond() int {
	return int(t.nsec())
}

// YearDay returns the day of the year specified by t, in the range [1,365] for non-leap years,
// and [1,366] in leap years.
func (t Time) YearDay() int {
	/*
		_, _, _, yday := t.date(false)
		return yday + 1
	*/
	panic("todo: Time.YearDay")
}

func unixTime(sec int64, nsec int32) Time {
	return Time{uint64(nsec), sec + unixToInternal, Local}
}

func isLeap(year int) bool {
	return year%4 == 0 && (year%100 != 0 || year%400 == 0)
}

// norm returns nhi, nlo such that
//
//	hi * base + lo == nhi * base + nlo
//	0 <= nlo < base
func norm(hi, lo, base int) (nhi, nlo int) {
	if lo < 0 {
		n := (-lo-1)/base + 1
		hi -= n
		lo += n * base
	}
	if lo >= base {
		n := lo / base
		hi += n
		lo -= n * base
	}
	return hi, lo
}

// fmtInt formats v into the tail of buf.
// It returns the index where the output begins.
func fmtInt(buf []byte, v uint64) int {
	w := len(buf)
	if v == 0 {
		w--
		buf[w] = '0'
	} else {
		for v > 0 {
			w--
			buf[w] = byte(v%10) + '0'
			v /= 10
		}
	}
	return w
}

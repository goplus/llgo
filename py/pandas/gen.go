package pandas

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.pandas"

// Detect missing values for an array-like object.
//
// This function takes a scalar or array-like object and indicates
// whether values are missing (“NaN“ in numeric arrays, “None“ or “NaN“
// in object arrays, “NaT“ in datetimelike).
//
// Parameters
// ----------
// obj : scalar or array-like
//
//	Object to check for null or missing values.
//
// Returns
// -------
// bool or array-like of bool
//
//	For scalar input, returns a scalar boolean.
//	For array input, returns an array of boolean indicating whether each
//	corresponding element is missing.
//
// See Also
// --------
// notna : Boolean inverse of pandas.isna.
// Series.isna : Detect missing values in a Series.
// DataFrame.isna : Detect missing values in a DataFrame.
// Index.isna : Detect missing values in an Index.
//
// Examples
// --------
// Scalar arguments (including strings) result in a scalar boolean.
//
// >>> pd.isna('dog')
// False
//
// >>> pd.isna(pd.NA)
// True
//
// >>> pd.isna(np.nan)
// True
//
// ndarrays result in an ndarray of booleans.
//
// >>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
// >>> array
// array([[ 1., nan,  3.],
//
//	[ 4.,  5., nan]])
//
// >>> pd.isna(array)
// array([[False,  True, False],
//
//	[False, False,  True]])
//
// For indexes, an ndarray of booleans is returned.
//
// >>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
// ...                           "2017-07-08"])
// >>> index
// DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
//
//	dtype='datetime64[ns]', freq=None)
//
// >>> pd.isna(index)
// array([False, False,  True, False])
//
// For Series and DataFrame, the same type is returned, containing booleans.
//
// >>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
// >>> df
//
//	0     1    2
//
// 0  ant   bee  cat
// 1  dog  None  fly
// >>> pd.isna(df)
//
//	0      1      2
//
// 0  False  False  False
// 1  False   True  False
//
// >>> pd.isna(df[1])
// 0    False
// 1     True
// Name: 1, dtype: bool
//
//go:linkname Isna py.isna
func Isna(obj *py.Object) *py.Object

// Detect missing values for an array-like object.
//
// This function takes a scalar or array-like object and indicates
// whether values are missing (“NaN“ in numeric arrays, “None“ or “NaN“
// in object arrays, “NaT“ in datetimelike).
//
// Parameters
// ----------
// obj : scalar or array-like
//
//	Object to check for null or missing values.
//
// Returns
// -------
// bool or array-like of bool
//
//	For scalar input, returns a scalar boolean.
//	For array input, returns an array of boolean indicating whether each
//	corresponding element is missing.
//
// See Also
// --------
// notna : Boolean inverse of pandas.isna.
// Series.isna : Detect missing values in a Series.
// DataFrame.isna : Detect missing values in a DataFrame.
// Index.isna : Detect missing values in an Index.
//
// Examples
// --------
// Scalar arguments (including strings) result in a scalar boolean.
//
// >>> pd.isna('dog')
// False
//
// >>> pd.isna(pd.NA)
// True
//
// >>> pd.isna(np.nan)
// True
//
// ndarrays result in an ndarray of booleans.
//
// >>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
// >>> array
// array([[ 1., nan,  3.],
//
//	[ 4.,  5., nan]])
//
// >>> pd.isna(array)
// array([[False,  True, False],
//
//	[False, False,  True]])
//
// For indexes, an ndarray of booleans is returned.
//
// >>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
// ...                           "2017-07-08"])
// >>> index
// DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
//
//	dtype='datetime64[ns]', freq=None)
//
// >>> pd.isna(index)
// array([False, False,  True, False])
//
// For Series and DataFrame, the same type is returned, containing booleans.
//
// >>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
// >>> df
//
//	0     1    2
//
// 0  ant   bee  cat
// 1  dog  None  fly
// >>> pd.isna(df)
//
//	0      1      2
//
// 0  False  False  False
// 1  False   True  False
//
// >>> pd.isna(df[1])
// 0    False
// 1     True
// Name: 1, dtype: bool
//
//go:linkname Isnull py.isnull
func Isnull(obj *py.Object) *py.Object

// Detect non-missing values for an array-like object.
//
// This function takes a scalar or array-like object and indicates
// whether values are valid (not missing, which is “NaN“ in numeric
// arrays, “None“ or “NaN“ in object arrays, “NaT“ in datetimelike).
//
// Parameters
// ----------
// obj : array-like or object value
//
//	Object to check for *not* null or *non*-missing values.
//
// Returns
// -------
// bool or array-like of bool
//
//	For scalar input, returns a scalar boolean.
//	For array input, returns an array of boolean indicating whether each
//	corresponding element is valid.
//
// See Also
// --------
// isna : Boolean inverse of pandas.notna.
// Series.notna : Detect valid values in a Series.
// DataFrame.notna : Detect valid values in a DataFrame.
// Index.notna : Detect valid values in an Index.
//
// Examples
// --------
// Scalar arguments (including strings) result in a scalar boolean.
//
// >>> pd.notna('dog')
// True
//
// >>> pd.notna(pd.NA)
// False
//
// >>> pd.notna(np.nan)
// False
//
// ndarrays result in an ndarray of booleans.
//
// >>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
// >>> array
// array([[ 1., nan,  3.],
//
//	[ 4.,  5., nan]])
//
// >>> pd.notna(array)
// array([[ True, False,  True],
//
//	[ True,  True, False]])
//
// For indexes, an ndarray of booleans is returned.
//
// >>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
// ...                          "2017-07-08"])
// >>> index
// DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
//
//	dtype='datetime64[ns]', freq=None)
//
// >>> pd.notna(index)
// array([ True,  True, False,  True])
//
// For Series and DataFrame, the same type is returned, containing booleans.
//
// >>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
// >>> df
//
//	0     1    2
//
// 0  ant   bee  cat
// 1  dog  None  fly
// >>> pd.notna(df)
//
//	0      1     2
//
// 0  True   True  True
// 1  True  False  True
//
// >>> pd.notna(df[1])
// 0     True
// 1    False
// Name: 1, dtype: bool
//
//go:linkname Notna py.notna
func Notna(obj *py.Object) *py.Object

// Detect non-missing values for an array-like object.
//
// This function takes a scalar or array-like object and indicates
// whether values are valid (not missing, which is “NaN“ in numeric
// arrays, “None“ or “NaN“ in object arrays, “NaT“ in datetimelike).
//
// Parameters
// ----------
// obj : array-like or object value
//
//	Object to check for *not* null or *non*-missing values.
//
// Returns
// -------
// bool or array-like of bool
//
//	For scalar input, returns a scalar boolean.
//	For array input, returns an array of boolean indicating whether each
//	corresponding element is valid.
//
// See Also
// --------
// isna : Boolean inverse of pandas.notna.
// Series.notna : Detect valid values in a Series.
// DataFrame.notna : Detect valid values in a DataFrame.
// Index.notna : Detect valid values in an Index.
//
// Examples
// --------
// Scalar arguments (including strings) result in a scalar boolean.
//
// >>> pd.notna('dog')
// True
//
// >>> pd.notna(pd.NA)
// False
//
// >>> pd.notna(np.nan)
// False
//
// ndarrays result in an ndarray of booleans.
//
// >>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
// >>> array
// array([[ 1., nan,  3.],
//
//	[ 4.,  5., nan]])
//
// >>> pd.notna(array)
// array([[ True, False,  True],
//
//	[ True,  True, False]])
//
// For indexes, an ndarray of booleans is returned.
//
// >>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
// ...                          "2017-07-08"])
// >>> index
// DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
//
//	dtype='datetime64[ns]', freq=None)
//
// >>> pd.notna(index)
// array([ True,  True, False,  True])
//
// For Series and DataFrame, the same type is returned, containing booleans.
//
// >>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
// >>> df
//
//	0     1    2
//
// 0  ant   bee  cat
// 1  dog  None  fly
// >>> pd.notna(df)
//
//	0      1     2
//
// 0  True   True  True
// 1  True  False  True
//
// >>> pd.notna(df[1])
// 0     True
// 1    False
// Name: 1, dtype: bool
//
//go:linkname Notnull py.notnull
func Notnull(obj *py.Object) *py.Object

// Return a fixed frequency PeriodIndex.
//
// The day (calendar) is the default frequency.
//
// Parameters
// ----------
// start : str, datetime, date, pandas.Timestamp, or period-like, default None
//
//	Left bound for generating periods.
//
// end : str, datetime, date, pandas.Timestamp, or period-like, default None
//
//	Right bound for generating periods.
//
// periods : int, default None
//
//	Number of periods to generate.
//
// freq : str or DateOffset, optional
//
//	Frequency alias. By default the freq is taken from `start` or `end`
//	if those are Period objects. Otherwise, the default is ``"D"`` for
//	daily frequency.
//
// name : str, default None
//
//	Name of the resulting PeriodIndex.
//
// Returns
// -------
// PeriodIndex
//
// Notes
// -----
// Of the three parameters: “start“, “end“, and “periods“, exactly two
// must be specified.
//
// To learn more about the frequency strings, please see `this link
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
//
// Examples
// --------
// >>> pd.period_range(start='2017-01-01', end='2018-01-01', freq='M')
// PeriodIndex(['2017-01', '2017-02', '2017-03', '2017-04', '2017-05', '2017-06',
//
//	 '2017-07', '2017-08', '2017-09', '2017-10', '2017-11', '2017-12',
//	 '2018-01'],
//	dtype='period[M]')
//
// If “start“ or “end“ are “Period“ objects, they will be used as anchor
// endpoints for a “PeriodIndex“ with frequency matching that of the
// “period_range“ constructor.
//
// >>> pd.period_range(start=pd.Period('2017Q1', freq='Q'),
// ...                 end=pd.Period('2017Q2', freq='Q'), freq='M')
// PeriodIndex(['2017-03', '2017-04', '2017-05', '2017-06'],
//
//	dtype='period[M]')
//
//go:linkname PeriodRange py.period_range
func PeriodRange(start *py.Object, end *py.Object, periods *py.Object, freq *py.Object, name *py.Object) *py.Object

// Return a fixed frequency TimedeltaIndex with day as the default.
//
// Parameters
// ----------
// start : str or timedelta-like, default None
//
//	Left bound for generating timedeltas.
//
// end : str or timedelta-like, default None
//
//	Right bound for generating timedeltas.
//
// periods : int, default None
//
//	Number of periods to generate.
//
// freq : str, Timedelta, datetime.timedelta, or DateOffset, default 'D'
//
//	Frequency strings can have multiples, e.g. '5h'.
//
// name : str, default None
//
//	Name of the resulting TimedeltaIndex.
//
// closed : str, default None
//
//	Make the interval closed with respect to the given frequency to
//	the 'left', 'right', or both sides (None).
//
// unit : str, default None
//
//	Specify the desired resolution of the result.
//
//	.. versionadded:: 2.0.0
//
// Returns
// -------
// TimedeltaIndex
//
// Notes
// -----
// Of the four parameters “start“, “end“, “periods“, and “freq“,
// exactly three must be specified. If “freq“ is omitted, the resulting
// “TimedeltaIndex“ will have “periods“ linearly spaced elements between
// “start“ and “end“ (closed on both sides).
//
// To learn more about the frequency strings, please see `this link
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
//
// Examples
// --------
// >>> pd.timedelta_range(start='1 day', periods=4)
// TimedeltaIndex(['1 days', '2 days', '3 days', '4 days'],
//
//	dtype='timedelta64[ns]', freq='D')
//
// The “closed“ parameter specifies which endpoint is included.  The default
// behavior is to include both endpoints.
//
// >>> pd.timedelta_range(start='1 day', periods=4, closed='right')
// TimedeltaIndex(['2 days', '3 days', '4 days'],
//
//	dtype='timedelta64[ns]', freq='D')
//
// The “freq“ parameter specifies the frequency of the TimedeltaIndex.
// Only fixed frequencies can be passed, non-fixed frequencies such as
// 'M' (month end) will raise.
//
// >>> pd.timedelta_range(start='1 day', end='2 days', freq='6h')
// TimedeltaIndex(['1 days 00:00:00', '1 days 06:00:00', '1 days 12:00:00',
//
//	 '1 days 18:00:00', '2 days 00:00:00'],
//	dtype='timedelta64[ns]', freq='6h')
//
// Specify “start“, “end“, and “periods“; the frequency is generated
// automatically (linearly spaced).
//
// >>> pd.timedelta_range(start='1 day', end='5 days', periods=4)
// TimedeltaIndex(['1 days 00:00:00', '2 days 08:00:00', '3 days 16:00:00',
//
//	 '5 days 00:00:00'],
//	dtype='timedelta64[ns]', freq=None)
//
// **Specify a unit**
//
// >>> pd.timedelta_range("1 Day", periods=3, freq="100000D", unit="s")
// TimedeltaIndex(['1 days', '100001 days', '200001 days'],
//
//	dtype='timedelta64[s]', freq='100000D')
//
//go:linkname TimedeltaRange py.timedelta_range
func TimedeltaRange(start *py.Object, end *py.Object, periods *py.Object, freq *py.Object, name *py.Object, closed *py.Object) *py.Object

// Return a fixed frequency DatetimeIndex.
//
// Returns the range of equally spaced time points (where the difference between any
// two adjacent points is specified by the given frequency) such that they all
// satisfy `start <[=] x <[=] end`, where the first one and the last one are, resp.,
// the first and last time points in that range that fall on the boundary of “freq“
// (if given as a frequency string) or that are valid for “freq“ (if given as a
// :class:`pandas.tseries.offsets.DateOffset`). (If exactly one of “start“,
// “end“, or “freq“ is *not* specified, this missing parameter can be computed
// given “periods“, the number of timesteps in the range. See the note below.)
//
// Parameters
// ----------
// start : str or datetime-like, optional
//
//	Left bound for generating dates.
//
// end : str or datetime-like, optional
//
//	Right bound for generating dates.
//
// periods : int, optional
//
//	Number of periods to generate.
//
// freq : str, Timedelta, datetime.timedelta, or DateOffset, default 'D'
//
//	Frequency strings can have multiples, e.g. '5h'. See
//	:ref:`here <timeseries.offset_aliases>` for a list of
//	frequency aliases.
//
// tz : str or tzinfo, optional
//
//	Time zone name for returning localized DatetimeIndex, for example
//	'Asia/Hong_Kong'. By default, the resulting DatetimeIndex is
//	timezone-naive unless timezone-aware datetime-likes are passed.
//
// normalize : bool, default False
//
//	Normalize start/end dates to midnight before generating date range.
//
// name : str, default None
//
//	Name of the resulting DatetimeIndex.
//
// inclusive : {"both", "neither", "left", "right"}, default "both"
//
//	Include boundaries; Whether to set each bound as closed or open.
//
//	.. versionadded:: 1.4.0
//
// unit : str, default None
//
//	Specify the desired resolution of the result.
//
//	.. versionadded:: 2.0.0
//
// **kwargs
//
//	For compatibility. Has no effect on the result.
//
// Returns
// -------
// DatetimeIndex
//
// See Also
// --------
// DatetimeIndex : An immutable container for datetimes.
// timedelta_range : Return a fixed frequency TimedeltaIndex.
// period_range : Return a fixed frequency PeriodIndex.
// interval_range : Return a fixed frequency IntervalIndex.
//
// Notes
// -----
// Of the four parameters “start“, “end“, “periods“, and “freq“,
// exactly three must be specified. If “freq“ is omitted, the resulting
// “DatetimeIndex“ will have “periods“ linearly spaced elements between
// “start“ and “end“ (closed on both sides).
//
// To learn more about the frequency strings, please see `this link
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
//
// Examples
// --------
// **Specifying the values**
//
// The next four examples generate the same `DatetimeIndex`, but vary
// the combination of `start`, `end` and `periods`.
//
// Specify `start` and `end`, with the default daily frequency.
//
// >>> pd.date_range(start='1/1/2018', end='1/08/2018')
// DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
//
//	 '2018-01-05', '2018-01-06', '2018-01-07', '2018-01-08'],
//	dtype='datetime64[ns]', freq='D')
//
// Specify timezone-aware `start` and `end`, with the default daily frequency.
//
// >>> pd.date_range(
// ...     start=pd.to_datetime("1/1/2018").tz_localize("Europe/Berlin"),
// ...     end=pd.to_datetime("1/08/2018").tz_localize("Europe/Berlin"),
// ... )
// DatetimeIndex(['2018-01-01 00:00:00+01:00', '2018-01-02 00:00:00+01:00',
//
//	 '2018-01-03 00:00:00+01:00', '2018-01-04 00:00:00+01:00',
//	 '2018-01-05 00:00:00+01:00', '2018-01-06 00:00:00+01:00',
//	 '2018-01-07 00:00:00+01:00', '2018-01-08 00:00:00+01:00'],
//	dtype='datetime64[ns, Europe/Berlin]', freq='D')
//
// Specify `start` and `periods`, the number of periods (days).
//
// >>> pd.date_range(start='1/1/2018', periods=8)
// DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
//
//	 '2018-01-05', '2018-01-06', '2018-01-07', '2018-01-08'],
//	dtype='datetime64[ns]', freq='D')
//
// Specify `end` and `periods`, the number of periods (days).
//
// >>> pd.date_range(end='1/1/2018', periods=8)
// DatetimeIndex(['2017-12-25', '2017-12-26', '2017-12-27', '2017-12-28',
//
//	 '2017-12-29', '2017-12-30', '2017-12-31', '2018-01-01'],
//	dtype='datetime64[ns]', freq='D')
//
// Specify `start`, `end`, and `periods`; the frequency is generated
// automatically (linearly spaced).
//
// >>> pd.date_range(start='2018-04-24', end='2018-04-27', periods=3)
// DatetimeIndex(['2018-04-24 00:00:00', '2018-04-25 12:00:00',
//
//	 '2018-04-27 00:00:00'],
//	dtype='datetime64[ns]', freq=None)
//
// **Other Parameters**
//
// Changed the `freq` (frequency) to “'ME'“ (month end frequency).
//
// >>> pd.date_range(start='1/1/2018', periods=5, freq='ME')
// DatetimeIndex(['2018-01-31', '2018-02-28', '2018-03-31', '2018-04-30',
//
//	 '2018-05-31'],
//	dtype='datetime64[ns]', freq='ME')
//
// # Multiples are allowed
//
// >>> pd.date_range(start='1/1/2018', periods=5, freq='3ME')
// DatetimeIndex(['2018-01-31', '2018-04-30', '2018-07-31', '2018-10-31',
//
//	 '2019-01-31'],
//	dtype='datetime64[ns]', freq='3ME')
//
// `freq` can also be specified as an Offset object.
//
// >>> pd.date_range(start='1/1/2018', periods=5, freq=pd.offsets.MonthEnd(3))
// DatetimeIndex(['2018-01-31', '2018-04-30', '2018-07-31', '2018-10-31',
//
//	 '2019-01-31'],
//	dtype='datetime64[ns]', freq='3ME')
//
// Specify `tz` to set the timezone.
//
// >>> pd.date_range(start='1/1/2018', periods=5, tz='Asia/Tokyo')
// DatetimeIndex(['2018-01-01 00:00:00+09:00', '2018-01-02 00:00:00+09:00',
//
//	 '2018-01-03 00:00:00+09:00', '2018-01-04 00:00:00+09:00',
//	 '2018-01-05 00:00:00+09:00'],
//	dtype='datetime64[ns, Asia/Tokyo]', freq='D')
//
// `inclusive` controls whether to include `start` and `end` that are on the
// boundary. The default, "both", includes boundary points on either end.
//
// >>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive="both")
// DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03', '2017-01-04'],
//
//	dtype='datetime64[ns]', freq='D')
//
// Use “inclusive='left'“ to exclude `end` if it falls on the boundary.
//
// >>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive='left')
// DatetimeIndex(['2017-01-01', '2017-01-02', '2017-01-03'],
//
//	dtype='datetime64[ns]', freq='D')
//
// Use “inclusive='right'“ to exclude `start` if it falls on the boundary, and
// similarly “inclusive='neither'“ will exclude both `start` and `end`.
//
// >>> pd.date_range(start='2017-01-01', end='2017-01-04', inclusive='right')
// DatetimeIndex(['2017-01-02', '2017-01-03', '2017-01-04'],
//
//	dtype='datetime64[ns]', freq='D')
//
// **Specify a unit**
//
// >>> pd.date_range(start="2017-01-01", periods=10, freq="100YS", unit="s")
// DatetimeIndex(['2017-01-01', '2117-01-01', '2217-01-01', '2317-01-01',
//
//	 '2417-01-01', '2517-01-01', '2617-01-01', '2717-01-01',
//	 '2817-01-01', '2917-01-01'],
//	dtype='datetime64[s]', freq='100YS-JAN')
//
//go:linkname DateRange py.date_range
func DateRange(start *py.Object, end *py.Object, periods *py.Object, freq *py.Object, tz *py.Object, normalize *py.Object, name *py.Object, inclusive *py.Object) *py.Object

// Return a fixed frequency DatetimeIndex with business day as the default.
//
// Parameters
// ----------
// start : str or datetime-like, default None
//
//	Left bound for generating dates.
//
// end : str or datetime-like, default None
//
//	Right bound for generating dates.
//
// periods : int, default None
//
//	Number of periods to generate.
//
// freq : str, Timedelta, datetime.timedelta, or DateOffset, default 'B'
//
//	Frequency strings can have multiples, e.g. '5h'. The default is
//	business daily ('B').
//
// tz : str or None
//
//	Time zone name for returning localized DatetimeIndex, for example
//	Asia/Beijing.
//
// normalize : bool, default False
//
//	Normalize start/end dates to midnight before generating date range.
//
// name : str, default None
//
//	Name of the resulting DatetimeIndex.
//
// weekmask : str or None, default None
//
//	Weekmask of valid business days, passed to ``numpy.busdaycalendar``,
//	only used when custom frequency strings are passed.  The default
//	value None is equivalent to 'Mon Tue Wed Thu Fri'.
//
// holidays : list-like or None, default None
//
//	Dates to exclude from the set of valid business days, passed to
//	``numpy.busdaycalendar``, only used when custom frequency strings
//	are passed.
//
// inclusive : {"both", "neither", "left", "right"}, default "both"
//
//	Include boundaries; Whether to set each bound as closed or open.
//
//	.. versionadded:: 1.4.0
//
// **kwargs
//
//	For compatibility. Has no effect on the result.
//
// Returns
// -------
// DatetimeIndex
//
// Notes
// -----
// Of the four parameters: “start“, “end“, “periods“, and “freq“,
// exactly three must be specified.  Specifying “freq“ is a requirement
// for “bdate_range“.  Use “date_range“ if specifying “freq“ is not
// desired.
//
// To learn more about the frequency strings, please see `this link
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
//
// Examples
// --------
// Note how the two weekend days are skipped in the result.
//
// >>> pd.bdate_range(start='1/1/2018', end='1/08/2018')
// DatetimeIndex(['2018-01-01', '2018-01-02', '2018-01-03', '2018-01-04',
//
//	 '2018-01-05', '2018-01-08'],
//	dtype='datetime64[ns]', freq='B')
//
//go:linkname BdateRange py.bdate_range
func BdateRange(start *py.Object, end *py.Object, periods *py.Object, freq *py.Object, tz *py.Object, normalize *py.Object, name *py.Object, weekmask *py.Object, holidays *py.Object, inclusive *py.Object) *py.Object

// Return a fixed frequency IntervalIndex.
//
// Parameters
// ----------
// start : numeric or datetime-like, default None
//
//	Left bound for generating intervals.
//
// end : numeric or datetime-like, default None
//
//	Right bound for generating intervals.
//
// periods : int, default None
//
//	Number of periods to generate.
//
// freq : numeric, str, Timedelta, datetime.timedelta, or DateOffset, default None
//
//	The length of each interval. Must be consistent with the type of start
//	and end, e.g. 2 for numeric, or '5H' for datetime-like.  Default is 1
//	for numeric and 'D' for datetime-like.
//
// name : str, default None
//
//	Name of the resulting IntervalIndex.
//
// closed : {'left', 'right', 'both', 'neither'}, default 'right'
//
//	Whether the intervals are closed on the left-side, right-side, both
//	or neither.
//
// Returns
// -------
// IntervalIndex
//
// See Also
// --------
// IntervalIndex : An Index of intervals that are all closed on the same side.
//
// Notes
// -----
// Of the four parameters “start“, “end“, “periods“, and “freq“,
// exactly three must be specified. If “freq“ is omitted, the resulting
// “IntervalIndex“ will have “periods“ linearly spaced elements between
// “start“ and “end“, inclusively.
//
// To learn more about datetime-like frequency strings, please see `this link
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html#offset-aliases>`__.
//
// Examples
// --------
// Numeric “start“ and  “end“ is supported.
//
// >>> pd.interval_range(start=0, end=5)
// IntervalIndex([(0, 1], (1, 2], (2, 3], (3, 4], (4, 5]],
//
//	dtype='interval[int64, right]')
//
// Additionally, datetime-like input is also supported.
//
// >>> pd.interval_range(start=pd.Timestamp('2017-01-01'),
// ...                   end=pd.Timestamp('2017-01-04'))
// IntervalIndex([(2017-01-01 00:00:00, 2017-01-02 00:00:00],
//
//	 (2017-01-02 00:00:00, 2017-01-03 00:00:00],
//	 (2017-01-03 00:00:00, 2017-01-04 00:00:00]],
//	dtype='interval[datetime64[ns], right]')
//
// The “freq“ parameter specifies the frequency between the left and right.
// endpoints of the individual intervals within the “IntervalIndex“.  For
// numeric “start“ and “end“, the frequency must also be numeric.
//
// >>> pd.interval_range(start=0, periods=4, freq=1.5)
// IntervalIndex([(0.0, 1.5], (1.5, 3.0], (3.0, 4.5], (4.5, 6.0]],
//
//	dtype='interval[float64, right]')
//
// Similarly, for datetime-like “start“ and “end“, the frequency must be
// convertible to a DateOffset.
//
// >>> pd.interval_range(start=pd.Timestamp('2017-01-01'),
// ...                   periods=3, freq='MS')
// IntervalIndex([(2017-01-01 00:00:00, 2017-02-01 00:00:00],
//
//	 (2017-02-01 00:00:00, 2017-03-01 00:00:00],
//	 (2017-03-01 00:00:00, 2017-04-01 00:00:00]],
//	dtype='interval[datetime64[ns], right]')
//
// Specify “start“, “end“, and “periods“; the frequency is generated
// automatically (linearly spaced).
//
// >>> pd.interval_range(start=0, end=6, periods=4)
// IntervalIndex([(0.0, 1.5], (1.5, 3.0], (3.0, 4.5], (4.5, 6.0]],
//
//	dtype='interval[float64, right]')
//
// The “closed“ parameter specifies which endpoints of the individual
// intervals within the “IntervalIndex“ are closed.
//
// >>> pd.interval_range(end=5, periods=4, closed='both')
// IntervalIndex([[1, 2], [2, 3], [3, 4], [4, 5]],
//
//	dtype='interval[int64, both]')
//
//go:linkname IntervalRange py.interval_range
func IntervalRange(start *py.Object, end *py.Object, periods *py.Object, freq *py.Object, name *py.Object, closed *py.Object) *py.Object

// Convert argument to a numeric type.
//
// The default return dtype is `float64` or `int64`
// depending on the data supplied. Use the `downcast` parameter
// to obtain other dtypes.
//
// Please note that precision loss may occur if really large numbers
// are passed in. Due to the internal limitations of `ndarray`, if
// numbers smaller than `-9223372036854775808` (np.iinfo(np.int64).min)
// or larger than `18446744073709551615` (np.iinfo(np.uint64).max) are
// passed in, it is very likely they will be converted to float so that
// they can be stored in an `ndarray`. These warnings apply similarly to
// `Series` since it internally leverages `ndarray`.
//
// Parameters
// ----------
// arg : scalar, list, tuple, 1-d array, or Series
//
//	Argument to be converted.
//
// errors : {'ignore', 'raise', 'coerce'}, default 'raise'
//
//   - If 'raise', then invalid parsing will raise an exception.
//
//   - If 'coerce', then invalid parsing will be set as NaN.
//
//   - If 'ignore', then invalid parsing will return the input.
//
//     .. versionchanged:: 2.2
//
//     "ignore" is deprecated. Catch exceptions explicitly instead.
//
// downcast : str, default None
//
//	Can be 'integer', 'signed', 'unsigned', or 'float'.
//	If not None, and if the data has been successfully cast to a
//	numerical dtype (or if the data was numeric to begin with),
//	downcast that resulting data to the smallest numerical dtype
//	possible according to the following rules:
//
//	- 'integer' or 'signed': smallest signed int dtype (min.: np.int8)
//	- 'unsigned': smallest unsigned int dtype (min.: np.uint8)
//	- 'float': smallest float dtype (min.: np.float32)
//
//	As this behaviour is separate from the core conversion to
//	numeric values, any errors raised during the downcasting
//	will be surfaced regardless of the value of the 'errors' input.
//
//	In addition, downcasting will only occur if the size
//	of the resulting data's dtype is strictly larger than
//	the dtype it is to be cast to, so if none of the dtypes
//	checked satisfy that specification, no downcasting will be
//	performed on the data.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// ret
//
//	Numeric if parsing succeeded.
//	Return type depends on input.  Series if Series, otherwise ndarray.
//
// See Also
// --------
// DataFrame.astype : Cast argument to a specified dtype.
// to_datetime : Convert argument to datetime.
// to_timedelta : Convert argument to timedelta.
// numpy.ndarray.astype : Cast a numpy array to a specified type.
// DataFrame.convert_dtypes : Convert dtypes.
//
// Examples
// --------
// Take separate series and convert to numeric, coercing when told to
//
// >>> s = pd.Series(['1.0', '2', -3])
// >>> pd.to_numeric(s)
// 0    1.0
// 1    2.0
// 2   -3.0
// dtype: float64
// >>> pd.to_numeric(s, downcast='float')
// 0    1.0
// 1    2.0
// 2   -3.0
// dtype: float32
// >>> pd.to_numeric(s, downcast='signed')
// 0    1
// 1    2
// 2   -3
// dtype: int8
// >>> s = pd.Series(['apple', '1.0', '2', -3])
// >>> pd.to_numeric(s, errors='coerce')
// 0    NaN
// 1    1.0
// 2    2.0
// 3   -3.0
// dtype: float64
//
// Downcasting of nullable integer and floating dtypes is supported:
//
// >>> s = pd.Series([1, 2, 3], dtype="Int64")
// >>> pd.to_numeric(s, downcast="integer")
// 0    1
// 1    2
// 2    3
// dtype: Int8
// >>> s = pd.Series([1.0, 2.1, 3.0], dtype="Float64")
// >>> pd.to_numeric(s, downcast="float")
// 0    1.0
// 1    2.1
// 2    3.0
// dtype: Float32
//
//go:linkname ToNumeric py.to_numeric
func ToNumeric(arg *py.Object, errors *py.Object, downcast *py.Object, dtypeBackend *py.Object) *py.Object

// Convert argument to datetime.
//
// This function converts a scalar, array-like, :class:`Series` or
// :class:`DataFrame`/dict-like to a pandas datetime object.
//
// Parameters
// ----------
// arg : int, float, str, datetime, list, tuple, 1-d array, Series, DataFrame/dict-like
//
//	The object to convert to a datetime. If a :class:`DataFrame` is provided, the
//	method expects minimally the following columns: :const:`"year"`,
//	:const:`"month"`, :const:`"day"`. The column "year"
//	must be specified in 4-digit format.
//
// errors : {'ignore', 'raise', 'coerce'}, default 'raise'
//   - If :const:`'raise'`, then invalid parsing will raise an exception.
//   - If :const:`'coerce'`, then invalid parsing will be set as :const:`NaT`.
//   - If :const:`'ignore'`, then invalid parsing will return the input.
//
// dayfirst : bool, default False
//
//	Specify a date parse order if `arg` is str or is list-like.
//	If :const:`True`, parses dates with the day first, e.g. :const:`"10/11/12"`
//	is parsed as :const:`2012-11-10`.
//
//	.. warning::
//
//	    ``dayfirst=True`` is not strict, but will prefer to parse
//	    with day first.
//
// yearfirst : bool, default False
//
//	Specify a date parse order if `arg` is str or is list-like.
//
//	- If :const:`True` parses dates with the year first, e.g.
//	  :const:`"10/11/12"` is parsed as :const:`2010-11-12`.
//	- If both `dayfirst` and `yearfirst` are :const:`True`, `yearfirst` is
//	  preceded (same as :mod:`dateutil`).
//
//	.. warning::
//
//	    ``yearfirst=True`` is not strict, but will prefer to parse
//	    with year first.
//
// utc : bool, default False
//
//	Control timezone-related parsing, localization and conversion.
//
//	- If :const:`True`, the function *always* returns a timezone-aware
//	  UTC-localized :class:`Timestamp`, :class:`Series` or
//	  :class:`DatetimeIndex`. To do this, timezone-naive inputs are
//	  *localized* as UTC, while timezone-aware inputs are *converted* to UTC.
//
//	- If :const:`False` (default), inputs will not be coerced to UTC.
//	  Timezone-naive inputs will remain naive, while timezone-aware ones
//	  will keep their time offsets. Limitations exist for mixed
//	  offsets (typically, daylight savings), see :ref:`Examples
//	  <to_datetime_tz_examples>` section for details.
//
//	.. warning::
//
//	    In a future version of pandas, parsing datetimes with mixed time
//	    zones will raise an error unless `utc=True`.
//	    Please specify `utc=True` to opt in to the new behaviour
//	    and silence this warning. To create a `Series` with mixed offsets and
//	    `object` dtype, please use `apply` and `datetime.datetime.strptime`.
//
//	See also: pandas general documentation about `timezone conversion and
//	localization
//	<https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
//	#time-zone-handling>`_.
//
// format : str, default None
//
//	The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. See
//	`strftime documentation
//	<https://docs.python.org/3/library/datetime.html
//	#strftime-and-strptime-behavior>`_ for more information on choices, though
//	note that :const:`"%f"` will parse all the way up to nanoseconds.
//	You can also pass:
//
//	- "ISO8601", to parse any `ISO8601 <https://en.wikipedia.org/wiki/ISO_8601>`_
//	  time string (not necessarily in exactly the same format);
//	- "mixed", to infer the format for each element individually. This is risky,
//	  and you should probably use it along with `dayfirst`.
//
//	.. note::
//
//	    If a :class:`DataFrame` is passed, then `format` has no effect.
//
// exact : bool, default True
//
//	Control how `format` is used:
//
//	- If :const:`True`, require an exact `format` match.
//	- If :const:`False`, allow the `format` to match anywhere in the target
//	  string.
//
//	Cannot be used alongside ``format='ISO8601'`` or ``format='mixed'``.
//
// unit : str, default 'ns'
//
//	The unit of the arg (D,s,ms,us,ns) denote the unit, which is an
//	integer or float number. This will be based off the origin.
//	Example, with ``unit='ms'`` and ``origin='unix'``, this would calculate
//	the number of milliseconds to the unix epoch start.
//
// infer_datetime_format : bool, default False
//
//	If :const:`True` and no `format` is given, attempt to infer the format
//	of the datetime strings based on the first non-NaN element,
//	and if it can be inferred, switch to a faster method of parsing them.
//	In some cases this can increase the parsing speed by ~5-10x.
//
//	.. deprecated:: 2.0.0
//	    A strict version of this argument is now the default, passing it has
//	    no effect.
//
// origin : scalar, default 'unix'
//
//	Define the reference date. The numeric values would be parsed as number
//	of units (defined by `unit`) since this reference date.
//
//	- If :const:`'unix'` (or POSIX) time; origin is set to 1970-01-01.
//	- If :const:`'julian'`, unit must be :const:`'D'`, and origin is set to
//	  beginning of Julian Calendar. Julian day number :const:`0` is assigned
//	  to the day starting at noon on January 1, 4713 BC.
//	- If Timestamp convertible (Timestamp, dt.datetime, np.datetimt64 or date
//	  string), origin is set to Timestamp identified by origin.
//	- If a float or integer, origin is the difference
//	  (in units determined by the ``unit`` argument) relative to 1970-01-01.
//
// cache : bool, default True
//
//	If :const:`True`, use a cache of unique, converted dates to apply the
//	datetime conversion. May produce significant speed-up when parsing
//	duplicate date strings, especially ones with timezone offsets. The cache
//	is only used when there are at least 50 values. The presence of
//	out-of-bounds values will render the cache unusable and may slow down
//	parsing.
//
// Returns
// -------
// datetime
//
//	If parsing succeeded.
//	Return type depends on input (types in parenthesis correspond to
//	fallback in case of unsuccessful timezone or out-of-range timestamp
//	parsing):
//
//	- scalar: :class:`Timestamp` (or :class:`datetime.datetime`)
//	- array-like: :class:`DatetimeIndex` (or :class:`Series` with
//	  :class:`object` dtype containing :class:`datetime.datetime`)
//	- Series: :class:`Series` of :class:`datetime64` dtype (or
//	  :class:`Series` of :class:`object` dtype containing
//	  :class:`datetime.datetime`)
//	- DataFrame: :class:`Series` of :class:`datetime64` dtype (or
//	  :class:`Series` of :class:`object` dtype containing
//	  :class:`datetime.datetime`)
//
// Raises
// ------
// ParserError
//
//	When parsing a date from string fails.
//
// ValueError
//
//	When another datetime conversion error happens. For example when one
//	of 'year', 'month', day' columns is missing in a :class:`DataFrame`, or
//	when a Timezone-aware :class:`datetime.datetime` is found in an array-like
//	of mixed time offsets, and ``utc=False``.
//
// See Also
// --------
// DataFrame.astype : Cast argument to a specified dtype.
// to_timedelta : Convert argument to timedelta.
// convert_dtypes : Convert dtypes.
//
// Notes
// -----
//
// Many input types are supported, and lead to different output types:
//
//   - **scalars** can be int, float, str, datetime object (from stdlib :mod:`datetime`
//     module or :mod:`numpy`). They are converted to :class:`Timestamp` when
//     possible, otherwise they are converted to :class:`datetime.datetime`.
//     None/NaN/null scalars are converted to :const:`NaT`.
//
//   - **array-like** can contain int, float, str, datetime objects. They are
//     converted to :class:`DatetimeIndex` when possible, otherwise they are
//     converted to :class:`Index` with :class:`object` dtype, containing
//     :class:`datetime.datetime`. None/NaN/null entries are converted to
//     :const:`NaT` in both cases.
//
//   - **Series** are converted to :class:`Series` with :class:`datetime64`
//     dtype when possible, otherwise they are converted to :class:`Series` with
//     :class:`object` dtype, containing :class:`datetime.datetime`. None/NaN/null
//     entries are converted to :const:`NaT` in both cases.
//
//   - **DataFrame/dict-like** are converted to :class:`Series` with
//     :class:`datetime64` dtype. For each row a datetime is created from assembling
//     the various dataframe columns. Column keys can be common abbreviations
//     like ['year', 'month', 'day', 'minute', 'second', 'ms', 'us', 'ns']) or
//     plurals of the same.
//
// The following causes are responsible for :class:`datetime.datetime` objects
// being returned (possibly inside an :class:`Index` or a :class:`Series` with
// :class:`object` dtype) instead of a proper pandas designated type
// (:class:`Timestamp`, :class:`DatetimeIndex` or :class:`Series`
// with :class:`datetime64` dtype):
//
//   - when any input element is before :const:`Timestamp.min` or after
//     :const:`Timestamp.max`, see `timestamp limitations
//     <https://pandas.pydata.org/pandas-docs/stable/user_guide/timeseries.html
//     #timeseries-timestamp-limits>`_.
//
//   - when “utc=False“ (default) and the input is an array-like or
//     :class:`Series` containing mixed naive/aware datetime, or aware with mixed
//     time offsets. Note that this happens in the (quite frequent) situation when
//     the timezone has a daylight savings policy. In that case you may wish to
//     use “utc=True“.
//
// Examples
// --------
//
// **Handling various input formats**
//
// Assembling a datetime from multiple columns of a :class:`DataFrame`. The keys
// can be common abbreviations like ['year', 'month', 'day', 'minute', 'second',
// 'ms', 'us', 'ns']) or plurals of the same
//
// >>> df = pd.DataFrame({'year': [2015, 2016],
// ...                    'month': [2, 3],
// ...                    'day': [4, 5]})
// >>> pd.to_datetime(df)
// 0   2015-02-04
// 1   2016-03-05
// dtype: datetime64[ns]
//
// # Using a unix epoch time
//
// >>> pd.to_datetime(1490195805, unit='s')
// Timestamp('2017-03-22 15:16:45')
// >>> pd.to_datetime(1490195805433502912, unit='ns')
// Timestamp('2017-03-22 15:16:45.433502912')
//
// .. warning:: For float arg, precision rounding might happen. To prevent
//
//	unexpected behavior use a fixed-width exact type.
//
// # Using a non-unix epoch origin
//
// >>> pd.to_datetime([1, 2, 3], unit='D',
// ...                origin=pd.Timestamp('1960-01-01'))
// DatetimeIndex(['1960-01-02', '1960-01-03', '1960-01-04'],
//
//	dtype='datetime64[ns]', freq=None)
//
// **Differences with strptime behavior**
//
// :const:`"%f"` will parse all the way up to nanoseconds.
//
// >>> pd.to_datetime('2018-10-26 12:00:00.0000000011',
// ...                format='%Y-%m-%d %H:%M:%S.%f')
// Timestamp('2018-10-26 12:00:00.000000001')
//
// **Non-convertible date/times**
//
// Passing “errors='coerce'“ will force an out-of-bounds date to :const:`NaT`,
// in addition to forcing non-dates (or non-parseable dates) to :const:`NaT`.
//
// >>> pd.to_datetime('13000101', format='%Y%m%d', errors='coerce')
// NaT
//
// .. _to_datetime_tz_examples:
//
// **Timezones and time offsets**
//
// The default behaviour (“utc=False“) is as follows:
//
// - Timezone-naive inputs are converted to timezone-naive :class:`DatetimeIndex`:
//
// >>> pd.to_datetime(['2018-10-26 12:00:00', '2018-10-26 13:00:15'])
// DatetimeIndex(['2018-10-26 12:00:00', '2018-10-26 13:00:15'],
//
//		dtype='datetime64[ns]', freq=None)
//
//	  - Timezone-aware inputs *with constant time offset* are converted to
//	    timezone-aware :class:`DatetimeIndex`:
//
// >>> pd.to_datetime(['2018-10-26 12:00 -0500', '2018-10-26 13:00 -0500'])
// DatetimeIndex(['2018-10-26 12:00:00-05:00', '2018-10-26 13:00:00-05:00'],
//
//		dtype='datetime64[ns, UTC-05:00]', freq=None)
//
//	  - However, timezone-aware inputs *with mixed time offsets* (for example
//	    issued from a timezone with daylight savings, such as Europe/Paris)
//	    are **not successfully converted** to a :class:`DatetimeIndex`.
//	    Parsing datetimes with mixed time zones will show a warning unless
//	    `utc=True`. If you specify `utc=False` the warning below will be shown
//	    and a simple :class:`Index` containing :class:`datetime.datetime`
//	    objects will be returned:
//
// >>> pd.to_datetime(['2020-10-25 02:00 +0200',
// ...                 '2020-10-25 04:00 +0100'])  # doctest: +SKIP
// FutureWarning: In a future version of pandas, parsing datetimes with mixed
// time zones will raise an error unless `utc=True`. Please specify `utc=True`
// to opt in to the new behaviour and silence this warning. To create a `Series`
// with mixed offsets and `object` dtype, please use `apply` and
// `datetime.datetime.strptime`.
// Index([2020-10-25 02:00:00+02:00, 2020-10-25 04:00:00+01:00],
//
//		dtype='object')
//
//	  - A mix of timezone-aware and timezone-naive inputs is also converted to
//	    a simple :class:`Index` containing :class:`datetime.datetime` objects:
//
// >>> from datetime import datetime
// >>> pd.to_datetime(["2020-01-01 01:00:00-01:00",
// ...                 datetime(2020, 1, 1, 3, 0)])  # doctest: +SKIP
// FutureWarning: In a future version of pandas, parsing datetimes with mixed
// time zones will raise an error unless `utc=True`. Please specify `utc=True`
// to opt in to the new behaviour and silence this warning. To create a `Series`
// with mixed offsets and `object` dtype, please use `apply` and
// `datetime.datetime.strptime`.
// Index([2020-01-01 01:00:00-01:00, 2020-01-01 03:00:00], dtype='object')
//
// |
//
// Setting “utc=True“ solves most of the above issues:
//
// - Timezone-naive inputs are *localized* as UTC
//
// >>> pd.to_datetime(['2018-10-26 12:00', '2018-10-26 13:00'], utc=True)
// DatetimeIndex(['2018-10-26 12:00:00+00:00', '2018-10-26 13:00:00+00:00'],
//
//		dtype='datetime64[ns, UTC]', freq=None)
//
//	  - Timezone-aware inputs are *converted* to UTC (the output represents the
//	    exact same datetime, but viewed from the UTC time offset `+00:00`).
//
// >>> pd.to_datetime(['2018-10-26 12:00 -0530', '2018-10-26 12:00 -0500'],
// ...                utc=True)
// DatetimeIndex(['2018-10-26 17:30:00+00:00', '2018-10-26 17:00:00+00:00'],
//
//		dtype='datetime64[ns, UTC]', freq=None)
//
//	  - Inputs can contain both string or datetime, the above
//	    rules still apply
//
// >>> pd.to_datetime(['2018-10-26 12:00', datetime(2020, 1, 1, 18)], utc=True)
// DatetimeIndex(['2018-10-26 12:00:00+00:00', '2020-01-01 18:00:00+00:00'],
//
//	dtype='datetime64[ns, UTC]', freq=None)
//
//go:linkname ToDatetime py.to_datetime
func ToDatetime(arg *py.Object, errors *py.Object, dayfirst *py.Object, yearfirst *py.Object, utc *py.Object, format *py.Object, exact *py.Object, unit *py.Object, inferDatetimeFormat *py.Object, origin *py.Object, cache *py.Object) *py.Object

// Convert argument to timedelta.
//
// Timedeltas are absolute differences in times, expressed in difference
// units (e.g. days, hours, minutes, seconds). This method converts
// an argument from a recognized timedelta format / value into
// a Timedelta type.
//
// Parameters
// ----------
// arg : str, timedelta, list-like or Series
//
//	The data to be converted to timedelta.
//
//	.. versionchanged:: 2.0
//	    Strings with units 'M', 'Y' and 'y' do not represent
//	    unambiguous timedelta values and will raise an exception.
//
// unit : str, optional
//
//	Denotes the unit of the arg for numeric `arg`. Defaults to ``"ns"``.
//
//	Possible values:
//
//	* 'W'
//	* 'D' / 'days' / 'day'
//	* 'hours' / 'hour' / 'hr' / 'h' / 'H'
//	* 'm' / 'minute' / 'min' / 'minutes' / 'T'
//	* 's' / 'seconds' / 'sec' / 'second' / 'S'
//	* 'ms' / 'milliseconds' / 'millisecond' / 'milli' / 'millis' / 'L'
//	* 'us' / 'microseconds' / 'microsecond' / 'micro' / 'micros' / 'U'
//	* 'ns' / 'nanoseconds' / 'nano' / 'nanos' / 'nanosecond' / 'N'
//
//	Must not be specified when `arg` contains strings and ``errors="raise"``.
//
//	.. deprecated:: 2.2.0
//	    Units 'H', 'T', 'S', 'L', 'U' and 'N' are deprecated and will be removed
//	    in a future version. Please use 'h', 'min', 's', 'ms', 'us', and 'ns'
//	    instead of 'H', 'T', 'S', 'L', 'U' and 'N'.
//
// errors : {'ignore', 'raise', 'coerce'}, default 'raise'
//   - If 'raise', then invalid parsing will raise an exception.
//   - If 'coerce', then invalid parsing will be set as NaT.
//   - If 'ignore', then invalid parsing will return the input.
//
// Returns
// -------
// timedelta
//
//	If parsing succeeded.
//	Return type depends on input:
//
//	- list-like: TimedeltaIndex of timedelta64 dtype
//	- Series: Series of timedelta64 dtype
//	- scalar: Timedelta
//
// See Also
// --------
// DataFrame.astype : Cast argument to a specified dtype.
// to_datetime : Convert argument to datetime.
// convert_dtypes : Convert dtypes.
//
// Notes
// -----
// If the precision is higher than nanoseconds, the precision of the duration is
// truncated to nanoseconds for string inputs.
//
// Examples
// --------
// Parsing a single string to a Timedelta:
//
// >>> pd.to_timedelta('1 days 06:05:01.00003')
// Timedelta('1 days 06:05:01.000030')
// >>> pd.to_timedelta('15.5us')
// Timedelta('0 days 00:00:00.000015500')
//
// Parsing a list or array of strings:
//
// >>> pd.to_timedelta(['1 days 06:05:01.00003', '15.5us', 'nan'])
// TimedeltaIndex(['1 days 06:05:01.000030', '0 days 00:00:00.000015500', NaT],
//
//	dtype='timedelta64[ns]', freq=None)
//
// Converting numbers by specifying the `unit` keyword argument:
//
// >>> pd.to_timedelta(np.arange(5), unit='s')
// TimedeltaIndex(['0 days 00:00:00', '0 days 00:00:01', '0 days 00:00:02',
//
//	 '0 days 00:00:03', '0 days 00:00:04'],
//	dtype='timedelta64[ns]', freq=None)
//
// >>> pd.to_timedelta(np.arange(5), unit='d')
// TimedeltaIndex(['0 days', '1 days', '2 days', '3 days', '4 days'],
//
//	dtype='timedelta64[ns]', freq=None)
//
//go:linkname ToTimedelta py.to_timedelta
func ToTimedelta(arg *py.Object, unit *py.Object, errors *py.Object) *py.Object

// Encode the object as an enumerated type or categorical variable.
//
// This method is useful for obtaining a numeric representation of an
// array when all that matters is identifying distinct values. `factorize`
// is available as both a top-level function :func:`pandas.factorize`,
// and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
//
// Parameters
// ----------
// values : sequence
//
//	A 1-D sequence. Sequences that aren't pandas objects are
//	coerced to ndarrays before factorization.
//
// sort : bool, default False
//
//	Sort `uniques` and shuffle `codes` to maintain the
//	relationship.
//
// use_na_sentinel : bool, default True
//
//	If True, the sentinel -1 will be used for NaN values. If False,
//	NaN values will be encoded as non-negative integers and will not drop the
//	NaN from the uniques of the values.
//
//	.. versionadded:: 1.5.0
//
// size_hint : int, optional
//
//	Hint to the hashtable sizer.
//
// Returns
// -------
// codes : ndarray
//
//	An integer ndarray that's an indexer into `uniques`.
//	``uniques.take(codes)`` will have the same values as `values`.
//
// uniques : ndarray, Index, or Categorical
//
//	The unique valid values. When `values` is Categorical, `uniques`
//	is a Categorical. When `values` is some other pandas object, an
//	`Index` is returned. Otherwise, a 1-D ndarray is returned.
//
//	.. note::
//
//	   Even if there's a missing value in `values`, `uniques` will
//	   *not* contain an entry for it.
//
// See Also
// --------
// cut : Discretize continuous-valued array.
// unique : Find the unique value in an array.
//
// Notes
// -----
// Reference :ref:`the user guide <reshaping.factorize>` for more examples.
//
// Examples
// --------
// These examples all show factorize as a top-level method like
// “pd.factorize(values)“. The results are identical for methods like
// :meth:`Series.factorize`.
//
// >>> codes, uniques = pd.factorize(np.array(['b', 'b', 'a', 'c', 'b'], dtype="O"))
// >>> codes
// array([0, 0, 1, 2, 0])
// >>> uniques
// array(['b', 'a', 'c'], dtype=object)
//
// With “sort=True“, the `uniques` will be sorted, and `codes` will be
// shuffled so that the relationship is the maintained.
//
// >>> codes, uniques = pd.factorize(np.array(['b', 'b', 'a', 'c', 'b'], dtype="O"),
// ...                               sort=True)
// >>> codes
// array([1, 1, 0, 2, 1])
// >>> uniques
// array(['a', 'b', 'c'], dtype=object)
//
// When “use_na_sentinel=True“ (the default), missing values are indicated in
// the `codes` with the sentinel value “-1“ and missing values are not
// included in `uniques`.
//
// >>> codes, uniques = pd.factorize(np.array(['b', None, 'a', 'c', 'b'], dtype="O"))
// >>> codes
// array([ 0, -1,  1,  2,  0])
// >>> uniques
// array(['b', 'a', 'c'], dtype=object)
//
// Thus far, we've only factorized lists (which are internally coerced to
// NumPy arrays). When factorizing pandas objects, the type of `uniques`
// will differ. For Categoricals, a `Categorical` is returned.
//
// >>> cat = pd.Categorical(['a', 'a', 'c'], categories=['a', 'b', 'c'])
// >>> codes, uniques = pd.factorize(cat)
// >>> codes
// array([0, 0, 1])
// >>> uniques
// ['a', 'c']
// Categories (3, object): ['a', 'b', 'c']
//
// Notice that “'b'“ is in “uniques.categories“, despite not being
// present in “cat.values“.
//
// For all other pandas objects, an Index of the appropriate type is
// returned.
//
// >>> cat = pd.Series(['a', 'a', 'c'])
// >>> codes, uniques = pd.factorize(cat)
// >>> codes
// array([0, 0, 1])
// >>> uniques
// Index(['a', 'c'], dtype='object')
//
// If NaN is in the values, and we want to include NaN in the uniques of the
// values, it can be achieved by setting “use_na_sentinel=False“.
//
// >>> values = np.array([1, 2, 1, np.nan])
// >>> codes, uniques = pd.factorize(values)  # default: use_na_sentinel=True
// >>> codes
// array([ 0,  1,  0, -1])
// >>> uniques
// array([1., 2.])
//
// >>> codes, uniques = pd.factorize(values, use_na_sentinel=False)
// >>> codes
// array([0, 1, 0, 2])
// >>> uniques
// array([ 1.,  2., nan])
//
//go:linkname Factorize py.factorize
func Factorize(values *py.Object, sort *py.Object, useNaSentinel *py.Object, sizeHint *py.Object) *py.Object

// Return unique values based on a hash table.
//
// Uniques are returned in order of appearance. This does NOT sort.
//
// Significantly faster than numpy.unique for long enough sequences.
// Includes NA values.
//
// Parameters
// ----------
// values : 1d array-like
//
// Returns
// -------
// numpy.ndarray or ExtensionArray
//
//	The return can be:
//
//	* Index : when the input is an Index
//	* Categorical : when the input is a Categorical dtype
//	* ndarray : when the input is a Series/ndarray
//
//	Return numpy.ndarray or ExtensionArray.
//
// See Also
// --------
// Index.unique : Return unique values from an Index.
// Series.unique : Return unique values of Series object.
//
// Examples
// --------
// >>> pd.unique(pd.Series([2, 1, 3, 3]))
// array([2, 1, 3])
//
// >>> pd.unique(pd.Series([2] + [1] * 5))
// array([2, 1])
//
// >>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
// array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
//
// >>> pd.unique(
// ...     pd.Series(
// ...         [
// ...             pd.Timestamp("20160101", tz="US/Eastern"),
// ...             pd.Timestamp("20160101", tz="US/Eastern"),
// ...         ]
// ...     )
// ... )
// <DatetimeArray>
// ['2016-01-01 00:00:00-05:00']
// Length: 1, dtype: datetime64[ns, US/Eastern]
//
// >>> pd.unique(
// ...     pd.Index(
// ...         [
// ...             pd.Timestamp("20160101", tz="US/Eastern"),
// ...             pd.Timestamp("20160101", tz="US/Eastern"),
// ...         ]
// ...     )
// ... )
// DatetimeIndex(['2016-01-01 00:00:00-05:00'],
//
//	dtype='datetime64[ns, US/Eastern]',
//	freq=None)
//
// >>> pd.unique(np.array(list("baabc"), dtype="O"))
// array(['b', 'a', 'c'], dtype=object)
//
// An unordered Categorical will return categories in the
// order of appearance.
//
// >>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
// ['b', 'a', 'c']
// Categories (3, object): ['a', 'b', 'c']
//
// >>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
// ['b', 'a', 'c']
// Categories (3, object): ['a', 'b', 'c']
//
// An ordered Categorical preserves the category ordering.
//
// >>> pd.unique(
// ...     pd.Series(
// ...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
// ...     )
// ... )
// ['b', 'a', 'c']
// Categories (3, object): ['a' < 'b' < 'c']
//
// # An array of tuples
//
// >>> pd.unique(pd.Series([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")]).values)
// array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
//
//go:linkname Unique py.unique
func Unique(values *py.Object) *py.Object

// Compute a histogram of the counts of non-null values.
//
// Parameters
// ----------
// values : ndarray (1-d)
// sort : bool, default True
//
//	Sort by values
//
// ascending : bool, default False
//
//	Sort in ascending order
//
// normalize: bool, default False
//
//	If True then compute a relative histogram
//
// bins : integer, optional
//
//	Rather than count values, group them into half-open bins,
//	convenience for pd.cut, only works with numeric data
//
// dropna : bool, default True
//
//	Don't include counts of NaN
//
// Returns
// -------
// Series
//
//go:linkname ValueCounts py.value_counts
func ValueCounts(values *py.Object, sort *py.Object, ascending *py.Object, normalize *py.Object, bins *py.Object, dropna *py.Object) *py.Object

// Create an array.
//
// Parameters
// ----------
// data : Sequence of objects
//
//	The scalars inside `data` should be instances of the
//	scalar type for `dtype`. It's expected that `data`
//	represents a 1-dimensional array of data.
//
//	When `data` is an Index or Series, the underlying array
//	will be extracted from `data`.
//
// dtype : str, np.dtype, or ExtensionDtype, optional
//
//	The dtype to use for the array. This may be a NumPy
//	dtype or an extension type registered with pandas using
//	:meth:`pandas.api.extensions.register_extension_dtype`.
//
//	If not specified, there are two possibilities:
//
//	1. When `data` is a :class:`Series`, :class:`Index`, or
//	   :class:`ExtensionArray`, the `dtype` will be taken
//	   from the data.
//	2. Otherwise, pandas will attempt to infer the `dtype`
//	   from the data.
//
//	Note that when `data` is a NumPy array, ``data.dtype`` is
//	*not* used for inferring the array type. This is because
//	NumPy cannot represent all the types of data that can be
//	held in extension arrays.
//
//	Currently, pandas will infer an extension dtype for sequences of
//
//	============================== =======================================
//	Scalar Type                    Array Type
//	============================== =======================================
//	:class:`pandas.Interval`       :class:`pandas.arrays.IntervalArray`
//	:class:`pandas.Period`         :class:`pandas.arrays.PeriodArray`
//	:class:`datetime.datetime`     :class:`pandas.arrays.DatetimeArray`
//	:class:`datetime.timedelta`    :class:`pandas.arrays.TimedeltaArray`
//	:class:`int`                   :class:`pandas.arrays.IntegerArray`
//	:class:`float`                 :class:`pandas.arrays.FloatingArray`
//	:class:`str`                   :class:`pandas.arrays.StringArray` or
//	                               :class:`pandas.arrays.ArrowStringArray`
//	:class:`bool`                  :class:`pandas.arrays.BooleanArray`
//	============================== =======================================
//
//	The ExtensionArray created when the scalar type is :class:`str` is determined by
//	``pd.options.mode.string_storage`` if the dtype is not explicitly given.
//
//	For all other cases, NumPy's usual inference rules will be used.
//
// copy : bool, default True
//
//	Whether to copy the data, even if not necessary. Depending
//	on the type of `data`, creating the new array may require
//	copying data, even if ``copy=False``.
//
// Returns
// -------
// ExtensionArray
//
//	The newly created array.
//
// Raises
// ------
// ValueError
//
//	When `data` is not 1-dimensional.
//
// See Also
// --------
// numpy.array : Construct a NumPy array.
// Series : Construct a pandas Series.
// Index : Construct a pandas Index.
// arrays.NumpyExtensionArray : ExtensionArray wrapping a NumPy array.
// Series.array : Extract the array stored within a Series.
//
// Notes
// -----
// Omitting the `dtype` argument means pandas will attempt to infer the
// best array type from the values in the data. As new array types are
// added by pandas and 3rd party libraries, the "best" array type may
// change. We recommend specifying `dtype` to ensure that
//
//  1. the correct array type for the data is returned
//  2. the returned array type doesn't change as new extension types
//     are added by pandas and third-party libraries
//
// Additionally, if the underlying memory representation of the returned
// array matters, we recommend specifying the `dtype` as a concrete object
// rather than a string alias or allowing it to be inferred. For example,
// a future version of pandas or a 3rd-party library may include a
// dedicated ExtensionArray for string data. In this event, the following
// would no longer return a :class:`arrays.NumpyExtensionArray` backed by a
// NumPy array.
//
// >>> pd.array(['a', 'b'], dtype=str)
// <NumpyExtensionArray>
// ['a', 'b']
// Length: 2, dtype: str32
//
// This would instead return the new ExtensionArray dedicated for string
// data. If you really need the new array to be backed by a  NumPy array,
// specify that in the dtype.
//
// >>> pd.array(['a', 'b'], dtype=np.dtype("<U1"))
// <NumpyExtensionArray>
// ['a', 'b']
// Length: 2, dtype: str32
//
// Finally, Pandas has arrays that mostly overlap with NumPy
//
//   - :class:`arrays.DatetimeArray`
//   - :class:`arrays.TimedeltaArray`
//
// When data with a “datetime64[ns]“ or “timedelta64[ns]“ dtype is
// passed, pandas will always return a “DatetimeArray“ or “TimedeltaArray“
// rather than a “NumpyExtensionArray“. This is for symmetry with the case of
// timezone-aware data, which NumPy does not natively support.
//
// >>> pd.array(['2015', '2016'], dtype='datetime64[ns]')
// <DatetimeArray>
// ['2015-01-01 00:00:00', '2016-01-01 00:00:00']
// Length: 2, dtype: datetime64[ns]
//
// >>> pd.array(["1h", "2h"], dtype='timedelta64[ns]')
// <TimedeltaArray>
// ['0 days 01:00:00', '0 days 02:00:00']
// Length: 2, dtype: timedelta64[ns]
//
// Examples
// --------
// If a dtype is not specified, pandas will infer the best dtype from the values.
// See the description of `dtype` for the types pandas infers for.
//
// >>> pd.array([1, 2])
// <IntegerArray>
// [1, 2]
// Length: 2, dtype: Int64
//
// >>> pd.array([1, 2, np.nan])
// <IntegerArray>
// [1, 2, <NA>]
// Length: 3, dtype: Int64
//
// >>> pd.array([1.1, 2.2])
// <FloatingArray>
// [1.1, 2.2]
// Length: 2, dtype: Float64
//
// >>> pd.array(["a", None, "c"])
// <StringArray>
// ['a', <NA>, 'c']
// Length: 3, dtype: string
//
// >>> with pd.option_context("string_storage", "pyarrow"):
// ...     arr = pd.array(["a", None, "c"])
// ...
// >>> arr
// <ArrowStringArray>
// ['a', <NA>, 'c']
// Length: 3, dtype: string
//
// >>> pd.array([pd.Period('2000', freq="D"), pd.Period("2000", freq="D")])
// <PeriodArray>
// ['2000-01-01', '2000-01-01']
// Length: 2, dtype: period[D]
//
// You can use the string alias for `dtype`
//
// >>> pd.array(['a', 'b', 'a'], dtype='category')
// ['a', 'b', 'a']
// Categories (2, object): ['a', 'b']
//
// # Or specify the actual dtype
//
// >>> pd.array(['a', 'b', 'a'],
// ...          dtype=pd.CategoricalDtype(['a', 'b', 'c'], ordered=True))
// ['a', 'b', 'a']
// Categories (3, object): ['a' < 'b' < 'c']
//
// If pandas does not infer a dedicated extension type a
// :class:`arrays.NumpyExtensionArray` is returned.
//
// >>> pd.array([1 + 1j, 3 + 2j])
// <NumpyExtensionArray>
// [(1+1j), (3+2j)]
// Length: 2, dtype: complex128
//
// As mentioned in the "Notes" section, new extension types may be added
// in the future (by pandas or 3rd party libraries), causing the return
// value to no longer be a :class:`arrays.NumpyExtensionArray`. Specify the
// `dtype` as a NumPy dtype if you need to ensure there's no future change in
// behavior.
//
// >>> pd.array([1, 2], dtype=np.dtype("int32"))
// <NumpyExtensionArray>
// [1, 2]
// Length: 2, dtype: int32
//
// `data` must be 1-dimensional. A ValueError is raised when the input
// has the wrong dimensionality.
//
// >>> pd.array(1)
// Traceback (most recent call last):
//
//	...
//
// ValueError: Cannot pass scalar '1' to 'pandas.array'.
//
//go:linkname Array py.array
func Array(data *py.Object, dtype *py.Object, copy *py.Object) *py.Object

// Format float representation in DataFrame with SI notation.
//
// Parameters
// ----------
// accuracy : int, default 3
//
//	Number of decimal digits after the floating point.
//
// use_eng_prefix : bool, default False
//
//	Whether to represent a value with SI prefixes.
//
// Returns
// -------
// None
//
// Examples
// --------
// >>> df = pd.DataFrame([1e-9, 1e-3, 1, 1e3, 1e6])
// >>> df
//
//	0
//
// 0  1.000000e-09
// 1  1.000000e-03
// 2  1.000000e+00
// 3  1.000000e+03
// 4  1.000000e+06
//
// >>> pd.set_eng_float_format(accuracy=1)
// >>> df
//
//	0
//
// 0  1.0E-09
// 1  1.0E-03
// 2  1.0E+00
// 3  1.0E+03
// 4  1.0E+06
//
// >>> pd.set_eng_float_format(use_eng_prefix=True)
// >>> df
//
//	0
//
// 0  1.000n
// 1  1.000m
// 2   1.000
// 3  1.000k
// 4  1.000M
//
// >>> pd.set_eng_float_format(accuracy=1, use_eng_prefix=True)
// >>> df
//
//	0
//
// 0  1.0n
// 1  1.0m
// 2   1.0
// 3  1.0k
// 4  1.0M
//
// >>> pd.set_option("display.float_format", None)  # unset option
//
//go:linkname SetEngFloatFormat py.set_eng_float_format
func SetEngFloatFormat(accuracy *py.Object, useEngPrefix *py.Object) *py.Object

// Infer the most likely frequency given the input index.
//
// Parameters
// ----------
// index : DatetimeIndex, TimedeltaIndex, Series or array-like
//
//	If passed a Series will use the values of the series (NOT THE INDEX).
//
// Returns
// -------
// str or None
//
//	None if no discernible frequency.
//
// Raises
// ------
// TypeError
//
//	If the index is not datetime-like.
//
// ValueError
//
//	If there are fewer than three values.
//
// Examples
// --------
// >>> idx = pd.date_range(start='2020/12/01', end='2020/12/30', periods=30)
// >>> pd.infer_freq(idx)
// 'D'
//
//go:linkname InferFreq py.infer_freq
func InferFreq(index *py.Object) *py.Object

// Concatenate pandas objects along a particular axis.
//
// Allows optional set logic along the other axes.
//
// Can also add a layer of hierarchical indexing on the concatenation axis,
// which may be useful if the labels are the same (or overlapping) on
// the passed axis number.
//
// Parameters
// ----------
// objs : a sequence or mapping of Series or DataFrame objects
//
//	If a mapping is passed, the sorted keys will be used as the `keys`
//	argument, unless it is passed, in which case the values will be
//	selected (see below). Any None objects will be dropped silently unless
//	they are all None in which case a ValueError will be raised.
//
// axis : {0/'index', 1/'columns'}, default 0
//
//	The axis to concatenate along.
//
// join : {'inner', 'outer'}, default 'outer'
//
//	How to handle indexes on other axis (or axes).
//
// ignore_index : bool, default False
//
//	If True, do not use the index values along the concatenation axis. The
//	resulting axis will be labeled 0, ..., n - 1. This is useful if you are
//	concatenating objects where the concatenation axis does not have
//	meaningful indexing information. Note the index values on the other
//	axes are still respected in the join.
//
// keys : sequence, default None
//
//	If multiple levels passed, should contain tuples. Construct
//	hierarchical index using the passed keys as the outermost level.
//
// levels : list of sequences, default None
//
//	Specific levels (unique values) to use for constructing a
//	MultiIndex. Otherwise they will be inferred from the keys.
//
// names : list, default None
//
//	Names for the levels in the resulting hierarchical index.
//
// verify_integrity : bool, default False
//
//	Check whether the new concatenated axis contains duplicates. This can
//	be very expensive relative to the actual data concatenation.
//
// sort : bool, default False
//
//	Sort non-concatenation axis if it is not already aligned. One exception to
//	this is when the non-concatentation axis is a DatetimeIndex and join='outer'
//	and the axis is not already aligned. In that case, the non-concatenation
//	axis is always sorted lexicographically.
//
// copy : bool, default True
//
//	If False, do not copy data unnecessarily.
//
// Returns
// -------
// object, type of objs
//
//	When concatenating all ``Series`` along the index (axis=0), a
//	``Series`` is returned. When ``objs`` contains at least one
//	``DataFrame``, a ``DataFrame`` is returned. When concatenating along
//	the columns (axis=1), a ``DataFrame`` is returned.
//
// See Also
// --------
// DataFrame.join : Join DataFrames using indexes.
// DataFrame.merge : Merge DataFrames by indexes or columns.
//
// Notes
// -----
// The keys, levels, and names arguments are all optional.
//
// A walkthrough of how this method fits in with other tools for combining
// pandas objects can be found `here
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/merging.html>`__.
//
// It is not recommended to build DataFrames by adding single rows in a
// for loop. Build a list of rows and make a DataFrame in a single concat.
//
// Examples
// --------
// Combine two “Series“.
//
// >>> s1 = pd.Series(['a', 'b'])
// >>> s2 = pd.Series(['c', 'd'])
// >>> pd.concat([s1, s2])
// 0    a
// 1    b
// 0    c
// 1    d
// dtype: object
//
// Clear the existing index and reset it in the result
// by setting the “ignore_index“ option to “True“.
//
// >>> pd.concat([s1, s2], ignore_index=True)
// 0    a
// 1    b
// 2    c
// 3    d
// dtype: object
//
// Add a hierarchical index at the outermost level of
// the data with the “keys“ option.
//
// >>> pd.concat([s1, s2], keys=['s1', 's2'])
// s1  0    a
//
//	1    b
//
// s2  0    c
//
//	1    d
//
// dtype: object
//
// Label the index keys you create with the “names“ option.
//
// >>> pd.concat([s1, s2], keys=['s1', 's2'],
// ...           names=['Series name', 'Row ID'])
// Series name  Row ID
// s1           0         a
//
//	1         b
//
// s2           0         c
//
//	1         d
//
// dtype: object
//
// Combine two “DataFrame“ objects with identical columns.
//
// >>> df1 = pd.DataFrame([['a', 1], ['b', 2]],
// ...                    columns=['letter', 'number'])
// >>> df1
//
//	letter  number
//
// 0      a       1
// 1      b       2
// >>> df2 = pd.DataFrame([['c', 3], ['d', 4]],
// ...                    columns=['letter', 'number'])
// >>> df2
//
//	letter  number
//
// 0      c       3
// 1      d       4
// >>> pd.concat([df1, df2])
//
//	letter  number
//
// 0      a       1
// 1      b       2
// 0      c       3
// 1      d       4
//
// Combine “DataFrame“ objects with overlapping columns
// and return everything. Columns outside the intersection will
// be filled with “NaN“ values.
//
// >>> df3 = pd.DataFrame([['c', 3, 'cat'], ['d', 4, 'dog']],
// ...                    columns=['letter', 'number', 'animal'])
// >>> df3
//
//	letter  number animal
//
// 0      c       3    cat
// 1      d       4    dog
// >>> pd.concat([df1, df3], sort=False)
//
//	letter  number animal
//
// 0      a       1    NaN
// 1      b       2    NaN
// 0      c       3    cat
// 1      d       4    dog
//
// Combine “DataFrame“ objects with overlapping columns
// and return only those that are shared by passing “inner“ to
// the “join“ keyword argument.
//
// >>> pd.concat([df1, df3], join="inner")
//
//	letter  number
//
// 0      a       1
// 1      b       2
// 0      c       3
// 1      d       4
//
// Combine “DataFrame“ objects horizontally along the x axis by
// passing in “axis=1“.
//
// >>> df4 = pd.DataFrame([['bird', 'polly'], ['monkey', 'george']],
// ...                    columns=['animal', 'name'])
// >>> pd.concat([df1, df4], axis=1)
//
//	letter  number  animal    name
//
// 0      a       1    bird   polly
// 1      b       2  monkey  george
//
// Prevent the result from including duplicate index values with the
// “verify_integrity“ option.
//
// >>> df5 = pd.DataFrame([1], index=['a'])
// >>> df5
//
//	0
//
// a  1
// >>> df6 = pd.DataFrame([2], index=['a'])
// >>> df6
//
//	0
//
// a  2
// >>> pd.concat([df5, df6], verify_integrity=True)
// Traceback (most recent call last):
//
//	...
//
// ValueError: Indexes have overlapping values: ['a']
//
// Append a single row to the end of a “DataFrame“ object.
//
// >>> df7 = pd.DataFrame({'a': 1, 'b': 2}, index=[0])
// >>> df7
//
//	a   b
//
// 0   1   2
// >>> new_row = pd.Series({'a': 3, 'b': 4})
// >>> new_row
// a    3
// b    4
// dtype: int64
// >>> pd.concat([df7, new_row.to_frame().T], ignore_index=True)
//
//	a   b
//
// 0   1   2
// 1   3   4
//
//go:linkname Concat py.concat
func Concat(objs *py.Object) *py.Object

// Reshape wide-format data to long. Generalized inverse of DataFrame.pivot.
//
// Accepts a dictionary, “groups“, in which each key is a new column name
// and each value is a list of old column names that will be "melted" under
// the new column name as part of the reshape.
//
// Parameters
// ----------
// data : DataFrame
//
//	The wide-format DataFrame.
//
// groups : dict
//
//	{new_name : list_of_columns}.
//
// dropna : bool, default True
//
//	Do not include columns whose entries are all NaN.
//
// Returns
// -------
// DataFrame
//
//	Reshaped DataFrame.
//
// See Also
// --------
// melt : Unpivot a DataFrame from wide to long format, optionally leaving
//
//	identifiers set.
//
// pivot : Create a spreadsheet-style pivot table as a DataFrame.
// DataFrame.pivot : Pivot without aggregation that can handle
//
//	non-numeric data.
//
// DataFrame.pivot_table : Generalization of pivot that can handle
//
//	duplicate values for one index/column pair.
//
// DataFrame.unstack : Pivot based on the index values instead of a
//
//	column.
//
// wide_to_long : Wide panel to long format. Less flexible but more
//
//	user-friendly than melt.
//
// Examples
// --------
// >>> data = pd.DataFrame({'hr1': [514, 573], 'hr2': [545, 526],
// ...                      'team': ['Red Sox', 'Yankees'],
// ...                      'year1': [2007, 2007], 'year2': [2008, 2008]})
// >>> data
//
//	hr1  hr2     team  year1  year2
//
// 0  514  545  Red Sox   2007   2008
// 1  573  526  Yankees   2007   2008
//
// >>> pd.lreshape(data, {'year': ['year1', 'year2'], 'hr': ['hr1', 'hr2']})
//
//	team  year   hr
//
// 0  Red Sox  2007  514
// 1  Yankees  2007  573
// 2  Red Sox  2008  545
// 3  Yankees  2008  526
//
//go:linkname Lreshape py.lreshape
func Lreshape(data *py.Object, groups *py.Object, dropna *py.Object) *py.Object

// Unpivot a DataFrame from wide to long format, optionally leaving identifiers set.
//
// This function is useful to massage a DataFrame into a format where one
// or more columns are identifier variables (`id_vars`), while all other
// columns, considered measured variables (`value_vars`), are "unpivoted" to
// the row axis, leaving just two non-identifier columns, 'variable' and
// 'value'.
//
// Parameters
// ----------
// id_vars : scalar, tuple, list, or ndarray, optional
//
//	Column(s) to use as identifier variables.
//
// value_vars : scalar, tuple, list, or ndarray, optional
//
//	Column(s) to unpivot. If not specified, uses all columns that
//	are not set as `id_vars`.
//
// var_name : scalar, default None
//
//	Name to use for the 'variable' column. If None it uses
//	``frame.columns.name`` or 'variable'.
//
// value_name : scalar, default 'value'
//
//	Name to use for the 'value' column, can't be an existing column label.
//
// col_level : scalar, optional
//
//	If columns are a MultiIndex then use this level to melt.
//
// ignore_index : bool, default True
//
//	If True, original index is ignored. If False, the original index is retained.
//	Index labels will be repeated as necessary.
//
// Returns
// -------
// DataFrame
//
//	Unpivoted DataFrame.
//
// See Also
// --------
// DataFrame.melt : Identical method.
// pivot_table : Create a spreadsheet-style pivot table as a DataFrame.
// DataFrame.pivot : Return reshaped DataFrame organized
//
//	by given index / column values.
//
// DataFrame.explode : Explode a DataFrame from list-like
//
//	columns to long format.
//
// Notes
// -----
// Reference :ref:`the user guide <reshaping.melt>` for more examples.
//
// Examples
// --------
// >>> df = pd.DataFrame({'A': {0: 'a', 1: 'b', 2: 'c'},
// ...                    'B': {0: 1, 1: 3, 2: 5},
// ...                    'C': {0: 2, 1: 4, 2: 6}})
// >>> df
//
//	A  B  C
//
// 0  a  1  2
// 1  b  3  4
// 2  c  5  6
//
// >>> pd.melt(df, id_vars=['A'], value_vars=['B'])
//
//	A variable  value
//
// 0  a        B      1
// 1  b        B      3
// 2  c        B      5
//
// >>> pd.melt(df, id_vars=['A'], value_vars=['B', 'C'])
//
//	A variable  value
//
// 0  a        B      1
// 1  b        B      3
// 2  c        B      5
// 3  a        C      2
// 4  b        C      4
// 5  c        C      6
//
// The names of 'variable' and 'value' columns can be customized:
//
// >>> pd.melt(df, id_vars=['A'], value_vars=['B'],
// ...         var_name='myVarname', value_name='myValname')
//
//	A myVarname  myValname
//
// 0  a         B          1
// 1  b         B          3
// 2  c         B          5
//
// Original index values can be kept around:
//
// >>> pd.melt(df, id_vars=['A'], value_vars=['B', 'C'], ignore_index=False)
//
//	A variable  value
//
// 0  a        B      1
// 1  b        B      3
// 2  c        B      5
// 0  a        C      2
// 1  b        C      4
// 2  c        C      6
//
// If you have multi-index columns:
//
// >>> df.columns = [list('ABC'), list('DEF')]
// >>> df
//
//	A  B  C
//	D  E  F
//
// 0  a  1  2
// 1  b  3  4
// 2  c  5  6
//
// >>> pd.melt(df, col_level=0, id_vars=['A'], value_vars=['B'])
//
//	A variable  value
//
// 0  a        B      1
// 1  b        B      3
// 2  c        B      5
//
// >>> pd.melt(df, id_vars=[('A', 'D')], value_vars=[('B', 'E')])
//
//	(A, D) variable_0 variable_1  value
//
// 0      a          B          E      1
// 1      b          B          E      3
// 2      c          B          E      5
//
//go:linkname Melt py.melt
func Melt(frame *py.Object, idVars *py.Object, valueVars *py.Object, varName *py.Object, valueName *py.Object, colLevel *py.Object, ignoreIndex *py.Object) *py.Object

// Unpivot a DataFrame from wide to long format.
//
// Less flexible but more user-friendly than melt.
//
// With stubnames ['A', 'B'], this function expects to find one or more
// group of columns with format
// A-suffix1, A-suffix2,..., B-suffix1, B-suffix2,...
// You specify what you want to call this suffix in the resulting long format
// with `j` (for example `j='year'`)
//
// Each row of these wide variables are assumed to be uniquely identified by
// `i` (can be a single column name or a list of column names)
//
// All remaining variables in the data frame are left intact.
//
// Parameters
// ----------
// df : DataFrame
//
//	The wide-format DataFrame.
//
// stubnames : str or list-like
//
//	The stub name(s). The wide format variables are assumed to
//	start with the stub names.
//
// i : str or list-like
//
//	Column(s) to use as id variable(s).
//
// j : str
//
//	The name of the sub-observation variable. What you wish to name your
//	suffix in the long format.
//
// sep : str, default ""
//
//	A character indicating the separation of the variable names
//	in the wide format, to be stripped from the names in the long format.
//	For example, if your column names are A-suffix1, A-suffix2, you
//	can strip the hyphen by specifying `sep='-'`.
//
// suffix : str, default '\\d+'
//
//	A regular expression capturing the wanted suffixes. '\\d+' captures
//	numeric suffixes. Suffixes with no numbers could be specified with the
//	negated character class '\\D+'. You can also further disambiguate
//	suffixes, for example, if your wide variables are of the form A-one,
//	B-two,.., and you have an unrelated column A-rating, you can ignore the
//	last one by specifying `suffix='(!?one|two)'`. When all suffixes are
//	numeric, they are cast to int64/float64.
//
// Returns
// -------
// DataFrame
//
//	A DataFrame that contains each stub name as a variable, with new index
//	(i, j).
//
// See Also
// --------
// melt : Unpivot a DataFrame from wide to long format, optionally leaving
//
//	identifiers set.
//
// pivot : Create a spreadsheet-style pivot table as a DataFrame.
// DataFrame.pivot : Pivot without aggregation that can handle
//
//	non-numeric data.
//
// DataFrame.pivot_table : Generalization of pivot that can handle
//
//	duplicate values for one index/column pair.
//
// DataFrame.unstack : Pivot based on the index values instead of a
//
//	column.
//
// Notes
// -----
// All extra variables are left untouched. This simply uses
// `pandas.melt` under the hood, but is hard-coded to "do the right thing"
// in a typical case.
//
// Examples
// --------
// >>> np.random.seed(123)
// >>> df = pd.DataFrame({"A1970" : {0 : "a", 1 : "b", 2 : "c"},
// ...                    "A1980" : {0 : "d", 1 : "e", 2 : "f"},
// ...                    "B1970" : {0 : 2.5, 1 : 1.2, 2 : .7},
// ...                    "B1980" : {0 : 3.2, 1 : 1.3, 2 : .1},
// ...                    "X"     : dict(zip(range(3), np.random.randn(3)))
// ...                   })
// >>> df["id"] = df.index
// >>> df
//
//	A1970 A1980  B1970  B1980         X  id
//
// 0     a     d    2.5    3.2 -1.085631   0
// 1     b     e    1.2    1.3  0.997345   1
// 2     c     f    0.7    0.1  0.282978   2
// >>> pd.wide_to_long(df, ["A", "B"], i="id", j="year")
// ... # doctest: +NORMALIZE_WHITESPACE
//
//	X  A    B
//
// id year
// 0  1970 -1.085631  a  2.5
// 1  1970  0.997345  b  1.2
// 2  1970  0.282978  c  0.7
// 0  1980 -1.085631  d  3.2
// 1  1980  0.997345  e  1.3
// 2  1980  0.282978  f  0.1
//
// # With multiple id columns
//
// >>> df = pd.DataFrame({
// ...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
// ...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
// ...     'ht1': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
// ...     'ht2': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
// ... })
// >>> df
//
//	famid  birth  ht1  ht2
//
// 0      1      1  2.8  3.4
// 1      1      2  2.9  3.8
// 2      1      3  2.2  2.9
// 3      2      1  2.0  3.2
// 4      2      2  1.8  2.8
// 5      2      3  1.9  2.4
// 6      3      1  2.2  3.3
// 7      3      2  2.3  3.4
// 8      3      3  2.1  2.9
// >>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age')
// >>> l
// ... # doctest: +NORMALIZE_WHITESPACE
//
//	ht
//
// famid birth age
// 1     1     1    2.8
//
//	      2    3.4
//	2     1    2.9
//	      2    3.8
//	3     1    2.2
//	      2    2.9
//
// 2     1     1    2.0
//
//	      2    3.2
//	2     1    1.8
//	      2    2.8
//	3     1    1.9
//	      2    2.4
//
// 3     1     1    2.2
//
//	      2    3.3
//	2     1    2.3
//	      2    3.4
//	3     1    2.1
//	      2    2.9
//
// Going from long back to wide just takes some creative use of `unstack`
//
// >>> w = l.unstack()
// >>> w.columns = w.columns.map('{0[0]}{0[1]}'.format)
// >>> w.reset_index()
//
//	famid  birth  ht1  ht2
//
// 0      1      1  2.8  3.4
// 1      1      2  2.9  3.8
// 2      1      3  2.2  2.9
// 3      2      1  2.0  3.2
// 4      2      2  1.8  2.8
// 5      2      3  1.9  2.4
// 6      3      1  2.2  3.3
// 7      3      2  2.3  3.4
// 8      3      3  2.1  2.9
//
// # Less wieldy column names are also handled
//
// >>> np.random.seed(0)
// >>> df = pd.DataFrame({'A(weekly)-2010': np.random.rand(3),
// ...                    'A(weekly)-2011': np.random.rand(3),
// ...                    'B(weekly)-2010': np.random.rand(3),
// ...                    'B(weekly)-2011': np.random.rand(3),
// ...                    'X' : np.random.randint(3, size=3)})
// >>> df['id'] = df.index
// >>> df # doctest: +NORMALIZE_WHITESPACE, +ELLIPSIS
//
//	A(weekly)-2010  A(weekly)-2011  B(weekly)-2010  B(weekly)-2011  X  id
//
// 0        0.548814        0.544883        0.437587        0.383442  0   0
// 1        0.715189        0.423655        0.891773        0.791725  1   1
// 2        0.602763        0.645894        0.963663        0.528895  1   2
//
// >>> pd.wide_to_long(df, ['A(weekly)', 'B(weekly)'], i='id',
// ...                 j='year', sep='-')
// ... # doctest: +NORMALIZE_WHITESPACE
//
//	X  A(weekly)  B(weekly)
//
// id year
// 0  2010  0   0.548814   0.437587
// 1  2010  1   0.715189   0.891773
// 2  2010  1   0.602763   0.963663
// 0  2011  0   0.544883   0.383442
// 1  2011  1   0.423655   0.791725
// 2  2011  1   0.645894   0.528895
//
// If we have many columns, we could also use a regex to find our
// stubnames and pass that list on to wide_to_long
//
// >>> stubnames = sorted(
// ...     set([match[0] for match in df.columns.str.findall(
// ...         r'[A-B]\(.*\)').values if match != []])
// ... )
// >>> list(stubnames)
// ['A(weekly)', 'B(weekly)']
//
// All of the above examples have integers as suffixes. It is possible to
// have non-integers as suffixes.
//
// >>> df = pd.DataFrame({
// ...     'famid': [1, 1, 1, 2, 2, 2, 3, 3, 3],
// ...     'birth': [1, 2, 3, 1, 2, 3, 1, 2, 3],
// ...     'ht_one': [2.8, 2.9, 2.2, 2, 1.8, 1.9, 2.2, 2.3, 2.1],
// ...     'ht_two': [3.4, 3.8, 2.9, 3.2, 2.8, 2.4, 3.3, 3.4, 2.9]
// ... })
// >>> df
//
//	famid  birth  ht_one  ht_two
//
// 0      1      1     2.8     3.4
// 1      1      2     2.9     3.8
// 2      1      3     2.2     2.9
// 3      2      1     2.0     3.2
// 4      2      2     1.8     2.8
// 5      2      3     1.9     2.4
// 6      3      1     2.2     3.3
// 7      3      2     2.3     3.4
// 8      3      3     2.1     2.9
//
// >>> l = pd.wide_to_long(df, stubnames='ht', i=['famid', 'birth'], j='age',
// ...                     sep='_', suffix=r'\w+')
// >>> l
// ... # doctest: +NORMALIZE_WHITESPACE
//
//	ht
//
// famid birth age
// 1     1     one  2.8
//
//	      two  3.4
//	2     one  2.9
//	      two  3.8
//	3     one  2.2
//	      two  2.9
//
// 2     1     one  2.0
//
//	      two  3.2
//	2     one  1.8
//	      two  2.8
//	3     one  1.9
//	      two  2.4
//
// 3     1     one  2.2
//
//	      two  3.3
//	2     one  2.3
//	      two  3.4
//	3     one  2.1
//	      two  2.9
//
//go:linkname WideToLong py.wide_to_long
func WideToLong(df *py.Object, stubnames *py.Object, i *py.Object, j *py.Object, sep *py.Object, suffix *py.Object) *py.Object

// Merge DataFrame or named Series objects with a database-style join.
//
// A named Series object is treated as a DataFrame with a single named column.
//
// The join is done on columns or indexes. If joining columns on
// columns, the DataFrame indexes *will be ignored*. Otherwise if joining indexes
// on indexes or indexes on a column or columns, the index will be passed on.
// When performing a cross merge, no column specifications to merge on are
// allowed.
//
// .. warning::
//
//	If both key columns contain rows where the key is a null value, those
//	rows will be matched against each other. This is different from usual SQL
//	join behaviour and can lead to unexpected results.
//
// Parameters
// ----------
// left : DataFrame or named Series
// right : DataFrame or named Series
//
//	Object to merge with.
//
// how : {'left', 'right', 'outer', 'inner', 'cross'}, default 'inner'
//
//	Type of merge to be performed.
//
//	* left: use only keys from left frame, similar to a SQL left outer join;
//	  preserve key order.
//	* right: use only keys from right frame, similar to a SQL right outer join;
//	  preserve key order.
//	* outer: use union of keys from both frames, similar to a SQL full outer
//	  join; sort keys lexicographically.
//	* inner: use intersection of keys from both frames, similar to a SQL inner
//	  join; preserve the order of the left keys.
//	* cross: creates the cartesian product from both frames, preserves the order
//	  of the left keys.
//
// on : label or list
//
//	Column or index level names to join on. These must be found in both
//	DataFrames. If `on` is None and not merging on indexes then this defaults
//	to the intersection of the columns in both DataFrames.
//
// left_on : label or list, or array-like
//
//	Column or index level names to join on in the left DataFrame. Can also
//	be an array or list of arrays of the length of the left DataFrame.
//	These arrays are treated as if they are columns.
//
// right_on : label or list, or array-like
//
//	Column or index level names to join on in the right DataFrame. Can also
//	be an array or list of arrays of the length of the right DataFrame.
//	These arrays are treated as if they are columns.
//
// left_index : bool, default False
//
//	Use the index from the left DataFrame as the join key(s). If it is a
//	MultiIndex, the number of keys in the other DataFrame (either the index
//	or a number of columns) must match the number of levels.
//
// right_index : bool, default False
//
//	Use the index from the right DataFrame as the join key. Same caveats as
//	left_index.
//
// sort : bool, default False
//
//	Sort the join keys lexicographically in the result DataFrame. If False,
//	the order of the join keys depends on the join type (how keyword).
//
// suffixes : list-like, default is ("_x", "_y")
//
//	A length-2 sequence where each element is optionally a string
//	indicating the suffix to add to overlapping column names in
//	`left` and `right` respectively. Pass a value of `None` instead
//	of a string to indicate that the column name from `left` or
//	`right` should be left as-is, with no suffix. At least one of the
//	values must not be None.
//
// copy : bool, default True
//
//	If False, avoid copy if possible.
//
//	.. note::
//	    The `copy` keyword will change behavior in pandas 3.0.
//	    `Copy-on-Write
//	    <https://pandas.pydata.org/docs/dev/user_guide/copy_on_write.html>`__
//	    will be enabled by default, which means that all methods with a
//	    `copy` keyword will use a lazy copy mechanism to defer the copy and
//	    ignore the `copy` keyword. The `copy` keyword will be removed in a
//	    future version of pandas.
//
//	    You can already get the future behavior and improvements through
//	    enabling copy on write ``pd.options.mode.copy_on_write = True``
//
// indicator : bool or str, default False
//
//	If True, adds a column to the output DataFrame called "_merge" with
//	information on the source of each row. The column can be given a different
//	name by providing a string argument. The column will have a Categorical
//	type with the value of "left_only" for observations whose merge key only
//	appears in the left DataFrame, "right_only" for observations
//	whose merge key only appears in the right DataFrame, and "both"
//	if the observation's merge key is found in both DataFrames.
//
// validate : str, optional
//
//	If specified, checks if merge is of specified type.
//
//	* "one_to_one" or "1:1": check if merge keys are unique in both
//	  left and right datasets.
//	* "one_to_many" or "1:m": check if merge keys are unique in left
//	  dataset.
//	* "many_to_one" or "m:1": check if merge keys are unique in right
//	  dataset.
//	* "many_to_many" or "m:m": allowed, but does not result in checks.
//
// Returns
// -------
// DataFrame
//
//	A DataFrame of the two merged objects.
//
// See Also
// --------
// merge_ordered : Merge with optional filling/interpolation.
// merge_asof : Merge on nearest keys.
// DataFrame.join : Similar method using indices.
//
// Examples
// --------
// >>> df1 = pd.DataFrame({'lkey': ['foo', 'bar', 'baz', 'foo'],
// ...                     'value': [1, 2, 3, 5]})
// >>> df2 = pd.DataFrame({'rkey': ['foo', 'bar', 'baz', 'foo'],
// ...                     'value': [5, 6, 7, 8]})
// >>> df1
//
//	lkey value
//
// 0   foo      1
// 1   bar      2
// 2   baz      3
// 3   foo      5
// >>> df2
//
//	rkey value
//
// 0   foo      5
// 1   bar      6
// 2   baz      7
// 3   foo      8
//
// Merge df1 and df2 on the lkey and rkey columns. The value columns have
// the default suffixes, _x and _y, appended.
//
// >>> df1.merge(df2, left_on='lkey', right_on='rkey')
//
//	lkey  value_x rkey  value_y
//
// 0  foo        1  foo        5
// 1  foo        1  foo        8
// 2  bar        2  bar        6
// 3  baz        3  baz        7
// 4  foo        5  foo        5
// 5  foo        5  foo        8
//
// Merge DataFrames df1 and df2 with specified left and right suffixes
// appended to any overlapping columns.
//
// >>> df1.merge(df2, left_on='lkey', right_on='rkey',
// ...           suffixes=('_left', '_right'))
//
//	lkey  value_left rkey  value_right
//
// 0  foo           1  foo            5
// 1  foo           1  foo            8
// 2  bar           2  bar            6
// 3  baz           3  baz            7
// 4  foo           5  foo            5
// 5  foo           5  foo            8
//
// Merge DataFrames df1 and df2, but raise an exception if the DataFrames have
// any overlapping columns.
//
// >>> df1.merge(df2, left_on='lkey', right_on='rkey', suffixes=(False, False))
// Traceback (most recent call last):
// ...
// ValueError: columns overlap but no suffix specified:
//
//	Index(['value'], dtype='object')
//
// >>> df1 = pd.DataFrame({'a': ['foo', 'bar'], 'b': [1, 2]})
// >>> df2 = pd.DataFrame({'a': ['foo', 'baz'], 'c': [3, 4]})
// >>> df1
//
//	a  b
//
// 0   foo  1
// 1   bar  2
// >>> df2
//
//	a  c
//
// 0   foo  3
// 1   baz  4
//
// >>> df1.merge(df2, how='inner', on='a')
//
//	a  b  c
//
// 0   foo  1  3
//
// >>> df1.merge(df2, how='left', on='a')
//
//	a  b  c
//
// 0   foo  1  3.0
// 1   bar  2  NaN
//
// >>> df1 = pd.DataFrame({'left': ['foo', 'bar']})
// >>> df2 = pd.DataFrame({'right': [7, 8]})
// >>> df1
//
//	left
//
// 0   foo
// 1   bar
// >>> df2
//
//	right
//
// 0   7
// 1   8
//
// >>> df1.merge(df2, how='cross')
//
//	left  right
//
// 0   foo      7
// 1   foo      8
// 2   bar      7
// 3   bar      8
//
//go:linkname Merge py.merge
func Merge(left *py.Object, right *py.Object, how *py.Object, on *py.Object, leftOn *py.Object, rightOn *py.Object, leftIndex *py.Object, rightIndex *py.Object, sort *py.Object, suffixes *py.Object, copy *py.Object, indicator *py.Object, validate *py.Object) *py.Object

// Perform a merge by key distance.
//
// This is similar to a left-join except that we match on nearest
// key rather than equal keys. Both DataFrames must be sorted by the key.
//
// For each row in the left DataFrame:
//
//   - A "backward" search selects the last row in the right DataFrame whose
//     'on' key is less than or equal to the left's key.
//
//   - A "forward" search selects the first row in the right DataFrame whose
//     'on' key is greater than or equal to the left's key.
//
//   - A "nearest" search selects the row in the right DataFrame whose 'on'
//     key is closest in absolute distance to the left's key.
//
// Optionally match on equivalent keys with 'by' before searching with 'on'.
//
// Parameters
// ----------
// left : DataFrame or named Series
// right : DataFrame or named Series
// on : label
//
//	Field name to join on. Must be found in both DataFrames.
//	The data MUST be ordered. Furthermore this must be a numeric column,
//	such as datetimelike, integer, or float. On or left_on/right_on
//	must be given.
//
// left_on : label
//
//	Field name to join on in left DataFrame.
//
// right_on : label
//
//	Field name to join on in right DataFrame.
//
// left_index : bool
//
//	Use the index of the left DataFrame as the join key.
//
// right_index : bool
//
//	Use the index of the right DataFrame as the join key.
//
// by : column name or list of column names
//
//	Match on these columns before performing merge operation.
//
// left_by : column name
//
//	Field names to match on in the left DataFrame.
//
// right_by : column name
//
//	Field names to match on in the right DataFrame.
//
// suffixes : 2-length sequence (tuple, list, ...)
//
//	Suffix to apply to overlapping column names in the left and right
//	side, respectively.
//
// tolerance : int or Timedelta, optional, default None
//
//	Select asof tolerance within this range; must be compatible
//	with the merge index.
//
// allow_exact_matches : bool, default True
//
//   - If True, allow matching with the same 'on' value
//     (i.e. less-than-or-equal-to / greater-than-or-equal-to)
//   - If False, don't match the same 'on' value
//     (i.e., strictly less-than / strictly greater-than).
//
// direction : 'backward' (default), 'forward', or 'nearest'
//
//	Whether to search for prior, subsequent, or closest matches.
//
// Returns
// -------
// DataFrame
//
// See Also
// --------
// merge : Merge with a database-style join.
// merge_ordered : Merge with optional filling/interpolation.
//
// Examples
// --------
// >>> left = pd.DataFrame({"a": [1, 5, 10], "left_val": ["a", "b", "c"]})
// >>> left
//
//	a left_val
//
// 0   1        a
// 1   5        b
// 2  10        c
//
// >>> right = pd.DataFrame({"a": [1, 2, 3, 6, 7], "right_val": [1, 2, 3, 6, 7]})
// >>> right
//
//	a  right_val
//
// 0  1          1
// 1  2          2
// 2  3          3
// 3  6          6
// 4  7          7
//
// >>> pd.merge_asof(left, right, on="a")
//
//	a left_val  right_val
//
// 0   1        a          1
// 1   5        b          3
// 2  10        c          7
//
// >>> pd.merge_asof(left, right, on="a", allow_exact_matches=False)
//
//	a left_val  right_val
//
// 0   1        a        NaN
// 1   5        b        3.0
// 2  10        c        7.0
//
// >>> pd.merge_asof(left, right, on="a", direction="forward")
//
//	a left_val  right_val
//
// 0   1        a        1.0
// 1   5        b        6.0
// 2  10        c        NaN
//
// >>> pd.merge_asof(left, right, on="a", direction="nearest")
//
//	a left_val  right_val
//
// 0   1        a          1
// 1   5        b          6
// 2  10        c          7
//
// We can use indexed DataFrames as well.
//
// >>> left = pd.DataFrame({"left_val": ["a", "b", "c"]}, index=[1, 5, 10])
// >>> left
//
//	left_val
//
// 1         a
// 5         b
// 10        c
//
// >>> right = pd.DataFrame({"right_val": [1, 2, 3, 6, 7]}, index=[1, 2, 3, 6, 7])
// >>> right
//
//	right_val
//
// 1          1
// 2          2
// 3          3
// 6          6
// 7          7
//
// >>> pd.merge_asof(left, right, left_index=True, right_index=True)
//
//	left_val  right_val
//
// 1         a          1
// 5         b          3
// 10        c          7
//
// # Here is a real-world times-series example
//
// >>> quotes = pd.DataFrame(
// ...     {
// ...         "time": [
// ...             pd.Timestamp("2016-05-25 13:30:00.023"),
// ...             pd.Timestamp("2016-05-25 13:30:00.023"),
// ...             pd.Timestamp("2016-05-25 13:30:00.030"),
// ...             pd.Timestamp("2016-05-25 13:30:00.041"),
// ...             pd.Timestamp("2016-05-25 13:30:00.048"),
// ...             pd.Timestamp("2016-05-25 13:30:00.049"),
// ...             pd.Timestamp("2016-05-25 13:30:00.072"),
// ...             pd.Timestamp("2016-05-25 13:30:00.075")
// ...         ],
// ...         "ticker": [
// ...                "GOOG",
// ...                "MSFT",
// ...                "MSFT",
// ...                "MSFT",
// ...                "GOOG",
// ...                "AAPL",
// ...                "GOOG",
// ...                "MSFT"
// ...            ],
// ...            "bid": [720.50, 51.95, 51.97, 51.99, 720.50, 97.99, 720.50, 52.01],
// ...            "ask": [720.93, 51.96, 51.98, 52.00, 720.93, 98.01, 720.88, 52.03]
// ...     }
// ... )
// >>> quotes
//
//	time ticker     bid     ask
//
// 0 2016-05-25 13:30:00.023   GOOG  720.50  720.93
// 1 2016-05-25 13:30:00.023   MSFT   51.95   51.96
// 2 2016-05-25 13:30:00.030   MSFT   51.97   51.98
// 3 2016-05-25 13:30:00.041   MSFT   51.99   52.00
// 4 2016-05-25 13:30:00.048   GOOG  720.50  720.93
// 5 2016-05-25 13:30:00.049   AAPL   97.99   98.01
// 6 2016-05-25 13:30:00.072   GOOG  720.50  720.88
// 7 2016-05-25 13:30:00.075   MSFT   52.01   52.03
//
// >>> trades = pd.DataFrame(
// ...        {
// ...            "time": [
// ...                pd.Timestamp("2016-05-25 13:30:00.023"),
// ...                pd.Timestamp("2016-05-25 13:30:00.038"),
// ...                pd.Timestamp("2016-05-25 13:30:00.048"),
// ...                pd.Timestamp("2016-05-25 13:30:00.048"),
// ...                pd.Timestamp("2016-05-25 13:30:00.048")
// ...            ],
// ...            "ticker": ["MSFT", "MSFT", "GOOG", "GOOG", "AAPL"],
// ...            "price": [51.95, 51.95, 720.77, 720.92, 98.0],
// ...            "quantity": [75, 155, 100, 100, 100]
// ...        }
// ...    )
// >>> trades
//
//	time ticker   price  quantity
//
// 0 2016-05-25 13:30:00.023   MSFT   51.95        75
// 1 2016-05-25 13:30:00.038   MSFT   51.95       155
// 2 2016-05-25 13:30:00.048   GOOG  720.77       100
// 3 2016-05-25 13:30:00.048   GOOG  720.92       100
// 4 2016-05-25 13:30:00.048   AAPL   98.00       100
//
// # By default we are taking the asof of the quotes
//
// >>> pd.merge_asof(trades, quotes, on="time", by="ticker")
//
//	time ticker   price  quantity     bid     ask
//
// 0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
// 1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
// 2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
// 3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
// 4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
//
// # We only asof within 2ms between the quote time and the trade time
//
// >>> pd.merge_asof(
// ...     trades, quotes, on="time", by="ticker", tolerance=pd.Timedelta("2ms")
// ... )
//
//	time ticker   price  quantity     bid     ask
//
// 0 2016-05-25 13:30:00.023   MSFT   51.95        75   51.95   51.96
// 1 2016-05-25 13:30:00.038   MSFT   51.95       155     NaN     NaN
// 2 2016-05-25 13:30:00.048   GOOG  720.77       100  720.50  720.93
// 3 2016-05-25 13:30:00.048   GOOG  720.92       100  720.50  720.93
// 4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
//
// We only asof within 10ms between the quote time and the trade time
// and we exclude exact matches on time. However *prior* data will
// propagate forward
//
// >>> pd.merge_asof(
// ...     trades,
// ...     quotes,
// ...     on="time",
// ...     by="ticker",
// ...     tolerance=pd.Timedelta("10ms"),
// ...     allow_exact_matches=False
// ... )
//
//	time ticker   price  quantity     bid     ask
//
// 0 2016-05-25 13:30:00.023   MSFT   51.95        75     NaN     NaN
// 1 2016-05-25 13:30:00.038   MSFT   51.95       155   51.97   51.98
// 2 2016-05-25 13:30:00.048   GOOG  720.77       100     NaN     NaN
// 3 2016-05-25 13:30:00.048   GOOG  720.92       100     NaN     NaN
// 4 2016-05-25 13:30:00.048   AAPL   98.00       100     NaN     NaN
//
//go:linkname MergeAsof py.merge_asof
func MergeAsof(left *py.Object, right *py.Object, on *py.Object, leftOn *py.Object, rightOn *py.Object, leftIndex *py.Object, rightIndex *py.Object, by *py.Object, leftBy *py.Object, rightBy *py.Object, suffixes *py.Object, tolerance *py.Object, allowExactMatches *py.Object, direction *py.Object) *py.Object

// Perform a merge for ordered data with optional filling/interpolation.
//
// Designed for ordered data like time series data. Optionally
// perform group-wise merge (see examples).
//
// Parameters
// ----------
// left : DataFrame or named Series
// right : DataFrame or named Series
// on : label or list
//
//	Field names to join on. Must be found in both DataFrames.
//
// left_on : label or list, or array-like
//
//	Field names to join on in left DataFrame. Can be a vector or list of
//	vectors of the length of the DataFrame to use a particular vector as
//	the join key instead of columns.
//
// right_on : label or list, or array-like
//
//	Field names to join on in right DataFrame or vector/list of vectors per
//	left_on docs.
//
// left_by : column name or list of column names
//
//	Group left DataFrame by group columns and merge piece by piece with
//	right DataFrame. Must be None if either left or right are a Series.
//
// right_by : column name or list of column names
//
//	Group right DataFrame by group columns and merge piece by piece with
//	left DataFrame. Must be None if either left or right are a Series.
//
// fill_method : {'ffill', None}, default None
//
//	Interpolation method for data.
//
// suffixes : list-like, default is ("_x", "_y")
//
//	A length-2 sequence where each element is optionally a string
//	indicating the suffix to add to overlapping column names in
//	`left` and `right` respectively. Pass a value of `None` instead
//	of a string to indicate that the column name from `left` or
//	`right` should be left as-is, with no suffix. At least one of the
//	values must not be None.
//
// how : {'left', 'right', 'outer', 'inner'}, default 'outer'
//   - left: use only keys from left frame (SQL: left outer join)
//   - right: use only keys from right frame (SQL: right outer join)
//   - outer: use union of keys from both frames (SQL: full outer join)
//   - inner: use intersection of keys from both frames (SQL: inner join).
//
// Returns
// -------
// DataFrame
//
//	The merged DataFrame output type will be the same as
//	'left', if it is a subclass of DataFrame.
//
// See Also
// --------
// merge : Merge with a database-style join.
// merge_asof : Merge on nearest keys.
//
// Examples
// --------
// >>> from pandas import merge_ordered
// >>> df1 = pd.DataFrame(
// ...     {
// ...         "key": ["a", "c", "e", "a", "c", "e"],
// ...         "lvalue": [1, 2, 3, 1, 2, 3],
// ...         "group": ["a", "a", "a", "b", "b", "b"]
// ...     }
// ... )
// >>> df1
//
//	key  lvalue group
//
// 0   a       1     a
// 1   c       2     a
// 2   e       3     a
// 3   a       1     b
// 4   c       2     b
// 5   e       3     b
//
// >>> df2 = pd.DataFrame({"key": ["b", "c", "d"], "rvalue": [1, 2, 3]})
// >>> df2
//
//	key  rvalue
//
// 0   b       1
// 1   c       2
// 2   d       3
//
// >>> merge_ordered(df1, df2, fill_method="ffill", left_by="group")
//
//	key  lvalue group  rvalue
//
// 0   a       1     a     NaN
// 1   b       1     a     1.0
// 2   c       2     a     2.0
// 3   d       2     a     3.0
// 4   e       3     a     3.0
// 5   a       1     b     NaN
// 6   b       1     b     1.0
// 7   c       2     b     2.0
// 8   d       2     b     3.0
// 9   e       3     b     3.0
//
//go:linkname MergeOrdered py.merge_ordered
func MergeOrdered(left *py.Object, right *py.Object, on *py.Object, leftOn *py.Object, rightOn *py.Object, leftBy *py.Object, rightBy *py.Object, fillMethod *py.Object, suffixes *py.Object, how *py.Object) *py.Object

// Compute a simple cross tabulation of two (or more) factors.
//
// By default, computes a frequency table of the factors unless an
// array of values and an aggregation function are passed.
//
// Parameters
// ----------
// index : array-like, Series, or list of arrays/Series
//
//	Values to group by in the rows.
//
// columns : array-like, Series, or list of arrays/Series
//
//	Values to group by in the columns.
//
// values : array-like, optional
//
//	Array of values to aggregate according to the factors.
//	Requires `aggfunc` be specified.
//
// rownames : sequence, default None
//
//	If passed, must match number of row arrays passed.
//
// colnames : sequence, default None
//
//	If passed, must match number of column arrays passed.
//
// aggfunc : function, optional
//
//	If specified, requires `values` be specified as well.
//
// margins : bool, default False
//
//	Add row/column margins (subtotals).
//
// margins_name : str, default 'All'
//
//	Name of the row/column that will contain the totals
//	when margins is True.
//
// dropna : bool, default True
//
//	Do not include columns whose entries are all NaN.
//
// normalize : bool, {'all', 'index', 'columns'}, or {0,1}, default False
//
//	Normalize by dividing all values by the sum of values.
//
//	- If passed 'all' or `True`, will normalize over all values.
//	- If passed 'index' will normalize over each row.
//	- If passed 'columns' will normalize over each column.
//	- If margins is `True`, will also normalize margin values.
//
// Returns
// -------
// DataFrame
//
//	Cross tabulation of the data.
//
// See Also
// --------
// DataFrame.pivot : Reshape data based on column values.
// pivot_table : Create a pivot table as a DataFrame.
//
// Notes
// -----
// Any Series passed will have their name attributes used unless row or column
// names for the cross-tabulation are specified.
//
// Any input passed containing Categorical data will have **all** of its
// categories included in the cross-tabulation, even if the actual data does
// not contain any instances of a particular category.
//
// In the event that there aren't overlapping indexes an empty DataFrame will
// be returned.
//
// Reference :ref:`the user guide <reshaping.crosstabulations>` for more examples.
//
// Examples
// --------
// >>> a = np.array(["foo", "foo", "foo", "foo", "bar", "bar",
// ...               "bar", "bar", "foo", "foo", "foo"], dtype=object)
// >>> b = np.array(["one", "one", "one", "two", "one", "one",
// ...               "one", "two", "two", "two", "one"], dtype=object)
// >>> c = np.array(["dull", "dull", "shiny", "dull", "dull", "shiny",
// ...               "shiny", "dull", "shiny", "shiny", "shiny"],
// ...              dtype=object)
// >>> pd.crosstab(a, [b, c], rownames=['a'], colnames=['b', 'c'])
// b   one        two
// c   dull shiny dull shiny
// a
// bar    1     2    1     0
// foo    2     2    1     2
//
// Here 'c' and 'f' are not represented in the data and will not be
// shown in the output because dropna is True by default. Set
// dropna=False to preserve categories with no data.
//
// >>> foo = pd.Categorical(['a', 'b'], categories=['a', 'b', 'c'])
// >>> bar = pd.Categorical(['d', 'e'], categories=['d', 'e', 'f'])
// >>> pd.crosstab(foo, bar)
// col_0  d  e
// row_0
// a      1  0
// b      0  1
// >>> pd.crosstab(foo, bar, dropna=False)
// col_0  d  e  f
// row_0
// a      1  0  0
// b      0  1  0
// c      0  0  0
//
//go:linkname Crosstab py.crosstab
func Crosstab(index *py.Object, columns *py.Object, values *py.Object, rownames *py.Object, colnames *py.Object, aggfunc *py.Object, margins *py.Object, marginsName *py.Object, dropna *py.Object, normalize *py.Object) *py.Object

// Return reshaped DataFrame organized by given index / column values.
//
// Reshape data (produce a "pivot" table) based on column values. Uses
// unique values from specified `index` / `columns` to form axes of the
// resulting DataFrame. This function does not support data
// aggregation, multiple values will result in a MultiIndex in the
// columns. See the :ref:`User Guide <reshaping>` for more on reshaping.
//
// Parameters
// ----------
// data : DataFrame
// columns : str or object or a list of str
//
//	Column to use to make new frame's columns.
//
// index : str or object or a list of str, optional
//
//	Column to use to make new frame's index. If not given, uses existing index.
//
// values : str, object or a list of the previous, optional
//
//	Column(s) to use for populating new frame's values. If not
//	specified, all remaining columns will be used and the result will
//	have hierarchically indexed columns.
//
// Returns
// -------
// DataFrame
//
//	Returns reshaped DataFrame.
//
// Raises
// ------
// ValueError:
//
//	When there are any `index`, `columns` combinations with multiple
//	values. `DataFrame.pivot_table` when you need to aggregate.
//
// See Also
// --------
// DataFrame.pivot_table : Generalization of pivot that can handle
//
//	duplicate values for one index/column pair.
//
// DataFrame.unstack : Pivot based on the index values instead of a
//
//	column.
//
// wide_to_long : Wide panel to long format. Less flexible but more
//
//	user-friendly than melt.
//
// Notes
// -----
// For finer-tuned control, see hierarchical indexing documentation along
// with the related stack/unstack methods.
//
// Reference :ref:`the user guide <reshaping.pivot>` for more examples.
//
// Examples
// --------
// >>> df = pd.DataFrame({'foo': ['one', 'one', 'one', 'two', 'two',
// ...                            'two'],
// ...                    'bar': ['A', 'B', 'C', 'A', 'B', 'C'],
// ...                    'baz': [1, 2, 3, 4, 5, 6],
// ...                    'zoo': ['x', 'y', 'z', 'q', 'w', 't']})
// >>> df
//
//	foo   bar  baz  zoo
//
// 0   one   A    1    x
// 1   one   B    2    y
// 2   one   C    3    z
// 3   two   A    4    q
// 4   two   B    5    w
// 5   two   C    6    t
//
// >>> df.pivot(index='foo', columns='bar', values='baz')
// bar  A   B   C
// foo
// one  1   2   3
// two  4   5   6
//
// >>> df.pivot(index='foo', columns='bar')['baz']
// bar  A   B   C
// foo
// one  1   2   3
// two  4   5   6
//
// >>> df.pivot(index='foo', columns='bar', values=['baz', 'zoo'])
//
//	baz       zoo
//
// bar   A  B  C   A  B  C
// foo
// one   1  2  3   x  y  z
// two   4  5  6   q  w  t
//
// You could also assign a list of column names or a list of index names.
//
// >>> df = pd.DataFrame({
// ...        "lev1": [1, 1, 1, 2, 2, 2],
// ...        "lev2": [1, 1, 2, 1, 1, 2],
// ...        "lev3": [1, 2, 1, 2, 1, 2],
// ...        "lev4": [1, 2, 3, 4, 5, 6],
// ...        "values": [0, 1, 2, 3, 4, 5]})
// >>> df
//
//	lev1 lev2 lev3 lev4 values
//
// 0   1    1    1    1    0
// 1   1    1    2    2    1
// 2   1    2    1    3    2
// 3   2    1    2    4    3
// 4   2    1    1    5    4
// 5   2    2    2    6    5
//
// >>> df.pivot(index="lev1", columns=["lev2", "lev3"], values="values")
// lev2    1         2
// lev3    1    2    1    2
// lev1
// 1     0.0  1.0  2.0  NaN
// 2     4.0  3.0  NaN  5.0
//
// >>> df.pivot(index=["lev1", "lev2"], columns=["lev3"], values="values")
//
//	lev3    1    2
//
// lev1  lev2
//
//	1     1  0.0  1.0
//	      2  2.0  NaN
//	2     1  4.0  3.0
//	      2  NaN  5.0
//
// A ValueError is raised if there are any duplicates.
//
// >>> df = pd.DataFrame({"foo": ['one', 'one', 'two', 'two'],
// ...                    "bar": ['A', 'A', 'B', 'C'],
// ...                    "baz": [1, 2, 3, 4]})
// >>> df
//
//	foo bar  baz
//
// 0  one   A    1
// 1  one   A    2
// 2  two   B    3
// 3  two   C    4
//
// Notice that the first two rows are the same for our `index`
// and `columns` arguments.
//
// >>> df.pivot(index='foo', columns='bar', values='baz')
// Traceback (most recent call last):
//
//	...
//
// ValueError: Index contains duplicate entries, cannot reshape
//
//go:linkname Pivot py.pivot
func Pivot(data *py.Object) *py.Object

// Create a spreadsheet-style pivot table as a DataFrame.
//
// The levels in the pivot table will be stored in MultiIndex objects
// (hierarchical indexes) on the index and columns of the result DataFrame.
//
// Parameters
// ----------
// data : DataFrame
// values : list-like or scalar, optional
//
//	Column or columns to aggregate.
//
// index : column, Grouper, array, or list of the previous
//
//	Keys to group by on the pivot table index. If a list is passed,
//	it can contain any of the other types (except list). If an array is
//	passed, it must be the same length as the data and will be used in
//	the same manner as column values.
//
// columns : column, Grouper, array, or list of the previous
//
//	Keys to group by on the pivot table column. If a list is passed,
//	it can contain any of the other types (except list). If an array is
//	passed, it must be the same length as the data and will be used in
//	the same manner as column values.
//
// aggfunc : function, list of functions, dict, default "mean"
//
//	If a list of functions is passed, the resulting pivot table will have
//	hierarchical columns whose top level are the function names
//	(inferred from the function objects themselves).
//	If a dict is passed, the key is column to aggregate and the value is
//	function or list of functions. If ``margin=True``, aggfunc will be
//	used to calculate the partial aggregates.
//
// fill_value : scalar, default None
//
//	Value to replace missing values with (in the resulting pivot table,
//	after aggregation).
//
// margins : bool, default False
//
//	If ``margins=True``, special ``All`` columns and rows
//	will be added with partial group aggregates across the categories
//	on the rows and columns.
//
// dropna : bool, default True
//
//	Do not include columns whose entries are all NaN. If True,
//	rows with a NaN value in any column will be omitted before
//	computing margins.
//
// margins_name : str, default 'All'
//
//	Name of the row / column that will contain the totals
//	when margins is True.
//
// observed : bool, default False
//
//	This only applies if any of the groupers are Categoricals.
//	If True: only show observed values for categorical groupers.
//	If False: show all values for categorical groupers.
//
//	.. deprecated:: 2.2.0
//
//	    The default value of ``False`` is deprecated and will change to
//	    ``True`` in a future version of pandas.
//
// sort : bool, default True
//
//	Specifies if the result should be sorted.
//
//	.. versionadded:: 1.3.0
//
// Returns
// -------
// DataFrame
//
//	An Excel style pivot table.
//
// See Also
// --------
// DataFrame.pivot : Pivot without aggregation that can handle
//
//	non-numeric data.
//
// DataFrame.melt: Unpivot a DataFrame from wide to long format,
//
//	optionally leaving identifiers set.
//
// wide_to_long : Wide panel to long format. Less flexible but more
//
//	user-friendly than melt.
//
// Notes
// -----
// Reference :ref:`the user guide <reshaping.pivot>` for more examples.
//
// Examples
// --------
// >>> df = pd.DataFrame({"A": ["foo", "foo", "foo", "foo", "foo",
// ...                          "bar", "bar", "bar", "bar"],
// ...                    "B": ["one", "one", "one", "two", "two",
// ...                          "one", "one", "two", "two"],
// ...                    "C": ["small", "large", "large", "small",
// ...                          "small", "large", "small", "small",
// ...                          "large"],
// ...                    "D": [1, 2, 2, 3, 3, 4, 5, 6, 7],
// ...                    "E": [2, 4, 5, 5, 6, 6, 8, 9, 9]})
// >>> df
//
//	A    B      C  D  E
//
// 0  foo  one  small  1  2
// 1  foo  one  large  2  4
// 2  foo  one  large  2  5
// 3  foo  two  small  3  5
// 4  foo  two  small  3  6
// 5  bar  one  large  4  6
// 6  bar  one  small  5  8
// 7  bar  two  small  6  9
// 8  bar  two  large  7  9
//
// This first example aggregates values by taking the sum.
//
// >>> table = pd.pivot_table(df, values='D', index=['A', 'B'],
// ...                        columns=['C'], aggfunc="sum")
// >>> table
// C        large  small
// A   B
// bar one    4.0    5.0
//
//	two    7.0    6.0
//
// foo one    4.0    1.0
//
//	two    NaN    6.0
//
// We can also fill missing values using the `fill_value` parameter.
//
// >>> table = pd.pivot_table(df, values='D', index=['A', 'B'],
// ...                        columns=['C'], aggfunc="sum", fill_value=0)
// >>> table
// C        large  small
// A   B
// bar one      4      5
//
//	two      7      6
//
// foo one      4      1
//
//	two      0      6
//
// The next example aggregates by taking the mean across multiple columns.
//
// >>> table = pd.pivot_table(df, values=['D', 'E'], index=['A', 'C'],
// ...                        aggfunc={'D': "mean", 'E': "mean"})
// >>> table
//
//	D         E
//
// A   C
// bar large  5.500000  7.500000
//
//	small  5.500000  8.500000
//
// foo large  2.000000  4.500000
//
//	small  2.333333  4.333333
//
// We can also calculate multiple types of aggregations for any given
// value column.
//
// >>> table = pd.pivot_table(df, values=['D', 'E'], index=['A', 'C'],
// ...                        aggfunc={'D': "mean",
// ...                                 'E': ["min", "max", "mean"]})
// >>> table
//
//	   D   E
//	mean max      mean  min
//
// A   C
// bar large  5.500000   9  7.500000    6
//
//	small  5.500000   9  8.500000    8
//
// foo large  2.000000   5  4.500000    4
//
//	small  2.333333   6  4.333333    2
//
//go:linkname PivotTable py.pivot_table
func PivotTable(data *py.Object, values *py.Object, index *py.Object, columns *py.Object, aggfunc *py.Object, fillValue *py.Object, margins *py.Object, dropna *py.Object, marginsName *py.Object, observed *py.Object, sort *py.Object) *py.Object

// Convert categorical variable into dummy/indicator variables.
//
// Each variable is converted in as many 0/1 variables as there are different
// values. Columns in the output are each named after a value; if the input is
// a DataFrame, the name of the original variable is prepended to the value.
//
// Parameters
// ----------
// data : array-like, Series, or DataFrame
//
//	Data of which to get dummy indicators.
//
// prefix : str, list of str, or dict of str, default None
//
//	String to append DataFrame column names.
//	Pass a list with length equal to the number of columns
//	when calling get_dummies on a DataFrame. Alternatively, `prefix`
//	can be a dictionary mapping column names to prefixes.
//
// prefix_sep : str, default '_'
//
//	If appending prefix, separator/delimiter to use. Or pass a
//	list or dictionary as with `prefix`.
//
// dummy_na : bool, default False
//
//	Add a column to indicate NaNs, if False NaNs are ignored.
//
// columns : list-like, default None
//
//	Column names in the DataFrame to be encoded.
//	If `columns` is None then all the columns with
//	`object`, `string`, or `category` dtype will be converted.
//
// sparse : bool, default False
//
//	Whether the dummy-encoded columns should be backed by
//	a :class:`SparseArray` (True) or a regular NumPy array (False).
//
// drop_first : bool, default False
//
//	Whether to get k-1 dummies out of k categorical levels by removing the
//	first level.
//
// dtype : dtype, default bool
//
//	Data type for new columns. Only a single dtype is allowed.
//
// Returns
// -------
// DataFrame
//
//	Dummy-coded data. If `data` contains other columns than the
//	dummy-coded one(s), these will be prepended, unaltered, to the result.
//
// See Also
// --------
// Series.str.get_dummies : Convert Series of strings to dummy codes.
// :func:`~pandas.from_dummies` : Convert dummy codes to categorical “DataFrame“.
//
// Notes
// -----
// Reference :ref:`the user guide <reshaping.dummies>` for more examples.
//
// Examples
// --------
// >>> s = pd.Series(list('abca'))
//
// >>> pd.get_dummies(s)
//
//	a      b      c
//
// 0   True  False  False
// 1  False   True  False
// 2  False  False   True
// 3   True  False  False
//
// >>> s1 = ['a', 'b', np.nan]
//
// >>> pd.get_dummies(s1)
//
//	a      b
//
// 0   True  False
// 1  False   True
// 2  False  False
//
// >>> pd.get_dummies(s1, dummy_na=True)
//
//	a      b    NaN
//
// 0   True  False  False
// 1  False   True  False
// 2  False  False   True
//
// >>> df = pd.DataFrame({'A': ['a', 'b', 'a'], 'B': ['b', 'a', 'c'],
// ...                    'C': [1, 2, 3]})
//
// >>> pd.get_dummies(df, prefix=['col1', 'col2'])
//
//	C  col1_a  col1_b  col2_a  col2_b  col2_c
//
// 0  1    True   False   False    True   False
// 1  2   False    True    True   False   False
// 2  3    True   False   False   False    True
//
// >>> pd.get_dummies(pd.Series(list('abcaa')))
//
//	a      b      c
//
// 0   True  False  False
// 1  False   True  False
// 2  False  False   True
// 3   True  False  False
// 4   True  False  False
//
// >>> pd.get_dummies(pd.Series(list('abcaa')), drop_first=True)
//
//	b      c
//
// 0  False  False
// 1   True  False
// 2  False   True
// 3  False  False
// 4  False  False
//
// >>> pd.get_dummies(pd.Series(list('abc')), dtype=float)
//
//	a    b    c
//
// 0  1.0  0.0  0.0
// 1  0.0  1.0  0.0
// 2  0.0  0.0  1.0
//
//go:linkname GetDummies py.get_dummies
func GetDummies(data *py.Object, prefix *py.Object, prefixSep *py.Object, dummyNa *py.Object, columns *py.Object, sparse *py.Object, dropFirst *py.Object, dtype *py.Object) *py.Object

// Create a categorical “DataFrame“ from a “DataFrame“ of dummy variables.
//
// Inverts the operation performed by :func:`~pandas.get_dummies`.
//
// .. versionadded:: 1.5.0
//
// Parameters
// ----------
// data : DataFrame
//
//	Data which contains dummy-coded variables in form of integer columns of
//	1's and 0's.
//
// sep : str, default None
//
//	Separator used in the column names of the dummy categories they are
//	character indicating the separation of the categorical names from the prefixes.
//	For example, if your column names are 'prefix_A' and 'prefix_B',
//	you can strip the underscore by specifying sep='_'.
//
// default_category : None, Hashable or dict of Hashables, default None
//
//	The default category is the implied category when a value has none of the
//	listed categories specified with a one, i.e. if all dummies in a row are
//	zero. Can be a single value for all variables or a dict directly mapping
//	the default categories to a prefix of a variable.
//
// Returns
// -------
// DataFrame
//
//	Categorical data decoded from the dummy input-data.
//
// Raises
// ------
// ValueError
//   - When the input “DataFrame“ “data“ contains NA values.
//   - When the input “DataFrame“ “data“ contains column names with separators
//     that do not match the separator specified with “sep“.
//   - When a “dict“ passed to “default_category“ does not include an implied
//     category for each prefix.
//   - When a value in “data“ has more than one category assigned to it.
//   - When “default_category=None“ and a value in “data“ has no category
//     assigned to it.
//
// TypeError
//   - When the input “data“ is not of type “DataFrame“.
//   - When the input “DataFrame“ “data“ contains non-dummy data.
//   - When the passed “sep“ is of a wrong data type.
//   - When the passed “default_category“ is of a wrong data type.
//
// See Also
// --------
// :func:`~pandas.get_dummies` : Convert “Series“ or “DataFrame“ to dummy codes.
// :class:`~pandas.Categorical` : Represent a categorical variable in classic.
//
// Notes
// -----
// The columns of the passed dummy data should only include 1's and 0's,
// or boolean values.
//
// Examples
// --------
// >>> df = pd.DataFrame({"a": [1, 0, 0, 1], "b": [0, 1, 0, 0],
// ...                    "c": [0, 0, 1, 0]})
//
// >>> df
//
//	a  b  c
//
// 0  1  0  0
// 1  0  1  0
// 2  0  0  1
// 3  1  0  0
//
// >>> pd.from_dummies(df)
// 0     a
// 1     b
// 2     c
// 3     a
//
// >>> df = pd.DataFrame({"col1_a": [1, 0, 1], "col1_b": [0, 1, 0],
// ...                    "col2_a": [0, 1, 0], "col2_b": [1, 0, 0],
// ...                    "col2_c": [0, 0, 1]})
//
// >>> df
//
//	col1_a  col1_b  col2_a  col2_b  col2_c
//
// 0       1       0       0       1       0
// 1       0       1       1       0       0
// 2       1       0       0       0       1
//
// >>> pd.from_dummies(df, sep="_")
//
//	col1    col2
//
// 0    a       b
// 1    b       a
// 2    a       c
//
// >>> df = pd.DataFrame({"col1_a": [1, 0, 0], "col1_b": [0, 1, 0],
// ...                    "col2_a": [0, 1, 0], "col2_b": [1, 0, 0],
// ...                    "col2_c": [0, 0, 0]})
//
// >>> df
//
//	col1_a  col1_b  col2_a  col2_b  col2_c
//
// 0       1       0       0       1       0
// 1       0       1       1       0       0
// 2       0       0       0       0       0
//
// >>> pd.from_dummies(df, sep="_", default_category={"col1": "d", "col2": "e"})
//
//	col1    col2
//
// 0    a       b
// 1    b       a
// 2    d       e
//
//go:linkname FromDummies py.from_dummies
func FromDummies(data *py.Object, sep *py.Object, defaultCategory *py.Object) *py.Object

// Bin values into discrete intervals.
//
// Use `cut` when you need to segment and sort data values into bins. This
// function is also useful for going from a continuous variable to a
// categorical variable. For example, `cut` could convert ages to groups of
// age ranges. Supports binning into an equal number of bins, or a
// pre-specified array of bins.
//
// Parameters
// ----------
// x : array-like
//
//	The input array to be binned. Must be 1-dimensional.
//
// bins : int, sequence of scalars, or IntervalIndex
//
//	The criteria to bin by.
//
//	* int : Defines the number of equal-width bins in the range of `x`. The
//	  range of `x` is extended by .1% on each side to include the minimum
//	  and maximum values of `x`.
//	* sequence of scalars : Defines the bin edges allowing for non-uniform
//	  width. No extension of the range of `x` is done.
//	* IntervalIndex : Defines the exact bins to be used. Note that
//	  IntervalIndex for `bins` must be non-overlapping.
//
// right : bool, default True
//
//	Indicates whether `bins` includes the rightmost edge or not. If
//	``right == True`` (the default), then the `bins` ``[1, 2, 3, 4]``
//	indicate (1,2], (2,3], (3,4]. This argument is ignored when
//	`bins` is an IntervalIndex.
//
// labels : array or False, default None
//
//	Specifies the labels for the returned bins. Must be the same length as
//	the resulting bins. If False, returns only integer indicators of the
//	bins. This affects the type of the output container (see below).
//	This argument is ignored when `bins` is an IntervalIndex. If True,
//	raises an error. When `ordered=False`, labels must be provided.
//
// retbins : bool, default False
//
//	Whether to return the bins or not. Useful when bins is provided
//	as a scalar.
//
// precision : int, default 3
//
//	The precision at which to store and display the bins labels.
//
// include_lowest : bool, default False
//
//	Whether the first interval should be left-inclusive or not.
//
// duplicates : {default 'raise', 'drop'}, optional
//
//	If bin edges are not unique, raise ValueError or drop non-uniques.
//
// ordered : bool, default True
//
//	Whether the labels are ordered or not. Applies to returned types
//	Categorical and Series (with Categorical dtype). If True,
//	the resulting categorical will be ordered. If False, the resulting
//	categorical will be unordered (labels must be provided).
//
// Returns
// -------
// out : Categorical, Series, or ndarray
//
//	An array-like object representing the respective bin for each value
//	of `x`. The type depends on the value of `labels`.
//
//	* None (default) : returns a Series for Series `x` or a
//	  Categorical for all other inputs. The values stored within
//	  are Interval dtype.
//
//	* sequence of scalars : returns a Series for Series `x` or a
//	  Categorical for all other inputs. The values stored within
//	  are whatever the type in the sequence is.
//
//	* False : returns an ndarray of integers.
//
// bins : numpy.ndarray or IntervalIndex.
//
//	The computed or specified bins. Only returned when `retbins=True`.
//	For scalar or sequence `bins`, this is an ndarray with the computed
//	bins. If set `duplicates=drop`, `bins` will drop non-unique bin. For
//	an IntervalIndex `bins`, this is equal to `bins`.
//
// See Also
// --------
// qcut : Discretize variable into equal-sized buckets based on rank
//
//	or based on sample quantiles.
//
// Categorical : Array type for storing data that come from a
//
//	fixed set of values.
//
// Series : One-dimensional array with axis labels (including time series).
// IntervalIndex : Immutable Index implementing an ordered, sliceable set.
//
// Notes
// -----
// Any NA values will be NA in the result. Out of bounds values will be NA in
// the resulting Series or Categorical object.
//
// Reference :ref:`the user guide <reshaping.tile.cut>` for more examples.
//
// Examples
// --------
// Discretize into three equal-sized bins.
//
// >>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3)
// ... # doctest: +ELLIPSIS
// [(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
// Categories (3, interval[float64, right]): [(0.994, 3.0] < (3.0, 5.0] ...
//
// >>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3, retbins=True)
// ... # doctest: +ELLIPSIS
// ([(0.994, 3.0], (5.0, 7.0], (3.0, 5.0], (3.0, 5.0], (5.0, 7.0], ...
// Categories (3, interval[float64, right]): [(0.994, 3.0] < (3.0, 5.0] ...
// array([0.994, 3.   , 5.   , 7.   ]))
//
// Discovers the same bins, but assign them specific labels. Notice that
// the returned Categorical's categories are `labels` and is ordered.
//
// >>> pd.cut(np.array([1, 7, 5, 4, 6, 3]),
// ...        3, labels=["bad", "medium", "good"])
// ['bad', 'good', 'medium', 'medium', 'good', 'bad']
// Categories (3, object): ['bad' < 'medium' < 'good']
//
// “ordered=False“ will result in unordered categories when labels are passed.
// This parameter can be used to allow non-unique labels:
//
// >>> pd.cut(np.array([1, 7, 5, 4, 6, 3]), 3,
// ...        labels=["B", "A", "B"], ordered=False)
// ['B', 'B', 'A', 'A', 'B', 'B']
// Categories (2, object): ['A', 'B']
//
// “labels=False“ implies you just want the bins back.
//
// >>> pd.cut([0, 1, 1, 2], bins=4, labels=False)
// array([0, 1, 1, 3])
//
// Passing a Series as an input returns a Series with categorical dtype:
//
// >>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
// ...               index=['a', 'b', 'c', 'd', 'e'])
// >>> pd.cut(s, 3)
// ... # doctest: +ELLIPSIS
// a    (1.992, 4.667]
// b    (1.992, 4.667]
// c    (4.667, 7.333]
// d     (7.333, 10.0]
// e     (7.333, 10.0]
// dtype: category
// Categories (3, interval[float64, right]): [(1.992, 4.667] < (4.667, ...
//
// Passing a Series as an input returns a Series with mapping value.
// It is used to map numerically to intervals based on bins.
//
// >>> s = pd.Series(np.array([2, 4, 6, 8, 10]),
// ...               index=['a', 'b', 'c', 'd', 'e'])
// >>> pd.cut(s, [0, 2, 4, 6, 8, 10], labels=False, retbins=True, right=False)
// ... # doctest: +ELLIPSIS
// (a    1.0
//
//	b    2.0
//	c    3.0
//	d    4.0
//	e    NaN
//	dtype: float64,
//	array([ 0,  2,  4,  6,  8, 10]))
//
// # Use `drop` optional when bins is not unique
//
// >>> pd.cut(s, [0, 2, 4, 6, 10, 10], labels=False, retbins=True,
// ...        right=False, duplicates='drop')
// ... # doctest: +ELLIPSIS
// (a    1.0
//
//	b    2.0
//	c    3.0
//	d    3.0
//	e    NaN
//	dtype: float64,
//	array([ 0,  2,  4,  6, 10]))
//
// Passing an IntervalIndex for `bins` results in those categories exactly.
// Notice that values not covered by the IntervalIndex are set to NaN. 0
// is to the left of the first bin (which is closed on the right), and 1.5
// falls between two bins.
//
// >>> bins = pd.IntervalIndex.from_tuples([(0, 1), (2, 3), (4, 5)])
// >>> pd.cut([0, 0.5, 1.5, 2.5, 4.5], bins)
// [NaN, (0.0, 1.0], NaN, (2.0, 3.0], (4.0, 5.0]]
// Categories (3, interval[int64, right]): [(0, 1] < (2, 3] < (4, 5]]
//
//go:linkname Cut py.cut
func Cut(x *py.Object, bins *py.Object, right *py.Object, labels *py.Object, retbins *py.Object, precision *py.Object, includeLowest *py.Object, duplicates *py.Object, ordered *py.Object) *py.Object

// Quantile-based discretization function.
//
// Discretize variable into equal-sized buckets based on rank or based
// on sample quantiles. For example 1000 values for 10 quantiles would
// produce a Categorical object indicating quantile membership for each data point.
//
// Parameters
// ----------
// x : 1d ndarray or Series
// q : int or list-like of float
//
//	Number of quantiles. 10 for deciles, 4 for quartiles, etc. Alternately
//	array of quantiles, e.g. [0, .25, .5, .75, 1.] for quartiles.
//
// labels : array or False, default None
//
//	Used as labels for the resulting bins. Must be of the same length as
//	the resulting bins. If False, return only integer indicators of the
//	bins. If True, raises an error.
//
// retbins : bool, optional
//
//	Whether to return the (bins, labels) or not. Can be useful if bins
//	is given as a scalar.
//
// precision : int, optional
//
//	The precision at which to store and display the bins labels.
//
// duplicates : {default 'raise', 'drop'}, optional
//
//	If bin edges are not unique, raise ValueError or drop non-uniques.
//
// Returns
// -------
// out : Categorical or Series or array of integers if labels is False
//
//	The return type (Categorical or Series) depends on the input: a Series
//	of type category if input is a Series else Categorical. Bins are
//	represented as categories when categorical data is returned.
//
// bins : ndarray of floats
//
//	Returned only if `retbins` is True.
//
// Notes
// -----
// Out of bounds values will be NA in the resulting Categorical object
//
// Examples
// --------
// >>> pd.qcut(range(5), 4)
// ... # doctest: +ELLIPSIS
// [(-0.001, 1.0], (-0.001, 1.0], (1.0, 2.0], (2.0, 3.0], (3.0, 4.0]]
// Categories (4, interval[float64, right]): [(-0.001, 1.0] < (1.0, 2.0] ...
//
// >>> pd.qcut(range(5), 3, labels=["good", "medium", "bad"])
// ... # doctest: +SKIP
// [good, good, medium, bad, bad]
// Categories (3, object): [good < medium < bad]
//
// >>> pd.qcut(range(5), 4, labels=False)
// array([0, 0, 1, 2, 3])
//
//go:linkname Qcut py.qcut
func Qcut(x *py.Object, q *py.Object, labels *py.Object, retbins *py.Object, precision *py.Object, duplicates *py.Object) *py.Object

// Read a table of fixed-width formatted lines into DataFrame.
//
// Also supports optionally iterating or breaking of the file
// into chunks.
//
// Additional help can be found in the `online docs for IO Tools
// <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html>`_.
//
// Parameters
// ----------
// filepath_or_buffer : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a text ``read()`` function.The string could be a URL.
//	Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be:
//	``file://localhost/path/to/table.csv``.
//
// colspecs : list of tuple (int, int) or 'infer'. optional
//
//	A list of tuples giving the extents of the fixed-width
//	fields of each line as half-open intervals (i.e.,  [from, to[ ).
//	String value 'infer' can be used to instruct the parser to try
//	detecting the column specifications from the first 100 rows of
//	the data which are not being skipped via skiprows (default='infer').
//
// widths : list of int, optional
//
//	A list of field widths which can be used instead of 'colspecs' if
//	the intervals are contiguous.
//
// infer_nrows : int, default 100
//
//	The number of rows to consider when letting the parser determine the
//	`colspecs`.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// **kwds : optional
//
//	Optional keyword arguments can be passed to ``TextFileReader``.
//
// Returns
// -------
// DataFrame or TextFileReader
//
//	A comma-separated values (csv) file is returned as two-dimensional
//	data structure with labeled axes.
//
// See Also
// --------
// DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
// read_csv : Read a comma-separated values (csv) file into DataFrame.
//
// Examples
// --------
// >>> pd.read_fwf('data.csv')  # doctest: +SKIP
//
//go:linkname ReadFwf py.read_fwf
func ReadFwf(filepathOrBuffer *py.Object) *py.Object

// Read general delimited file into DataFrame.
//
// Also supports optionally iterating or breaking of the file
// into chunks.
//
// Additional help can be found in the online docs for
// `IO Tools <https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html>`_.
//
// Parameters
// ----------
// filepath_or_buffer : str, path object or file-like object
//
//	Any valid string path is acceptable. The string could be a URL. Valid
//	URL schemes include http, ftp, s3, gs, and file. For file URLs, a host is
//	expected. A local file could be: file://localhost/path/to/table.csv.
//
//	If you want to pass in a path object, pandas accepts any ``os.PathLike``.
//
//	By file-like object, we refer to objects with a ``read()`` method, such as
//	a file handle (e.g. via builtin ``open`` function) or ``StringIO``.
//
// sep : str, default '\\t' (tab-stop)
//
//	Character or regex pattern to treat as the delimiter. If ``sep=None``, the
//	C engine cannot automatically detect
//	the separator, but the Python parsing engine can, meaning the latter will
//	be used and automatically detect the separator from only the first valid
//	row of the file by Python's builtin sniffer tool, ``csv.Sniffer``.
//	In addition, separators longer than 1 character and different from
//	``'\s+'`` will be interpreted as regular expressions and will also force
//	the use of the Python parsing engine. Note that regex delimiters are prone
//	to ignoring quoted data. Regex example: ``'\r\t'``.
//
// delimiter : str, optional
//
//	Alias for ``sep``.
//
// header : int, Sequence of int, 'infer' or None, default 'infer'
//
//	Row number(s) containing column labels and marking the start of the
//	data (zero-indexed). Default behavior is to infer the column names: if no ``names``
//	are passed the behavior is identical to ``header=0`` and column
//	names are inferred from the first line of the file, if column
//	names are passed explicitly to ``names`` then the behavior is identical to
//	``header=None``. Explicitly pass ``header=0`` to be able to
//	replace existing names. The header can be a list of integers that
//	specify row locations for a :class:`~pandas.MultiIndex` on the columns
//	e.g. ``[0, 1, 3]``. Intervening rows that are not specified will be
//	skipped (e.g. 2 in this example is skipped). Note that this
//	parameter ignores commented lines and empty lines if
//	``skip_blank_lines=True``, so ``header=0`` denotes the first line of
//	data rather than the first line of the file.
//
// names : Sequence of Hashable, optional
//
//	Sequence of column labels to apply. If the file contains a header row,
//	then you should explicitly pass ``header=0`` to override the column names.
//	Duplicates in this list are not allowed.
//
// index_col : Hashable, Sequence of Hashable or False, optional
//
//	Column(s) to use as row label(s), denoted either by column labels or column
//	indices.  If a sequence of labels or indices is given, :class:`~pandas.MultiIndex`
//	will be formed for the row labels.
//
//	Note: ``index_col=False`` can be used to force pandas to *not* use the first
//	column as the index, e.g., when you have a malformed file with delimiters at
//	the end of each line.
//
// usecols : Sequence of Hashable or Callable, optional
//
//	Subset of columns to select, denoted either by column labels or column indices.
//	If list-like, all elements must either
//	be positional (i.e. integer indices into the document columns) or strings
//	that correspond to column names provided either by the user in ``names`` or
//	inferred from the document header row(s). If ``names`` are given, the document
//	header row(s) are not taken into account. For example, a valid list-like
//	``usecols`` parameter would be ``[0, 1, 2]`` or ``['foo', 'bar', 'baz']``.
//	Element order is ignored, so ``usecols=[0, 1]`` is the same as ``[1, 0]``.
//	To instantiate a :class:`~pandas.DataFrame` from ``data`` with element order
//	preserved use ``pd.read_csv(data, usecols=['foo', 'bar'])[['foo', 'bar']]``
//	for columns in ``['foo', 'bar']`` order or
//	``pd.read_csv(data, usecols=['foo', 'bar'])[['bar', 'foo']]``
//	for ``['bar', 'foo']`` order.
//
//	If callable, the callable function will be evaluated against the column
//	names, returning names where the callable function evaluates to ``True``. An
//	example of a valid callable argument would be ``lambda x: x.upper() in
//	['AAA', 'BBB', 'DDD']``. Using this parameter results in much faster
//	parsing time and lower memory usage.
//
// dtype : dtype or dict of {Hashable : dtype}, optional
//
//	Data type(s) to apply to either the whole dataset or individual columns.
//	E.g., ``{'a': np.float64, 'b': np.int32, 'c': 'Int64'}``
//	Use ``str`` or ``object`` together with suitable ``na_values`` settings
//	to preserve and not interpret ``dtype``.
//	If ``converters`` are specified, they will be applied INSTEAD
//	of ``dtype`` conversion.
//
//	.. versionadded:: 1.5.0
//
//	    Support for ``defaultdict`` was added. Specify a ``defaultdict`` as input where
//	    the default determines the ``dtype`` of the columns which are not explicitly
//	    listed.
//
// engine : {'c', 'python', 'pyarrow'}, optional
//
//	Parser engine to use. The C and pyarrow engines are faster, while the python engine
//	is currently more feature-complete. Multithreading is currently only supported by
//	the pyarrow engine.
//
//	.. versionadded:: 1.4.0
//
//	    The 'pyarrow' engine was added as an *experimental* engine, and some features
//	    are unsupported, or may not work correctly, with this engine.
//
// converters : dict of {Hashable : Callable}, optional
//
//	Functions for converting values in specified columns. Keys can either
//	be column labels or column indices.
//
// true_values : list, optional
//
//	Values to consider as ``True`` in addition to case-insensitive variants of 'True'.
//
// false_values : list, optional
//
//	Values to consider as ``False`` in addition to case-insensitive variants of 'False'.
//
// skipinitialspace : bool, default False
//
//	Skip spaces after delimiter.
//
// skiprows : int, list of int or Callable, optional
//
//	Line numbers to skip (0-indexed) or number of lines to skip (``int``)
//	at the start of the file.
//
//	If callable, the callable function will be evaluated against the row
//	indices, returning ``True`` if the row should be skipped and ``False`` otherwise.
//	An example of a valid callable argument would be ``lambda x: x in [0, 2]``.
//
// skipfooter : int, default 0
//
//	Number of lines at bottom of file to skip (Unsupported with ``engine='c'``).
//
// nrows : int, optional
//
//	Number of rows of file to read. Useful for reading pieces of large files.
//
// na_values : Hashable, Iterable of Hashable or dict of {Hashable : Iterable}, optional
//
//	Additional strings to recognize as ``NA``/``NaN``. If ``dict`` passed, specific
//	per-column ``NA`` values.  By default the following values are interpreted as
//	``NaN``: " ", "#N/A", "#N/A N/A", "#NA", "-1.#IND", "-1.#QNAN", "-NaN", "-nan",
//	"1.#IND", "1.#QNAN", "<NA>", "N/A", "NA", "NULL", "NaN", "None",
//	"n/a", "nan", "null ".
//
// keep_default_na : bool, default True
//
//	Whether or not to include the default ``NaN`` values when parsing the data.
//	Depending on whether ``na_values`` is passed in, the behavior is as follows:
//
//	* If ``keep_default_na`` is ``True``, and ``na_values`` are specified, ``na_values``
//	  is appended to the default ``NaN`` values used for parsing.
//	* If ``keep_default_na`` is ``True``, and ``na_values`` are not specified, only
//	  the default ``NaN`` values are used for parsing.
//	* If ``keep_default_na`` is ``False``, and ``na_values`` are specified, only
//	  the ``NaN`` values specified ``na_values`` are used for parsing.
//	* If ``keep_default_na`` is ``False``, and ``na_values`` are not specified, no
//	  strings will be parsed as ``NaN``.
//
//	Note that if ``na_filter`` is passed in as ``False``, the ``keep_default_na`` and
//	``na_values`` parameters will be ignored.
//
// na_filter : bool, default True
//
//	Detect missing value markers (empty strings and the value of ``na_values``). In
//	data without any ``NA`` values, passing ``na_filter=False`` can improve the
//	performance of reading a large file.
//
// verbose : bool, default False
//
//	Indicate number of ``NA`` values placed in non-numeric columns.
//
//	.. deprecated:: 2.2.0
//
// skip_blank_lines : bool, default True
//
//	If ``True``, skip over blank lines rather than interpreting as ``NaN`` values.
//
// parse_dates : bool, list of Hashable, list of lists or dict of {Hashable : list}, default False
//
//	The behavior is as follows:
//
//	* ``bool``. If ``True`` -> try parsing the index. Note: Automatically set to
//	  ``True`` if ``date_format`` or ``date_parser`` arguments have been passed.
//	* ``list`` of ``int`` or names. e.g. If ``[1, 2, 3]`` -> try parsing columns 1, 2, 3
//	  each as a separate date column.
//	* ``list`` of ``list``. e.g.  If ``[[1, 3]]`` -> combine columns 1 and 3 and parse
//	  as a single date column. Values are joined with a space before parsing.
//	* ``dict``, e.g. ``{'foo' : [1, 3]}`` -> parse columns 1, 3 as date and call
//	  result 'foo'. Values are joined with a space before parsing.
//
//	If a column or index cannot be represented as an array of ``datetime``,
//	say because of an unparsable value or a mixture of timezones, the column
//	or index will be returned unaltered as an ``object`` data type. For
//	non-standard ``datetime`` parsing, use :func:`~pandas.to_datetime` after
//	:func:`~pandas.read_csv`.
//
//	Note: A fast-path exists for iso8601-formatted dates.
//
// infer_datetime_format : bool, default False
//
//	If ``True`` and ``parse_dates`` is enabled, pandas will attempt to infer the
//	format of the ``datetime`` strings in the columns, and if it can be inferred,
//	switch to a faster method of parsing them. In some cases this can increase
//	the parsing speed by 5-10x.
//
//	.. deprecated:: 2.0.0
//	    A strict version of this argument is now the default, passing it has no effect.
//
// keep_date_col : bool, default False
//
//	If ``True`` and ``parse_dates`` specifies combining multiple columns then
//	keep the original columns.
//
// date_parser : Callable, optional
//
//	Function to use for converting a sequence of string columns to an array of
//	``datetime`` instances. The default uses ``dateutil.parser.parser`` to do the
//	conversion. pandas will try to call ``date_parser`` in three different ways,
//	advancing to the next if an exception occurs: 1) Pass one or more arrays
//	(as defined by ``parse_dates``) as arguments; 2) concatenate (row-wise) the
//	string values from the columns defined by ``parse_dates`` into a single array
//	and pass that; and 3) call ``date_parser`` once for each row using one or
//	more strings (corresponding to the columns defined by ``parse_dates``) as
//	arguments.
//
//	.. deprecated:: 2.0.0
//	   Use ``date_format`` instead, or read in as ``object`` and then apply
//	   :func:`~pandas.to_datetime` as-needed.
//
// date_format : str or dict of column -> format, optional
//
//	Format to use for parsing dates when used in conjunction with ``parse_dates``.
//	The strftime to parse time, e.g. :const:`"%d/%m/%Y"`. See
//	`strftime documentation
//	<https://docs.python.org/3/library/datetime.html
//	#strftime-and-strptime-behavior>`_ for more information on choices, though
//	note that :const:`"%f"` will parse all the way up to nanoseconds.
//	You can also pass:
//
//	- "ISO8601", to parse any `ISO8601 <https://en.wikipedia.org/wiki/ISO_8601>`_
//	    time string (not necessarily in exactly the same format);
//	- "mixed", to infer the format for each element individually. This is risky,
//	    and you should probably use it along with `dayfirst`.
//
//	.. versionadded:: 2.0.0
//
// dayfirst : bool, default False
//
//	DD/MM format dates, international and European format.
//
// cache_dates : bool, default True
//
//	If ``True``, use a cache of unique, converted dates to apply the ``datetime``
//	conversion. May produce significant speed-up when parsing duplicate
//	date strings, especially ones with timezone offsets.
//
// iterator : bool, default False
//
//	Return ``TextFileReader`` object for iteration or getting chunks with
//	``get_chunk()``.
//
// chunksize : int, optional
//
//	Number of lines to read from the file per chunk. Passing a value will cause the
//	function to return a ``TextFileReader`` object for iteration.
//	See the `IO Tools docs
//	<https://pandas.pydata.org/pandas-docs/stable/io.html#io-chunking>`_
//	for more information on ``iterator`` and ``chunksize``.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'filepath_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
//	.. versionchanged:: 1.4.0 Zstandard support.
//
// thousands : str (length 1), optional
//
//	Character acting as the thousands separator in numerical values.
//
// decimal : str (length 1), default '.'
//
//	Character to recognize as decimal point (e.g., use ',' for European data).
//
// lineterminator : str (length 1), optional
//
//	Character used to denote a line break. Only valid with C parser.
//
// quotechar : str (length 1), optional
//
//	Character used to denote the start and end of a quoted item. Quoted
//	items can include the ``delimiter`` and it will be ignored.
//
// quoting : {0 or csv.QUOTE_MINIMAL, 1 or csv.QUOTE_ALL, 2 or csv.QUOTE_NONNUMERIC, 3 or csv.QUOTE_NONE}, default csv.QUOTE_MINIMAL
//
//	Control field quoting behavior per ``csv.QUOTE_*`` constants. Default is
//	``csv.QUOTE_MINIMAL`` (i.e., 0) which implies that only fields containing special
//	characters are quoted (e.g., characters defined in ``quotechar``, ``delimiter``,
//	or ``lineterminator``.
//
// doublequote : bool, default True
//
//	When ``quotechar`` is specified and ``quoting`` is not ``QUOTE_NONE``, indicate
//	whether or not to interpret two consecutive ``quotechar`` elements INSIDE a
//	field as a single ``quotechar`` element.
//
// escapechar : str (length 1), optional
//
//	Character used to escape other characters.
//
// comment : str (length 1), optional
//
//	Character indicating that the remainder of line should not be parsed.
//	If found at the beginning
//	of a line, the line will be ignored altogether. This parameter must be a
//	single character. Like empty lines (as long as ``skip_blank_lines=True``),
//	fully commented lines are ignored by the parameter ``header`` but not by
//	``skiprows``. For example, if ``comment='#'``, parsing
//	``#empty\na,b,c\n1,2,3`` with ``header=0`` will result in ``'a,b,c'`` being
//	treated as the header.
//
// encoding : str, optional, default 'utf-8'
//
//	Encoding to use for UTF when reading/writing (ex. ``'utf-8'``). `List of Python
//	standard encodings
//	<https://docs.python.org/3/library/codecs.html#standard-encodings>`_ .
//
// encoding_errors : str, optional, default 'strict'
//
//	How encoding errors are treated. `List of possible values
//	<https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
//
//	.. versionadded:: 1.3.0
//
// dialect : str or csv.Dialect, optional
//
//	If provided, this parameter will override values (default or not) for the
//	following parameters: ``delimiter``, ``doublequote``, ``escapechar``,
//	``skipinitialspace``, ``quotechar``, and ``quoting``. If it is necessary to
//	override values, a ``ParserWarning`` will be issued. See ``csv.Dialect``
//	documentation for more details.
//
// on_bad_lines : {'error', 'warn', 'skip'} or Callable, default 'error'
//
//	Specifies what to do upon encountering a bad line (a line with too many fields).
//	Allowed values are :
//
//	- ``'error'``, raise an Exception when a bad line is encountered.
//	- ``'warn'``, raise a warning when a bad line is encountered and skip that line.
//	- ``'skip'``, skip bad lines without raising or warning when they are encountered.
//
//	.. versionadded:: 1.3.0
//
//	.. versionadded:: 1.4.0
//
//	    - Callable, function with signature
//	      ``(bad_line: list[str]) -> list[str] | None`` that will process a single
//	      bad line. ``bad_line`` is a list of strings split by the ``sep``.
//	      If the function returns ``None``, the bad line will be ignored.
//	      If the function returns a new ``list`` of strings with more elements than
//	      expected, a ``ParserWarning`` will be emitted while dropping extra elements.
//	      Only supported when ``engine='python'``
//
//	.. versionchanged:: 2.2.0
//
//	    - Callable, function with signature
//	      as described in `pyarrow documentation
//	      <https://arrow.apache.org/docs/python/generated/pyarrow.csv.ParseOptions.html
//	      #pyarrow.csv.ParseOptions.invalid_row_handler>`_ when ``engine='pyarrow'``
//
// delim_whitespace : bool, default False
//
//	Specifies whether or not whitespace (e.g. ``' '`` or ``'\t'``) will be
//	used as the ``sep`` delimiter. Equivalent to setting ``sep='\s+'``. If this option
//	is set to ``True``, nothing should be passed in for the ``delimiter``
//	parameter.
//
//	.. deprecated:: 2.2.0
//	    Use ``sep="\s+"`` instead.
//
// low_memory : bool, default True
//
//	Internally process the file in chunks, resulting in lower memory use
//	while parsing, but possibly mixed type inference.  To ensure no mixed
//	types either set ``False``, or specify the type with the ``dtype`` parameter.
//	Note that the entire file is read into a single :class:`~pandas.DataFrame`
//	regardless, use the ``chunksize`` or ``iterator`` parameter to return the data in
//	chunks. (Only valid with C parser).
//
// memory_map : bool, default False
//
//	If a filepath is provided for ``filepath_or_buffer``, map the file object
//	directly onto memory and access the data directly from there. Using this
//	option can improve performance because there is no longer any I/O overhead.
//
// float_precision : {'high', 'legacy', 'round_trip'}, optional
//
//	Specifies which converter the C engine should use for floating-point
//	values. The options are ``None`` or ``'high'`` for the ordinary converter,
//	``'legacy'`` for the original lower precision pandas converter, and
//	``'round_trip'`` for the round-trip converter.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// DataFrame or TextFileReader
//
//	A comma-separated values (csv) file is returned as two-dimensional
//	data structure with labeled axes.
//
// See Also
// --------
// DataFrame.to_csv : Write DataFrame to a comma-separated values (csv) file.
// read_csv : Read a comma-separated values (csv) file into DataFrame.
// read_fwf : Read a table of fixed-width formatted lines into DataFrame.
//
// Examples
// --------
// >>> pd.read_table('data.csv')  # doctest: +SKIP
//
//go:linkname ReadTable py.read_table
func ReadTable(filepathOrBuffer *py.Object) *py.Object

// Load pickled pandas object (or any object) from file.
//
// .. warning::
//
//	Loading pickled data received from untrusted sources can be
//	unsafe. See `here <https://docs.python.org/3/library/pickle.html>`__.
//
// Parameters
// ----------
// filepath_or_buffer : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``readlines()`` function.
//	Also accepts URL. URL is not limited to S3 and GCS.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'filepath_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
//	.. versionchanged:: 1.4.0 Zstandard support.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// Returns
// -------
// same type as object stored in file
//
// See Also
// --------
// DataFrame.to_pickle : Pickle (serialize) DataFrame object to file.
// Series.to_pickle : Pickle (serialize) Series object to file.
// read_hdf : Read HDF5 file into a DataFrame.
// read_sql : Read SQL query or database table into a DataFrame.
// read_parquet : Load a parquet object, returning a DataFrame.
//
// Notes
// -----
// read_pickle is only guaranteed to be backwards compatible to pandas 0.20.3
// provided the object was serialized with to_pickle.
//
// Examples
// --------
// >>> original_df = pd.DataFrame(
// ...     {"foo": range(5), "bar": range(5, 10)}
// ...    )  # doctest: +SKIP
// >>> original_df  # doctest: +SKIP
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
// >>> pd.to_pickle(original_df, "./dummy.pkl")  # doctest: +SKIP
//
// >>> unpickled_df = pd.read_pickle("./dummy.pkl")  # doctest: +SKIP
// >>> unpickled_df  # doctest: +SKIP
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
//
//go:linkname ReadPickle py.read_pickle
func ReadPickle(filepathOrBuffer *py.Object, compression *py.Object, storageOptions *py.Object) *py.Object

// Pickle (serialize) object to file.
//
// Parameters
// ----------
// obj : any object
//
//	Any python object.
//
// filepath_or_buffer : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``write()`` function.
//	Also accepts URL. URL has to be of S3 or GCS.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly compression of the output data. If 'infer' and 'filepath_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	Set to ``None`` for no compression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdCompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for faster compression and to create
//	a reproducible gzip archive:
//	``compression={'method': 'gzip', 'compresslevel': 1, 'mtime': 1}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
//	.. versionchanged:: 1.4.0 Zstandard support.
//
// protocol : int
//
//	Int which indicates which protocol should be used by the pickler,
//	default HIGHEST_PROTOCOL (see [1], paragraph 12.1.2). The possible
//	values for this parameter depend on the version of Python. For Python
//	2.x, possible values are 0, 1, 2. For Python>=3.0, 3 is a valid value.
//	For Python >= 3.4, 4 is a valid value. A negative value for the
//	protocol parameter is equivalent to setting its value to
//	HIGHEST_PROTOCOL.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
//	.. [1] https://docs.python.org/3/library/pickle.html
//
// See Also
// --------
// read_pickle : Load pickled pandas object (or any object) from file.
// DataFrame.to_hdf : Write DataFrame to an HDF5 file.
// DataFrame.to_sql : Write DataFrame to a SQL database.
// DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
//
// Examples
// --------
// >>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})  # doctest: +SKIP
// >>> original_df  # doctest: +SKIP
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
// >>> pd.to_pickle(original_df, "./dummy.pkl")  # doctest: +SKIP
//
// >>> unpickled_df = pd.read_pickle("./dummy.pkl")  # doctest: +SKIP
// >>> unpickled_df  # doctest: +SKIP
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
//
//go:linkname ToPickle py.to_pickle
func ToPickle(obj *py.Object, filepathOrBuffer *py.Object, compression *py.Object, protocol *py.Object, storageOptions *py.Object) *py.Object

// Read from the store, close it if we opened it.
//
// Retrieve pandas object stored in file, optionally based on where
// criteria.
//
// .. warning::
//
//	Pandas uses PyTables for reading and writing HDF5 files, which allows
//	serializing object-dtype data with pickle when using the "fixed" format.
//	Loading pickled data received from untrusted sources can be unsafe.
//
//	See: https://docs.python.org/3/library/pickle.html for more.
//
// Parameters
// ----------
// path_or_buf : str, path object, pandas.HDFStore
//
//	Any valid string path is acceptable. Only supports the local file system,
//	remote URLs and file-like objects are not supported.
//
//	If you want to pass in a path object, pandas accepts any
//	``os.PathLike``.
//
//	Alternatively, pandas accepts an open :class:`pandas.HDFStore` object.
//
// key : object, optional
//
//	The group identifier in the store. Can be omitted if the HDF file
//	contains a single pandas object.
//
// mode : {'r', 'r+', 'a'}, default 'r'
//
//	Mode to use when opening the file. Ignored if path_or_buf is a
//	:class:`pandas.HDFStore`. Default is 'r'.
//
// errors : str, default 'strict'
//
//	Specifies how encoding and decoding errors are to be handled.
//	See the errors argument for :func:`open` for a full list
//	of options.
//
// where : list, optional
//
//	A list of Term (or convertible) objects.
//
// start : int, optional
//
//	Row number to start selection.
//
// stop  : int, optional
//
//	Row number to stop selection.
//
// columns : list, optional
//
//	A list of columns names to return.
//
// iterator : bool, optional
//
//	Return an iterator object.
//
// chunksize : int, optional
//
//	Number of rows to include in an iteration when using an iterator.
//
// **kwargs
//
//	Additional keyword arguments passed to HDFStore.
//
// Returns
// -------
// object
//
//	The selected object. Return type depends on the object stored.
//
// See Also
// --------
// DataFrame.to_hdf : Write a HDF file from a DataFrame.
// HDFStore : Low-level access to HDF files.
//
// Examples
// --------
// >>> df = pd.DataFrame([[1, 1.0, 'a']], columns=['x', 'y', 'z'])  # doctest: +SKIP
// >>> df.to_hdf('./store.h5', 'data')  # doctest: +SKIP
// >>> reread = pd.read_hdf('./store.h5')  # doctest: +SKIP
//
//go:linkname ReadHdf py.read_hdf
func ReadHdf(pathOrBuf *py.Object, key *py.Object, mode *py.Object, errors *py.Object, where *py.Object, start *py.Object, stop *py.Object, columns *py.Object, iterator *py.Object, chunksize *py.Object) *py.Object

// Read SQL query or database table into a DataFrame.
//
// This function is a convenience wrapper around “read_sql_table“ and
// “read_sql_query“ (for backward compatibility). It will delegate
// to the specific function depending on the provided input. A SQL query
// will be routed to “read_sql_query“, while a database table name will
// be routed to “read_sql_table“. Note that the delegated function might
// have more specific notes about their functionality not listed here.
//
// Parameters
// ----------
// sql : str or SQLAlchemy Selectable (select or text object)
//
//	SQL query to be executed or a table name.
//
// con : ADBC Connection, SQLAlchemy connectable, str, or sqlite3 connection
//
//	ADBC provides high performance I/O with native type support, where available.
//	Using SQLAlchemy makes it possible to use any DB supported by that
//	library. If a DBAPI2 object, only sqlite3 is supported. The user is responsible
//	for engine disposal and connection closure for the ADBC connection and
//	SQLAlchemy connectable; str connections are closed automatically. See
//	`here <https://docs.sqlalchemy.org/en/20/core/connections.html>`_.
//
// index_col : str or list of str, optional, default: None
//
//	Column(s) to set as index(MultiIndex).
//
// coerce_float : bool, default True
//
//	Attempts to convert values of non-string, non-numeric objects (like
//	decimal.Decimal) to floating point, useful for SQL result sets.
//
// params : list, tuple or dict, optional, default: None
//
//	List of parameters to pass to execute method.  The syntax used
//	to pass parameters is database driver dependent. Check your
//	database driver documentation for which of the five syntax styles,
//	described in PEP 249's paramstyle, is supported.
//	Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}.
//
// parse_dates : list or dict, default: None
//   - List of column names to parse as dates.
//   - Dict of “{column_name: format string}“ where format string is
//     strftime compatible in case of parsing string times, or is one of
//     (D, s, ns, ms, us) in case of parsing integer timestamps.
//   - Dict of “{column_name: arg dict}“, where the arg dict corresponds
//     to the keyword arguments of :func:`pandas.to_datetime`
//     Especially useful with databases without native Datetime support,
//     such as SQLite.
//
// columns : list, default: None
//
//	List of column names to select from SQL table (only used when reading
//	a table).
//
// chunksize : int, default None
//
//	If specified, return an iterator where `chunksize` is the
//	number of rows to include in each chunk.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// dtype : Type name or dict of columns
//
//	Data type for data or columns. E.g. np.float64 or
//	{'a': np.float64, 'b': np.int32, 'c': 'Int64'}.
//	The argument is ignored if a table is passed instead of a query.
//
//	.. versionadded:: 2.0.0
//
// Returns
// -------
// DataFrame or Iterator[DataFrame]
//
// See Also
// --------
// read_sql_table : Read SQL database table into a DataFrame.
// read_sql_query : Read SQL query into a DataFrame.
//
// Examples
// --------
// Read data from SQL via either a SQL query or a SQL tablename.
// When using a SQLite database only SQL queries are accepted,
// providing only the SQL tablename will result in an error.
//
// >>> from sqlite3 import connect
// >>> conn = connect(':memory:')
// >>> df = pd.DataFrame(data=[[0, '10/11/12'], [1, '12/11/10']],
// ...                   columns=['int_column', 'date_column'])
// >>> df.to_sql(name='test_data', con=conn)
// 2
//
// >>> pd.read_sql('SELECT int_column, date_column FROM test_data', conn)
//
//	int_column date_column
//
// 0           0    10/11/12
// 1           1    12/11/10
//
// >>> pd.read_sql('test_data', 'postgres:///db_name')  # doctest:+SKIP
//
// Apply date parsing to columns through the “parse_dates“ argument
// The “parse_dates“ argument calls “pd.to_datetime“ on the provided columns.
// Custom argument values for applying “pd.to_datetime“ on a column are specified
// via a dictionary format:
//
// >>> pd.read_sql('SELECT int_column, date_column FROM test_data',
// ...             conn,
// ...             parse_dates={"date_column": {"format": "%d/%m/%y"}})
//
//	int_column date_column
//
// 0           0  2012-11-10
// 1           1  2010-11-12
//
// .. versionadded:: 2.2.0
//
//	pandas now supports reading via ADBC drivers
//
// >>> from adbc_driver_postgresql import dbapi  # doctest:+SKIP
// >>> with dbapi.connect('postgres:///db_name') as conn:  # doctest:+SKIP
// ...     pd.read_sql('SELECT int_column FROM test_data', conn)
//
//	int_column
//
// 0           0
// 1           1
//
//go:linkname ReadSql py.read_sql
func ReadSql(sql *py.Object, con *py.Object, indexCol *py.Object, coerceFloat *py.Object, params *py.Object, parseDates *py.Object, columns *py.Object, chunksize *py.Object, dtypeBackend *py.Object, dtype *py.Object) *py.Object

// Read SQL query into a DataFrame.
//
// Returns a DataFrame corresponding to the result set of the query
// string. Optionally provide an `index_col` parameter to use one of the
// columns as the index, otherwise default integer index will be used.
//
// Parameters
// ----------
// sql : str SQL query or SQLAlchemy Selectable (select or text object)
//
//	SQL query to be executed.
//
// con : SQLAlchemy connectable, str, or sqlite3 connection
//
//	Using SQLAlchemy makes it possible to use any DB supported by that
//	library. If a DBAPI2 object, only sqlite3 is supported.
//
// index_col : str or list of str, optional, default: None
//
//	Column(s) to set as index(MultiIndex).
//
// coerce_float : bool, default True
//
//	Attempts to convert values of non-string, non-numeric objects (like
//	decimal.Decimal) to floating point. Useful for SQL result sets.
//
// params : list, tuple or mapping, optional, default: None
//
//	List of parameters to pass to execute method.  The syntax used
//	to pass parameters is database driver dependent. Check your
//	database driver documentation for which of the five syntax styles,
//	described in PEP 249's paramstyle, is supported.
//	Eg. for psycopg2, uses %(name)s so use params={'name' : 'value'}.
//
// parse_dates : list or dict, default: None
//   - List of column names to parse as dates.
//   - Dict of “{column_name: format string}“ where format string is
//     strftime compatible in case of parsing string times, or is one of
//     (D, s, ns, ms, us) in case of parsing integer timestamps.
//   - Dict of “{column_name: arg dict}“, where the arg dict corresponds
//     to the keyword arguments of :func:`pandas.to_datetime`
//     Especially useful with databases without native Datetime support,
//     such as SQLite.
//
// chunksize : int, default None
//
//	If specified, return an iterator where `chunksize` is the number of
//	rows to include in each chunk.
//
// dtype : Type name or dict of columns
//
//	Data type for data or columns. E.g. np.float64 or
//	{'a': np.float64, 'b': np.int32, 'c': 'Int64'}.
//
//	.. versionadded:: 1.3.0
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// DataFrame or Iterator[DataFrame]
//
// See Also
// --------
// read_sql_table : Read SQL database table into a DataFrame.
// read_sql : Read SQL query or database table into a DataFrame.
//
// Notes
// -----
// Any datetime values with time zone information parsed via the `parse_dates`
// parameter will be converted to UTC.
//
// Examples
// --------
// >>> from sqlalchemy import create_engine  # doctest: +SKIP
// >>> engine = create_engine("sqlite:///database.db")  # doctest: +SKIP
// >>> with engine.connect() as conn, conn.begin():  # doctest: +SKIP
// ...     data = pd.read_sql_table("data", conn)  # doctest: +SKIP
//
//go:linkname ReadSqlQuery py.read_sql_query
func ReadSqlQuery(sql *py.Object, con *py.Object, indexCol *py.Object, coerceFloat *py.Object, params *py.Object, parseDates *py.Object, chunksize *py.Object, dtype *py.Object, dtypeBackend *py.Object) *py.Object

// Read SQL database table into a DataFrame.
//
// Given a table name and a SQLAlchemy connectable, returns a DataFrame.
// This function does not support DBAPI connections.
//
// Parameters
// ----------
// table_name : str
//
//	Name of SQL table in database.
//
// con : SQLAlchemy connectable or str
//
//	A database URI could be provided as str.
//	SQLite DBAPI connection mode not supported.
//
// schema : str, default None
//
//	Name of SQL schema in database to query (if database flavor
//	supports this). Uses default schema if None (default).
//
// index_col : str or list of str, optional, default: None
//
//	Column(s) to set as index(MultiIndex).
//
// coerce_float : bool, default True
//
//	Attempts to convert values of non-string, non-numeric objects (like
//	decimal.Decimal) to floating point. Can result in loss of Precision.
//
// parse_dates : list or dict, default None
//   - List of column names to parse as dates.
//   - Dict of “{column_name: format string}“ where format string is
//     strftime compatible in case of parsing string times or is one of
//     (D, s, ns, ms, us) in case of parsing integer timestamps.
//   - Dict of “{column_name: arg dict}“, where the arg dict corresponds
//     to the keyword arguments of :func:`pandas.to_datetime`
//     Especially useful with databases without native Datetime support,
//     such as SQLite.
//
// columns : list, default None
//
//	List of column names to select from SQL table.
//
// chunksize : int, default None
//
//	If specified, returns an iterator where `chunksize` is the number of
//	rows to include in each chunk.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// DataFrame or Iterator[DataFrame]
//
//	A SQL table is returned as two-dimensional data structure with labeled
//	axes.
//
// See Also
// --------
// read_sql_query : Read SQL query into a DataFrame.
// read_sql : Read SQL query or database table into a DataFrame.
//
// Notes
// -----
// Any datetime values with time zone information will be converted to UTC.
//
// Examples
// --------
// >>> pd.read_sql_table('table_name', 'postgres:///db_name')  # doctest:+SKIP
//
//go:linkname ReadSqlTable py.read_sql_table
func ReadSqlTable(tableName *py.Object, con *py.Object, schema *py.Object, indexCol *py.Object, coerceFloat *py.Object, parseDates *py.Object, columns *py.Object, chunksize *py.Object, dtypeBackend *py.Object) *py.Object

// Read text from clipboard and pass to :func:`~pandas.read_csv`.
//
// Parses clipboard contents similar to how CSV files are parsed
// using :func:`~pandas.read_csv`.
//
// Parameters
// ----------
// sep : str, default '\\s+'
//
//	A string or regex delimiter. The default of ``'\\s+'`` denotes
//	one or more whitespace characters.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// **kwargs
//
//	See :func:`~pandas.read_csv` for the full argument list.
//
// Returns
// -------
// DataFrame
//
//	A parsed :class:`~pandas.DataFrame` object.
//
// See Also
// --------
// DataFrame.to_clipboard : Copy object to the system clipboard.
// read_csv : Read a comma-separated values (csv) file into DataFrame.
// read_fwf : Read a table of fixed-width formatted lines into DataFrame.
//
// Examples
// --------
// >>> df = pd.DataFrame([[1, 2, 3], [4, 5, 6]], columns=['A', 'B', 'C'])
// >>> df.to_clipboard()  # doctest: +SKIP
// >>> pd.read_clipboard()  # doctest: +SKIP
//
//	A  B  C
//
// 0    1  2  3
// 1    4  5  6
//
//go:linkname ReadClipboard py.read_clipboard
func ReadClipboard(sep *py.Object, dtypeBackend *py.Object) *py.Object

// Load a parquet object from the file path, returning a DataFrame.
//
// Parameters
// ----------
// path : str, path object or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``read()`` function.
//	The string could be a URL. Valid URL schemes include http, ftp, s3,
//	gs, and file. For file URLs, a host is expected. A local file could be:
//	``file://localhost/path/to/table.parquet``.
//	A file URL can also be a path to a directory that contains multiple
//	partitioned parquet files. Both pyarrow and fastparquet support
//	paths to directories as well as file URLs. A directory path could be:
//	``file://localhost/path/to/tables`` or ``s3://bucket/partition_dir``.
//
// engine : {'auto', 'pyarrow', 'fastparquet'}, default 'auto'
//
//	Parquet library to use. If 'auto', then the option
//	``io.parquet.engine`` is used. The default ``io.parquet.engine``
//	behavior is to try 'pyarrow', falling back to 'fastparquet' if
//	'pyarrow' is unavailable.
//
//	When using the ``'pyarrow'`` engine and no storage options are provided
//	and a filesystem is implemented by both ``pyarrow.fs`` and ``fsspec``
//	(e.g. "s3://"), then the ``pyarrow.fs`` filesystem is attempted first.
//	Use the filesystem keyword with an instantiated fsspec filesystem
//	if you wish to use its implementation.
//
// columns : list, default=None
//
//	If not None, only these columns will be read from the file.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
//	.. versionadded:: 1.3.0
//
// use_nullable_dtypes : bool, default False
//
//	If True, use dtypes that use ``pd.NA`` as missing value indicator
//	for the resulting DataFrame. (only applicable for the ``pyarrow``
//	engine)
//	As new dtypes are added that support ``pd.NA`` in the future, the
//	output with this option will change to use those dtypes.
//	Note: this is an experimental option, and behaviour (e.g. additional
//	support dtypes) may change without notice.
//
//	.. deprecated:: 2.0
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// filesystem : fsspec or pyarrow filesystem, default None
//
//	Filesystem object to use when reading the parquet file. Only implemented
//	for ``engine="pyarrow"``.
//
//	.. versionadded:: 2.1.0
//
// filters : List[Tuple] or List[List[Tuple]], default None
//
//	To filter out data.
//	Filter syntax: [[(column, op, val), ...],...]
//	where op is [==, =, >, >=, <, <=, !=, in, not in]
//	The innermost tuples are transposed into a set of filters applied
//	through an `AND` operation.
//	The outer list combines these sets of filters through an `OR`
//	operation.
//	A single list of tuples can also be used, meaning that no `OR`
//	operation between set of filters is to be conducted.
//
//	Using this argument will NOT result in row-wise filtering of the final
//	partitions unless ``engine="pyarrow"`` is also specified.  For
//	other engines, filtering is only performed at the partition level, that is,
//	to prevent the loading of some row-groups and/or files.
//
//	.. versionadded:: 2.1.0
//
// **kwargs
//
//	Any additional kwargs are passed to the engine.
//
// Returns
// -------
// DataFrame
//
// See Also
// --------
// DataFrame.to_parquet : Create a parquet object that serializes a DataFrame.
//
// Examples
// --------
// >>> original_df = pd.DataFrame(
// ...     {"foo": range(5), "bar": range(5, 10)}
// ...    )
// >>> original_df
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
// >>> df_parquet_bytes = original_df.to_parquet()
// >>> from io import BytesIO
// >>> restored_df = pd.read_parquet(BytesIO(df_parquet_bytes))
// >>> restored_df
//
//	foo  bar
//
// 0    0    5
// 1    1    6
// 2    2    7
// 3    3    8
// 4    4    9
// >>> restored_df.equals(original_df)
// True
// >>> restored_bar = pd.read_parquet(BytesIO(df_parquet_bytes), columns=["bar"])
// >>> restored_bar
//
//	bar
//
// 0    5
// 1    6
// 2    7
// 3    8
// 4    9
// >>> restored_bar.equals(original_df[['bar']])
// True
//
// The function uses `kwargs` that are passed directly to the engine.
// In the following example, we use the `filters` argument of the pyarrow
// engine to filter the rows of the DataFrame.
//
// Since `pyarrow` is the default engine, we can omit the `engine` argument.
// Note that the `filters` argument is implemented by the `pyarrow` engine,
// which can benefit from multithreading and also potentially be more
// economical in terms of memory.
//
// >>> sel = [("foo", ">", 2)]
// >>> restored_part = pd.read_parquet(BytesIO(df_parquet_bytes), filters=sel)
// >>> restored_part
//
//	foo  bar
//
// 0    3    8
// 1    4    9
//
//go:linkname ReadParquet py.read_parquet
func ReadParquet(path *py.Object, engine *py.Object, columns *py.Object, storageOptions *py.Object, useNullableDtypes *py.Object, dtypeBackend *py.Object, filesystem *py.Object, filters *py.Object) *py.Object

// Load an ORC object from the file path, returning a DataFrame.
//
// Parameters
// ----------
// path : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``read()`` function. The string could be a URL.
//	Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be:
//	``file://localhost/path/to/table.orc``.
//
// columns : list, default None
//
//	If not None, only these columns will be read from the file.
//	Output always follows the ordering of the file and not the columns list.
//	This mirrors the original behaviour of
//	:external+pyarrow:py:meth:`pyarrow.orc.ORCFile.read`.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// filesystem : fsspec or pyarrow filesystem, default None
//
//	Filesystem object to use when reading the parquet file.
//
//	.. versionadded:: 2.1.0
//
// **kwargs
//
//	Any additional kwargs are passed to pyarrow.
//
// Returns
// -------
// DataFrame
//
// Notes
// -----
// Before using this function you should read the :ref:`user guide about ORC <io.orc>`
// and :ref:`install optional dependencies <install.warn_orc>`.
//
// If “path“ is a URI scheme pointing to a local or remote file (e.g. "s3://"),
// a “pyarrow.fs“ filesystem will be attempted to read the file. You can also pass a
// pyarrow or fsspec filesystem object into the filesystem keyword to override this
// behavior.
//
// Examples
// --------
// >>> result = pd.read_orc("example_pa.orc")  # doctest: +SKIP
//
//go:linkname ReadOrc py.read_orc
func ReadOrc(path *py.Object, columns *py.Object, dtypeBackend *py.Object, filesystem *py.Object) *py.Object

// Load a feather-format object from the file path.
//
// Parameters
// ----------
// path : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``read()`` function. The string could be a URL.
//	Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be: ``file://localhost/path/to/table.feather``.
//
// columns : sequence, default None
//
//	If not provided, all columns are read.
//
// use_threads : bool, default True
//
//	Whether to parallelize reading using multiple threads.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// type of object stored in file
//
// Examples
// --------
// >>> df = pd.read_feather("path/to/file.feather")  # doctest: +SKIP
//
//go:linkname ReadFeather py.read_feather
func ReadFeather(path *py.Object, columns *py.Object, useThreads *py.Object, storageOptions *py.Object, dtypeBackend *py.Object) *py.Object

// Load data from Google BigQuery.
//
// .. deprecated:: 2.2.0
//
//	Please use ``pandas_gbq.read_gbq`` instead.
//
// This function requires the `pandas-gbq package
// <https://pandas-gbq.readthedocs.io>`__.
//
// See the `How to authenticate with Google BigQuery
// <https://pandas-gbq.readthedocs.io/en/latest/howto/authentication.html>`__
// guide for authentication instructions.
//
// Parameters
// ----------
// query : str
//
//	SQL-Like Query to return data values.
//
// project_id : str, optional
//
//	Google BigQuery Account project ID. Optional when available from
//	the environment.
//
// index_col : str, optional
//
//	Name of result column to use for index in results DataFrame.
//
// col_order : list(str), optional
//
//	List of BigQuery column names in the desired order for results
//	DataFrame.
//
// reauth : bool, default False
//
//	Force Google BigQuery to re-authenticate the user. This is useful
//	if multiple accounts are used.
//
// auth_local_webserver : bool, default True
//
//	Use the `local webserver flow`_ instead of the `console flow`_
//	when getting user credentials.
//
//	.. _local webserver flow:
//	    https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_local_server
//	.. _console flow:
//	    https://google-auth-oauthlib.readthedocs.io/en/latest/reference/google_auth_oauthlib.flow.html#google_auth_oauthlib.flow.InstalledAppFlow.run_console
//
//	*New in version 0.2.0 of pandas-gbq*.
//
//	.. versionchanged:: 1.5.0
//	   Default value is changed to ``True``. Google has deprecated the
//	   ``auth_local_webserver = False`` `"out of band" (copy-paste)
//	   flow
//	   <https://developers.googleblog.com/2022/02/making-oauth-flows-safer.html?m=1#disallowed-oob>`_.
//
// dialect : str, default 'legacy'
//
//	Note: The default value is changing to 'standard' in a future version.
//
//	SQL syntax dialect to use. Value can be one of:
//
//	``'legacy'``
//	    Use BigQuery's legacy SQL dialect. For more information see
//	    `BigQuery Legacy SQL Reference
//	    <https://cloud.google.com/bigquery/docs/reference/legacy-sql>`__.
//	``'standard'``
//	    Use BigQuery's standard SQL, which is
//	    compliant with the SQL 2011 standard. For more information
//	    see `BigQuery Standard SQL Reference
//	    <https://cloud.google.com/bigquery/docs/reference/standard-sql/>`__.
//
// location : str, optional
//
//	Location where the query job should run. See the `BigQuery locations
//	documentation
//	<https://cloud.google.com/bigquery/docs/dataset-locations>`__ for a
//	list of available locations. The location must match that of any
//	datasets used in the query.
//
//	*New in version 0.5.0 of pandas-gbq*.
//
// configuration : dict, optional
//
//	Query config parameters for job processing.
//	For example:
//
//	    configuration = {'query': {'useQueryCache': False}}
//
//	For more information see `BigQuery REST API Reference
//	<https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs#configuration.query>`__.
//
// credentials : google.auth.credentials.Credentials, optional
//
//	Credentials for accessing Google APIs. Use this parameter to override
//	default credentials, such as to use Compute Engine
//	:class:`google.auth.compute_engine.Credentials` or Service Account
//	:class:`google.oauth2.service_account.Credentials` directly.
//
//	*New in version 0.8.0 of pandas-gbq*.
//
// use_bqstorage_api : bool, default False
//
//	Use the `BigQuery Storage API
//	<https://cloud.google.com/bigquery/docs/reference/storage/>`__ to
//	download query results quickly, but at an increased cost. To use this
//	API, first `enable it in the Cloud Console
//	<https://console.cloud.google.com/apis/library/bigquerystorage.googleapis.com>`__.
//	You must also have the `bigquery.readsessions.create
//	<https://cloud.google.com/bigquery/docs/access-control#roles>`__
//	permission on the project you are billing queries to.
//
//	This feature requires version 0.10.0 or later of the ``pandas-gbq``
//	package. It also requires the ``google-cloud-bigquery-storage`` and
//	``fastavro`` packages.
//
// max_results : int, optional
//
//	If set, limit the maximum number of rows to fetch from the query
//	results.
//
// progress_bar_type : Optional, str
//
//	If set, use the `tqdm <https://tqdm.github.io/>`__ library to
//	display a progress bar while the data downloads. Install the
//	``tqdm`` package to use this feature.
//
//	Possible values of ``progress_bar_type`` include:
//
//	``None``
//	    No progress bar.
//	``'tqdm'``
//	    Use the :func:`tqdm.tqdm` function to print a progress bar
//	    to :data:`sys.stderr`.
//	``'tqdm_notebook'``
//	    Use the :func:`tqdm.tqdm_notebook` function to display a
//	    progress bar as a Jupyter notebook widget.
//	``'tqdm_gui'``
//	    Use the :func:`tqdm.tqdm_gui` function to display a
//	    progress bar as a graphical dialog box.
//
// Returns
// -------
// df: DataFrame
//
//	DataFrame representing results of query.
//
// See Also
// --------
// pandas_gbq.read_gbq : This function in the pandas-gbq library.
// DataFrame.to_gbq : Write a DataFrame to Google BigQuery.
//
// Examples
// --------
// Example taken from `Google BigQuery documentation
// <https://cloud.google.com/bigquery/docs/pandas-gbq-migration>`_
//
// >>> sql = "SELECT name FROM table_name WHERE state = 'TX' LIMIT 100;"
// >>> df = pd.read_gbq(sql, dialect="standard")  # doctest: +SKIP
// >>> project_id = "your-project-id"  # doctest: +SKIP
// >>> df = pd.read_gbq(sql,
// ...                  project_id=project_id,
// ...                  dialect="standard"
// ...                  )  # doctest: +SKIP
//
//go:linkname ReadGbq py.read_gbq
func ReadGbq(query *py.Object, projectId *py.Object, indexCol *py.Object, colOrder *py.Object, reauth *py.Object, authLocalWebserver *py.Object, dialect *py.Object, location *py.Object, configuration *py.Object, credentials *py.Object, useBqstorageApi *py.Object, maxResults *py.Object, progressBarType *py.Object) *py.Object

// Read HTML tables into a “list“ of “DataFrame“ objects.
//
// Parameters
// ----------
// io : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a string ``read()`` function.
//	The string can represent a URL or the HTML itself. Note that
//	lxml only accepts the http, ftp and file url protocols. If you have a
//	URL that starts with ``'https'`` you might try removing the ``'s'``.
//
//	.. deprecated:: 2.1.0
//	    Passing html literal strings is deprecated.
//	    Wrap literal string/bytes input in ``io.StringIO``/``io.BytesIO`` instead.
//
// match : str or compiled regular expression, optional
//
//	The set of tables containing text matching this regex or string will be
//	returned. Unless the HTML is extremely simple you will probably need to
//	pass a non-empty string here. Defaults to '.+' (match any non-empty
//	string). The default value will return all tables contained on a page.
//	This value is converted to a regular expression so that there is
//	consistent behavior between Beautiful Soup and lxml.
//
// flavor : {"lxml", "html5lib", "bs4"} or list-like, optional
//
//	The parsing engine (or list of parsing engines) to use. 'bs4' and
//	'html5lib' are synonymous with each other, they are both there for
//	backwards compatibility. The default of ``None`` tries to use ``lxml``
//	to parse and if that fails it falls back on ``bs4`` + ``html5lib``.
//
// header : int or list-like, optional
//
//	The row (or list of rows for a :class:`~pandas.MultiIndex`) to use to
//	make the columns headers.
//
// index_col : int or list-like, optional
//
//	The column (or list of columns) to use to create the index.
//
// skiprows : int, list-like or slice, optional
//
//	Number of rows to skip after parsing the column integer. 0-based. If a
//	sequence of integers or a slice is given, will skip the rows indexed by
//	that sequence.  Note that a single element sequence means 'skip the nth
//	row' whereas an integer means 'skip n rows'.
//
// attrs : dict, optional
//
//	This is a dictionary of attributes that you can pass to use to identify
//	the table in the HTML. These are not checked for validity before being
//	passed to lxml or Beautiful Soup. However, these attributes must be
//	valid HTML table attributes to work correctly. For example, ::
//
//	    attrs = {'id': 'table'}
//
//	is a valid attribute dictionary because the 'id' HTML tag attribute is
//	a valid HTML attribute for *any* HTML tag as per `this document
//	<https://html.spec.whatwg.org/multipage/dom.html#global-attributes>`__. ::
//
//	    attrs = {'asdf': 'table'}
//
//	is *not* a valid attribute dictionary because 'asdf' is not a valid
//	HTML attribute even if it is a valid XML attribute.  Valid HTML 4.01
//	table attributes can be found `here
//	<http://www.w3.org/TR/REC-html40/struct/tables.html#h-11.2>`__. A
//	working draft of the HTML 5 spec can be found `here
//	<https://html.spec.whatwg.org/multipage/tables.html>`__. It contains the
//	latest information on table attributes for the modern web.
//
// parse_dates : bool, optional
//
//	See :func:`~read_csv` for more details.
//
// thousands : str, optional
//
//	Separator to use to parse thousands. Defaults to ``','``.
//
// encoding : str, optional
//
//	The encoding used to decode the web page. Defaults to ``None``.``None``
//	preserves the previous encoding behavior, which depends on the
//	underlying parser library (e.g., the parser library will try to use
//	the encoding provided by the document).
//
// decimal : str, default '.'
//
//	Character to recognize as decimal point (e.g. use ',' for European
//	data).
//
// converters : dict, default None
//
//	Dict of functions for converting values in certain columns. Keys can
//	either be integers or column labels, values are functions that take one
//	input argument, the cell (not column) content, and return the
//	transformed content.
//
// na_values : iterable, default None
//
//	Custom NA values.
//
// keep_default_na : bool, default True
//
//	If na_values are specified and keep_default_na is False the default NaN
//	values are overridden, otherwise they're appended to.
//
// displayed_only : bool, default True
//
//	Whether elements with "display: none" should be parsed.
//
// extract_links : {None, "all", "header", "body", "footer"}
//
//	Table elements in the specified section(s) with <a> tags will have their
//	href extracted.
//
//	.. versionadded:: 1.5.0
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
//	.. versionadded:: 2.1.0
//
// Returns
// -------
// dfs
//
//	A list of DataFrames.
//
// See Also
// --------
// read_csv : Read a comma-separated values (csv) file into DataFrame.
//
// Notes
// -----
// Before using this function you should read the :ref:`gotchas about the
// HTML parsing libraries <io.html.gotchas>`.
//
// Expect to do some cleanup after you call this function. For example, you
// might need to manually assign column names if the column names are
// converted to NaN when you pass the `header=0` argument. We try to assume as
// little as possible about the structure of the table and push the
// idiosyncrasies of the HTML contained in the table to the user.
//
// This function searches for “<table>“ elements and only for “<tr>“
// and “<th>“ rows and “<td>“ elements within each “<tr>“ or “<th>“
// element in the table. “<td>“ stands for "table data". This function
// attempts to properly handle “colspan“ and “rowspan“ attributes.
// If the function has a “<thead>“ argument, it is used to construct
// the header, otherwise the function attempts to find the header within
// the body (by putting rows with only “<th>“ elements into the header).
//
// Similar to :func:`~read_csv` the `header` argument is applied
// **after** `skiprows` is applied.
//
// This function will *always* return a list of :class:`DataFrame` *or*
// it will fail, e.g., it will *not* return an empty list.
//
// Examples
// --------
// See the :ref:`read_html documentation in the IO section of the docs
// <io.read_html>` for some examples of reading in HTML tables.
//
//go:linkname ReadHtml py.read_html
func ReadHtml(io *py.Object) *py.Object

// Read XML document into a :class:`~pandas.DataFrame` object.
//
// .. versionadded:: 1.3.0
//
// Parameters
// ----------
// path_or_buffer : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a ``read()`` function. The string can be any valid XML
//	string or a path. The string can further be a URL. Valid URL schemes
//	include http, ftp, s3, and file.
//
//	.. deprecated:: 2.1.0
//	    Passing xml literal strings is deprecated.
//	    Wrap literal xml input in ``io.StringIO`` or ``io.BytesIO`` instead.
//
// xpath : str, optional, default './\*'
//
//	The ``XPath`` to parse required set of nodes for migration to
//	:class:`~pandas.DataFrame`.``XPath`` should return a collection of elements
//	and not a single element. Note: The ``etree`` parser supports limited ``XPath``
//	expressions. For more complex ``XPath``, use ``lxml`` which requires
//	installation.
//
// namespaces : dict, optional
//
//	The namespaces defined in XML document as dicts with key being
//	namespace prefix and value the URI. There is no need to include all
//	namespaces in XML, only the ones used in ``xpath`` expression.
//	Note: if XML document uses default namespace denoted as
//	`xmlns='<URI>'` without a prefix, you must assign any temporary
//	namespace prefix such as 'doc' to the URI in order to parse
//	underlying nodes and/or attributes. For example, ::
//
//	    namespaces = {"doc": "https://example.com"}
//
// elems_only : bool, optional, default False
//
//	Parse only the child elements at the specified ``xpath``. By default,
//	all child elements and non-empty text nodes are returned.
//
// attrs_only :  bool, optional, default False
//
//	Parse only the attributes at the specified ``xpath``.
//	By default, all attributes are returned.
//
// names :  list-like, optional
//
//	Column names for DataFrame of parsed XML data. Use this parameter to
//	rename original element names and distinguish same named elements and
//	attributes.
//
// dtype : Type name or dict of column -> type, optional
//
//	Data type for data or columns. E.g. {'a': np.float64, 'b': np.int32,
//	'c': 'Int64'}
//	Use `str` or `object` together with suitable `na_values` settings
//	to preserve and not interpret dtype.
//	If converters are specified, they will be applied INSTEAD
//	of dtype conversion.
//
//	.. versionadded:: 1.5.0
//
// converters : dict, optional
//
//	Dict of functions for converting values in certain columns. Keys can either
//	be integers or column labels.
//
//	.. versionadded:: 1.5.0
//
// parse_dates : bool or list of int or names or list of lists or dict, default False
//
//	Identifiers to parse index or columns to datetime. The behavior is as follows:
//
//	* boolean. If True -> try parsing the index.
//	* list of int or names. e.g. If [1, 2, 3] -> try parsing columns 1, 2, 3
//	  each as a separate date column.
//	* list of lists. e.g.  If [[1, 3]] -> combine columns 1 and 3 and parse as
//	  a single date column.
//	* dict, e.g. {'foo' : [1, 3]} -> parse columns 1, 3 as date and call
//	  result 'foo'
//
//	.. versionadded:: 1.5.0
//
// encoding : str, optional, default 'utf-8'
//
//	Encoding of XML document.
//
// parser : {'lxml','etree'}, default 'lxml'
//
//	Parser module to use for retrieval of data. Only 'lxml' and
//	'etree' are supported. With 'lxml' more complex ``XPath`` searches
//	and ability to use XSLT stylesheet are supported.
//
// stylesheet : str, path object or file-like object
//
//	A URL, file-like object, or a raw string containing an XSLT script.
//	This stylesheet should flatten complex, deeply nested XML documents
//	for easier parsing. To use this feature you must have ``lxml`` module
//	installed and specify 'lxml' as ``parser``. The ``xpath`` must
//	reference nodes of transformed XML document generated after XSLT
//	transformation and not the original XML document. Only XSLT 1.0
//	scripts and not later versions is currently supported.
//
// iterparse : dict, optional
//
//	The nodes or attributes to retrieve in iterparsing of XML document
//	as a dict with key being the name of repeating element and value being
//	list of elements or attribute names that are descendants of the repeated
//	element. Note: If this option is used, it will replace ``xpath`` parsing
//	and unlike ``xpath``, descendants do not need to relate to each other but can
//	exist any where in document under the repeating element. This memory-
//	efficient method should be used for very large XML files (500MB, 1GB, or 5GB+).
//	For example, ::
//
//	    iterparse = {"row_element": ["child_elem", "attr", "grandchild_elem"]}
//
//	.. versionadded:: 1.5.0
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'path_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
//	.. versionchanged:: 1.4.0 Zstandard support.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// df
//
//	A DataFrame.
//
// See Also
// --------
// read_json : Convert a JSON string to pandas object.
// read_html : Read HTML tables into a list of DataFrame objects.
//
// Notes
// -----
// This method is best designed to import shallow XML documents in
// following format which is the ideal fit for the two-dimensions of a
// “DataFrame“ (row by column). ::
//
//	<root>
//	    <row>
//	      <column1>data</column1>
//	      <column2>data</column2>
//	      <column3>data</column3>
//	      ...
//	   </row>
//	   <row>
//	      ...
//	   </row>
//	   ...
//	</root>
//
// As a file format, XML documents can be designed any way including
// layout of elements and attributes as long as it conforms to W3C
// specifications. Therefore, this method is a convenience handler for
// a specific flatter design and not all possible XML structures.
//
// However, for more complex XML documents, “stylesheet“ allows you to
// temporarily redesign original document with XSLT (a special purpose
// language) for a flatter version for migration to a DataFrame.
//
// This function will *always* return a single :class:`DataFrame` or raise
// exceptions due to issues with XML document, “xpath“, or other
// parameters.
//
// See the :ref:`read_xml documentation in the IO section of the docs
// <io.read_xml>` for more information in using this method to parse XML
// files to DataFrames.
//
// Examples
// --------
// >>> from io import StringIO
// >>> xml = ”'<?xml version='1.0' encoding='utf-8'?>
// ... <data xmlns="http://example.com">
// ...  <row>
// ...    <shape>square</shape>
// ...    <degrees>360</degrees>
// ...    <sides>4.0</sides>
// ...  </row>
// ...  <row>
// ...    <shape>circle</shape>
// ...    <degrees>360</degrees>
// ...    <sides/>
// ...  </row>
// ...  <row>
// ...    <shape>triangle</shape>
// ...    <degrees>180</degrees>
// ...    <sides>3.0</sides>
// ...  </row>
// ... </data>”'
//
// >>> df = pd.read_xml(StringIO(xml))
// >>> df
//
//	shape  degrees  sides
//
// 0    square      360    4.0
// 1    circle      360    NaN
// 2  triangle      180    3.0
//
// >>> xml = ”'<?xml version='1.0' encoding='utf-8'?>
// ... <data>
// ...   <row shape="square" degrees="360" sides="4.0"/>
// ...   <row shape="circle" degrees="360"/>
// ...   <row shape="triangle" degrees="180" sides="3.0"/>
// ... </data>”'
//
// >>> df = pd.read_xml(StringIO(xml), xpath=".//row")
// >>> df
//
//	shape  degrees  sides
//
// 0    square      360    4.0
// 1    circle      360    NaN
// 2  triangle      180    3.0
//
// >>> xml = ”'<?xml version='1.0' encoding='utf-8'?>
// ... <doc:data xmlns:doc="https://example.com">
// ...   <doc:row>
// ...     <doc:shape>square</doc:shape>
// ...     <doc:degrees>360</doc:degrees>
// ...     <doc:sides>4.0</doc:sides>
// ...   </doc:row>
// ...   <doc:row>
// ...     <doc:shape>circle</doc:shape>
// ...     <doc:degrees>360</doc:degrees>
// ...     <doc:sides/>
// ...   </doc:row>
// ...   <doc:row>
// ...     <doc:shape>triangle</doc:shape>
// ...     <doc:degrees>180</doc:degrees>
// ...     <doc:sides>3.0</doc:sides>
// ...   </doc:row>
// ... </doc:data>”'
//
// >>> df = pd.read_xml(StringIO(xml),
// ...                  xpath="//doc:row",
// ...                  namespaces={"doc": "https://example.com"})
// >>> df
//
//	shape  degrees  sides
//
// 0    square      360    4.0
// 1    circle      360    NaN
// 2  triangle      180    3.0
//
// >>> xml_data = ”'
// ...         <data>
// ...            <row>
// ...               <index>0</index>
// ...               <a>1</a>
// ...               <b>2.5</b>
// ...               <c>True</c>
// ...               <d>a</d>
// ...               <e>2019-12-31 00:00:00</e>
// ...            </row>
// ...            <row>
// ...               <index>1</index>
// ...               <b>4.5</b>
// ...               <c>False</c>
// ...               <d>b</d>
// ...               <e>2019-12-31 00:00:00</e>
// ...            </row>
// ...         </data>
// ...         ”'
//
// >>> df = pd.read_xml(StringIO(xml_data),
// ...                  dtype_backend="numpy_nullable",
// ...                  parse_dates=["e"])
// >>> df
//
//	index     a    b      c  d          e
//
// 0      0     1  2.5   True  a 2019-12-31
// 1      1  <NA>  4.5  False  b 2019-12-31
//
//go:linkname ReadXml py.read_xml
func ReadXml(pathOrBuffer *py.Object) *py.Object

// Convert a JSON string to pandas object.
//
// Parameters
// ----------
// path_or_buf : a valid JSON str, path object or file-like object
//
//	Any valid string path is acceptable. The string could be a URL. Valid
//	URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be:
//	``file://localhost/path/to/table.json``.
//
//	If you want to pass in a path object, pandas accepts any
//	``os.PathLike``.
//
//	By file-like object, we refer to objects with a ``read()`` method,
//	such as a file handle (e.g. via builtin ``open`` function)
//	or ``StringIO``.
//
//	.. deprecated:: 2.1.0
//	    Passing json literal strings is deprecated.
//
// orient : str, optional
//
//	Indication of expected JSON string format.
//	Compatible JSON strings can be produced by ``to_json()`` with a
//	corresponding orient value.
//	The set of possible orients is:
//
//	- ``'split'`` : dict like
//	  ``{index -> [index], columns -> [columns], data -> [values]}``
//	- ``'records'`` : list like
//	  ``[{column -> value}, ... , {column -> value}]``
//	- ``'index'`` : dict like ``{index -> {column -> value}}``
//	- ``'columns'`` : dict like ``{column -> {index -> value}}``
//	- ``'values'`` : just the values array
//	- ``'table'`` : dict like ``{'schema': {schema}, 'data': {data}}``
//
//	The allowed and default values depend on the value
//	of the `typ` parameter.
//
//	* when ``typ == 'series'``,
//
//	  - allowed orients are ``{'split','records','index'}``
//	  - default is ``'index'``
//	  - The Series index must be unique for orient ``'index'``.
//
//	* when ``typ == 'frame'``,
//
//	  - allowed orients are ``{'split','records','index',
//	    'columns','values', 'table'}``
//	  - default is ``'columns'``
//	  - The DataFrame index must be unique for orients ``'index'`` and
//	    ``'columns'``.
//	  - The DataFrame columns must be unique for orients ``'index'``,
//	    ``'columns'``, and ``'records'``.
//
// typ : {'frame', 'series'}, default 'frame'
//
//	The type of object to recover.
//
// dtype : bool or dict, default None
//
//	If True, infer dtypes; if a dict of column to dtype, then use those;
//	if False, then don't infer dtypes at all, applies only to the data.
//
//	For all ``orient`` values except ``'table'``, default is True.
//
// convert_axes : bool, default None
//
//	Try to convert the axes to the proper dtypes.
//
//	For all ``orient`` values except ``'table'``, default is True.
//
// convert_dates : bool or list of str, default True
//
//	If True then default datelike columns may be converted (depending on
//	keep_default_dates).
//	If False, no dates will be converted.
//	If a list of column names, then those columns will be converted and
//	default datelike columns may also be converted (depending on
//	keep_default_dates).
//
// keep_default_dates : bool, default True
//
//	If parsing dates (convert_dates is not False), then try to parse the
//	default datelike columns.
//	A column label is datelike if
//
//	* it ends with ``'_at'``,
//
//	* it ends with ``'_time'``,
//
//	* it begins with ``'timestamp'``,
//
//	* it is ``'modified'``, or
//
//	* it is ``'date'``.
//
// precise_float : bool, default False
//
//	Set to enable usage of higher precision (strtod) function when
//	decoding string to double values. Default (False) is to use fast but
//	less precise builtin functionality.
//
// date_unit : str, default None
//
//	The timestamp unit to detect if converting dates. The default behaviour
//	is to try and detect the correct precision, but if this is not desired
//	then pass one of 's', 'ms', 'us' or 'ns' to force parsing only seconds,
//	milliseconds, microseconds or nanoseconds respectively.
//
// encoding : str, default is 'utf-8'
//
//	The encoding to use to decode py3 bytes.
//
// encoding_errors : str, optional, default "strict"
//
//	How encoding errors are treated. `List of possible values
//	<https://docs.python.org/3/library/codecs.html#error-handlers>`_ .
//
//	.. versionadded:: 1.3.0
//
// lines : bool, default False
//
//	Read the file as a json object per line.
//
// chunksize : int, optional
//
//	Return JsonReader object for iteration.
//	See the `line-delimited json docs
//	<https://pandas.pydata.org/pandas-docs/stable/user_guide/io.html#line-delimited-json>`_
//	for more information on ``chunksize``.
//	This can only be passed if `lines=True`.
//	If this is None, the file will be read into memory all at once.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'path_or_buf' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
//	.. versionchanged:: 1.4.0 Zstandard support.
//
// nrows : int, optional
//
//	The number of lines from the line-delimited jsonfile that has to be read.
//	This can only be passed if `lines=True`.
//	If this is None, all the rows will be returned.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// engine : {"ujson", "pyarrow"}, default "ujson"
//
//	Parser engine to use. The ``"pyarrow"`` engine is only available when
//	``lines=True``.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// Series, DataFrame, or pandas.api.typing.JsonReader
//
//	A JsonReader is returned when ``chunksize`` is not ``0`` or ``None``.
//	Otherwise, the type returned depends on the value of ``typ``.
//
// See Also
// --------
// DataFrame.to_json : Convert a DataFrame to a JSON string.
// Series.to_json : Convert a Series to a JSON string.
// json_normalize : Normalize semi-structured JSON data into a flat table.
//
// Notes
// -----
// Specific to “orient='table'“, if a :class:`DataFrame` with a literal
// :class:`Index` name of `index` gets written with :func:`to_json`, the
// subsequent read operation will incorrectly set the :class:`Index` name to
// “None“. This is because `index` is also used by :func:`DataFrame.to_json`
// to denote a missing :class:`Index` name, and the subsequent
// :func:`read_json` operation cannot distinguish between the two. The same
// limitation is encountered with a :class:`MultiIndex` and any names
// beginning with “'level_'“.
//
// Examples
// --------
// >>> from io import StringIO
// >>> df = pd.DataFrame([['a', 'b'], ['c', 'd']],
// ...                   index=['row 1', 'row 2'],
// ...                   columns=['col 1', 'col 2'])
//
// Encoding/decoding a Dataframe using “'split'“ formatted JSON:
//
// >>> df.to_json(orient='split')
//
//	'{"columns":["col 1","col 2"],"index":["row 1","row 2"],"data":[["a","b"],["c","d"]]}'
//
// >>> pd.read_json(StringIO(_), orient='split')
//
//	col 1 col 2
//
// row 1     a     b
// row 2     c     d
//
// Encoding/decoding a Dataframe using “'index'“ formatted JSON:
//
// >>> df.to_json(orient='index')
// '{"row 1":{"col 1":"a","col 2":"b"},"row 2":{"col 1":"c","col 2":"d"}}'
//
// >>> pd.read_json(StringIO(_), orient='index')
//
//	col 1 col 2
//
// row 1     a     b
// row 2     c     d
//
// Encoding/decoding a Dataframe using “'records'“ formatted JSON.
// Note that index labels are not preserved with this encoding.
//
// >>> df.to_json(orient='records')
// '[{"col 1":"a","col 2":"b"},{"col 1":"c","col 2":"d"}]'
// >>> pd.read_json(StringIO(_), orient='records')
//
//	col 1 col 2
//
// 0     a     b
// 1     c     d
//
// # Encoding with Table Schema
//
// >>> df.to_json(orient='table')
//
//	'{"schema":{"fields":[{"name":"index","type":"string"},{"name":"col 1","type":"string"},{"name":"col 2","type":"string"}],"primaryKey":["index"],"pandas_version":"1.4.0"},"data":[{"index":"row 1","col 1":"a","col 2":"b"},{"index":"row 2","col 1":"c","col 2":"d"}]}'
//
// The following example uses “dtype_backend="numpy_nullable"“
//
// >>> data = ”'{"index": {"0": 0, "1": 1},
// ...        "a": {"0": 1, "1": null},
// ...        "b": {"0": 2.5, "1": 4.5},
// ...        "c": {"0": true, "1": false},
// ...        "d": {"0": "a", "1": "b"},
// ...        "e": {"0": 1577.2, "1": 1577.1}}”'
// >>> pd.read_json(StringIO(data), dtype_backend="numpy_nullable")
//
//	index     a    b      c  d       e
//
// 0      0     1  2.5   True  a  1577.2
// 1      1  <NA>  4.5  False  b  1577.1
//
//go:linkname ReadJson py.read_json
func ReadJson(pathOrBuf *py.Object) *py.Object

// Read Stata file into DataFrame.
//
// Parameters
// ----------
// filepath_or_buffer : str, path object or file-like object
//
//	Any valid string path is acceptable. The string could be a URL. Valid
//	URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be: ``file://localhost/path/to/table.dta``.
//
//	If you want to pass in a path object, pandas accepts any ``os.PathLike``.
//
//	By file-like object, we refer to objects with a ``read()`` method,
//	such as a file handle (e.g. via builtin ``open`` function)
//	or ``StringIO``.
//
// convert_dates : bool, default True
//
//	Convert date variables to DataFrame time values.
//
// convert_categoricals : bool, default True
//
//	Read value labels and convert columns to Categorical/Factor variables.
//
// index_col : str, optional
//
//	Column to set as index.
//
// convert_missing : bool, default False
//
//	Flag indicating whether to convert missing values to their Stata
//	representations.  If False, missing values are replaced with nan.
//	If True, columns containing missing values are returned with
//	object data types and missing values are represented by
//	StataMissingValue objects.
//
// preserve_dtypes : bool, default True
//
//	Preserve Stata datatypes. If False, numeric data are upcast to pandas
//	default types for foreign data (float64 or int64).
//
// columns : list or None
//
//	Columns to retain.  Columns will be returned in the given order.  None
//	returns all columns.
//
// order_categoricals : bool, default True
//
//	Flag indicating whether converted categorical data are ordered.
//
// chunksize : int, default None
//
//	Return StataReader object for iterations, returns chunks with
//	given number of lines.
//
// iterator : bool, default False
//
//	Return StataReader object.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'filepath_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
// storage_options : dict, optional
//
//	Extra options that make sense for a particular storage connection, e.g.
//	host, port, username, password, etc. For HTTP(S) URLs the key-value pairs
//	are forwarded to ``urllib.request.Request`` as header options. For other
//	URLs (e.g. starting with "s3://", and "gcs://") the key-value pairs are
//	forwarded to ``fsspec.open``. Please see ``fsspec`` and ``urllib`` for more
//	details, and for more examples on storage options refer `here
//	<https://pandas.pydata.org/docs/user_guide/io.html?
//	highlight=storage_options#reading-writing-remote-files>`_.
//
// Returns
// -------
// DataFrame or pandas.api.typing.StataReader
//
// See Also
// --------
// io.stata.StataReader : Low-level reader for Stata data files.
// DataFrame.to_stata: Export Stata data files.
//
// Notes
// -----
// Categorical variables read through an iterator may not have the same
// categories and dtype. This occurs when  a variable stored in a DTA
// file is associated to an incomplete set of value labels that only
// label a strict subset of the values.
//
// Examples
// --------
//
// # Creating a dummy stata for this example
//
// >>> df = pd.DataFrame({'animal': ['falcon', 'parrot', 'falcon', 'parrot'],
// ...                     'speed': [350, 18, 361, 15]})  # doctest: +SKIP
// >>> df.to_stata('animals.dta')  # doctest: +SKIP
//
// Read a Stata dta file:
//
// >>> df = pd.read_stata('animals.dta')  # doctest: +SKIP
//
// Read a Stata dta file in 10,000 line chunks:
//
// >>> values = np.random.randint(0, 10, size=(20_000, 1), dtype="uint8")  # doctest: +SKIP
// >>> df = pd.DataFrame(values, columns=["i"])  # doctest: +SKIP
// >>> df.to_stata('filename.dta')  # doctest: +SKIP
//
// >>> with pd.read_stata('filename.dta', chunksize=10000) as itr: # doctest: +SKIP
// >>>     for chunk in itr:
// ...         # Operate on a single chunk, e.g., chunk.mean()
// ...         pass  # doctest: +SKIP
//
//go:linkname ReadStata py.read_stata
func ReadStata(filepathOrBuffer *py.Object) *py.Object

// Read SAS files stored as either XPORT or SAS7BDAT format files.
//
// Parameters
// ----------
// filepath_or_buffer : str, path object, or file-like object
//
//	String, path object (implementing ``os.PathLike[str]``), or file-like
//	object implementing a binary ``read()`` function. The string could be a URL.
//	Valid URL schemes include http, ftp, s3, and file. For file URLs, a host is
//	expected. A local file could be:
//	``file://localhost/path/to/table.sas7bdat``.
//
// format : str {'xport', 'sas7bdat'} or None
//
//	If None, file format is inferred from file extension. If 'xport' or
//	'sas7bdat', uses the corresponding format.
//
// index : identifier of index column, defaults to None
//
//	Identifier of column that should be used as index of the DataFrame.
//
// encoding : str, default is None
//
//	Encoding for text data.  If None, text data are stored as raw bytes.
//
// chunksize : int
//
//	Read file `chunksize` lines at a time, returns iterator.
//
// iterator : bool, defaults to False
//
//	If True, returns an iterator for reading the file incrementally.
//
// compression : str or dict, default 'infer'
//
//	For on-the-fly decompression of on-disk data. If 'infer' and 'filepath_or_buffer' is
//	path-like, then detect compression from the following extensions: '.gz',
//	'.bz2', '.zip', '.xz', '.zst', '.tar', '.tar.gz', '.tar.xz' or '.tar.bz2'
//	(otherwise no compression).
//	If using 'zip' or 'tar', the ZIP file must contain only one data file to be read in.
//	Set to ``None`` for no decompression.
//	Can also be a dict with key ``'method'`` set
//	to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``, ``'xz'``, ``'tar'``} and
//	other key-value pairs are forwarded to
//	``zipfile.ZipFile``, ``gzip.GzipFile``,
//	``bz2.BZ2File``, ``zstandard.ZstdDecompressor``, ``lzma.LZMAFile`` or
//	``tarfile.TarFile``, respectively.
//	As an example, the following could be passed for Zstandard decompression using a
//	custom compression dictionary:
//	``compression={'method': 'zstd', 'dict_data': my_compression_dict}``.
//
//	.. versionadded:: 1.5.0
//	    Added support for `.tar` files.
//
// Returns
// -------
// DataFrame if iterator=False and chunksize=None, else SAS7BDATReader
// or XportReader
//
// Examples
// --------
// >>> df = pd.read_sas("sas_data.sas7bdat")  # doctest: +SKIP
//
//go:linkname ReadSas py.read_sas
func ReadSas(filepathOrBuffer *py.Object) *py.Object

// Load an SPSS file from the file path, returning a DataFrame.
//
// Parameters
// ----------
// path : str or Path
//
//	File path.
//
// usecols : list-like, optional
//
//	Return a subset of the columns. If None, return all columns.
//
// convert_categoricals : bool, default is True
//
//	Convert categorical columns into pd.Categorical.
//
// dtype_backend : {'numpy_nullable', 'pyarrow'}, default 'numpy_nullable'
//
//	Back-end data type applied to the resultant :class:`DataFrame`
//	(still experimental). Behaviour is as follows:
//
//	* ``"numpy_nullable"``: returns nullable-dtype-backed :class:`DataFrame`
//	  (default).
//	* ``"pyarrow"``: returns pyarrow-backed nullable :class:`ArrowDtype`
//	  DataFrame.
//
//	.. versionadded:: 2.0
//
// Returns
// -------
// DataFrame
//
// Examples
// --------
// >>> df = pd.read_spss("spss_data.sav")  # doctest: +SKIP
//
//go:linkname ReadSpss py.read_spss
func ReadSpss(path *py.Object, usecols *py.Object, convertCategoricals *py.Object, dtypeBackend *py.Object) *py.Object

// Normalize semi-structured JSON data into a flat table.
//
// Parameters
// ----------
// data : dict or list of dicts
//
//	Unserialized JSON objects.
//
// record_path : str or list of str, default None
//
//	Path in each object to list of records. If not passed, data will be
//	assumed to be an array of records.
//
// meta : list of paths (str or list of str), default None
//
//	Fields to use as metadata for each record in resulting table.
//
// meta_prefix : str, default None
//
//	If True, prefix records with dotted (?) path, e.g. foo.bar.field if
//	meta is ['foo', 'bar'].
//
// record_prefix : str, default None
//
//	If True, prefix records with dotted (?) path, e.g. foo.bar.field if
//	path to records is ['foo', 'bar'].
//
// errors : {'raise', 'ignore'}, default 'raise'
//
//	Configures error handling.
//
//	* 'ignore' : will ignore KeyError if keys listed in meta are not
//	  always present.
//	* 'raise' : will raise KeyError if keys listed in meta are not
//	  always present.
//
// sep : str, default '.'
//
//	Nested records will generate names separated by sep.
//	e.g., for sep='.', {'foo': {'bar': 0}} -> foo.bar.
//
// max_level : int, default None
//
//	Max number of levels(depth of dict) to normalize.
//	if None, normalizes all levels.
//
// Returns
// -------
// frame : DataFrame
// Normalize semi-structured JSON data into a flat table.
//
// Examples
// --------
// >>> data = [
// ...     {"id": 1, "name": {"first": "Coleen", "last": "Volk"}},
// ...     {"name": {"given": "Mark", "family": "Regner"}},
// ...     {"id": 2, "name": "Faye Raker"},
// ... ]
// >>> pd.json_normalize(data)
//
//	id name.first name.last name.given name.family        name
//
// 0  1.0     Coleen      Volk        NaN         NaN         NaN
// 1  NaN        NaN       NaN       Mark      Regner         NaN
// 2  2.0        NaN       NaN        NaN         NaN  Faye Raker
//
// >>> data = [
// ...     {
// ...         "id": 1,
// ...         "name": "Cole Volk",
// ...         "fitness": {"height": 130, "weight": 60},
// ...     },
// ...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
// ...     {
// ...         "id": 2,
// ...         "name": "Faye Raker",
// ...         "fitness": {"height": 130, "weight": 60},
// ...     },
// ... ]
// >>> pd.json_normalize(data, max_level=0)
//
//	id        name                        fitness
//
// 0  1.0   Cole Volk  {'height': 130, 'weight': 60}
// 1  NaN    Mark Reg  {'height': 130, 'weight': 60}
// 2  2.0  Faye Raker  {'height': 130, 'weight': 60}
//
// Normalizes nested data up to level 1.
//
// >>> data = [
// ...     {
// ...         "id": 1,
// ...         "name": "Cole Volk",
// ...         "fitness": {"height": 130, "weight": 60},
// ...     },
// ...     {"name": "Mark Reg", "fitness": {"height": 130, "weight": 60}},
// ...     {
// ...         "id": 2,
// ...         "name": "Faye Raker",
// ...         "fitness": {"height": 130, "weight": 60},
// ...     },
// ... ]
// >>> pd.json_normalize(data, max_level=1)
//
//	id        name  fitness.height  fitness.weight
//
// 0  1.0   Cole Volk             130              60
// 1  NaN    Mark Reg             130              60
// 2  2.0  Faye Raker             130              60
//
// >>> data = [
// ...     {
// ...         "state": "Florida",
// ...         "shortname": "FL",
// ...         "info": {"governor": "Rick Scott"},
// ...         "counties": [
// ...             {"name": "Dade", "population": 12345},
// ...             {"name": "Broward", "population": 40000},
// ...             {"name": "Palm Beach", "population": 60000},
// ...         ],
// ...     },
// ...     {
// ...         "state": "Ohio",
// ...         "shortname": "OH",
// ...         "info": {"governor": "John Kasich"},
// ...         "counties": [
// ...             {"name": "Summit", "population": 1234},
// ...             {"name": "Cuyahoga", "population": 1337},
// ...         ],
// ...     },
// ... ]
// >>> result = pd.json_normalize(
// ...     data, "counties", ["state", "shortname", ["info", "governor"]]
// ... )
// >>> result
//
//	name  population    state shortname info.governor
//
// 0        Dade       12345   Florida    FL    Rick Scott
// 1     Broward       40000   Florida    FL    Rick Scott
// 2  Palm Beach       60000   Florida    FL    Rick Scott
// 3      Summit        1234   Ohio       OH    John Kasich
// 4    Cuyahoga        1337   Ohio       OH    John Kasich
//
// >>> data = {"A": [1, 2]}
// >>> pd.json_normalize(data, "A", record_prefix="Prefix.")
//
//	Prefix.0
//
// 0          1
// 1          2
//
// Returns normalized data with columns prefixed with the given string.
//
//go:linkname JsonNormalize py.json_normalize
func JsonNormalize(data *py.Object, recordPath *py.Object, meta *py.Object, metaPrefix *py.Object, recordPrefix *py.Object, errors *py.Object, sep *py.Object, maxLevel *py.Object) *py.Object

// Run the pandas test suite using pytest.
//
// By default, runs with the marks -m "not slow and not network and not db"
//
// Parameters
// ----------
// extra_args : list[str], default None
//
//	Extra marks to run the tests.
//
// run_doctests : bool, default False
//
//	Whether to only run the Python and Cython doctests. If you would like to run
//	both doctests/regular tests, just append "--doctest-modules"/"--doctest-cython"
//	to extra_args.
//
// Examples
// --------
// >>> pd.test()  # doctest: +SKIP
// running: pytest...
//
//go:linkname Test py.test
func Test(extraArgs *py.Object, runDoctests *py.Object) *py.Object

package statistics

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.statistics"

// Error function at x.
//
//go:linkname Erf py.erf
func Erf(x *py.Object) *py.Object

// Return the sample arithmetic mean of data.
//
//	>>> mean([1, 2, 3, 4, 4])
//	2.8
//
//	>>> from fractions import Fraction as F
//	>>> mean([F(3, 7), F(1, 21), F(5, 3), F(1, 3)])
//	Fraction(13, 21)
//
//	>>> from decimal import Decimal as D
//	>>> mean([D("0.5"), D("0.75"), D("0.625"), D("0.375")])
//	Decimal('0.5625')
//
//	If ``data`` is empty, StatisticsError will be raised.
//
//go:linkname Mean py.mean
func Mean(data *py.Object) *py.Object

// Convert data to floats and compute the arithmetic mean.
//
//	This runs faster than the mean() function and it always returns a float.
//	If the input dataset is empty, it raises a StatisticsError.
//
//	>>> fmean([3.5, 4.0, 5.25])
//	4.25
//
//go:linkname Fmean py.fmean
func Fmean(data *py.Object, weights *py.Object) *py.Object

// Convert data to floats and compute the geometric mean.
//
//	Raises a StatisticsError if the input dataset is empty,
//	if it contains a zero, or if it contains a negative value.
//
//	No special efforts are made to achieve exact results.
//	(However, this may change in the future.)
//
//	>>> round(geometric_mean([54, 24, 36]), 9)
//	36.0
//
//go:linkname GeometricMean py.geometric_mean
func GeometricMean(data *py.Object) *py.Object

// Return the harmonic mean of data.
//
//	The harmonic mean is the reciprocal of the arithmetic mean of the
//	reciprocals of the data.  It can be used for averaging ratios or
//	rates, for example speeds.
//
//	Suppose a car travels 40 km/hr for 5 km and then speeds-up to
//	60 km/hr for another 5 km. What is the average speed?
//
//	    >>> harmonic_mean([40, 60])
//	    48.0
//
//	Suppose a car travels 40 km/hr for 5 km, and when traffic clears,
//	speeds-up to 60 km/hr for the remaining 30 km of the journey. What
//	is the average speed?
//
//	    >>> harmonic_mean([40, 60], weights=[5, 30])
//	    56.0
//
//	If ``data`` is empty, or any element is less than zero,
//	``harmonic_mean`` will raise ``StatisticsError``.
//
//go:linkname HarmonicMean py.harmonic_mean
func HarmonicMean(data *py.Object, weights *py.Object) *py.Object

// Return the median (middle value) of numeric data.
//
//	When the number of data points is odd, return the middle data point.
//	When the number of data points is even, the median is interpolated by
//	taking the average of the two middle values:
//
//	>>> median([1, 3, 5])
//	3
//	>>> median([1, 3, 5, 7])
//	4.0
//
//go:linkname Median py.median
func Median(data *py.Object) *py.Object

// Return the low median of numeric data.
//
//	When the number of data points is odd, the middle value is returned.
//	When it is even, the smaller of the two middle values is returned.
//
//	>>> median_low([1, 3, 5])
//	3
//	>>> median_low([1, 3, 5, 7])
//	3
//
//go:linkname MedianLow py.median_low
func MedianLow(data *py.Object) *py.Object

// Return the high median of data.
//
//	When the number of data points is odd, the middle value is returned.
//	When it is even, the larger of the two middle values is returned.
//
//	>>> median_high([1, 3, 5])
//	3
//	>>> median_high([1, 3, 5, 7])
//	5
//
//go:linkname MedianHigh py.median_high
func MedianHigh(data *py.Object) *py.Object

// Estimates the median for numeric data binned around the midpoints
//
//	of consecutive, fixed-width intervals.
//
//	The *data* can be any iterable of numeric data with each value being
//	exactly the midpoint of a bin.  At least one value must be present.
//
//	The *interval* is width of each bin.
//
//	For example, demographic information may have been summarized into
//	consecutive ten-year age groups with each group being represented
//	by the 5-year midpoints of the intervals:
//
//	    >>> demographics = Counter({
//	    ...    25: 172,   # 20 to 30 years old
//	    ...    35: 484,   # 30 to 40 years old
//	    ...    45: 387,   # 40 to 50 years old
//	    ...    55:  22,   # 50 to 60 years old
//	    ...    65:   6,   # 60 to 70 years old
//	    ... })
//
//	The 50th percentile (median) is the 536th person out of the 1071
//	member cohort.  That person is in the 30 to 40 year old age group.
//
//	The regular median() function would assume that everyone in the
//	tricenarian age group was exactly 35 years old.  A more tenable
//	assumption is that the 484 members of that age group are evenly
//	distributed between 30 and 40.  For that, we use median_grouped().
//
//	    >>> data = list(demographics.elements())
//	    >>> median(data)
//	    35
//	    >>> round(median_grouped(data, interval=10), 1)
//	    37.5
//
//	The caller is responsible for making sure the data points are separated
//	by exact multiples of *interval*.  This is essential for getting a
//	correct result.  The function does not check this precondition.
//
//	Inputs may be any numeric type that can be coerced to a float during
//	the interpolation step.
//
//go:linkname MedianGrouped py.median_grouped
func MedianGrouped(data *py.Object, interval *py.Object) *py.Object

// Return the most common data point from discrete or nominal data.
//
//	``mode`` assumes discrete data, and returns a single value. This is the
//	standard treatment of the mode as commonly taught in schools:
//
//	    >>> mode([1, 1, 2, 3, 3, 3, 3, 4])
//	    3
//
//	This also works with nominal (non-numeric) data:
//
//	    >>> mode(["red", "blue", "blue", "red", "green", "red", "red"])
//	    'red'
//
//	If there are multiple modes with same frequency, return the first one
//	encountered:
//
//	    >>> mode(['red', 'red', 'green', 'blue', 'blue'])
//	    'red'
//
//	If *data* is empty, ``mode``, raises StatisticsError.
//
//go:linkname Mode py.mode
func Mode(data *py.Object) *py.Object

// Return a list of the most frequently occurring values.
//
//	Will return more than one result if there are multiple modes
//	or an empty list if *data* is empty.
//
//	>>> multimode('aabbbbbbbbcc')
//	['b']
//	>>> multimode('aabbbbccddddeeffffgg')
//	['b', 'd', 'f']
//	>>> multimode('')
//	[]
//
//go:linkname Multimode py.multimode
func Multimode(data *py.Object) *py.Object

// Divide *data* into *n* continuous intervals with equal probability.
//
//	Returns a list of (n - 1) cut points separating the intervals.
//
//	Set *n* to 4 for quartiles (the default).  Set *n* to 10 for deciles.
//	Set *n* to 100 for percentiles which gives the 99 cuts points that
//	separate *data* in to 100 equal sized groups.
//
//	The *data* can be any iterable containing sample.
//	The cut points are linearly interpolated between data points.
//
//	If *method* is set to *inclusive*, *data* is treated as population
//	data.  The minimum value is treated as the 0th percentile and the
//	maximum value is treated as the 100th percentile.
//
//go:linkname Quantiles py.quantiles
func Quantiles(data *py.Object) *py.Object

// Return the sample variance of data.
//
//	data should be an iterable of Real-valued numbers, with at least two
//	values. The optional argument xbar, if given, should be the mean of
//	the data. If it is missing or None, the mean is automatically calculated.
//
//	Use this function when your data is a sample from a population. To
//	calculate the variance from the entire population, see ``pvariance``.
//
//	Examples:
//
//	>>> data = [2.75, 1.75, 1.25, 0.25, 0.5, 1.25, 3.5]
//	>>> variance(data)
//	1.3720238095238095
//
//	If you have already calculated the mean of your data, you can pass it as
//	the optional second argument ``xbar`` to avoid recalculating it:
//
//	>>> m = mean(data)
//	>>> variance(data, m)
//	1.3720238095238095
//
//	This function does not check that ``xbar`` is actually the mean of
//	``data``. Giving arbitrary values for ``xbar`` may lead to invalid or
//	impossible results.
//
//	Decimals and Fractions are supported:
//
//	>>> from decimal import Decimal as D
//	>>> variance([D("27.5"), D("30.25"), D("30.25"), D("34.5"), D("41.75")])
//	Decimal('31.01875')
//
//	>>> from fractions import Fraction as F
//	>>> variance([F(1, 6), F(1, 2), F(5, 3)])
//	Fraction(67, 108)
//
//go:linkname Variance py.variance
func Variance(data *py.Object, xbar *py.Object) *py.Object

// Return the population variance of “data“.
//
//	data should be a sequence or iterable of Real-valued numbers, with at least one
//	value. The optional argument mu, if given, should be the mean of
//	the data. If it is missing or None, the mean is automatically calculated.
//
//	Use this function to calculate the variance from the entire population.
//	To estimate the variance from a sample, the ``variance`` function is
//	usually a better choice.
//
//	Examples:
//
//	>>> data = [0.0, 0.25, 0.25, 1.25, 1.5, 1.75, 2.75, 3.25]
//	>>> pvariance(data)
//	1.25
//
//	If you have already calculated the mean of the data, you can pass it as
//	the optional second argument to avoid recalculating it:
//
//	>>> mu = mean(data)
//	>>> pvariance(data, mu)
//	1.25
//
//	Decimals and Fractions are supported:
//
//	>>> from decimal import Decimal as D
//	>>> pvariance([D("27.5"), D("30.25"), D("30.25"), D("34.5"), D("41.75")])
//	Decimal('24.815')
//
//	>>> from fractions import Fraction as F
//	>>> pvariance([F(1, 4), F(5, 4), F(1, 2)])
//	Fraction(13, 72)
//
//go:linkname Pvariance py.pvariance
func Pvariance(data *py.Object, mu *py.Object) *py.Object

// Return the square root of the sample variance.
//
//	See ``variance`` for arguments and other details.
//
//	>>> stdev([1.5, 2.5, 2.5, 2.75, 3.25, 4.75])
//	1.0810874155219827
//
//go:linkname Stdev py.stdev
func Stdev(data *py.Object, xbar *py.Object) *py.Object

// Return the square root of the population variance.
//
//	See ``pvariance`` for arguments and other details.
//
//	>>> pstdev([1.5, 2.5, 2.5, 2.75, 3.25, 4.75])
//	0.986893273527251
//
//go:linkname Pstdev py.pstdev
func Pstdev(data *py.Object, mu *py.Object) *py.Object

// Covariance
//
//	Return the sample covariance of two inputs *x* and *y*. Covariance
//	is a measure of the joint variability of two inputs.
//
//	>>> x = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//	>>> y = [1, 2, 3, 1, 2, 3, 1, 2, 3]
//	>>> covariance(x, y)
//	0.75
//	>>> z = [9, 8, 7, 6, 5, 4, 3, 2, 1]
//	>>> covariance(x, z)
//	-7.5
//	>>> covariance(z, x)
//	-7.5
//
//go:linkname Covariance py.covariance
func Covariance(x *py.Object, y *py.Object) *py.Object

// Pearson's correlation coefficient
//
//	Return the Pearson's correlation coefficient for two inputs. Pearson's
//	correlation coefficient *r* takes values between -1 and +1. It measures
//	the strength and direction of a linear relationship.
//
//	>>> x = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//	>>> y = [9, 8, 7, 6, 5, 4, 3, 2, 1]
//	>>> correlation(x, x)
//	1.0
//	>>> correlation(x, y)
//	-1.0
//
//	If *method* is "ranked", computes Spearman's rank correlation coefficient
//	for two inputs.  The data is replaced by ranks.  Ties are averaged
//	so that equal values receive the same rank.  The resulting coefficient
//	measures the strength of a monotonic relationship.
//
//	Spearman's rank correlation coefficient is appropriate for ordinal
//	data or for continuous data that doesn't meet the linear proportion
//	requirement for Pearson's correlation coefficient.
//
//go:linkname Correlation py.correlation
func Correlation(x *py.Object, y *py.Object) *py.Object

// Slope and intercept for simple linear regression.
//
//	Return the slope and intercept of simple linear regression
//	parameters estimated using ordinary least squares. Simple linear
//	regression describes relationship between an independent variable
//	*x* and a dependent variable *y* in terms of a linear function:
//
//	    y = slope * x + intercept + noise
//
//	where *slope* and *intercept* are the regression parameters that are
//	estimated, and noise represents the variability of the data that was
//	not explained by the linear regression (it is equal to the
//	difference between predicted and actual values of the dependent
//	variable).
//
//	The parameters are returned as a named tuple.
//
//	>>> x = [1, 2, 3, 4, 5]
//	>>> noise = NormalDist().samples(5, seed=42)
//	>>> y = [3 * x[i] + 2 + noise[i] for i in range(5)]
//	>>> linear_regression(x, y)  #doctest: +ELLIPSIS
//	LinearRegression(slope=3.09078914170..., intercept=1.75684970486...)
//
//	If *proportional* is true, the independent variable *x* and the
//	dependent variable *y* are assumed to be directly proportional.
//	The data is fit to a line passing through the origin.
//
//	Since the *intercept* will always be 0.0, the underlying linear
//	function simplifies to:
//
//	    y = slope * x + noise
//
//	>>> y = [3 * x[i] + noise[i] for i in range(5)]
//	>>> linear_regression(x, y, proportional=True)  #doctest: +ELLIPSIS
//	LinearRegression(slope=3.02447542484..., intercept=0.0)
//
//go:linkname LinearRegression py.linear_regression
func LinearRegression(x *py.Object, y *py.Object) *py.Object

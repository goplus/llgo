package numpy

import (
	_ "unsafe"

	"github.com/goplus/llgo/py"
)

const LLGoPackage = "py.numpy"

// Show libraries and system information on which NumPy was built
// and is being used
//
// Parameters
// ----------
// mode : {`'stdout'`, `'dicts'`}, optional.
//
//	Indicates how to display the config information.
//	`'stdout'` prints to console, `'dicts'` returns a dictionary
//	of the configuration.
//
// Returns
// -------
// out : {`dict`, `None`}
//
//	If mode is `'dicts'`, a dict is returned, else None
//
// See Also
// --------
// get_include : Returns the directory containing NumPy C
//
//	header files.
//
// Notes
// -----
//  1. The `'stdout'` mode will give more readable
//     output if “pyyaml“ is installed
//
//go:linkname ShowConfig py.show_config
func ShowConfig(mode *py.Object) *py.Object

// Check if the array is Fortran contiguous but *not* C contiguous.
//
// This function is obsolete and, because of changes due to relaxed stride
// checking, its return value for the same array may differ for versions
// of NumPy >= 1.10.0 and previous versions. If you only want to check if an
// array is Fortran contiguous use “a.flags.f_contiguous“ instead.
//
// Parameters
// ----------
// a : ndarray
//
//	Input array.
//
// Returns
// -------
// isfortran : bool
//
//	Returns True if the array is Fortran contiguous but *not* C contiguous.
//
// Examples
// --------
//
// np.array allows to specify whether the array is written in C-contiguous
// order (last index varies the fastest), or FORTRAN-contiguous order in
// memory (first index varies the fastest).
//
// >>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
// >>> a
// array([[1, 2, 3],
//
//	[4, 5, 6]])
//
// >>> np.isfortran(a)
// False
//
// >>> b = np.array([[1, 2, 3], [4, 5, 6]], order='F')
// >>> b
// array([[1, 2, 3],
//
//	[4, 5, 6]])
//
// >>> np.isfortran(b)
// True
//
// The transpose of a C-ordered array is a FORTRAN-ordered array.
//
// >>> a = np.array([[1, 2, 3], [4, 5, 6]], order='C')
// >>> a
// array([[1, 2, 3],
//
//	[4, 5, 6]])
//
// >>> np.isfortran(a)
// False
// >>> b = a.T
// >>> b
// array([[1, 4],
//
//	[2, 5],
//	[3, 6]])
//
// >>> np.isfortran(b)
// True
//
// C-ordered arrays evaluate as False even if they are also FORTRAN-ordered.
//
// >>> np.isfortran(np.array([1, 2], order='F'))
// False
//
//go:linkname Isfortran py.isfortran
func Isfortran(a *py.Object) *py.Object

// Return an array representing the indices of a grid.
//
// Compute an array where the subarrays contain index values 0, 1, ...
// varying only along the corresponding axis.
//
// Parameters
// ----------
// dimensions : sequence of ints
//
//	The shape of the grid.
//
// dtype : dtype, optional
//
//	Data type of the result.
//
// sparse : boolean, optional
//
//	Return a sparse representation of the grid instead of a dense
//	representation. Default is False.
//
//	.. versionadded:: 1.17
//
// Returns
// -------
// grid : one ndarray or tuple of ndarrays
//
//	If sparse is False:
//	    Returns one array of grid indices,
//	    ``grid.shape = (len(dimensions),) + tuple(dimensions)``.
//	If sparse is True:
//	    Returns a tuple of arrays, with
//	    ``grid[i].shape = (1, ..., 1, dimensions[i], 1, ..., 1)`` with
//	    dimensions[i] in the ith place
//
// See Also
// --------
// mgrid, ogrid, meshgrid
//
// Notes
// -----
// The output shape in the dense case is obtained by prepending the number
// of dimensions in front of the tuple of dimensions, i.e. if `dimensions`
// is a tuple “(r0, ..., rN-1)“ of length “N“, the output shape is
// “(N, r0, ..., rN-1)“.
//
// The subarrays “grid[k]“ contains the N-D array of indices along the
// “k-th“ axis. Explicitly::
//
//	grid[k, i0, i1, ..., iN-1] = ik
//
// Examples
// --------
// >>> grid = np.indices((2, 3))
// >>> grid.shape
// (2, 2, 3)
// >>> grid[0]        # row indices
// array([[0, 0, 0],
//
//	[1, 1, 1]])
//
// >>> grid[1]        # column indices
// array([[0, 1, 2],
//
//	[0, 1, 2]])
//
// The indices can be used as an index into an array.
//
// >>> x = np.arange(20).reshape(5, 4)
// >>> row, col = np.indices((2, 3))
// >>> x[row, col]
// array([[0, 1, 2],
//
//	[4, 5, 6]])
//
// Note that it would be more straightforward in the above example to
// extract the required elements directly with “x[:2, :3]“.
//
// If sparse is set to true, the grid will be returned in a sparse
// representation.
//
// >>> i, j = np.indices((2, 3), sparse=True)
// >>> i.shape
// (2, 1)
// >>> j.shape
// (1, 3)
// >>> i        # row indices
// array([[0],
//
//	[1]])
//
// >>> j        # column indices
// array([[0, 1, 2]])
//
//go:linkname Indices py.indices
func Indices(dimensions *py.Object, dtype *py.Object, sparse *py.Object) *py.Object

// Construct an array by executing a function over each coordinate.
//
// The resulting array therefore has a value “fn(x, y, z)“ at
// coordinate “(x, y, z)“.
//
// Parameters
// ----------
// function : callable
//
//	The function is called with N parameters, where N is the rank of
//	`shape`.  Each parameter represents the coordinates of the array
//	varying along a specific axis.  For example, if `shape`
//	were ``(2, 2)``, then the parameters would be
//	``array([[0, 0], [1, 1]])`` and ``array([[0, 1], [0, 1]])``
//
// shape : (N,) tuple of ints
//
//	Shape of the output array, which also determines the shape of
//	the coordinate arrays passed to `function`.
//
// dtype : data-type, optional
//
//	Data-type of the coordinate arrays passed to `function`.
//	By default, `dtype` is float.
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// fromfunction : any
//
//	The result of the call to `function` is passed back directly.
//	Therefore the shape of `fromfunction` is completely determined by
//	`function`.  If `function` returns a scalar value, the shape of
//	`fromfunction` would not match the `shape` parameter.
//
// See Also
// --------
// indices, meshgrid
//
// Notes
// -----
// Keywords other than `dtype` and `like` are passed to `function`.
//
// Examples
// --------
// >>> np.fromfunction(lambda i, j: i, (2, 2), dtype=float)
// array([[0., 0.],
//
//	[1., 1.]])
//
// >>> np.fromfunction(lambda i, j: j, (2, 2), dtype=float)
// array([[0., 1.],
//
//	[0., 1.]])
//
// >>> np.fromfunction(lambda i, j: i == j, (3, 3), dtype=int)
// array([[ True, False, False],
//
//	[False,  True, False],
//	[False, False,  True]])
//
// >>> np.fromfunction(lambda i, j: i + j, (3, 3), dtype=int)
// array([[0, 1, 2],
//
//	[1, 2, 3],
//	[2, 3, 4]])
//
//go:linkname Fromfunction py.fromfunction
func Fromfunction(function *py.Object, shape *py.Object) *py.Object

// Returns True if the type of `element` is a scalar type.
//
// Parameters
// ----------
// element : any
//
//	Input argument, can be of any type and shape.
//
// Returns
// -------
// val : bool
//
//	True if `element` is a scalar type, False if it is not.
//
// See Also
// --------
// ndim : Get the number of dimensions of an array
//
// Notes
// -----
// If you need a stricter way to identify a *numerical* scalar, use
// “isinstance(x, numbers.Number)“, as that returns “False“ for most
// non-numerical elements such as strings.
//
// In most cases “np.ndim(x) == 0“ should be used instead of this function,
// as that will also return true for 0d arrays. This is how numpy overloads
// functions in the style of the “dx“ arguments to `gradient` and the “bins“
// argument to `histogram`. Some key differences:
//
// +--------------------------------------+---------------+-------------------+
// | x                                    |“isscalar(x)“|“np.ndim(x) == 0“|
// +======================================+===============+===================+
// | PEP 3141 numeric objects (including  | “True“      | “True“          |
// | builtins)                            |               |                   |
// +--------------------------------------+---------------+-------------------+
// | builtin string and buffer objects    | “True“      | “True“          |
// +--------------------------------------+---------------+-------------------+
// | other builtin objects, like          | “False“     | “True“          |
// | `pathlib.Path`, `Exception`,         |               |                   |
// | the result of `re.compile`           |               |                   |
// +--------------------------------------+---------------+-------------------+
// | third-party objects like             | “False“     | “True“          |
// | `matplotlib.figure.Figure`           |               |                   |
// +--------------------------------------+---------------+-------------------+
// | zero-dimensional numpy arrays        | “False“     | “True“          |
// +--------------------------------------+---------------+-------------------+
// | other numpy arrays                   | “False“     | “False“         |
// +--------------------------------------+---------------+-------------------+
// | `list`, `tuple`, and other sequence  | “False“     | “False“         |
// | objects                              |               |                   |
// +--------------------------------------+---------------+-------------------+
//
// Examples
// --------
// >>> np.isscalar(3.1)
// True
// >>> np.isscalar(np.array(3.1))
// False
// >>> np.isscalar([3.1])
// False
// >>> np.isscalar(False)
// True
// >>> np.isscalar('numpy')
// True
//
// NumPy supports PEP 3141 numbers:
//
// >>> from fractions import Fraction
// >>> np.isscalar(Fraction(5, 17))
// True
// >>> from numbers import Number
// >>> np.isscalar(Number())
// True
//
//go:linkname Isscalar py.isscalar
func Isscalar(element *py.Object) *py.Object

// Return the binary representation of the input number as a string.
//
// For negative numbers, if width is not given, a minus sign is added to the
// front. If width is given, the two's complement of the number is
// returned, with respect to that width.
//
// In a two's-complement system negative numbers are represented by the two's
// complement of the absolute value. This is the most common method of
// representing signed integers on computers [1]_. A N-bit two's-complement
// system can represent every integer in the range
// :math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
//
// Parameters
// ----------
// num : int
//
//	Only an integer decimal number can be used.
//
// width : int, optional
//
//	The length of the returned string if `num` is positive, or the length
//	of the two's complement if `num` is negative, provided that `width` is
//	at least a sufficient number of bits for `num` to be represented in the
//	designated form.
//
//	If the `width` value is insufficient, it will be ignored, and `num` will
//	be returned in binary (`num` > 0) or two's complement (`num` < 0) form
//	with its width equal to the minimum number of bits needed to represent
//	the number in the designated form. This behavior is deprecated and will
//	later raise an error.
//
//	.. deprecated:: 1.12.0
//
// Returns
// -------
// bin : str
//
//	Binary representation of `num` or two's complement of `num`.
//
// See Also
// --------
// base_repr: Return a string representation of a number in the given base
//
//	system.
//
// bin: Python's built-in binary representation generator of an integer.
//
// Notes
// -----
// `binary_repr` is equivalent to using `base_repr` with base 2, but about 25x
// faster.
//
// References
// ----------
// .. [1] Wikipedia, "Two's complement",
//
//	https://en.wikipedia.org/wiki/Two's_complement
//
// Examples
// --------
// >>> np.binary_repr(3)
// '11'
// >>> np.binary_repr(-3)
// '-11'
// >>> np.binary_repr(3, width=4)
// '0011'
//
// The two's complement is returned when the input number is negative and
// width is specified:
//
// >>> np.binary_repr(-3, width=3)
// '101'
// >>> np.binary_repr(-3, width=5)
// '11101'
//
//go:linkname BinaryRepr py.binary_repr
func BinaryRepr(num *py.Object, width *py.Object) *py.Object

// Return a string representation of a number in the given base system.
//
// Parameters
// ----------
// number : int
//
//	The value to convert. Positive and negative values are handled.
//
// base : int, optional
//
//	Convert `number` to the `base` number system. The valid range is 2-36,
//	the default value is 2.
//
// padding : int, optional
//
//	Number of zeros padded on the left. Default is 0 (no padding).
//
// Returns
// -------
// out : str
//
//	String representation of `number` in `base` system.
//
// See Also
// --------
// binary_repr : Faster version of `base_repr` for base 2.
//
// Examples
// --------
// >>> np.base_repr(5)
// '101'
// >>> np.base_repr(6, 5)
// '11'
// >>> np.base_repr(7, base=5, padding=3)
// '00012'
//
// >>> np.base_repr(10, base=16)
// 'A'
// >>> np.base_repr(32, base=16)
// '20'
//
//go:linkname BaseRepr py.base_repr
func BaseRepr(number *py.Object, base *py.Object, padding *py.Object) *py.Object

// Return a new array of given shape and type, filled with ones.
//
// Parameters
// ----------
// shape : int or sequence of ints
//
//	Shape of the new array, e.g., ``(2, 3)`` or ``2``.
//
// dtype : data-type, optional
//
//	The desired data-type for the array, e.g., `numpy.int8`.  Default is
//	`numpy.float64`.
//
// order : {'C', 'F'}, optional, default: C
//
//	Whether to store multi-dimensional data in row-major
//	(C-style) or column-major (Fortran-style) order in
//	memory.
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	Array of ones with the given shape, dtype, and order.
//
// See Also
// --------
// ones_like : Return an array of ones with shape and type of input.
// empty : Return a new uninitialized array.
// zeros : Return a new array setting values to zero.
// full : Return a new array of given shape filled with value.
//
// Examples
// --------
// >>> np.ones(5)
// array([1., 1., 1., 1., 1.])
//
// >>> np.ones((5,), dtype=int)
// array([1, 1, 1, 1, 1])
//
// >>> np.ones((2, 1))
// array([[1.],
//
//	[1.]])
//
// >>> s = (2,2)
// >>> np.ones(s)
// array([[1.,  1.],
//
//	[1.,  1.]])
//
//go:linkname Ones py.ones
func Ones(shape *py.Object, dtype *py.Object, order *py.Object) *py.Object

// Return the identity array.
//
// The identity array is a square array with ones on
// the main diagonal.
//
// Parameters
// ----------
// n : int
//
//	Number of rows (and columns) in `n` x `n` output.
//
// dtype : data-type, optional
//
//	Data-type of the output.  Defaults to ``float``.
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	`n` x `n` array with its main diagonal set to one,
//	and all other elements 0.
//
// Examples
// --------
// >>> np.identity(3)
// array([[1.,  0.,  0.],
//
//	[0.,  1.,  0.],
//	[0.,  0.,  1.]])
//
//go:linkname Identity py.identity
func Identity(n *py.Object, dtype *py.Object) *py.Object

// invert(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute bit-wise inversion, or bit-wise NOT, element-wise.
//
// Computes the bit-wise NOT of the underlying binary representation of
// the integers in the input arrays. This ufunc implements the C/Python
// operator “~“.
//
// For signed integer inputs, the two's complement is returned.  In a
// two's-complement system negative numbers are represented by the two's
// complement of the absolute value. This is the most common method of
// representing signed integers on computers [1]_. A N-bit
// two's-complement system can represent every integer in the range
// :math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
//
// Parameters
// ----------
// x : array_like
//
//	Only integer and boolean types are handled.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Result.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// bitwise_and, bitwise_or, bitwise_xor
// logical_not
// binary_repr :
//
//	Return the binary representation of the input number as a string.
//
// Notes
// -----
// `bitwise_not` is an alias for `invert`:
//
// >>> np.bitwise_not is np.invert
// True
//
// References
// ----------
// .. [1] Wikipedia, "Two's complement",
//
//	https://en.wikipedia.org/wiki/Two's_complement
//
// Examples
// --------
// We've seen that 13 is represented by “00001101“.
// The invert or bit-wise NOT of 13 is then:
//
// >>> x = np.invert(np.array(13, dtype=np.uint8))
// >>> x
// 242
// >>> np.binary_repr(x, width=8)
// '11110010'
//
// The result depends on the bit-width:
//
// >>> x = np.invert(np.array(13, dtype=np.uint16))
// >>> x
// 65522
// >>> np.binary_repr(x, width=16)
// '1111111111110010'
//
// When using signed integer types the result is the two's complement of
// the result for the unsigned type:
//
// >>> np.invert(np.array([13], dtype=np.int8))
// array([-14], dtype=int8)
// >>> np.binary_repr(-14, width=8)
// '11110010'
//
// Booleans are accepted as well:
//
// >>> np.invert(np.array([True, False]))
// array([False,  True])
//
// The “~“ operator can be used as a shorthand for “np.invert“ on
// ndarrays.
//
// >>> x1 = np.array([True, False])
// >>> ~x1
// array([False,  True])
//
//go:linkname BitwiseNot py.bitwise_not
func BitwiseNot(__llgo_va_list ...interface{}) *py.Object

// Return a new array of given shape and type, filled with `fill_value`.
//
// Parameters
// ----------
// shape : int or sequence of ints
//
//	Shape of the new array, e.g., ``(2, 3)`` or ``2``.
//
// fill_value : scalar or array_like
//
//	Fill value.
//
// dtype : data-type, optional
//
//	The desired data-type for the array  The default, None, means
//	 ``np.array(fill_value).dtype``.
//
// order : {'C', 'F'}, optional
//
//	Whether to store multidimensional data in C- or Fortran-contiguous
//	(row- or column-wise) order in memory.
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	Array of `fill_value` with the given shape, dtype, and order.
//
// See Also
// --------
// full_like : Return a new array with shape of input filled with value.
// empty : Return a new uninitialized array.
// ones : Return a new array setting values to one.
// zeros : Return a new array setting values to zero.
//
// Examples
// --------
// >>> np.full((2, 2), np.inf)
// array([[inf, inf],
//
//	[inf, inf]])
//
// >>> np.full((2, 2), 10)
// array([[10, 10],
//
//	[10, 10]])
//
// >>> np.full((2, 2), [1, 2])
// array([[1, 2],
//
//	[1, 2]])
//
//go:linkname Full py.full
func Full(shape *py.Object, fillValue *py.Object, dtype *py.Object, order *py.Object) *py.Object

// matmul(x1, x2, /, out=None, *, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj, axes, axis])
//
// Matrix product of two arrays.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays, scalars not allowed.
//
// out : ndarray, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that matches the signature `(n,k),(k,m)->(n,m)`. If not
//	provided or None, a freshly-allocated array is returned.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
//	.. versionadded:: 1.16
//	   Now handles ufunc kwargs
//
// Returns
// -------
// y : ndarray
//
//	The matrix product of the inputs.
//	This is a scalar only when both x1, x2 are 1-d vectors.
//
// Raises
// ------
// ValueError
//
//	If the last dimension of `x1` is not the same size as
//	the second-to-last dimension of `x2`.
//
//	If a scalar value is passed in.
//
// See Also
// --------
// vdot : Complex-conjugating dot product.
// tensordot : Sum products over arbitrary axes.
// einsum : Einstein summation convention.
// dot : alternative matrix product with different broadcasting rules.
//
// Notes
// -----
//
// The behavior depends on the arguments in the following way.
//
//   - If both arguments are 2-D they are multiplied like conventional
//     matrices.
//   - If either argument is N-D, N > 2, it is treated as a stack of
//     matrices residing in the last two indexes and broadcast accordingly.
//   - If the first argument is 1-D, it is promoted to a matrix by
//     prepending a 1 to its dimensions. After matrix multiplication
//     the prepended 1 is removed.
//   - If the second argument is 1-D, it is promoted to a matrix by
//     appending a 1 to its dimensions. After matrix multiplication
//     the appended 1 is removed.
//
// “matmul“ differs from “dot“ in two important ways:
//
//   - Multiplication by scalars is not allowed, use “*“ instead.
//
//   - Stacks of matrices are broadcast together as if the matrices
//     were elements, respecting the signature “(n,k),(k,m)->(n,m)“:
//
//     >>> a = np.ones([9, 5, 7, 4])
//     >>> c = np.ones([9, 5, 4, 3])
//     >>> np.dot(a, c).shape
//     (9, 5, 7, 9, 5, 3)
//     >>> np.matmul(a, c).shape
//     (9, 5, 7, 3)
//     >>> # n is 7, k is 4, m is 3
//
// The matmul function implements the semantics of the “@“ operator
// introduced in Python 3.5 following :pep:`465`.
//
// It uses an optimized BLAS library when possible (see `numpy.linalg`).
//
// Examples
// --------
// For 2-D arrays it is the matrix product:
//
// >>> a = np.array([[1, 0],
// ...               [0, 1]])
// >>> b = np.array([[4, 1],
// ...               [2, 2]])
// >>> np.matmul(a, b)
// array([[4, 1],
//
//	[2, 2]])
//
// For 2-D mixed with 1-D, the result is the usual.
//
// >>> a = np.array([[1, 0],
// ...               [0, 1]])
// >>> b = np.array([1, 2])
// >>> np.matmul(a, b)
// array([1, 2])
// >>> np.matmul(b, a)
// array([1, 2])
//
// # Broadcasting is conventional for stacks of arrays
//
// >>> a = np.arange(2 * 2 * 4).reshape((2, 2, 4))
// >>> b = np.arange(2 * 2 * 4).reshape((2, 4, 2))
// >>> np.matmul(a,b).shape
// (2, 2, 2)
// >>> np.matmul(a, b)[0, 1, 1]
// 98
// >>> sum(a[0, 1, :] * b[0 , :, 1])
// 98
//
// Vector, vector returns the scalar inner product, but neither argument
// is complex-conjugated:
//
// >>> np.matmul([2j, 3j], [2j, 3j])
// (-13+0j)
//
// Scalar multiplication raises an error.
//
// >>> np.matmul([1,2], 3)
// Traceback (most recent call last):
// ...
// ValueError: matmul: Input operand 1 does not have enough dimensions ...
//
// The “@“ operator can be used as a shorthand for “np.matmul“ on
// ndarrays.
//
// >>> x1 = np.array([2j, 3j])
// >>> x2 = np.array([2j, 3j])
// >>> x1 @ x2
// (-13+0j)
//
// .. versionadded:: 1.10.0
//
//go:linkname Matmul py.matmul
func Matmul(__llgo_va_list ...interface{}) *py.Object

// absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Calculate the absolute value element-wise.
//
// “np.abs“ is a shorthand for this function.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// absolute : ndarray
//
//	An ndarray containing the absolute value of
//	each element in `x`.  For complex input, ``a + ib``, the
//	absolute value is :math:`\sqrt{ a^2 + b^2 }`.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> x = np.array([-1.2, 1.2])
// >>> np.absolute(x)
// array([ 1.2,  1.2])
// >>> np.absolute(1.2 + 1j)
// 1.5620499351813308
//
// Plot the function over “[-10, 10]“:
//
// >>> import matplotlib.pyplot as plt
//
// >>> x = np.linspace(start=-10, stop=10, num=101)
// >>> plt.plot(x, np.absolute(x))
// >>> plt.show()
//
// Plot the function over the complex plane:
//
// >>> xx = x + 1j * x[:, np.newaxis]
// >>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
// >>> plt.show()
//
// The `abs` function can be used as a shorthand for “np.absolute“ on
// ndarrays.
//
// >>> x = np.array([-1.2, 1.2])
// >>> abs(x)
// array([1.2, 1.2])
//
//go:linkname Absolute py.absolute
func Absolute(__llgo_va_list ...interface{}) *py.Object

// add(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Add arguments element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays to be added.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// add : ndarray or scalar
//
//	The sum of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Notes
// -----
// Equivalent to `x1` + `x2` in terms of array broadcasting.
//
// Examples
// --------
// >>> np.add(1.0, 4.0)
// 5.0
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> np.add(x1, x2)
// array([[  0.,   2.,   4.],
//
//	[  3.,   5.,   7.],
//	[  6.,   8.,  10.]])
//
// The “+“ operator can be used as a shorthand for “np.add“ on ndarrays.
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> x1 + x2
// array([[ 0.,  2.,  4.],
//
//	[ 3.,  5.,  7.],
//	[ 6.,  8., 10.]])
//
//go:linkname Add py.add
func Add(__llgo_va_list ...interface{}) *py.Object

// arccos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Trigonometric inverse cosine, element-wise.
//
// The inverse of `cos` so that, if “y = cos(x)“, then “x = arccos(y)“.
//
// Parameters
// ----------
// x : array_like
//
//	`x`-coordinate on the unit circle.
//	For real arguments, the domain is [-1, 1].
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// angle : ndarray
//
//	The angle of the ray intersecting the unit circle at the given
//	`x`-coordinate in radians [0, pi].
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// cos, arctan, arcsin, emath.arccos
//
// Notes
// -----
// `arccos` is a multivalued function: for each `x` there are infinitely
// many numbers `z` such that “cos(z) = x“. The convention is to return
// the angle `z` whose real part lies in `[0, pi]`.
//
// For real-valued input data types, `arccos` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arccos` is a complex analytic function that
// has branch cuts “[-inf, -1]“ and `[1, inf]` and is continuous from
// above on the former and from below on the latter.
//
// The inverse `cos` is also known as `acos` or cos^-1.
//
// References
// ----------
// M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
// 10th printing, 1964, pp. 79.
// https://personal.math.ubc.ca/~cbm/aands/page_79.htm
//
// Examples
// --------
// We expect the arccos of 1 to be 0, and of -1 to be pi:
//
// >>> np.arccos([1, -1])
// array([ 0.        ,  3.14159265])
//
// Plot arccos:
//
// >>> import matplotlib.pyplot as plt
// >>> x = np.linspace(-1, 1, num=100)
// >>> plt.plot(x, np.arccos(x))
// >>> plt.axis('tight')
// >>> plt.show()
//
//go:linkname Arccos py.arccos
func Arccos(__llgo_va_list ...interface{}) *py.Object

// arccosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Inverse hyperbolic cosine, element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// arccosh : ndarray
//
//	Array of the same shape as `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
//
// cosh, arcsinh, sinh, arctanh, tanh
//
// Notes
// -----
// `arccosh` is a multivalued function: for each `x` there are infinitely
// many numbers `z` such that `cosh(z) = x`. The convention is to return the
// `z` whose imaginary part lies in “[-pi, pi]“ and the real part in
// “[0, inf]“.
//
// For real-valued input data types, `arccosh` always returns real output.
// For each value that cannot be expressed as a real number or infinity, it
// yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arccosh` is a complex analytical function that
// has a branch cut `[-inf, 1]` and is continuous from above on it.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 86.
//	https://personal.math.ubc.ca/~cbm/aands/page_86.htm
//
// .. [2] Wikipedia, "Inverse hyperbolic function",
//
//	https://en.wikipedia.org/wiki/Arccosh
//
// Examples
// --------
// >>> np.arccosh([np.e, 10.0])
// array([ 1.65745445,  2.99322285])
// >>> np.arccosh(1)
// 0.0
//
//go:linkname Arccosh py.arccosh
func Arccosh(__llgo_va_list ...interface{}) *py.Object

// arcsin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Inverse sine, element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	`y`-coordinate on the unit circle.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// angle : ndarray
//
//	The inverse sine of each element in `x`, in radians and in the
//	closed interval ``[-pi/2, pi/2]``.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// sin, cos, arccos, tan, arctan, arctan2, emath.arcsin
//
// Notes
// -----
// `arcsin` is a multivalued function: for each `x` there are infinitely
// many numbers `z` such that :math:`sin(z) = x`.  The convention is to
// return the angle `z` whose real part lies in [-pi/2, pi/2].
//
// For real-valued input data types, *arcsin* always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arcsin` is a complex analytic function that
// has, by convention, the branch cuts [-inf, -1] and [1, inf]  and is
// continuous from above on the former and from below on the latter.
//
// The inverse sine is also known as `asin` or sin^{-1}.
//
// References
// ----------
// Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
// 10th printing, New York: Dover, 1964, pp. 79ff.
// https://personal.math.ubc.ca/~cbm/aands/page_79.htm
//
// Examples
// --------
// >>> np.arcsin(1)     # pi/2
// 1.5707963267948966
// >>> np.arcsin(-1)    # -pi/2
// -1.5707963267948966
// >>> np.arcsin(0)
// 0.0
//
//go:linkname Arcsin py.arcsin
func Arcsin(__llgo_va_list ...interface{}) *py.Object

// arcsinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Inverse hyperbolic sine element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Array of the same shape as `x`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// `arcsinh` is a multivalued function: for each `x` there are infinitely
// many numbers `z` such that `sinh(z) = x`. The convention is to return the
// `z` whose imaginary part lies in `[-pi/2, pi/2]`.
//
// For real-valued input data types, `arcsinh` always returns real output.
// For each value that cannot be expressed as a real number or infinity, it
// returns “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arccos` is a complex analytical function that
// has branch cuts `[1j, infj]` and `[-1j, -infj]` and is continuous from
// the right on the former and from the left on the latter.
//
// The inverse hyperbolic sine is also known as `asinh` or “sinh^-1“.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 86.
//	https://personal.math.ubc.ca/~cbm/aands/page_86.htm
//
// .. [2] Wikipedia, "Inverse hyperbolic function",
//
//	https://en.wikipedia.org/wiki/Arcsinh
//
// Examples
// --------
// >>> np.arcsinh(np.array([np.e, 10.0]))
// array([ 1.72538256,  2.99822295])
//
//go:linkname Arcsinh py.arcsinh
func Arcsinh(__llgo_va_list ...interface{}) *py.Object

// arctan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Trigonometric inverse tangent, element-wise.
//
// The inverse of tan, so that if “y = tan(x)“ then “x = arctan(y)“.
//
// Parameters
// ----------
// x : array_like
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Out has the same shape as `x`.  Its real part is in
//	``[-pi/2, pi/2]`` (``arctan(+/-inf)`` returns ``+/-pi/2``).
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// arctan2 : The "four quadrant" arctan of the angle formed by (`x`, `y`)
//
//	and the positive `x`-axis.
//
// angle : Argument of complex values.
//
// Notes
// -----
// `arctan` is a multi-valued function: for each `x` there are infinitely
// many numbers `z` such that tan(`z`) = `x`.  The convention is to return
// the angle `z` whose real part lies in [-pi/2, pi/2].
//
// For real-valued input data types, `arctan` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arctan` is a complex analytic function that
// has [“1j, infj“] and [“-1j, -infj“] as branch cuts, and is continuous
// from the left on the former and from the right on the latter.
//
// The inverse tangent is also known as `atan` or tan^{-1}.
//
// References
// ----------
// Abramowitz, M. and Stegun, I. A., *Handbook of Mathematical Functions*,
// 10th printing, New York: Dover, 1964, pp. 79.
// https://personal.math.ubc.ca/~cbm/aands/page_79.htm
//
// Examples
// --------
// We expect the arctan of 0 to be 0, and of 1 to be pi/4:
//
// >>> np.arctan([0, 1])
// array([ 0.        ,  0.78539816])
//
// >>> np.pi/4
// 0.78539816339744828
//
// Plot arctan:
//
// >>> import matplotlib.pyplot as plt
// >>> x = np.linspace(-10, 10)
// >>> plt.plot(x, np.arctan(x))
// >>> plt.axis('tight')
// >>> plt.show()
//
//go:linkname Arctan py.arctan
func Arctan(__llgo_va_list ...interface{}) *py.Object

// arctan2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Element-wise arc tangent of “x1/x2“ choosing the quadrant correctly.
//
// The quadrant (i.e., branch) is chosen so that “arctan2(x1, x2)“ is
// the signed angle in radians between the ray ending at the origin and
// passing through the point (1,0), and the ray ending at the origin and
// passing through the point (`x2`, `x1`).  (Note the role reversal: the
// "`y`-coordinate" is the first function parameter, the "`x`-coordinate"
// is the second.)  By IEEE convention, this function is defined for
// `x2` = +/-0 and for either or both of `x1` and `x2` = +/-inf (see
// Notes for specific values).
//
// This function is not defined for complex-valued arguments; for the
// so-called argument of complex values, use `angle`.
//
// Parameters
// ----------
// x1 : array_like, real-valued
//
//	`y`-coordinates.
//
// x2 : array_like, real-valued
//
//	`x`-coordinates.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// angle : ndarray
//
//	Array of angles in radians, in the range ``[-pi, pi]``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// arctan, tan, angle
//
// Notes
// -----
// *arctan2* is identical to the `atan2` function of the underlying
// C library.  The following special values are defined in the C
// standard: [1]_
//
// ====== ====== ================
// `x1`   `x2`   `arctan2(x1,x2)`
// ====== ====== ================
// +/- 0  +0     +/- 0
// +/- 0  -0     +/- pi
//
//	> 0   +/-inf +0 / +pi
//	< 0   +/-inf -0 / -pi
//
// +/-inf +inf   +/- (pi/4)
// +/-inf -inf   +/- (3*pi/4)
// ====== ====== ================
//
// Note that +0 and -0 are distinct floating point numbers, as are +inf
// and -inf.
//
// References
// ----------
// .. [1] ISO/IEC standard 9899:1999, "Programming language C."
//
// Examples
// --------
// Consider four points in different quadrants:
//
// >>> x = np.array([-1, +1, +1, -1])
// >>> y = np.array([-1, -1, +1, +1])
// >>> np.arctan2(y, x) * 180 / np.pi
// array([-135.,  -45.,   45.,  135.])
//
// Note the order of the parameters. `arctan2` is defined also when `x2` = 0
// and at several other special points, obtaining values in
// the range “[-pi, pi]“:
//
// >>> np.arctan2([1., -1.], [0., 0.])
// array([ 1.57079633, -1.57079633])
// >>> np.arctan2([0., 0., np.inf], [+0., -0., np.inf])
// array([0.        , 3.14159265, 0.78539816])
//
//go:linkname Arctan2 py.arctan2
func Arctan2(__llgo_va_list ...interface{}) *py.Object

// arctanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Inverse hyperbolic tangent element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Array of the same shape as `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// emath.arctanh
//
// Notes
// -----
// `arctanh` is a multivalued function: for each `x` there are infinitely
// many numbers `z` such that “tanh(z) = x“. The convention is to return
// the `z` whose imaginary part lies in `[-pi/2, pi/2]`.
//
// For real-valued input data types, `arctanh` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `arctanh` is a complex analytical function
// that has branch cuts `[-1, -inf]` and `[1, inf]` and is continuous from
// above on the former and from below on the latter.
//
// The inverse hyperbolic tangent is also known as `atanh` or “tanh^-1“.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 86.
//	https://personal.math.ubc.ca/~cbm/aands/page_86.htm
//
// .. [2] Wikipedia, "Inverse hyperbolic function",
//
//	https://en.wikipedia.org/wiki/Arctanh
//
// Examples
// --------
// >>> np.arctanh([0, -0.5])
// array([ 0.        , -0.54930614])
//
//go:linkname Arctanh py.arctanh
func Arctanh(__llgo_va_list ...interface{}) *py.Object

// bitwise_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the bit-wise AND of two arrays element-wise.
//
// Computes the bit-wise AND of the underlying binary representation of
// the integers in the input arrays. This ufunc implements the C/Python
// operator “&“.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Only integer and boolean types are handled.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Result.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_and
// bitwise_or
// bitwise_xor
// binary_repr :
//
//	Return the binary representation of the input number as a string.
//
// Examples
// --------
// The number 13 is represented by “00001101“.  Likewise, 17 is
// represented by “00010001“.  The bit-wise AND of 13 and 17 is
// therefore “000000001“, or 1:
//
// >>> np.bitwise_and(13, 17)
// 1
//
// >>> np.bitwise_and(14, 13)
// 12
// >>> np.binary_repr(12)
// '1100'
// >>> np.bitwise_and([14,3], 13)
// array([12,  1])
//
// >>> np.bitwise_and([11,7], [4,25])
// array([0, 1])
// >>> np.bitwise_and(np.array([2,5,255]), np.array([3,14,16]))
// array([ 2,  4, 16])
// >>> np.bitwise_and([True, True], [False, True])
// array([False,  True])
//
// The “&“ operator can be used as a shorthand for “np.bitwise_and“ on
// ndarrays.
//
// >>> x1 = np.array([2, 5, 255])
// >>> x2 = np.array([3, 14, 16])
// >>> x1 & x2
// array([ 2,  4, 16])
//
//go:linkname BitwiseAnd py.bitwise_and
func BitwiseAnd(__llgo_va_list ...interface{}) *py.Object

// bitwise_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the bit-wise OR of two arrays element-wise.
//
// Computes the bit-wise OR of the underlying binary representation of
// the integers in the input arrays. This ufunc implements the C/Python
// operator “|“.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Only integer and boolean types are handled.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Result.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_or
// bitwise_and
// bitwise_xor
// binary_repr :
//
//	Return the binary representation of the input number as a string.
//
// Examples
// --------
// The number 13 has the binary representation “00001101“. Likewise,
// 16 is represented by “00010000“.  The bit-wise OR of 13 and 16 is
// then “00011101“, or 29:
//
// >>> np.bitwise_or(13, 16)
// 29
// >>> np.binary_repr(29)
// '11101'
//
// >>> np.bitwise_or(32, 2)
// 34
// >>> np.bitwise_or([33, 4], 1)
// array([33,  5])
// >>> np.bitwise_or([33, 4], [1, 2])
// array([33,  6])
//
// >>> np.bitwise_or(np.array([2, 5, 255]), np.array([4, 4, 4]))
// array([  6,   5, 255])
// >>> np.array([2, 5, 255]) | np.array([4, 4, 4])
// array([  6,   5, 255])
// >>> np.bitwise_or(np.array([2, 5, 255, 2147483647], dtype=np.int32),
// ...               np.array([4, 4, 4, 2147483647], dtype=np.int32))
// array([         6,          5,        255, 2147483647])
// >>> np.bitwise_or([True, True], [False, True])
// array([ True,  True])
//
// The “|“ operator can be used as a shorthand for “np.bitwise_or“ on
// ndarrays.
//
// >>> x1 = np.array([2, 5, 255])
// >>> x2 = np.array([4, 4, 4])
// >>> x1 | x2
// array([  6,   5, 255])
//
//go:linkname BitwiseOr py.bitwise_or
func BitwiseOr(__llgo_va_list ...interface{}) *py.Object

// bitwise_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the bit-wise XOR of two arrays element-wise.
//
// Computes the bit-wise XOR of the underlying binary representation of
// the integers in the input arrays. This ufunc implements the C/Python
// operator “^“.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Only integer and boolean types are handled.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Result.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_xor
// bitwise_and
// bitwise_or
// binary_repr :
//
//	Return the binary representation of the input number as a string.
//
// Examples
// --------
// The number 13 is represented by “00001101“. Likewise, 17 is
// represented by “00010001“.  The bit-wise XOR of 13 and 17 is
// therefore “00011100“, or 28:
//
// >>> np.bitwise_xor(13, 17)
// 28
// >>> np.binary_repr(28)
// '11100'
//
// >>> np.bitwise_xor(31, 5)
// 26
// >>> np.bitwise_xor([31,3], 5)
// array([26,  6])
//
// >>> np.bitwise_xor([31,3], [5,6])
// array([26,  5])
// >>> np.bitwise_xor([True, True], [False, True])
// array([ True, False])
//
// The “^“ operator can be used as a shorthand for “np.bitwise_xor“ on
// ndarrays.
//
// >>> x1 = np.array([True, True])
// >>> x2 = np.array([False, True])
// >>> x1 ^ x2
// array([ True, False])
//
//go:linkname BitwiseXor py.bitwise_xor
func BitwiseXor(__llgo_va_list ...interface{}) *py.Object

// cbrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the cube-root of an array, element-wise.
//
// .. versionadded:: 1.10.0
//
// Parameters
// ----------
// x : array_like
//
//	The values whose cube-roots are required.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	An array of the same shape as `x`, containing the cube
//	cube-root of each element in `x`.
//	If `out` was provided, `y` is a reference to it.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> np.cbrt([1,8,27])
// array([ 1.,  2.,  3.])
//
//go:linkname Cbrt py.cbrt
func Cbrt(__llgo_va_list ...interface{}) *py.Object

// ceil(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the ceiling of the input, element-wise.
//
// The ceil of the scalar `x` is the smallest integer `i`, such that
// “i >= x“.  It is often denoted as :math:`\lceil x \rceil`.
//
// Parameters
// ----------
// x : array_like
//
//	Input data.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The ceiling of each element in `x`, with `float` dtype.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// floor, trunc, rint, fix
//
// Examples
// --------
// >>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
// >>> np.ceil(a)
// array([-1., -1., -0.,  1.,  2.,  2.,  2.])
//
//go:linkname Ceil py.ceil
func Ceil(__llgo_va_list ...interface{}) *py.Object

// conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the complex conjugate, element-wise.
//
// The complex conjugate of a complex number is obtained by changing the
// sign of its imaginary part.
//
// Parameters
// ----------
// x : array_like
//
//	Input value.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The complex conjugate of `x`, with same dtype as `y`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// `conj` is an alias for `conjugate`:
//
// >>> np.conj is np.conjugate
// True
//
// Examples
// --------
// >>> np.conjugate(1+2j)
// (1-2j)
//
// >>> x = np.eye(2) + 1j * np.eye(2)
// >>> np.conjugate(x)
// array([[ 1.-1.j,  0.-0.j],
//
//	[ 0.-0.j,  1.-1.j]])
//
//go:linkname Conj py.conj
func Conj(__llgo_va_list ...interface{}) *py.Object

// conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the complex conjugate, element-wise.
//
// The complex conjugate of a complex number is obtained by changing the
// sign of its imaginary part.
//
// Parameters
// ----------
// x : array_like
//
//	Input value.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The complex conjugate of `x`, with same dtype as `y`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// `conj` is an alias for `conjugate`:
//
// >>> np.conj is np.conjugate
// True
//
// Examples
// --------
// >>> np.conjugate(1+2j)
// (1-2j)
//
// >>> x = np.eye(2) + 1j * np.eye(2)
// >>> np.conjugate(x)
// array([[ 1.-1.j,  0.-0.j],
//
//	[ 0.-0.j,  1.-1.j]])
//
//go:linkname Conjugate py.conjugate
func Conjugate(__llgo_va_list ...interface{}) *py.Object

// copysign(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Change the sign of x1 to that of x2, element-wise.
//
// If `x2` is a scalar, its sign will be copied to all elements of `x1`.
//
// Parameters
// ----------
// x1 : array_like
//
//	Values to change the sign of.
//
// x2 : array_like
//
//	The sign of `x2` is copied to `x1`.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	The values of `x1` with the sign of `x2`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Examples
// --------
// >>> np.copysign(1.3, -1)
// -1.3
// >>> 1/np.copysign(0, 1)
// inf
// >>> 1/np.copysign(0, -1)
// -inf
//
// >>> np.copysign([-1, 0, 1], -1.1)
// array([-1., -0., -1.])
// >>> np.copysign([-1, 0, 1], np.arange(3)-1)
// array([-1.,  0.,  1.])
//
//go:linkname Copysign py.copysign
func Copysign(__llgo_va_list ...interface{}) *py.Object

// cos(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Cosine element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input array in radians.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding cosine values.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// If `out` is provided, the function writes the result into it,
// and returns a reference to `out`.  (See Examples)
//
// References
// ----------
// M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
// New York, NY: Dover, 1972.
//
// Examples
// --------
// >>> np.cos(np.array([0, np.pi/2, np.pi]))
// array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
// >>>
// >>> # Example of providing the optional output parameter
// >>> out1 = np.array([0], dtype='d')
// >>> out2 = np.cos([0.1], out1)
// >>> out2 is out1
// True
// >>>
// >>> # Example of ValueError due to provision of shape mis-matched `out`
// >>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
// Traceback (most recent call last):
//
//	File "<stdin>", line 1, in <module>
//
// ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
//
//go:linkname Cos py.cos
func Cos(__llgo_va_list ...interface{}) *py.Object

// cosh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Hyperbolic cosine, element-wise.
//
// Equivalent to “1/2 * (np.exp(x) + np.exp(-x))“ and “np.cos(1j*x)“.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array of same shape as `x`.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> np.cosh(0)
// 1.0
//
// The hyperbolic cosine describes the shape of a hanging cable:
//
// >>> import matplotlib.pyplot as plt
// >>> x = np.linspace(-4, 4, 1000)
// >>> plt.plot(x, np.cosh(x))
// >>> plt.show()
//
//go:linkname Cosh py.cosh
func Cosh(__llgo_va_list ...interface{}) *py.Object

// deg2rad(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Convert angles from degrees to radians.
//
// Parameters
// ----------
// x : array_like
//
//	Angles in degrees.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding angle in radians.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// rad2deg : Convert angles from radians to degrees.
// unwrap : Remove large jumps in angle by wrapping.
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// “deg2rad(x)“ is “x * pi / 180“.
//
// Examples
// --------
// >>> np.deg2rad(180)
// 3.1415926535897931
//
//go:linkname Deg2rad py.deg2rad
func Deg2rad(__llgo_va_list ...interface{}) *py.Object

// degrees(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Convert angles from radians to degrees.
//
// Parameters
// ----------
// x : array_like
//
//	Input array in radians.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray of floats
//
//	The corresponding degree values; if `out` was supplied this is a
//	reference to it.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// rad2deg : equivalent function
//
// Examples
// --------
// Convert a radian array to degrees
//
// >>> rad = np.arange(12.)*np.pi/6
// >>> np.degrees(rad)
// array([   0.,   30.,   60.,   90.,  120.,  150.,  180.,  210.,  240.,
//
//	270.,  300.,  330.])
//
// >>> out = np.zeros((rad.shape))
// >>> r = np.degrees(rad, out)
// >>> np.all(r == out)
// True
//
//go:linkname Degrees py.degrees
func Degrees(__llgo_va_list ...interface{}) *py.Object

// divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Divide arguments element-wise.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend array.
//
// x2 : array_like
//
//	Divisor array.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The quotient ``x1/x2``, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// seterr : Set whether to raise or warn on overflow, underflow and
//
//	division by zero.
//
// Notes
// -----
// Equivalent to “x1“ / “x2“ in terms of array-broadcasting.
//
// The “true_divide(x1, x2)“ function is an alias for
// “divide(x1, x2)“.
//
// Examples
// --------
// >>> np.divide(2.0, 4.0)
// 0.5
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> np.divide(x1, x2)
// array([[nan, 1. , 1. ],
//
//	[inf, 4. , 2.5],
//	[inf, 7. , 4. ]])
//
// The “/“ operator can be used as a shorthand for “np.divide“ on
// ndarrays.
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = 2 * np.ones(3)
// >>> x1 / x2
// array([[0. , 0.5, 1. ],
//
//	[1.5, 2. , 2.5],
//	[3. , 3.5, 4. ]])
//
//go:linkname Divide py.divide
func Divide(__llgo_va_list ...interface{}) *py.Object

// divmod(x1, x2[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return element-wise quotient and remainder simultaneously.
//
// .. versionadded:: 1.13.0
//
// “np.divmod(x, y)“ is equivalent to “(x // y, x % y)“, but faster
// because it avoids redundant work. It is used to implement the Python
// built-in function “divmod“ on NumPy arrays.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend array.
//
// x2 : array_like
//
//	Divisor array.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out1 : ndarray
//
//	Element-wise quotient resulting from floor division.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// out2 : ndarray
//
//	Element-wise remainder from floor division.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// floor_divide : Equivalent to Python's “//“ operator.
// remainder : Equivalent to Python's “%“ operator.
// modf : Equivalent to “divmod(x, 1)“ for positive “x“ with the return
//
//	values switched.
//
// Examples
// --------
// >>> np.divmod(np.arange(5), 3)
// (array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
//
// The `divmod` function can be used as a shorthand for “np.divmod“ on
// ndarrays.
//
// >>> x = np.arange(5)
// >>> divmod(x, 3)
// (array([0, 0, 0, 1, 1]), array([0, 1, 2, 0, 1]))
//
//go:linkname Divmod py.divmod
func Divmod(__llgo_va_list ...interface{}) *py.Object

// equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return (x1 == x2) element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array, element-wise comparison of `x1` and `x2`.
//	Typically of type bool, unless ``dtype=object`` is passed.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// not_equal, greater_equal, less_equal, greater, less
//
// Examples
// --------
// >>> np.equal([0, 1, 3], np.arange(3))
// array([ True,  True, False])
//
// What is compared are values, not types. So an int (1) and an array of
// length one can evaluate as True:
//
// >>> np.equal(1, np.ones(1))
// array([ True])
//
// The “==“ operator can be used as a shorthand for “np.equal“ on
// ndarrays.
//
// >>> a = np.array([2, 4, 6])
// >>> b = np.array([2, 4, 2])
// >>> a == b
// array([ True,  True, False])
//
//go:linkname Equal py.equal
func Equal(__llgo_va_list ...interface{}) *py.Object

// exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Calculate the exponential of all elements in the input array.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array, element-wise exponential of `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// expm1 : Calculate “exp(x) - 1“ for all elements in the array.
// exp2  : Calculate “2**x“ for all elements in the array.
//
// Notes
// -----
// The irrational number “e“ is also known as Euler's number.  It is
// approximately 2.718281, and is the base of the natural logarithm,
// “ln“ (this means that, if :math:`x = \ln y = \log_e y`,
// then :math:`e^x = y`. For real input, “exp(x)“ is always positive.
//
// For complex arguments, “x = a + ib“, we can write
// :math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
// known (it is the real argument, described above).  The second term,
// :math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
// magnitude 1 and a periodic phase.
//
// References
// ----------
// .. [1] Wikipedia, "Exponential function",
//
//	https://en.wikipedia.org/wiki/Exponential_function
//
// .. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
//
//	with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
//	https://personal.math.ubc.ca/~cbm/aands/page_69.htm
//
// Examples
// --------
// Plot the magnitude and phase of “exp(x)“ in the complex plane:
//
// >>> import matplotlib.pyplot as plt
//
// >>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
// >>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
// >>> out = np.exp(xx)
//
// >>> plt.subplot(121)
// >>> plt.imshow(np.abs(out),
// ...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
// >>> plt.title('Magnitude of exp(x)')
//
// >>> plt.subplot(122)
// >>> plt.imshow(np.angle(out),
// ...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
// >>> plt.title('Phase (angle) of exp(x)')
// >>> plt.show()
//
//go:linkname Exp py.exp
func Exp(__llgo_va_list ...interface{}) *py.Object

// exp2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Calculate `2**p` for all `p` in the input array.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Element-wise 2 to the power `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// power
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// Examples
// --------
// >>> np.exp2([2, 3])
// array([ 4.,  8.])
//
//go:linkname Exp2 py.exp2
func Exp2(__llgo_va_list ...interface{}) *py.Object

// expm1(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Calculate “exp(x) - 1“ for all elements in the array.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Element-wise exponential minus one: ``out = exp(x) - 1``.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// log1p : “log(1 + x)“, the inverse of expm1.
//
// Notes
// -----
// This function provides greater precision than “exp(x) - 1“
// for small values of “x“.
//
// Examples
// --------
// The true value of “exp(1e-10) - 1“ is “1.00000000005e-10“ to
// about 32 significant digits. This example shows the superiority of
// expm1 in this case.
//
// >>> np.expm1(1e-10)
// 1.00000000005e-10
// >>> np.exp(1e-10) - 1
// 1.000000082740371e-10
//
//go:linkname Expm1 py.expm1
func Expm1(__llgo_va_list ...interface{}) *py.Object

// fabs(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the absolute values element-wise.
//
// This function returns the absolute values (positive magnitude) of the
// data in `x`. Complex values are not handled, use `absolute` to find the
// absolute values of complex data.
//
// Parameters
// ----------
// x : array_like
//
//	The array of numbers for which the absolute values are required. If
//	`x` is a scalar, the result `y` will also be a scalar.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The absolute values of `x`, the returned values are always floats.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// absolute : Absolute values including `complex` types.
//
// Examples
// --------
// >>> np.fabs(-1)
// 1.0
// >>> np.fabs([-1.2, 1.2])
// array([ 1.2,  1.2])
//
//go:linkname Fabs py.fabs
func Fabs(__llgo_va_list ...interface{}) *py.Object

// floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the floor of the input, element-wise.
//
// The floor of the scalar `x` is the largest integer `i`, such that
// `i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
//
// Parameters
// ----------
// x : array_like
//
//	Input data.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The floor of each element in `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// ceil, trunc, rint, fix
//
// Notes
// -----
// Some spreadsheet programs calculate the "floor-towards-zero", where
// “floor(-2.5) == -2“.  NumPy instead uses the definition of
// `floor` where `floor(-2.5) == -3`. The "floor-towards-zero"
// function is called “fix“ in NumPy.
//
// Examples
// --------
// >>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
// >>> np.floor(a)
// array([-2., -2., -1.,  0.,  1.,  1.,  2.])
//
//go:linkname Floor py.floor
func Floor(__llgo_va_list ...interface{}) *py.Object

// floor_divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the largest integer smaller or equal to the division of the inputs.
// It is equivalent to the Python “//“ operator and pairs with the
// Python “%“ (`remainder`), function so that “a = a % b + b * (a // b)“
// up to roundoff.
//
// Parameters
// ----------
// x1 : array_like
//
//	Numerator.
//
// x2 : array_like
//
//	Denominator.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	y = floor(`x1`/`x2`)
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// remainder : Remainder complementary to floor_divide.
// divmod : Simultaneous floor division and remainder.
// divide : Standard division.
// floor : Round a number to the nearest integer toward minus infinity.
// ceil : Round a number to the nearest integer toward infinity.
//
// Examples
// --------
// >>> np.floor_divide(7,3)
// 2
// >>> np.floor_divide([1., 2., 3., 4.], 2.5)
// array([ 0.,  0.,  1.,  1.])
//
// The “//“ operator can be used as a shorthand for “np.floor_divide“
// on ndarrays.
//
// >>> x1 = np.array([1., 2., 3., 4.])
// >>> x1 // 2.5
// array([0., 0., 1., 1.])
//
//go:linkname FloorDivide py.floor_divide
func FloorDivide(__llgo_va_list ...interface{}) *py.Object

// float_power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// First array elements raised to powers from second array, element-wise.
//
// Raise each base in `x1` to the positionally-corresponding power in `x2`.
// `x1` and `x2` must be broadcastable to the same shape. This differs from
// the power function in that integers, float16, and float32  are promoted to
// floats with a minimum precision of float64 so that the result is always
// inexact.  The intent is that the function will return a usable result for
// negative powers and seldom overflow for positive powers.
//
// Negative values raised to a non-integral value will return “nan“.
// To get complex results, cast the input to complex, or specify the
// “dtype“ to be “complex“ (see the example below).
//
// .. versionadded:: 1.12.0
//
// Parameters
// ----------
// x1 : array_like
//
//	The bases.
//
// x2 : array_like
//
//	The exponents.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The bases in `x1` raised to the exponents in `x2`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// power : power function that preserves type
//
// Examples
// --------
// Cube each element in a list.
//
// >>> x1 = range(6)
// >>> x1
// [0, 1, 2, 3, 4, 5]
// >>> np.float_power(x1, 3)
// array([   0.,    1.,    8.,   27.,   64.,  125.])
//
// Raise the bases to different exponents.
//
// >>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
// >>> np.float_power(x1, x2)
// array([  0.,   1.,   8.,  27.,  16.,   5.])
//
// The effect of broadcasting.
//
// >>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
// >>> x2
// array([[1, 2, 3, 3, 2, 1],
//
//	[1, 2, 3, 3, 2, 1]])
//
// >>> np.float_power(x1, x2)
// array([[  0.,   1.,   8.,  27.,  16.,   5.],
//
//	[  0.,   1.,   8.,  27.,  16.,   5.]])
//
// Negative values raised to a non-integral value will result in “nan“
// (and a warning will be generated).
//
// >>> x3 = np.array([-1, -4])
// >>> with np.errstate(invalid='ignore'):
// ...     p = np.float_power(x3, 1.5)
// ...
// >>> p
// array([nan, nan])
//
// To get complex results, give the argument “dtype=complex“.
//
// >>> np.float_power(x3, 1.5, dtype=complex)
// array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
//
//go:linkname FloatPower py.float_power
func FloatPower(__llgo_va_list ...interface{}) *py.Object

// fmax(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Element-wise maximum of array elements.
//
// Compare two arrays and return a new array containing the element-wise
// maxima. If one of the elements being compared is a NaN, then the
// non-nan element is returned. If both elements are NaNs then the first
// is returned.  The latter distinction is important for complex NaNs,
// which are defined as at least one of the real or imaginary parts being
// a NaN. The net effect is that NaNs are ignored when possible.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays holding the elements to be compared.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The maximum of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// fmin :
//
//	Element-wise minimum of two arrays, ignores NaNs.
//
// maximum :
//
//	Element-wise maximum of two arrays, propagates NaNs.
//
// amax :
//
//	The maximum value of an array along a given axis, propagates NaNs.
//
// nanmax :
//
//	The maximum value of an array along a given axis, ignores NaNs.
//
// minimum, amin, nanmin
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// The fmax is equivalent to “np.where(x1 >= x2, x1, x2)“ when neither
// x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
//
// Examples
// --------
// >>> np.fmax([2, 3, 4], [1, 5, 2])
// array([ 2.,  5.,  4.])
//
// >>> np.fmax(np.eye(2), [0.5, 2])
// array([[ 1. ,  2. ],
//
//	[ 0.5,  2. ]])
//
// >>> np.fmax([np.nan, 0, np.nan],[0, np.nan, np.nan])
// array([ 0.,  0., nan])
//
//go:linkname Fmax py.fmax
func Fmax(__llgo_va_list ...interface{}) *py.Object

// fmin(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Element-wise minimum of array elements.
//
// Compare two arrays and return a new array containing the element-wise
// minima. If one of the elements being compared is a NaN, then the
// non-nan element is returned. If both elements are NaNs then the first
// is returned.  The latter distinction is important for complex NaNs,
// which are defined as at least one of the real or imaginary parts being
// a NaN. The net effect is that NaNs are ignored when possible.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays holding the elements to be compared.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The minimum of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// fmax :
//
//	Element-wise maximum of two arrays, ignores NaNs.
//
// minimum :
//
//	Element-wise minimum of two arrays, propagates NaNs.
//
// amin :
//
//	The minimum value of an array along a given axis, propagates NaNs.
//
// nanmin :
//
//	The minimum value of an array along a given axis, ignores NaNs.
//
// maximum, amax, nanmax
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// The fmin is equivalent to “np.where(x1 <= x2, x1, x2)“ when neither
// x1 nor x2 are NaNs, but it is faster and does proper broadcasting.
//
// Examples
// --------
// >>> np.fmin([2, 3, 4], [1, 5, 2])
// array([1, 3, 2])
//
// >>> np.fmin(np.eye(2), [0.5, 2])
// array([[ 0.5,  0. ],
//
//	[ 0. ,  1. ]])
//
// >>> np.fmin([np.nan, 0, np.nan],[0, np.nan, np.nan])
// array([ 0.,  0., nan])
//
//go:linkname Fmin py.fmin
func Fmin(__llgo_va_list ...interface{}) *py.Object

// fmod(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns the element-wise remainder of division.
//
// This is the NumPy implementation of the C library function fmod, the
// remainder has the same sign as the dividend `x1`. It is equivalent to
// the Matlab(TM) “rem“ function and should not be confused with the
// Python modulus operator “x1 % x2“.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend.
//
// x2 : array_like
//
//	Divisor.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : array_like
//
//	The remainder of the division of `x1` by `x2`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// remainder : Equivalent to the Python “%“ operator.
// divide
//
// Notes
// -----
// The result of the modulo operation for negative dividend and divisors
// is bound by conventions. For `fmod`, the sign of result is the sign of
// the dividend, while for `remainder` the sign of the result is the sign
// of the divisor. The `fmod` function is equivalent to the Matlab(TM)
// “rem“ function.
//
// Examples
// --------
// >>> np.fmod([-3, -2, -1, 1, 2, 3], 2)
// array([-1,  0, -1,  1,  0,  1])
// >>> np.remainder([-3, -2, -1, 1, 2, 3], 2)
// array([1, 0, 1, 1, 0, 1])
//
// >>> np.fmod([5, 3], [2, 2.])
// array([ 1.,  1.])
// >>> a = np.arange(-3, 3).reshape(3, 2)
// >>> a
// array([[-3, -2],
//
//	[-1,  0],
//	[ 1,  2]])
//
// >>> np.fmod(a, [2,2])
// array([[-1,  0],
//
//	[-1,  0],
//	[ 1,  0]])
//
//go:linkname Fmod py.fmod
func Fmod(__llgo_va_list ...interface{}) *py.Object

// frexp(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Decompose the elements of x into mantissa and twos exponent.
//
// Returns (`mantissa`, `exponent`), where “x = mantissa * 2**exponent“.
// The mantissa lies in the open interval(-1, 1), while the twos
// exponent is a signed integer.
//
// Parameters
// ----------
// x : array_like
//
//	Array of numbers to be decomposed.
//
// out1 : ndarray, optional
//
//	Output array for the mantissa. Must have the same shape as `x`.
//
// out2 : ndarray, optional
//
//	Output array for the exponent. Must have the same shape as `x`.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// mantissa : ndarray
//
//	Floating values between -1 and 1.
//	This is a scalar if `x` is a scalar.
//
// exponent : ndarray
//
//	Integer exponents of 2.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// ldexp : Compute “y = x1 * 2**x2“, the inverse of `frexp`.
//
// Notes
// -----
// Complex dtypes are not supported, they will raise a TypeError.
//
// Examples
// --------
// >>> x = np.arange(9)
// >>> y1, y2 = np.frexp(x)
// >>> y1
// array([ 0.   ,  0.5  ,  0.5  ,  0.75 ,  0.5  ,  0.625,  0.75 ,  0.875,
//
//	0.5  ])
//
// >>> y2
// array([0, 1, 2, 2, 3, 3, 3, 3, 4])
// >>> y1 * 2**y2
// array([ 0.,  1.,  2.,  3.,  4.,  5.,  6.,  7.,  8.])
//
//go:linkname Frexp py.frexp
func Frexp(__llgo_va_list ...interface{}) *py.Object

// gcd(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns the greatest common divisor of “|x1|“ and “|x2|“
//
// Parameters
// ----------
// x1, x2 : array_like, int
//
//	Arrays of values.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// Returns
// -------
// y : ndarray or scalar
//
//	The greatest common divisor of the absolute value of the inputs
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// lcm : The lowest common multiple
//
// Examples
// --------
// >>> np.gcd(12, 20)
// 4
// >>> np.gcd.reduce([15, 25, 35])
// 5
// >>> np.gcd(np.arange(6), 20)
// array([20,  1,  2,  1,  4,  5])
//
//go:linkname Gcd py.gcd
func Gcd(__llgo_va_list ...interface{}) *py.Object

// heaviside(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the Heaviside step function.
//
// The Heaviside step function is defined as::
//
//	                      0   if x1 < 0
//	heaviside(x1, x2) =  x2   if x1 == 0
//	                      1   if x1 > 0
//
// where `x2` is often taken to be 0.5, but 0 and 1 are also sometimes used.
//
// Parameters
// ----------
// x1 : array_like
//
//	Input values.
//
// x2 : array_like
//
//	The value of the function when x1 is 0.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	The output array, element-wise Heaviside step function of `x1`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Notes
// -----
// .. versionadded:: 1.13.0
//
// References
// ----------
// .. Wikipedia, "Heaviside step function",
//
//	https://en.wikipedia.org/wiki/Heaviside_step_function
//
// Examples
// --------
// >>> np.heaviside([-1.5, 0, 2.0], 0.5)
// array([ 0. ,  0.5,  1. ])
// >>> np.heaviside([-1.5, 0, 2.0], 1)
// array([ 0.,  1.,  1.])
//
//go:linkname Heaviside py.heaviside
func Heaviside(__llgo_va_list ...interface{}) *py.Object

// hypot(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Given the "legs" of a right triangle, return its hypotenuse.
//
// Equivalent to “sqrt(x1**2 + x2**2)“, element-wise.  If `x1` or
// `x2` is scalar_like (i.e., unambiguously cast-able to a scalar type),
// it is broadcast for use with each element of the other argument.
// (See Examples)
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Leg of the triangle(s).
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// z : ndarray
//
//	The hypotenuse of the triangle(s).
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Examples
// --------
// >>> np.hypot(3*np.ones((3, 3)), 4*np.ones((3, 3)))
// array([[ 5.,  5.,  5.],
//
//	[ 5.,  5.,  5.],
//	[ 5.,  5.,  5.]])
//
// Example showing broadcast of scalar_like argument:
//
// >>> np.hypot(3*np.ones((3, 3)), [4])
// array([[ 5.,  5.,  5.],
//
//	[ 5.,  5.,  5.],
//	[ 5.,  5.,  5.]])
//
//go:linkname Hypot py.hypot
func Hypot(__llgo_va_list ...interface{}) *py.Object

// invert(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute bit-wise inversion, or bit-wise NOT, element-wise.
//
// Computes the bit-wise NOT of the underlying binary representation of
// the integers in the input arrays. This ufunc implements the C/Python
// operator “~“.
//
// For signed integer inputs, the two's complement is returned.  In a
// two's-complement system negative numbers are represented by the two's
// complement of the absolute value. This is the most common method of
// representing signed integers on computers [1]_. A N-bit
// two's-complement system can represent every integer in the range
// :math:`-2^{N-1}` to :math:`+2^{N-1}-1`.
//
// Parameters
// ----------
// x : array_like
//
//	Only integer and boolean types are handled.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Result.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// bitwise_and, bitwise_or, bitwise_xor
// logical_not
// binary_repr :
//
//	Return the binary representation of the input number as a string.
//
// Notes
// -----
// `bitwise_not` is an alias for `invert`:
//
// >>> np.bitwise_not is np.invert
// True
//
// References
// ----------
// .. [1] Wikipedia, "Two's complement",
//
//	https://en.wikipedia.org/wiki/Two's_complement
//
// Examples
// --------
// We've seen that 13 is represented by “00001101“.
// The invert or bit-wise NOT of 13 is then:
//
// >>> x = np.invert(np.array(13, dtype=np.uint8))
// >>> x
// 242
// >>> np.binary_repr(x, width=8)
// '11110010'
//
// The result depends on the bit-width:
//
// >>> x = np.invert(np.array(13, dtype=np.uint16))
// >>> x
// 65522
// >>> np.binary_repr(x, width=16)
// '1111111111110010'
//
// When using signed integer types the result is the two's complement of
// the result for the unsigned type:
//
// >>> np.invert(np.array([13], dtype=np.int8))
// array([-14], dtype=int8)
// >>> np.binary_repr(-14, width=8)
// '11110010'
//
// Booleans are accepted as well:
//
// >>> np.invert(np.array([True, False]))
// array([False,  True])
//
// The “~“ operator can be used as a shorthand for “np.invert“ on
// ndarrays.
//
// >>> x1 = np.array([True, False])
// >>> ~x1
// array([False,  True])
//
//go:linkname Invert py.invert
func Invert(__llgo_va_list ...interface{}) *py.Object

// isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Test element-wise for finiteness (not infinity and not Not a Number).
//
// The result is returned as a boolean array.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray, bool
//
//	True where ``x`` is not positive infinity, negative infinity,
//	or NaN; false otherwise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// isinf, isneginf, isposinf, isnan
//
// Notes
// -----
// Not a Number, positive infinity and negative infinity are considered
// to be non-finite.
//
// NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
// (IEEE 754). This means that Not a Number is not equivalent to infinity.
// Also that positive infinity is not equivalent to negative infinity. But
// infinity is equivalent to positive infinity.  Errors result if the
// second argument is also supplied when `x` is a scalar input, or if
// first and second arguments have different shapes.
//
// Examples
// --------
// >>> np.isfinite(1)
// True
// >>> np.isfinite(0)
// True
// >>> np.isfinite(np.nan)
// False
// >>> np.isfinite(np.inf)
// False
// >>> np.isfinite(np.NINF)
// False
// >>> np.isfinite([np.log(-1.),1.,np.log(0)])
// array([False,  True, False])
//
// >>> x = np.array([-np.inf, 0., np.inf])
// >>> y = np.array([2, 2, 2])
// >>> np.isfinite(x, y)
// array([0, 1, 0])
// >>> y
// array([0, 1, 0])
//
//go:linkname Isfinite py.isfinite
func Isfinite(__llgo_va_list ...interface{}) *py.Object

// isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Test element-wise for positive or negative infinity.
//
// Returns a boolean array of the same shape as `x`, True where “x ==
// +/-inf“, otherwise False.
//
// Parameters
// ----------
// x : array_like
//
//	Input values
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : bool (scalar) or boolean ndarray
//
//	True where ``x`` is positive or negative infinity, false otherwise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// isneginf, isposinf, isnan, isfinite
//
// Notes
// -----
// NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
// (IEEE 754).
//
// Errors result if the second argument is supplied when the first
// argument is a scalar, or if the first and second arguments have
// different shapes.
//
// Examples
// --------
// >>> np.isinf(np.inf)
// True
// >>> np.isinf(np.nan)
// False
// >>> np.isinf(np.NINF)
// True
// >>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
// array([ True,  True, False, False])
//
// >>> x = np.array([-np.inf, 0., np.inf])
// >>> y = np.array([2, 2, 2])
// >>> np.isinf(x, y)
// array([1, 0, 1])
// >>> y
// array([1, 0, 1])
//
//go:linkname Isinf py.isinf
func Isinf(__llgo_va_list ...interface{}) *py.Object

// isnan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Test element-wise for NaN and return result as a boolean array.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or bool
//
//	True where ``x`` is NaN, false otherwise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// isinf, isneginf, isposinf, isfinite, isnat
//
// Notes
// -----
// NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
// (IEEE 754). This means that Not a Number is not equivalent to infinity.
//
// Examples
// --------
// >>> np.isnan(np.nan)
// True
// >>> np.isnan(np.inf)
// False
// >>> np.isnan([np.log(-1.),1.,np.log(0)])
// array([ True, False, False])
//
//go:linkname Isnan py.isnan
func Isnan(__llgo_va_list ...interface{}) *py.Object

// isnat(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Test element-wise for NaT (not a time) and return result as a boolean array.
//
// .. versionadded:: 1.13.0
//
// Parameters
// ----------
// x : array_like
//
//	Input array with datetime or timedelta data type.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or bool
//
//	True where ``x`` is NaT, false otherwise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// isnan, isinf, isneginf, isposinf, isfinite
//
// Examples
// --------
// >>> np.isnat(np.datetime64("NaT"))
// True
// >>> np.isnat(np.datetime64("2016-01-01"))
// False
// >>> np.isnat(np.array(["NaT", "2016-01-01"], dtype="datetime64[ns]"))
// array([ True, False])
//
//go:linkname Isnat py.isnat
func Isnat(__llgo_va_list ...interface{}) *py.Object

// lcm(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns the lowest common multiple of “|x1|“ and “|x2|“
//
// Parameters
// ----------
// x1, x2 : array_like, int
//
//	Arrays of values.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// Returns
// -------
// y : ndarray or scalar
//
//	The lowest common multiple of the absolute value of the inputs
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// gcd : The greatest common divisor
//
// Examples
// --------
// >>> np.lcm(12, 20)
// 60
// >>> np.lcm.reduce([3, 12, 20])
// 60
// >>> np.lcm.reduce([40, 12, 20])
// 120
// >>> np.lcm(np.arange(6), 20)
// array([ 0, 20, 20, 60, 20, 20])
//
//go:linkname Lcm py.lcm
func Lcm(__llgo_va_list ...interface{}) *py.Object

// ldexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns x1 * 2**x2, element-wise.
//
// The mantissas `x1` and twos exponents `x2` are used to construct
// floating point numbers “x1 * 2**x2“.
//
// Parameters
// ----------
// x1 : array_like
//
//	Array of multipliers.
//
// x2 : array_like, int
//
//	Array of twos exponents.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The result of ``x1 * 2**x2``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// frexp : Return (y1, y2) from “x = y1 * 2**y2“, inverse to `ldexp`.
//
// Notes
// -----
// Complex dtypes are not supported, they will raise a TypeError.
//
// `ldexp` is useful as the inverse of `frexp`, if used by itself it is
// more clear to simply use the expression “x1 * 2**x2“.
//
// Examples
// --------
// >>> np.ldexp(5, np.arange(4))
// array([ 5., 10., 20., 40.], dtype=float16)
//
// >>> x = np.arange(6)
// >>> np.ldexp(*np.frexp(x))
// array([ 0.,  1.,  2.,  3.,  4.,  5.])
//
//go:linkname Ldexp py.ldexp
func Ldexp(__llgo_va_list ...interface{}) *py.Object

// left_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Shift the bits of an integer to the left.
//
// Bits are shifted to the left by appending `x2` 0s at the right of `x1`.
// Since the internal representation of numbers is in binary format, this
// operation is equivalent to multiplying `x1` by “2**x2“.
//
// Parameters
// ----------
// x1 : array_like of integer type
//
//	Input values.
//
// x2 : array_like of integer type
//
//	Number of zeros to append to `x1`. Has to be non-negative.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : array of integer type
//
//	Return `x1` with bits shifted `x2` times to the left.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// right_shift : Shift the bits of an integer to the right.
// binary_repr : Return the binary representation of the input number
//
//	as a string.
//
// Examples
// --------
// >>> np.binary_repr(5)
// '101'
// >>> np.left_shift(5, 2)
// 20
// >>> np.binary_repr(20)
// '10100'
//
// >>> np.left_shift(5, [1,2,3])
// array([10, 20, 40])
//
// Note that the dtype of the second argument may change the dtype of the
// result and can lead to unexpected results in some cases (see
// :ref:`Casting Rules <ufuncs.casting>`):
//
// >>> a = np.left_shift(np.uint8(255), 1) # Expect 254
// >>> print(a, type(a)) # Unexpected result due to upcasting
// 510 <class 'numpy.int64'>
// >>> b = np.left_shift(np.uint8(255), np.uint8(1))
// >>> print(b, type(b))
// 254 <class 'numpy.uint8'>
//
// The “<<“ operator can be used as a shorthand for “np.left_shift“ on
// ndarrays.
//
// >>> x1 = 5
// >>> x2 = np.array([1, 2, 3])
// >>> x1 << x2
// array([10, 20, 40])
//
//go:linkname LeftShift py.left_shift
func LeftShift(__llgo_va_list ...interface{}) *py.Object

// less(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the truth value of (x1 < x2) element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array, element-wise comparison of `x1` and `x2`.
//	Typically of type bool, unless ``dtype=object`` is passed.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// greater, less_equal, greater_equal, equal, not_equal
//
// Examples
// --------
// >>> np.less([1, 2], [2, 2])
// array([ True, False])
//
// The “<“ operator can be used as a shorthand for “np.less“ on ndarrays.
//
// >>> a = np.array([1, 2])
// >>> b = np.array([2, 2])
// >>> a < b
// array([ True, False])
//
//go:linkname Less py.less
func Less(__llgo_va_list ...interface{}) *py.Object

// less_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the truth value of (x1 <= x2) element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array, element-wise comparison of `x1` and `x2`.
//	Typically of type bool, unless ``dtype=object`` is passed.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// greater, less, greater_equal, equal, not_equal
//
// Examples
// --------
// >>> np.less_equal([4, 2, 1], [2, 2, 2])
// array([False,  True,  True])
//
// The “<=“ operator can be used as a shorthand for “np.less_equal“ on
// ndarrays.
//
// >>> a = np.array([4, 2, 1])
// >>> b = np.array([2, 2, 2])
// >>> a <= b
// array([False,  True,  True])
//
//go:linkname LessEqual py.less_equal
func LessEqual(__llgo_va_list ...interface{}) *py.Object

// log(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Natural logarithm, element-wise.
//
// The natural logarithm `log` is the inverse of the exponential function,
// so that `log(exp(x)) = x`. The natural logarithm is logarithm in base
// `e`.
//
// Parameters
// ----------
// x : array_like
//
//	Input value.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The natural logarithm of `x`, element-wise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// log10, log2, log1p, emath.log
//
// Notes
// -----
// Logarithm is a multivalued function: for each `x` there is an infinite
// number of `z` such that `exp(z) = x`. The convention is to return the
// `z` whose imaginary part lies in `(-pi, pi]`.
//
// For real-valued input data types, `log` always returns real output. For
// each value that cannot be expressed as a real number or infinity, it
// yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `log` is a complex analytical function that
// has a branch cut `[-inf, 0]` and is continuous from above on it. `log`
// handles the floating-point negative zero as an infinitesimal negative
// number, conforming to the C99 standard.
//
// In the cases where the input has a negative real part and a very small
// negative complex part (approaching 0), the result is so close to `-pi`
// that it evaluates to exactly `-pi`.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 67.
//	https://personal.math.ubc.ca/~cbm/aands/page_67.htm
//
// .. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
//
// Examples
// --------
// >>> np.log([1, np.e, np.e**2, 0])
// array([  0.,   1.,   2., -Inf])
//
//go:linkname Log py.log
func Log(__llgo_va_list ...interface{}) *py.Object

// log10(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the base 10 logarithm of the input array, element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The logarithm to the base 10 of `x`, element-wise. NaNs are
//	returned where x is negative.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// emath.log10
//
// Notes
// -----
// Logarithm is a multivalued function: for each `x` there is an infinite
// number of `z` such that `10**z = x`. The convention is to return the
// `z` whose imaginary part lies in `(-pi, pi]`.
//
// For real-valued input data types, `log10` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `log10` is a complex analytical function that
// has a branch cut `[-inf, 0]` and is continuous from above on it.
// `log10` handles the floating-point negative zero as an infinitesimal
// negative number, conforming to the C99 standard.
//
// In the cases where the input has a negative real part and a very small
// negative complex part (approaching 0), the result is so close to `-pi`
// that it evaluates to exactly `-pi`.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 67.
//	https://personal.math.ubc.ca/~cbm/aands/page_67.htm
//
// .. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
//
// Examples
// --------
// >>> np.log10([1e-15, -3.])
// array([-15.,  nan])
//
//go:linkname Log10 py.log10
func Log10(__llgo_va_list ...interface{}) *py.Object

// log1p(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the natural logarithm of one plus the input array, element-wise.
//
// Calculates “log(1 + x)“.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	Natural logarithm of `1 + x`, element-wise.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// expm1 : “exp(x) - 1“, the inverse of `log1p`.
//
// Notes
// -----
// For real-valued input, `log1p` is accurate also for `x` so small
// that `1 + x == 1` in floating-point accuracy.
//
// Logarithm is a multivalued function: for each `x` there is an infinite
// number of `z` such that `exp(z) = 1 + x`. The convention is to return
// the `z` whose imaginary part lies in `[-pi, pi]`.
//
// For real-valued input data types, `log1p` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `log1p` is a complex analytical function that
// has a branch cut `[-inf, -1]` and is continuous from above on it.
// `log1p` handles the floating-point negative zero as an infinitesimal
// negative number, conforming to the C99 standard.
//
// References
// ----------
// .. [1] M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
//
//	10th printing, 1964, pp. 67.
//	https://personal.math.ubc.ca/~cbm/aands/page_67.htm
//
// .. [2] Wikipedia, "Logarithm". https://en.wikipedia.org/wiki/Logarithm
//
// Examples
// --------
// >>> np.log1p(1e-99)
// 1e-99
// >>> np.log(1 + 1e-99)
// 0.0
//
//go:linkname Log1p py.log1p
func Log1p(__llgo_va_list ...interface{}) *py.Object

// log2(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Base-2 logarithm of `x`.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	Base-2 logarithm of `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// log, log10, log1p, emath.log2
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// Logarithm is a multivalued function: for each `x` there is an infinite
// number of `z` such that `2**z = x`. The convention is to return the `z`
// whose imaginary part lies in `(-pi, pi]`.
//
// For real-valued input data types, `log2` always returns real output.
// For each value that cannot be expressed as a real number or infinity,
// it yields “nan“ and sets the `invalid` floating point error flag.
//
// For complex-valued input, `log2` is a complex analytical function that
// has a branch cut `[-inf, 0]` and is continuous from above on it. `log2`
// handles the floating-point negative zero as an infinitesimal negative
// number, conforming to the C99 standard.
//
// In the cases where the input has a negative real part and a very small
// negative complex part (approaching 0), the result is so close to `-pi`
// that it evaluates to exactly `-pi`.
//
// Examples
// --------
// >>> x = np.array([0, 1, 2, 2**4])
// >>> np.log2(x)
// array([-Inf,   0.,   1.,   4.])
//
// >>> xi = np.array([0+1.j, 1, 2+0.j, 4.j])
// >>> np.log2(xi)
// array([ 0.+2.26618007j,  0.+0.j        ,  1.+0.j        ,  2.+2.26618007j])
//
//go:linkname Log2 py.log2
func Log2(__llgo_va_list ...interface{}) *py.Object

// logaddexp(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Logarithm of the sum of exponentiations of the inputs.
//
// Calculates “log(exp(x1) + exp(x2))“. This function is useful in
// statistics where the calculated probabilities of events may be so small
// as to exceed the range of normal floating point numbers.  In such cases
// the logarithm of the calculated probability is stored. This function
// allows adding probabilities stored in such a fashion.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input values.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// result : ndarray
//
//	Logarithm of ``exp(x1) + exp(x2)``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logaddexp2: Logarithm of the sum of exponentiations of inputs in base 2.
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// Examples
// --------
// >>> prob1 = np.log(1e-50)
// >>> prob2 = np.log(2.5e-50)
// >>> prob12 = np.logaddexp(prob1, prob2)
// >>> prob12
// -113.87649168120691
// >>> np.exp(prob12)
// 3.5000000000000057e-50
//
//go:linkname Logaddexp py.logaddexp
func Logaddexp(__llgo_va_list ...interface{}) *py.Object

// logaddexp2(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Logarithm of the sum of exponentiations of the inputs in base-2.
//
// Calculates “log2(2**x1 + 2**x2)“. This function is useful in machine
// learning when the calculated probabilities of events may be so small as
// to exceed the range of normal floating point numbers.  In such cases
// the base-2 logarithm of the calculated probability can be used instead.
// This function allows adding probabilities stored in such a fashion.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input values.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// result : ndarray
//
//	Base-2 logarithm of ``2**x1 + 2**x2``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logaddexp: Logarithm of the sum of exponentiations of the inputs.
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// Examples
// --------
// >>> prob1 = np.log2(1e-50)
// >>> prob2 = np.log2(2.5e-50)
// >>> prob12 = np.logaddexp2(prob1, prob2)
// >>> prob1, prob2, prob12
// (-166.09640474436813, -164.77447664948076, -164.28904982231052)
// >>> 2**prob12
// 3.4999999999999914e-50
//
//go:linkname Logaddexp2 py.logaddexp2
func Logaddexp2(__llgo_va_list ...interface{}) *py.Object

// logical_and(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the truth value of x1 AND x2 element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or bool
//
//	Boolean result of the logical AND operation applied to the elements
//	of `x1` and `x2`; the shape is determined by broadcasting.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_or, logical_not, logical_xor
// bitwise_and
//
// Examples
// --------
// >>> np.logical_and(True, False)
// False
// >>> np.logical_and([True, False], [False, False])
// array([False, False])
//
// >>> x = np.arange(5)
// >>> np.logical_and(x>1, x<4)
// array([False, False,  True,  True, False])
//
// The “&“ operator can be used as a shorthand for “np.logical_and“ on
// boolean ndarrays.
//
// >>> a = np.array([True, False])
// >>> b = np.array([False, False])
// >>> a & b
// array([False, False])
//
//go:linkname LogicalAnd py.logical_and
func LogicalAnd(__llgo_va_list ...interface{}) *py.Object

// logical_not(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the truth value of NOT x element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Logical NOT is applied to the elements of `x`.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : bool or ndarray of bool
//
//	Boolean result with the same shape as `x` of the NOT operation
//	on elements of `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// logical_and, logical_or, logical_xor
//
// Examples
// --------
// >>> np.logical_not(3)
// False
// >>> np.logical_not([True, False, 0, 1])
// array([False,  True,  True, False])
//
// >>> x = np.arange(5)
// >>> np.logical_not(x<3)
// array([False, False, False,  True,  True])
//
//go:linkname LogicalNot py.logical_not
func LogicalNot(__llgo_va_list ...interface{}) *py.Object

// logical_or(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the truth value of x1 OR x2 element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Logical OR is applied to the elements of `x1` and `x2`.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or bool
//
//	Boolean result of the logical OR operation applied to the elements
//	of `x1` and `x2`; the shape is determined by broadcasting.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_and, logical_not, logical_xor
// bitwise_or
//
// Examples
// --------
// >>> np.logical_or(True, False)
// True
// >>> np.logical_or([True, False], [False, False])
// array([ True, False])
//
// >>> x = np.arange(5)
// >>> np.logical_or(x < 1, x > 3)
// array([ True, False, False, False,  True])
//
// The “|“ operator can be used as a shorthand for “np.logical_or“ on
// boolean ndarrays.
//
// >>> a = np.array([True, False])
// >>> b = np.array([False, False])
// >>> a | b
// array([ True, False])
//
//go:linkname LogicalOr py.logical_or
func LogicalOr(__llgo_va_list ...interface{}) *py.Object

// logical_xor(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute the truth value of x1 XOR x2, element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Logical XOR is applied to the elements of `x1` and `x2`.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : bool or ndarray of bool
//
//	Boolean result of the logical XOR operation applied to the elements
//	of `x1` and `x2`; the shape is determined by broadcasting.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// logical_and, logical_or, logical_not, bitwise_xor
//
// Examples
// --------
// >>> np.logical_xor(True, False)
// True
// >>> np.logical_xor([True, True, False, False], [True, False, True, False])
// array([False,  True,  True, False])
//
// >>> x = np.arange(5)
// >>> np.logical_xor(x < 1, x > 3)
// array([ True, False, False, False,  True])
//
// # Simple example showing support of broadcasting
//
// >>> np.logical_xor(0, np.eye(2))
// array([[ True, False],
//
//	[False,  True]])
//
//go:linkname LogicalXor py.logical_xor
func LogicalXor(__llgo_va_list ...interface{}) *py.Object

// maximum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Element-wise maximum of array elements.
//
// Compare two arrays and return a new array containing the element-wise
// maxima. If one of the elements being compared is a NaN, then that
// element is returned. If both elements are NaNs then the first is
// returned. The latter distinction is important for complex NaNs, which
// are defined as at least one of the real or imaginary parts being a NaN.
// The net effect is that NaNs are propagated.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays holding the elements to be compared.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The maximum of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// minimum :
//
//	Element-wise minimum of two arrays, propagates NaNs.
//
// fmax :
//
//	Element-wise maximum of two arrays, ignores NaNs.
//
// amax :
//
//	The maximum value of an array along a given axis, propagates NaNs.
//
// nanmax :
//
//	The maximum value of an array along a given axis, ignores NaNs.
//
// fmin, amin, nanmin
//
// Notes
// -----
// The maximum is equivalent to “np.where(x1 >= x2, x1, x2)“ when
// neither x1 nor x2 are nans, but it is faster and does proper
// broadcasting.
//
// Examples
// --------
// >>> np.maximum([2, 3, 4], [1, 5, 2])
// array([2, 5, 4])
//
// >>> np.maximum(np.eye(2), [0.5, 2]) # broadcasting
// array([[ 1. ,  2. ],
//
//	[ 0.5,  2. ]])
//
// >>> np.maximum([np.nan, 0, np.nan], [0, np.nan, np.nan])
// array([nan, nan, nan])
// >>> np.maximum(np.Inf, 1)
// inf
//
//go:linkname Maximum py.maximum
func Maximum(__llgo_va_list ...interface{}) *py.Object

// minimum(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Element-wise minimum of array elements.
//
// Compare two arrays and return a new array containing the element-wise
// minima. If one of the elements being compared is a NaN, then that
// element is returned. If both elements are NaNs then the first is
// returned. The latter distinction is important for complex NaNs, which
// are defined as at least one of the real or imaginary parts being a NaN.
// The net effect is that NaNs are propagated.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays holding the elements to be compared.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The minimum of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// maximum :
//
//	Element-wise maximum of two arrays, propagates NaNs.
//
// fmin :
//
//	Element-wise minimum of two arrays, ignores NaNs.
//
// amin :
//
//	The minimum value of an array along a given axis, propagates NaNs.
//
// nanmin :
//
//	The minimum value of an array along a given axis, ignores NaNs.
//
// fmax, amax, nanmax
//
// Notes
// -----
// The minimum is equivalent to “np.where(x1 <= x2, x1, x2)“ when
// neither x1 nor x2 are NaNs, but it is faster and does proper
// broadcasting.
//
// Examples
// --------
// >>> np.minimum([2, 3, 4], [1, 5, 2])
// array([1, 3, 2])
//
// >>> np.minimum(np.eye(2), [0.5, 2]) # broadcasting
// array([[ 0.5,  0. ],
//
//	[ 0. ,  1. ]])
//
// >>> np.minimum([np.nan, 0, np.nan],[0, np.nan, np.nan])
// array([nan, nan, nan])
// >>> np.minimum(-np.Inf, 1)
// -inf
//
//go:linkname Minimum py.minimum
func Minimum(__llgo_va_list ...interface{}) *py.Object

// remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns the element-wise remainder of division.
//
// Computes the remainder complementary to the `floor_divide` function.  It is
// equivalent to the Python modulus operator“x1 % x2“ and has the same sign
// as the divisor `x2`. The MATLAB function equivalent to “np.remainder“
// is “mod“.
//
// .. warning::
//
//	This should not be confused with:
//
//	* Python 3.7's `math.remainder` and C's ``remainder``, which
//	  computes the IEEE remainder, which are the complement to
//	  ``round(x1 / x2)``.
//	* The MATLAB ``rem`` function and or the C ``%`` operator which is the
//	  complement to ``int(x1 / x2)``.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend array.
//
// x2 : array_like
//
//	Divisor array.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// floor_divide : Equivalent of Python “//“ operator.
// divmod : Simultaneous floor division and remainder.
// fmod : Equivalent of the MATLAB “rem“ function.
// divide, floor
//
// Notes
// -----
// Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
// integers.
// “mod“ is an alias of “remainder“.
//
// Examples
// --------
// >>> np.remainder([4, 7], [2, 3])
// array([0, 1])
// >>> np.remainder(np.arange(7), 5)
// array([0, 1, 2, 3, 4, 0, 1])
//
// The “%“ operator can be used as a shorthand for “np.remainder“ on
// ndarrays.
//
// >>> x1 = np.arange(7)
// >>> x1 % 5
// array([0, 1, 2, 3, 4, 0, 1])
//
//go:linkname Mod py.mod
func Mod(__llgo_va_list ...interface{}) *py.Object

// modf(x[, out1, out2], / [, out=(None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the fractional and integral parts of an array, element-wise.
//
// The fractional and integral parts are negative if the given number is
// negative.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y1 : ndarray
//
//	Fractional part of `x`.
//	This is a scalar if `x` is a scalar.
//
// y2 : ndarray
//
//	Integral part of `x`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// For integer input the return values are floats.
//
// See Also
// --------
// divmod : “divmod(x, 1)“ is equivalent to “modf“ with the return values
//
//	switched, except it always has a positive remainder.
//
// Examples
// --------
// >>> np.modf([0, 3.5])
// (array([ 0. ,  0.5]), array([ 0.,  3.]))
// >>> np.modf(-0.5)
// (-0.5, -0)
//
//go:linkname Modf py.modf
func Modf(__llgo_va_list ...interface{}) *py.Object

// multiply(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Multiply arguments element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays to be multiplied.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The product of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Notes
// -----
// Equivalent to `x1` * `x2` in terms of array broadcasting.
//
// Examples
// --------
// >>> np.multiply(2.0, 4.0)
// 8.0
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> np.multiply(x1, x2)
// array([[  0.,   1.,   4.],
//
//	[  0.,   4.,  10.],
//	[  0.,   7.,  16.]])
//
// The “*“ operator can be used as a shorthand for “np.multiply“ on
// ndarrays.
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> x1 * x2
// array([[  0.,   1.,   4.],
//
//	[  0.,   4.,  10.],
//	[  0.,   7.,  16.]])
//
//go:linkname Multiply py.multiply
func Multiply(__llgo_va_list ...interface{}) *py.Object

// negative(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Numerical negative, element-wise.
//
// Parameters
// ----------
// x : array_like or scalar
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	Returned array or scalar: `y = -x`.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> np.negative([1.,-1.])
// array([-1.,  1.])
//
// The unary “-“ operator can be used as a shorthand for “np.negative“ on
// ndarrays.
//
// >>> x1 = np.array(([1., -1.]))
// >>> -x1
// array([-1.,  1.])
//
//go:linkname Negative py.negative
func Negative(__llgo_va_list ...interface{}) *py.Object

// nextafter(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the next floating-point value after x1 towards x2, element-wise.
//
// Parameters
// ----------
// x1 : array_like
//
//	Values to find the next representable value of.
//
// x2 : array_like
//
//	The direction where to look for the next representable value of `x1`.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	The next representable values of `x1` in the direction of `x2`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Examples
// --------
// >>> eps = np.finfo(np.float64).eps
// >>> np.nextafter(1, 2) == eps + 1
// True
// >>> np.nextafter([1, 2], [2, 1]) == [eps + 1, 2 - eps]
// array([ True,  True])
//
//go:linkname Nextafter py.nextafter
func Nextafter(__llgo_va_list ...interface{}) *py.Object

// not_equal(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return (x1 != x2) element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	Input arrays.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array, element-wise comparison of `x1` and `x2`.
//	Typically of type bool, unless ``dtype=object`` is passed.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// equal, greater, greater_equal, less, less_equal
//
// Examples
// --------
// >>> np.not_equal([1.,2.], [1., 3.])
// array([False,  True])
// >>> np.not_equal([1, 2], [[1, 3],[1, 4]])
// array([[False,  True],
//
//	[False,  True]])
//
// The “!=“ operator can be used as a shorthand for “np.not_equal“ on
// ndarrays.
//
// >>> a = np.array([1., 2.])
// >>> b = np.array([1., 3.])
// >>> a != b
// array([False,  True])
//
//go:linkname NotEqual py.not_equal
func NotEqual(__llgo_va_list ...interface{}) *py.Object

// positive(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Numerical positive, element-wise.
//
// .. versionadded:: 1.13.0
//
// Parameters
// ----------
// x : array_like or scalar
//
//	Input array.
//
// Returns
// -------
// y : ndarray or scalar
//
//	Returned array or scalar: `y = +x`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// Equivalent to `x.copy()`, but only defined for types that support
// arithmetic.
//
// Examples
// --------
//
// >>> x1 = np.array(([1., -1.]))
// >>> np.positive(x1)
// array([ 1., -1.])
//
// The unary “+“ operator can be used as a shorthand for “np.positive“ on
// ndarrays.
//
// >>> x1 = np.array(([1., -1.]))
// >>> +x1
// array([ 1., -1.])
//
//go:linkname Positive py.positive
func Positive(__llgo_va_list ...interface{}) *py.Object

// power(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// First array elements raised to powers from second array, element-wise.
//
// Raise each base in `x1` to the positionally-corresponding power in
// `x2`.  `x1` and `x2` must be broadcastable to the same shape.
//
// An integer type raised to a negative integer power will raise a
// “ValueError“.
//
// Negative values raised to a non-integral value will return “nan“.
// To get complex results, cast the input to complex, or specify the
// “dtype“ to be “complex“ (see the example below).
//
// Parameters
// ----------
// x1 : array_like
//
//	The bases.
//
// x2 : array_like
//
//	The exponents.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The bases in `x1` raised to the exponents in `x2`.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// float_power : power function that promotes integers to float
//
// Examples
// --------
// Cube each element in an array.
//
// >>> x1 = np.arange(6)
// >>> x1
// [0, 1, 2, 3, 4, 5]
// >>> np.power(x1, 3)
// array([  0,   1,   8,  27,  64, 125])
//
// Raise the bases to different exponents.
//
// >>> x2 = [1.0, 2.0, 3.0, 3.0, 2.0, 1.0]
// >>> np.power(x1, x2)
// array([  0.,   1.,   8.,  27.,  16.,   5.])
//
// The effect of broadcasting.
//
// >>> x2 = np.array([[1, 2, 3, 3, 2, 1], [1, 2, 3, 3, 2, 1]])
// >>> x2
// array([[1, 2, 3, 3, 2, 1],
//
//	[1, 2, 3, 3, 2, 1]])
//
// >>> np.power(x1, x2)
// array([[ 0,  1,  8, 27, 16,  5],
//
//	[ 0,  1,  8, 27, 16,  5]])
//
// The “**“ operator can be used as a shorthand for “np.power“ on
// ndarrays.
//
// >>> x2 = np.array([1, 2, 3, 3, 2, 1])
// >>> x1 = np.arange(6)
// >>> x1 ** x2
// array([ 0,  1,  8, 27, 16,  5])
//
// Negative values raised to a non-integral value will result in “nan“
// (and a warning will be generated).
//
// >>> x3 = np.array([-1.0, -4.0])
// >>> with np.errstate(invalid='ignore'):
// ...     p = np.power(x3, 1.5)
// ...
// >>> p
// array([nan, nan])
//
// To get complex results, give the argument “dtype=complex“.
//
// >>> np.power(x3, 1.5, dtype=complex)
// array([-1.83697020e-16-1.j, -1.46957616e-15-8.j])
//
//go:linkname Power py.power
func Power(__llgo_va_list ...interface{}) *py.Object

// rad2deg(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Convert angles from radians to degrees.
//
// Parameters
// ----------
// x : array_like
//
//	Angle in radians.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding angle in degrees.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// deg2rad : Convert angles from degrees to radians.
// unwrap : Remove large jumps in angle by wrapping.
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// rad2deg(x) is “180 * x / pi“.
//
// Examples
// --------
// >>> np.rad2deg(np.pi/2)
// 90.0
//
//go:linkname Rad2deg py.rad2deg
func Rad2deg(__llgo_va_list ...interface{}) *py.Object

// radians(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Convert angles from degrees to radians.
//
// Parameters
// ----------
// x : array_like
//
//	Input array in degrees.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding radian values.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// deg2rad : equivalent function
//
// Examples
// --------
// Convert a degree array to radians
//
// >>> deg = np.arange(12.) * 30.
// >>> np.radians(deg)
// array([ 0.        ,  0.52359878,  1.04719755,  1.57079633,  2.0943951 ,
//
//	2.61799388,  3.14159265,  3.66519143,  4.1887902 ,  4.71238898,
//	5.23598776,  5.75958653])
//
// >>> out = np.zeros((deg.shape))
// >>> ret = np.radians(deg, out)
// >>> ret is out
// True
//
//go:linkname Radians py.radians
func Radians(__llgo_va_list ...interface{}) *py.Object

// reciprocal(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the reciprocal of the argument, element-wise.
//
// Calculates “1/x“.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	Return array.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// .. note::
//
//	This function is not designed to work with integers.
//
// For integer arguments with absolute value larger than 1 the result is
// always zero because of the way Python handles integer division.  For
// integer zero the result is an overflow.
//
// Examples
// --------
// >>> np.reciprocal(2.)
// 0.5
// >>> np.reciprocal([1, 2., 3.33])
// array([ 1.       ,  0.5      ,  0.3003003])
//
//go:linkname Reciprocal py.reciprocal
func Reciprocal(__llgo_va_list ...interface{}) *py.Object

// remainder(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns the element-wise remainder of division.
//
// Computes the remainder complementary to the `floor_divide` function.  It is
// equivalent to the Python modulus operator“x1 % x2“ and has the same sign
// as the divisor `x2`. The MATLAB function equivalent to “np.remainder“
// is “mod“.
//
// .. warning::
//
//	This should not be confused with:
//
//	* Python 3.7's `math.remainder` and C's ``remainder``, which
//	  computes the IEEE remainder, which are the complement to
//	  ``round(x1 / x2)``.
//	* The MATLAB ``rem`` function and or the C ``%`` operator which is the
//	  complement to ``int(x1 / x2)``.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend array.
//
// x2 : array_like
//
//	Divisor array.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The element-wise remainder of the quotient ``floor_divide(x1, x2)``.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// floor_divide : Equivalent of Python “//“ operator.
// divmod : Simultaneous floor division and remainder.
// fmod : Equivalent of the MATLAB “rem“ function.
// divide, floor
//
// Notes
// -----
// Returns 0 when `x2` is 0 and both `x1` and `x2` are (arrays of)
// integers.
// “mod“ is an alias of “remainder“.
//
// Examples
// --------
// >>> np.remainder([4, 7], [2, 3])
// array([0, 1])
// >>> np.remainder(np.arange(7), 5)
// array([0, 1, 2, 3, 4, 0, 1])
//
// The “%“ operator can be used as a shorthand for “np.remainder“ on
// ndarrays.
//
// >>> x1 = np.arange(7)
// >>> x1 % 5
// array([0, 1, 2, 3, 4, 0, 1])
//
//go:linkname Remainder py.remainder
func Remainder(__llgo_va_list ...interface{}) *py.Object

// right_shift(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Shift the bits of an integer to the right.
//
// Bits are shifted to the right `x2`.  Because the internal
// representation of numbers is in binary format, this operation is
// equivalent to dividing `x1` by “2**x2“.
//
// Parameters
// ----------
// x1 : array_like, int
//
//	Input values.
//
// x2 : array_like, int
//
//	Number of bits to remove at the right of `x1`.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray, int
//
//	Return `x1` with bits shifted `x2` times to the right.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// left_shift : Shift the bits of an integer to the left.
// binary_repr : Return the binary representation of the input number
//
//	as a string.
//
// Examples
// --------
// >>> np.binary_repr(10)
// '1010'
// >>> np.right_shift(10, 1)
// 5
// >>> np.binary_repr(5)
// '101'
//
// >>> np.right_shift(10, [1,2,3])
// array([5, 2, 1])
//
// The “>>“ operator can be used as a shorthand for “np.right_shift“ on
// ndarrays.
//
// >>> x1 = 10
// >>> x2 = np.array([1,2,3])
// >>> x1 >> x2
// array([5, 2, 1])
//
//go:linkname RightShift py.right_shift
func RightShift(__llgo_va_list ...interface{}) *py.Object

// rint(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Round elements of the array to the nearest integer.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Output array is same shape and type as `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// fix, ceil, floor, trunc
//
// Notes
// -----
// For values exactly halfway between rounded decimal values, NumPy
// rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
// -0.5 and 0.5 round to 0.0, etc.
//
// Examples
// --------
// >>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
// >>> np.rint(a)
// array([-2., -2., -0.,  0.,  2.,  2.,  2.])
//
//go:linkname Rint py.rint
func Rint(__llgo_va_list ...interface{}) *py.Object

// sign(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns an element-wise indication of the sign of a number.
//
// The `sign` function returns “-1 if x < 0, 0 if x==0, 1 if x > 0“.  nan
// is returned for nan inputs.
//
// For complex inputs, the `sign` function returns
// “sign(x.real) + 0j if x.real != 0 else sign(x.imag) + 0j“.
//
// complex(nan, 0) is returned for complex nan inputs.
//
// Parameters
// ----------
// x : array_like
//
//	Input values.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The sign of `x`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// There is more than one definition of sign in common use for complex
// numbers.  The definition used here is equivalent to :math:`x/\sqrt{x*x}`
// which is different from a common alternative, :math:`x/|x|`.
//
// Examples
// --------
// >>> np.sign([-5., 4.5])
// array([-1.,  1.])
// >>> np.sign(0)
// 0
// >>> np.sign(5-2j)
// (1+0j)
//
//go:linkname Sign py.sign
func Sign(__llgo_va_list ...interface{}) *py.Object

// signbit(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Returns element-wise True where signbit is set (less than zero).
//
// Parameters
// ----------
// x : array_like
//
//	The input value(s).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// result : ndarray of bool
//
//	Output array, or reference to `out` if that was supplied.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> np.signbit(-1.2)
// True
// >>> np.signbit(np.array([1, -2.3, 2.1]))
// array([False,  True, False])
//
//go:linkname Signbit py.signbit
func Signbit(__llgo_va_list ...interface{}) *py.Object

// sin(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Trigonometric sine, element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : array_like
//
//	The sine of each element of x.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// arcsin, sinh, cos
//
// Notes
// -----
// The sine is one of the fundamental functions of trigonometry (the
// mathematical study of triangles).  Consider a circle of radius 1
// centered on the origin.  A ray comes in from the :math:`+x` axis, makes
// an angle at the origin (measured counter-clockwise from that axis), and
// departs from the origin.  The :math:`y` coordinate of the outgoing
// ray's intersection with the unit circle is the sine of that angle.  It
// ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
// function has zeroes where the angle is a multiple of :math:`\pi`.
// Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
// The numerous properties of the sine and related functions are included
// in any standard trigonometry text.
//
// Examples
// --------
// Print sine of one angle:
//
// >>> np.sin(np.pi/2.)
// 1.0
//
// Print sines of an array of angles given in degrees:
//
// >>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
// array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
//
// Plot the sine function:
//
// >>> import matplotlib.pylab as plt
// >>> x = np.linspace(-np.pi, np.pi, 201)
// >>> plt.plot(x, np.sin(x))
// >>> plt.xlabel('Angle [rad]')
// >>> plt.ylabel('sin(x)')
// >>> plt.axis('tight')
// >>> plt.show()
//
//go:linkname Sin py.sin
func Sin(__llgo_va_list ...interface{}) *py.Object

// sinh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Hyperbolic sine, element-wise.
//
// Equivalent to “1/2 * (np.exp(x) - np.exp(-x))“ or
// “-1j * np.sin(1j*x)“.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding hyperbolic sine values.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// If `out` is provided, the function writes the result into it,
// and returns a reference to `out`.  (See Examples)
//
// References
// ----------
// M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
// New York, NY: Dover, 1972, pg. 83.
//
// Examples
// --------
// >>> np.sinh(0)
// 0.0
// >>> np.sinh(np.pi*1j/2)
// 1j
// >>> np.sinh(np.pi*1j) # (exact value is 0)
// 1.2246063538223773e-016j
// >>> # Discrepancy due to vagaries of floating point arithmetic.
//
// >>> # Example of providing the optional output parameter
// >>> out1 = np.array([0], dtype='d')
// >>> out2 = np.sinh([0.1], out1)
// >>> out2 is out1
// True
//
// >>> # Example of ValueError due to provision of shape mis-matched `out`
// >>> np.sinh(np.zeros((3,3)),np.zeros((2,2)))
// Traceback (most recent call last):
//
//	File "<stdin>", line 1, in <module>
//
// ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
//
//go:linkname Sinh py.sinh
func Sinh(__llgo_va_list ...interface{}) *py.Object

// spacing(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the distance between x and the nearest adjacent number.
//
// Parameters
// ----------
// x : array_like
//
//	Values to find the spacing of.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	The spacing of values of `x`.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// It can be considered as a generalization of EPS:
// “spacing(np.float64(1)) == np.finfo(np.float64).eps“, and there
// should not be any representable number between “x + spacing(x)“ and
// x for any finite x.
//
// Spacing of +- inf and NaN is NaN.
//
// Examples
// --------
// >>> np.spacing(1) == np.finfo(np.float64).eps
// True
//
//go:linkname Spacing py.spacing
func Spacing(__llgo_va_list ...interface{}) *py.Object

// sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the non-negative square-root of an array, element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	The values whose square-roots are required.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	An array of the same shape as `x`, containing the positive
//	square-root of each element in `x`.  If any element in `x` is
//	complex, a complex array is returned (and the square-roots of
//	negative reals are calculated).  If all of the elements in `x`
//	are real, so is `y`, with negative elements returning ``nan``.
//	If `out` was provided, `y` is a reference to it.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// emath.sqrt
//
//	A version which returns complex numbers when given negative reals.
//	Note that 0.0 and -0.0 are handled differently for complex inputs.
//
// Notes
// -----
// *sqrt* has--consistent with common convention--as its branch cut the
// real "interval" [`-inf`, 0), and is continuous from above on it.
// A branch cut is a curve in the complex plane across which a given
// complex function fails to be continuous.
//
// Examples
// --------
// >>> np.sqrt([1,4,9])
// array([ 1.,  2.,  3.])
//
// >>> np.sqrt([4, -1, -3+4J])
// array([ 2.+0.j,  0.+1.j,  1.+2.j])
//
// >>> np.sqrt([4, -1, np.inf])
// array([ 2., nan, inf])
//
//go:linkname Sqrt py.sqrt
func Sqrt(__llgo_va_list ...interface{}) *py.Object

// square(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the element-wise square of the input.
//
// Parameters
// ----------
// x : array_like
//
//	Input data.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// out : ndarray or scalar
//
//	Element-wise `x*x`, of the same shape and dtype as `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// numpy.linalg.matrix_power
// sqrt
// power
//
// Examples
// --------
// >>> np.square([-1j, 1])
// array([-1.-0.j,  1.+0.j])
//
//go:linkname Square py.square
func Square(__llgo_va_list ...interface{}) *py.Object

// subtract(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Subtract arguments, element-wise.
//
// Parameters
// ----------
// x1, x2 : array_like
//
//	The arrays to be subtracted from each other.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The difference of `x1` and `x2`, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// Notes
// -----
// Equivalent to “x1 - x2“ in terms of array broadcasting.
//
// Examples
// --------
// >>> np.subtract(1.0, 4.0)
// -3.0
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> np.subtract(x1, x2)
// array([[ 0.,  0.,  0.],
//
//	[ 3.,  3.,  3.],
//	[ 6.,  6.,  6.]])
//
// The “-“ operator can be used as a shorthand for “np.subtract“ on
// ndarrays.
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> x1 - x2
// array([[0., 0., 0.],
//
//	[3., 3., 3.],
//	[6., 6., 6.]])
//
//go:linkname Subtract py.subtract
func Subtract(__llgo_va_list ...interface{}) *py.Object

// tan(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute tangent element-wise.
//
// Equivalent to “np.sin(x)/np.cos(x)“ element-wise.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding tangent values.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// If `out` is provided, the function writes the result into it,
// and returns a reference to `out`.  (See Examples)
//
// References
// ----------
// M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
// New York, NY: Dover, 1972.
//
// Examples
// --------
// >>> from math import pi
// >>> np.tan(np.array([-pi,pi/2,pi]))
// array([  1.22460635e-16,   1.63317787e+16,  -1.22460635e-16])
// >>>
// >>> # Example of providing the optional output parameter illustrating
// >>> # that what is returned is a reference to said parameter
// >>> out1 = np.array([0], dtype='d')
// >>> out2 = np.cos([0.1], out1)
// >>> out2 is out1
// True
// >>>
// >>> # Example of ValueError due to provision of shape mis-matched `out`
// >>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
// Traceback (most recent call last):
//
//	File "<stdin>", line 1, in <module>
//
// ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
//
//go:linkname Tan py.tan
func Tan(__llgo_va_list ...interface{}) *py.Object

// tanh(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Compute hyperbolic tangent element-wise.
//
// Equivalent to “np.sinh(x)/np.cosh(x)“ or “-1j * np.tan(1j*x)“.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray
//
//	The corresponding hyperbolic tangent values.
//	This is a scalar if `x` is a scalar.
//
// Notes
// -----
// If `out` is provided, the function writes the result into it,
// and returns a reference to `out`.  (See Examples)
//
// References
// ----------
// .. [1] M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
//
//	New York, NY: Dover, 1972, pg. 83.
//	https://personal.math.ubc.ca/~cbm/aands/page_83.htm
//
// .. [2] Wikipedia, "Hyperbolic function",
//
//	https://en.wikipedia.org/wiki/Hyperbolic_function
//
// Examples
// --------
// >>> np.tanh((0, np.pi*1j, np.pi*1j/2))
// array([ 0. +0.00000000e+00j,  0. -1.22460635e-16j,  0. +1.63317787e+16j])
//
// >>> # Example of providing the optional output parameter illustrating
// >>> # that what is returned is a reference to said parameter
// >>> out1 = np.array([0], dtype='d')
// >>> out2 = np.tanh([0.1], out1)
// >>> out2 is out1
// True
//
// >>> # Example of ValueError due to provision of shape mis-matched `out`
// >>> np.tanh(np.zeros((3,3)),np.zeros((2,2)))
// Traceback (most recent call last):
//
//	File "<stdin>", line 1, in <module>
//
// ValueError: operands could not be broadcast together with shapes (3,3) (2,2)
//
//go:linkname Tanh py.tanh
func Tanh(__llgo_va_list ...interface{}) *py.Object

// divide(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Divide arguments element-wise.
//
// Parameters
// ----------
// x1 : array_like
//
//	Dividend array.
//
// x2 : array_like
//
//	Divisor array.
//	If ``x1.shape != x2.shape``, they must be broadcastable to a common
//	shape (which becomes the shape of the output).
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The quotient ``x1/x2``, element-wise.
//	This is a scalar if both `x1` and `x2` are scalars.
//
// See Also
// --------
// seterr : Set whether to raise or warn on overflow, underflow and
//
//	division by zero.
//
// Notes
// -----
// Equivalent to “x1“ / “x2“ in terms of array-broadcasting.
//
// The “true_divide(x1, x2)“ function is an alias for
// “divide(x1, x2)“.
//
// Examples
// --------
// >>> np.divide(2.0, 4.0)
// 0.5
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = np.arange(3.0)
// >>> np.divide(x1, x2)
// array([[nan, 1. , 1. ],
//
//	[inf, 4. , 2.5],
//	[inf, 7. , 4. ]])
//
// The “/“ operator can be used as a shorthand for “np.divide“ on
// ndarrays.
//
// >>> x1 = np.arange(9.0).reshape((3, 3))
// >>> x2 = 2 * np.ones(3)
// >>> x1 / x2
// array([[0. , 0.5, 1. ],
//
//	[1.5, 2. , 2.5],
//	[3. , 3.5, 4. ]])
//
//go:linkname TrueDivide py.true_divide
func TrueDivide(__llgo_va_list ...interface{}) *py.Object

// trunc(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Return the truncated value of the input, element-wise.
//
// The truncated value of the scalar `x` is the nearest integer `i` which
// is closer to zero than `x` is. In short, the fractional part of the
// signed number `x` is discarded.
//
// Parameters
// ----------
// x : array_like
//
//	Input data.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// y : ndarray or scalar
//
//	The truncated value of each element in `x`.
//	This is a scalar if `x` is a scalar.
//
// See Also
// --------
// ceil, floor, rint, fix
//
// Notes
// -----
// .. versionadded:: 1.3.0
//
// Examples
// --------
// >>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
// >>> np.trunc(a)
// array([-1., -1., -0.,  0.,  1.,  1.,  2.])
//
//go:linkname Trunc py.trunc
func Trunc(__llgo_va_list ...interface{}) *py.Object

// Return the scalar dtype or NumPy equivalent of Python type of an object.
//
// Parameters
// ----------
// rep : any
//
//	The object of which the type is returned.
//
// default : any, optional
//
//	If given, this is returned for objects whose types can not be
//	determined. If not given, None is returned for those objects.
//
// Returns
// -------
// dtype : dtype or Python type
//
//	The data type of `rep`.
//
// See Also
// --------
// sctype2char, issctype, issubsctype, issubdtype, maximum_sctype
//
// Examples
// --------
// >>> np.obj2sctype(np.int32)
// <class 'numpy.int32'>
// >>> np.obj2sctype(np.array([1., 2.]))
// <class 'numpy.float64'>
// >>> np.obj2sctype(np.array([1.j]))
// <class 'numpy.complex128'>
//
// >>> np.obj2sctype(dict)
// <class 'numpy.object_'>
// >>> np.obj2sctype('string')
//
// >>> np.obj2sctype(1, default=list)
// <class 'list'>
//
//go:linkname Obj2sctype py.obj2sctype
func Obj2sctype(rep *py.Object, default_ *py.Object) *py.Object

// Return the string representation of a scalar dtype.
//
// Parameters
// ----------
// sctype : scalar dtype or object
//
//	If a scalar dtype, the corresponding string character is
//	returned. If an object, `sctype2char` tries to infer its scalar type
//	and then return the corresponding string character.
//
// Returns
// -------
// typechar : str
//
//	The string character corresponding to the scalar type.
//
// Raises
// ------
// ValueError
//
//	If `sctype` is an object for which the type can not be inferred.
//
// See Also
// --------
// obj2sctype, issctype, issubsctype, mintypecode
//
// Examples
// --------
// >>> for sctype in [np.int32, np.double, np.complex_, np.string_, np.ndarray]:
// ...     print(np.sctype2char(sctype))
// l # may vary
// d
// D
// S
// O
//
// >>> x = np.array([1., 2-1.j])
// >>> np.sctype2char(x)
// 'D'
// >>> np.sctype2char(list)
// 'O'
//
//go:linkname Sctype2char py.sctype2char
func Sctype2char(sctype *py.Object) *py.Object

// Return the scalar type of highest precision of the same kind as the input.
//
// Parameters
// ----------
// t : dtype or dtype specifier
//
//	The input data type. This can be a `dtype` object or an object that
//	is convertible to a `dtype`.
//
// Returns
// -------
// out : dtype
//
//	The highest precision data type of the same kind (`dtype.kind`) as `t`.
//
// See Also
// --------
// obj2sctype, mintypecode, sctype2char
// dtype
//
// Examples
// --------
// >>> np.maximum_sctype(int)
// <class 'numpy.int64'>
// >>> np.maximum_sctype(np.uint8)
// <class 'numpy.uint64'>
// >>> np.maximum_sctype(complex)
// <class 'numpy.complex256'> # may vary
//
// >>> np.maximum_sctype(str)
// <class 'numpy.str_'>
//
// >>> np.maximum_sctype('i2')
// <class 'numpy.int64'>
// >>> np.maximum_sctype('f4')
// <class 'numpy.float128'> # may vary
//
//go:linkname MaximumSctype py.maximum_sctype
func MaximumSctype(t *py.Object) *py.Object

// Determines whether the given object represents a scalar data-type.
//
// Parameters
// ----------
// rep : any
//
//	If `rep` is an instance of a scalar dtype, True is returned. If not,
//	False is returned.
//
// Returns
// -------
// out : bool
//
//	Boolean result of check whether `rep` is a scalar dtype.
//
// See Also
// --------
// issubsctype, issubdtype, obj2sctype, sctype2char
//
// Examples
// --------
// >>> np.issctype(np.int32)
// True
// >>> np.issctype(list)
// False
// >>> np.issctype(1.1)
// False
//
// Strings are also a scalar type:
//
// >>> np.issctype(np.dtype('str'))
// True
//
//go:linkname Issctype py.issctype
func Issctype(rep *py.Object) *py.Object

// Determine common type following standard coercion rules.
//
// .. deprecated:: NumPy 1.25
//
//	This function is deprecated, use `numpy.promote_types` or
//	`numpy.result_type` instead.  To achieve semantics for the
//	`scalar_types` argument, use `numpy.result_type` and pass the Python
//	values `0`, `0.0`, or `0j`.
//	This will give the same results in almost all cases.
//	More information and rare exception can be found in the
//	`NumPy 1.25 release notes <https://numpy.org/devdocs/release/1.25.0-notes.html>`_.
//
// Parameters
// ----------
// array_types : sequence
//
//	A list of dtypes or dtype convertible objects representing arrays.
//
// scalar_types : sequence
//
//	A list of dtypes or dtype convertible objects representing scalars.
//
// Returns
// -------
// datatype : dtype
//
//	The common data type, which is the maximum of `array_types` ignoring
//	`scalar_types`, unless the maximum of `scalar_types` is of a
//	different kind (`dtype.kind`). If the kind is not understood, then
//	None is returned.
//
// See Also
// --------
// dtype, common_type, can_cast, mintypecode
//
// Examples
// --------
// >>> np.find_common_type([], [np.int64, np.float32, complex])
// dtype('complex128')
// >>> np.find_common_type([np.int64, np.float32], [])
// dtype('float64')
//
// The standard casting rules ensure that a scalar cannot up-cast an
// array unless the scalar is of a fundamentally different kind of data
// (i.e. under a different hierarchy in the data type hierarchy) then
// the array:
//
// >>> np.find_common_type([np.float32], [np.int64, np.float64])
// dtype('float32')
//
// Complex is of a different type, so it up-casts the float in the
// `array_types` argument:
//
// >>> np.find_common_type([np.float32], [complex])
// dtype('complex128')
//
// Type specifier strings are convertible to dtypes and can therefore
// be used instead of dtypes:
//
// >>> np.find_common_type(['f4', 'f4', 'i4'], ['c8'])
// dtype('complex128')
//
//go:linkname FindCommonType py.find_common_type
func FindCommonType(arrayTypes *py.Object, scalarTypes *py.Object) *py.Object

// Returns True if first argument is a typecode lower/equal in type hierarchy.
//
// This is like the builtin :func:`issubclass`, but for `dtype`\ s.
//
// Parameters
// ----------
// arg1, arg2 : dtype_like
//
//	`dtype` or object coercible to one
//
// Returns
// -------
// out : bool
//
// See Also
// --------
// :ref:`arrays.scalars` : Overview of the numpy type hierarchy.
// issubsctype, issubclass_
//
// Examples
// --------
// `issubdtype` can be used to check the type of arrays:
//
// >>> ints = np.array([1, 2, 3], dtype=np.int32)
// >>> np.issubdtype(ints.dtype, np.integer)
// True
// >>> np.issubdtype(ints.dtype, np.floating)
// False
//
// >>> floats = np.array([1, 2, 3], dtype=np.float32)
// >>> np.issubdtype(floats.dtype, np.integer)
// False
// >>> np.issubdtype(floats.dtype, np.floating)
// True
//
// Similar types of different sizes are not subdtypes of each other:
//
// >>> np.issubdtype(np.float64, np.float32)
// False
// >>> np.issubdtype(np.float32, np.float64)
// False
//
// but both are subtypes of `floating`:
//
// >>> np.issubdtype(np.float64, np.floating)
// True
// >>> np.issubdtype(np.float32, np.floating)
// True
//
// For convenience, dtype-like objects are allowed too:
//
// >>> np.issubdtype('S1', np.string_)
// True
// >>> np.issubdtype('i4', np.signedinteger)
// True
//
//go:linkname Issubdtype py.issubdtype
func Issubdtype(arg1 *py.Object, arg2 *py.Object) *py.Object

// Set a Python function to be used when pretty printing arrays.
//
// Parameters
// ----------
// f : function or None
//
//	Function to be used to pretty print arrays. The function should expect
//	a single array argument and return a string of the representation of
//	the array. If None, the function is reset to the default NumPy function
//	to print arrays.
//
// repr : bool, optional
//
//	If True (default), the function for pretty printing (``__repr__``)
//	is set, if False the function that returns the default string
//	representation (``__str__``) is set.
//
// See Also
// --------
// set_printoptions, get_printoptions
//
// Examples
// --------
// >>> def pprint(arr):
// ...     return 'HA! - What are you going to do now?'
// ...
// >>> np.set_string_function(pprint)
// >>> a = np.arange(10)
// >>> a
// HA! - What are you going to do now?
// >>> _ = a
// >>> # [0 1 2 3 4 5 6 7 8 9]
//
// We can reset the function to the default:
//
// >>> np.set_string_function(None)
// >>> a
// array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
//
// `repr` affects either pretty printing or normal string representation.
// Note that “__repr__“ is still affected by setting “__str__“
// because the width of each array element in the returned string becomes
// equal to the length of the result of “__str__()“.
//
// >>> x = np.arange(4)
// >>> np.set_string_function(lambda x:'random', repr=False)
// >>> x.__str__()
// 'random'
// >>> x.__repr__()
// 'array([0, 1, 2, 3])'
//
//go:linkname SetStringFunction py.set_string_function
func SetStringFunction(f *py.Object, repr *py.Object) *py.Object

// Set printing options.
//
// These options determine the way floating point numbers, arrays and
// other NumPy objects are displayed.
//
// Parameters
// ----------
// precision : int or None, optional
//
//	Number of digits of precision for floating point output (default 8).
//	May be None if `floatmode` is not `fixed`, to print as many digits as
//	necessary to uniquely specify the value.
//
// threshold : int, optional
//
//	Total number of array elements which trigger summarization
//	rather than full repr (default 1000).
//	To always use the full repr without summarization, pass `sys.maxsize`.
//
// edgeitems : int, optional
//
//	Number of array items in summary at beginning and end of
//	each dimension (default 3).
//
// linewidth : int, optional
//
//	The number of characters per line for the purpose of inserting
//	line breaks (default 75).
//
// suppress : bool, optional
//
//	If True, always print floating point numbers using fixed point
//	notation, in which case numbers equal to zero in the current precision
//	will print as zero.  If False, then scientific notation is used when
//	absolute value of the smallest number is < 1e-4 or the ratio of the
//	maximum absolute value to the minimum is > 1e3. The default is False.
//
// nanstr : str, optional
//
//	String representation of floating point not-a-number (default nan).
//
// infstr : str, optional
//
//	String representation of floating point infinity (default inf).
//
// sign : string, either '-', '+', or ' ', optional
//
//	Controls printing of the sign of floating-point types. If '+', always
//	print the sign of positive values. If ' ', always prints a space
//	(whitespace character) in the sign position of positive values.  If
//	'-', omit the sign character of positive values. (default '-')
//
// formatter : dict of callables, optional
//
//	If not None, the keys should indicate the type(s) that the respective
//	formatting function applies to.  Callables should return a string.
//	Types that are not specified (by their corresponding keys) are handled
//	by the default formatters.  Individual types for which a formatter
//	can be set are:
//
//	- 'bool'
//	- 'int'
//	- 'timedelta' : a `numpy.timedelta64`
//	- 'datetime' : a `numpy.datetime64`
//	- 'float'
//	- 'longfloat' : 128-bit floats
//	- 'complexfloat'
//	- 'longcomplexfloat' : composed of two 128-bit floats
//	- 'numpystr' : types `numpy.bytes_` and `numpy.str_`
//	- 'object' : `np.object_` arrays
//
//	Other keys that can be used to set a group of types at once are:
//
//	- 'all' : sets all types
//	- 'int_kind' : sets 'int'
//	- 'float_kind' : sets 'float' and 'longfloat'
//	- 'complex_kind' : sets 'complexfloat' and 'longcomplexfloat'
//	- 'str_kind' : sets 'numpystr'
//
// floatmode : str, optional
//
//	Controls the interpretation of the `precision` option for
//	floating-point types. Can take the following values
//	(default maxprec_equal):
//
//	* 'fixed': Always print exactly `precision` fractional digits,
//	        even if this would print more or fewer digits than
//	        necessary to specify the value uniquely.
//	* 'unique': Print the minimum number of fractional digits necessary
//	        to represent each value uniquely. Different elements may
//	        have a different number of digits. The value of the
//	        `precision` option is ignored.
//	* 'maxprec': Print at most `precision` fractional digits, but if
//	        an element can be uniquely represented with fewer digits
//	        only print it with that many.
//	* 'maxprec_equal': Print at most `precision` fractional digits,
//	        but if every element in the array can be uniquely
//	        represented with an equal number of fewer digits, use that
//	        many digits for all elements.
//
// legacy : string or `False`, optional
//
//	If set to the string `'1.13'` enables 1.13 legacy printing mode. This
//	approximates numpy 1.13 print output by including a space in the sign
//	position of floats and different behavior for 0d arrays. This also
//	enables 1.21 legacy printing mode (described below).
//
//	If set to the string `'1.21'` enables 1.21 legacy printing mode. This
//	approximates numpy 1.21 print output of complex structured dtypes
//	by not inserting spaces after commas that separate fields and after
//	colons.
//
//	If set to `False`, disables legacy mode.
//
//	Unrecognized strings will be ignored with a warning for forward
//	compatibility.
//
//	.. versionadded:: 1.14.0
//	.. versionchanged:: 1.22.0
//
// See Also
// --------
// get_printoptions, printoptions, set_string_function, array2string
//
// Notes
// -----
// `formatter` is always reset with a call to `set_printoptions`.
//
// Use `printoptions` as a context manager to set the values temporarily.
//
// Examples
// --------
// Floating point precision can be set:
//
// >>> np.set_printoptions(precision=4)
// >>> np.array([1.123456789])
// [1.1235]
//
// Long arrays can be summarised:
//
// >>> np.set_printoptions(threshold=5)
// >>> np.arange(10)
// array([0, 1, 2, ..., 7, 8, 9])
//
// Small results can be suppressed:
//
// >>> eps = np.finfo(float).eps
// >>> x = np.arange(4.)
// >>> x**2 - (x + eps)**2
// array([-4.9304e-32, -4.4409e-16,  0.0000e+00,  0.0000e+00])
// >>> np.set_printoptions(suppress=True)
// >>> x**2 - (x + eps)**2
// array([-0., -0.,  0.,  0.])
//
// A custom formatter can be used to display array elements as desired:
//
// >>> np.set_printoptions(formatter={'all':lambda x: 'int: '+str(-x)})
// >>> x = np.arange(3)
// >>> x
// array([int: 0, int: -1, int: -2])
// >>> np.set_printoptions()  # formatter gets reset
// >>> x
// array([0, 1, 2])
//
// To put back the default options, you can use:
//
// >>> np.set_printoptions(edgeitems=3, infstr='inf',
// ... linewidth=75, nanstr='nan', precision=8,
// ... suppress=False, threshold=1000, formatter=None)
//
// Also to temporarily override options, use `printoptions` as a context manager:
//
// >>> with np.printoptions(precision=2, suppress=True, threshold=5):
// ...     np.linspace(0, 10, 10)
// array([ 0.  ,  1.11,  2.22, ...,  7.78,  8.89, 10.  ])
//
//go:linkname SetPrintoptions py.set_printoptions
func SetPrintoptions(precision *py.Object, threshold *py.Object, edgeitems *py.Object, linewidth *py.Object, suppress *py.Object, nanstr *py.Object, infstr *py.Object, formatter *py.Object, sign *py.Object, floatmode *py.Object) *py.Object

// Return the current print options.
//
// Returns
// -------
// print_opts : dict
//
//	Dictionary of current print options with keys
//
//	  - precision : int
//	  - threshold : int
//	  - edgeitems : int
//	  - linewidth : int
//	  - suppress : bool
//	  - nanstr : str
//	  - infstr : str
//	  - formatter : dict of callables
//	  - sign : str
//
//	For a full description of these options, see `set_printoptions`.
//
// See Also
// --------
// set_printoptions, printoptions, set_string_function
//
//go:linkname GetPrintoptions py.get_printoptions
func GetPrintoptions() *py.Object

// Context manager for setting print options.
//
//	Set print options for the scope of the `with` block, and restore the old
//	options at the end. See `set_printoptions` for the full description of
//	available options.
//
//	Examples
//	--------
//
//	>>> from numpy.testing import assert_equal
//	>>> with np.printoptions(precision=2):
//	...     np.array([2.0]) / 3
//	array([0.67])
//
//	The `as`-clause of the `with`-statement gives the current print options:
//
//	>>> with np.printoptions(precision=2) as opts:
//	...      assert_equal(opts, np.get_printoptions())
//
//	See Also
//	--------
//	set_printoptions, get_printoptions
//
//go:linkname Printoptions py.printoptions
func Printoptions(__llgo_va_list ...interface{}) *py.Object

// Format a floating-point scalar as a decimal string in positional notation.
//
// Provides control over rounding, trimming and padding. Uses and assumes
// IEEE unbiased rounding. Uses the "Dragon4" algorithm.
//
// Parameters
// ----------
// x : python float or numpy floating scalar
//
//	Value to format.
//
// precision : non-negative integer or None, optional
//
//	Maximum number of digits to print. May be None if `unique` is
//	`True`, but must be an integer if unique is `False`.
//
// unique : boolean, optional
//
//	If `True`, use a digit-generation strategy which gives the shortest
//	representation which uniquely identifies the floating-point number from
//	other values of the same type, by judicious rounding. If `precision`
//	is given fewer digits than necessary can be printed, or if `min_digits`
//	is given more can be printed, in which cases the last digit is rounded
//	with unbiased rounding.
//	If `False`, digits are generated as if printing an infinite-precision
//	value and stopping after `precision` digits, rounding the remaining
//	value with unbiased rounding
//
// fractional : boolean, optional
//
//	If `True`, the cutoffs of `precision` and `min_digits` refer to the
//	total number of digits after the decimal point, including leading
//	zeros.
//	If `False`, `precision` and `min_digits` refer to the total number of
//	significant digits, before or after the decimal point, ignoring leading
//	zeros.
//
// trim : one of 'k', '.', '0', '-', optional
//
//	Controls post-processing trimming of trailing digits, as follows:
//
//	* 'k' : keep trailing zeros, keep decimal point (no trimming)
//	* '.' : trim all trailing zeros, leave decimal point
//	* '0' : trim all but the zero before the decimal point. Insert the
//	  zero if it is missing.
//	* '-' : trim trailing zeros and any trailing decimal point
//
// sign : boolean, optional
//
//	Whether to show the sign for positive values.
//
// pad_left : non-negative integer, optional
//
//	Pad the left side of the string with whitespace until at least that
//	many characters are to the left of the decimal point.
//
// pad_right : non-negative integer, optional
//
//	Pad the right side of the string with whitespace until at least that
//	many characters are to the right of the decimal point.
//
// min_digits : non-negative integer or None, optional
//
//	Minimum number of digits to print. Only has an effect if `unique=True`
//	in which case additional digits past those necessary to uniquely
//	identify the value may be printed, rounding the last additional digit.
//
//	-- versionadded:: 1.21.0
//
// Returns
// -------
// rep : string
//
//	The string representation of the floating point value
//
// See Also
// --------
// format_float_scientific
//
// Examples
// --------
// >>> np.format_float_positional(np.float32(np.pi))
// '3.1415927'
// >>> np.format_float_positional(np.float16(np.pi))
// '3.14'
// >>> np.format_float_positional(np.float16(0.3))
// '0.3'
// >>> np.format_float_positional(np.float16(0.3), unique=False, precision=10)
// '0.3000488281'
//
//go:linkname FormatFloatPositional py.format_float_positional
func FormatFloatPositional(x *py.Object, precision *py.Object, unique *py.Object, fractional *py.Object, trim *py.Object, sign *py.Object, padLeft *py.Object, padRight *py.Object, minDigits *py.Object) *py.Object

// Format a floating-point scalar as a decimal string in scientific notation.
//
// Provides control over rounding, trimming and padding. Uses and assumes
// IEEE unbiased rounding. Uses the "Dragon4" algorithm.
//
// Parameters
// ----------
// x : python float or numpy floating scalar
//
//	Value to format.
//
// precision : non-negative integer or None, optional
//
//	Maximum number of digits to print. May be None if `unique` is
//	`True`, but must be an integer if unique is `False`.
//
// unique : boolean, optional
//
//	If `True`, use a digit-generation strategy which gives the shortest
//	representation which uniquely identifies the floating-point number from
//	other values of the same type, by judicious rounding. If `precision`
//	is given fewer digits than necessary can be printed. If `min_digits`
//	is given more can be printed, in which cases the last digit is rounded
//	with unbiased rounding.
//	If `False`, digits are generated as if printing an infinite-precision
//	value and stopping after `precision` digits, rounding the remaining
//	value with unbiased rounding
//
// trim : one of 'k', '.', '0', '-', optional
//
//	Controls post-processing trimming of trailing digits, as follows:
//
//	* 'k' : keep trailing zeros, keep decimal point (no trimming)
//	* '.' : trim all trailing zeros, leave decimal point
//	* '0' : trim all but the zero before the decimal point. Insert the
//	  zero if it is missing.
//	* '-' : trim trailing zeros and any trailing decimal point
//
// sign : boolean, optional
//
//	Whether to show the sign for positive values.
//
// pad_left : non-negative integer, optional
//
//	Pad the left side of the string with whitespace until at least that
//	many characters are to the left of the decimal point.
//
// exp_digits : non-negative integer, optional
//
//	Pad the exponent with zeros until it contains at least this many digits.
//	If omitted, the exponent will be at least 2 digits.
//
// min_digits : non-negative integer or None, optional
//
//	Minimum number of digits to print. This only has an effect for
//	`unique=True`. In that case more digits than necessary to uniquely
//	identify the value may be printed and rounded unbiased.
//
//	-- versionadded:: 1.21.0
//
// Returns
// -------
// rep : string
//
//	The string representation of the floating point value
//
// See Also
// --------
// format_float_positional
//
// Examples
// --------
// >>> np.format_float_scientific(np.float32(np.pi))
// '3.1415927e+00'
// >>> s = np.float32(1.23e24)
// >>> np.format_float_scientific(s, unique=False, precision=15)
// '1.230000071797338e+24'
// >>> np.format_float_scientific(s, exp_digits=4)
// '1.23e+0024'
//
//go:linkname FormatFloatScientific py.format_float_scientific
func FormatFloatScientific(x *py.Object, precision *py.Object, unique *py.Object, trim *py.Object, sign *py.Object, padLeft *py.Object, expDigits *py.Object, minDigits *py.Object) *py.Object

// Return an ndarray of the provided type that satisfies requirements.
//
// This function is useful to be sure that an array with the correct flags
// is returned for passing to compiled code (perhaps through ctypes).
//
// Parameters
// ----------
// a : array_like
//
//	The object to be converted to a type-and-requirement-satisfying array.
//
// dtype : data-type
//
//	The required data-type. If None preserve the current dtype. If your
//	application requires the data to be in native byteorder, include
//	a byteorder specification as a part of the dtype specification.
//
// requirements : str or sequence of str
//
//	The requirements list can be any of the following
//
//	* 'F_CONTIGUOUS' ('F') - ensure a Fortran-contiguous array
//	* 'C_CONTIGUOUS' ('C') - ensure a C-contiguous array
//	* 'ALIGNED' ('A')      - ensure a data-type aligned array
//	* 'WRITEABLE' ('W')    - ensure a writable array
//	* 'OWNDATA' ('O')      - ensure an array that owns its own data
//	* 'ENSUREARRAY', ('E') - ensure a base array, instead of a subclass
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	Array with specified requirements and type if given.
//
// See Also
// --------
// asarray : Convert input to an ndarray.
// asanyarray : Convert to an ndarray, but pass through ndarray subclasses.
// ascontiguousarray : Convert input to a contiguous array.
// asfortranarray : Convert input to an ndarray with column-major
//
//	memory order.
//
// ndarray.flags : Information about the memory layout of the array.
//
// Notes
// -----
// The returned array will be guaranteed to have the listed requirements
// by making a copy if needed.
//
// Examples
// --------
// >>> x = np.arange(6).reshape(2,3)
// >>> x.flags
//
//	C_CONTIGUOUS : True
//	F_CONTIGUOUS : False
//	OWNDATA : False
//	WRITEABLE : True
//	ALIGNED : True
//	WRITEBACKIFCOPY : False
//
// >>> y = np.require(x, dtype=np.float32, requirements=['A', 'O', 'W', 'F'])
// >>> y.flags
//
//	C_CONTIGUOUS : False
//	F_CONTIGUOUS : True
//	OWNDATA : True
//	WRITEABLE : True
//	ALIGNED : True
//	WRITEBACKIFCOPY : False
//
//go:linkname Require py.require
func Require(a *py.Object, dtype *py.Object, requirements *py.Object) *py.Object

// Set how floating-point errors are handled.
//
// Note that operations on integer scalar types (such as `int16`) are
// handled like floating point, and are affected by these settings.
//
// Parameters
// ----------
// all : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
//
//	Set treatment for all types of floating-point errors at once:
//
//	- ignore: Take no action when the exception occurs.
//	- warn: Print a `RuntimeWarning` (via the Python `warnings` module).
//	- raise: Raise a `FloatingPointError`.
//	- call: Call a function specified using the `seterrcall` function.
//	- print: Print a warning directly to ``stdout``.
//	- log: Record error in a Log object specified by `seterrcall`.
//
//	The default is not to change the current behavior.
//
// divide : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
//
//	Treatment for division by zero.
//
// over : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
//
//	Treatment for floating-point overflow.
//
// under : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
//
//	Treatment for floating-point underflow.
//
// invalid : {'ignore', 'warn', 'raise', 'call', 'print', 'log'}, optional
//
//	Treatment for invalid floating-point operation.
//
// Returns
// -------
// old_settings : dict
//
//	Dictionary containing the old settings.
//
// See also
// --------
// seterrcall : Set a callback function for the 'call' mode.
// geterr, geterrcall, errstate
//
// Notes
// -----
// The floating-point exceptions are defined in the IEEE 754 standard [1]_:
//
//   - Division by zero: infinite result obtained from finite numbers.
//   - Overflow: result too large to be expressed.
//   - Underflow: result so close to zero that some precision
//     was lost.
//   - Invalid operation: result is not an expressible number, typically
//     indicates that a NaN was produced.
//
// .. [1] https://en.wikipedia.org/wiki/IEEE_754
//
// Examples
// --------
// >>> old_settings = np.seterr(all='ignore')  #seterr to known value
// >>> np.seterr(over='raise')
// {'divide': 'ignore', 'over': 'ignore', 'under': 'ignore', 'invalid': 'ignore'}
// >>> np.seterr(**old_settings)  # reset to default
// {'divide': 'ignore', 'over': 'raise', 'under': 'ignore', 'invalid': 'ignore'}
//
// >>> np.int16(32000) * np.int16(3)
// 30464
// >>> old_settings = np.seterr(all='warn', over='raise')
// >>> np.int16(32000) * np.int16(3)
// Traceback (most recent call last):
//
//	File "<stdin>", line 1, in <module>
//
// FloatingPointError: overflow encountered in scalar multiply
//
// >>> old_settings = np.seterr(all='print')
// >>> np.geterr()
// {'divide': 'print', 'over': 'print', 'under': 'print', 'invalid': 'print'}
// >>> np.int16(32000) * np.int16(3)
// 30464
//
//go:linkname Seterr py.seterr
func Seterr(all *py.Object, divide *py.Object, over *py.Object, under *py.Object, invalid *py.Object) *py.Object

// Get the current way of handling floating-point errors.
//
// Returns
// -------
// res : dict
//
//	A dictionary with keys "divide", "over", "under", and "invalid",
//	whose values are from the strings "ignore", "print", "log", "warn",
//	"raise", and "call". The keys represent possible floating-point
//	exceptions, and the values define how these exceptions are handled.
//
// See Also
// --------
// geterrcall, seterr, seterrcall
//
// Notes
// -----
// For complete documentation of the types of floating-point exceptions and
// treatment options, see `seterr`.
//
// Examples
// --------
// >>> np.geterr()
// {'divide': 'warn', 'over': 'warn', 'under': 'ignore', 'invalid': 'warn'}
// >>> np.arange(3.) / np.arange(3.)
// array([nan,  1.,  1.])
//
// >>> oldsettings = np.seterr(all='warn', over='raise')
// >>> np.geterr()
// {'divide': 'warn', 'over': 'raise', 'under': 'warn', 'invalid': 'warn'}
// >>> np.arange(3.) / np.arange(3.)
// array([nan,  1.,  1.])
//
//go:linkname Geterr py.geterr
func Geterr() *py.Object

// Set the size of the buffer used in ufuncs.
//
// Parameters
// ----------
// size : int
//
//	Size of buffer.
//
//go:linkname Setbufsize py.setbufsize
func Setbufsize(size *py.Object) *py.Object

// Return the size of the buffer used in ufuncs.
//
// Returns
// -------
// getbufsize : int
//
//	Size of ufunc buffer in bytes.
//
//go:linkname Getbufsize py.getbufsize
func Getbufsize() *py.Object

// Set the floating-point error callback function or log object.
//
// There are two ways to capture floating-point error messages.  The first
// is to set the error-handler to 'call', using `seterr`.  Then, set
// the function to call using this function.
//
// The second is to set the error-handler to 'log', using `seterr`.
// Floating-point errors then trigger a call to the 'write' method of
// the provided object.
//
// Parameters
// ----------
// func : callable f(err, flag) or object with write method
//
//	Function to call upon floating-point errors ('call'-mode) or
//	object whose 'write' method is used to log such message ('log'-mode).
//
//	The call function takes two arguments. The first is a string describing
//	the type of error (such as "divide by zero", "overflow", "underflow",
//	or "invalid value"), and the second is the status flag.  The flag is a
//	byte, whose four least-significant bits indicate the type of error, one
//	of "divide", "over", "under", "invalid"::
//
//	  [0 0 0 0 divide over under invalid]
//
//	In other words, ``flags = divide + 2*over + 4*under + 8*invalid``.
//
//	If an object is provided, its write method should take one argument,
//	a string.
//
// Returns
// -------
// h : callable, log instance or None
//
//	The old error handler.
//
// See Also
// --------
// seterr, geterr, geterrcall
//
// Examples
// --------
// Callback upon error:
//
// >>> def err_handler(type, flag):
// ...     print("Floating point error (%s), with flag %s" % (type, flag))
// ...
//
// >>> saved_handler = np.seterrcall(err_handler)
// >>> save_err = np.seterr(all='call')
//
// >>> np.array([1, 2, 3]) / 0.0
// Floating point error (divide by zero), with flag 1
// array([inf, inf, inf])
//
// >>> np.seterrcall(saved_handler)
// <function err_handler at 0x...>
// >>> np.seterr(**save_err)
// {'divide': 'call', 'over': 'call', 'under': 'call', 'invalid': 'call'}
//
// Log error message:
//
// >>> class Log:
// ...     def write(self, msg):
// ...         print("LOG: %s" % msg)
// ...
//
// >>> log = Log()
// >>> saved_handler = np.seterrcall(log)
// >>> save_err = np.seterr(all='log')
//
// >>> np.array([1, 2, 3]) / 0.0
// LOG: Warning: divide by zero encountered in divide
// array([inf, inf, inf])
//
// >>> np.seterrcall(saved_handler)
// <numpy.core.numeric.Log object at 0x...>
// >>> np.seterr(**save_err)
// {'divide': 'log', 'over': 'log', 'under': 'log', 'invalid': 'log'}
//
//go:linkname Seterrcall py.seterrcall
func Seterrcall(func_ *py.Object) *py.Object

// Return the current callback function used on floating-point errors.
//
// When the error handling for a floating-point error (one of "divide",
// "over", "under", or "invalid") is set to 'call' or 'log', the function
// that is called or the log instance that is written to is returned by
// `geterrcall`. This function or log instance has been set with
// `seterrcall`.
//
// Returns
// -------
// errobj : callable, log instance or None
//
//	The current error handler. If no handler was set through `seterrcall`,
//	``None`` is returned.
//
// See Also
// --------
// seterrcall, seterr, geterr
//
// Notes
// -----
// For complete documentation of the types of floating-point exceptions and
// treatment options, see `seterr`.
//
// Examples
// --------
// >>> np.geterrcall()  # we did not yet set a handler, returns None
//
// >>> oldsettings = np.seterr(all='call')
// >>> def err_handler(type, flag):
// ...     print("Floating point error (%s), with flag %s" % (type, flag))
// >>> oldhandler = np.seterrcall(err_handler)
// >>> np.array([1, 2, 3]) / 0.0
// Floating point error (divide by zero), with flag 1
// array([inf, inf, inf])
//
// >>> cur_handler = np.geterrcall()
// >>> cur_handler is err_handler
// True
//
//go:linkname Geterrcall py.geterrcall
func Geterrcall() *py.Object

// Return a description for the given data type code.
//
// Parameters
// ----------
// char : str
//
//	Data type code.
//
// Returns
// -------
// out : str
//
//	Description of the input data type code.
//
// See Also
// --------
// dtype, typecodes
//
// Examples
// --------
// >>> typechars = ['S1', '?', 'B', 'D', 'G', 'F', 'I', 'H', 'L', 'O', 'Q',
// ...              'S', 'U', 'V', 'b', 'd', 'g', 'f', 'i', 'h', 'l', 'q']
// >>> for typechar in typechars:
// ...     print(typechar, ' : ', np.typename(typechar))
// ...
// S1  :  character
// ?  :  bool
// B  :  unsigned char
// D  :  complex double precision
// G  :  complex long double precision
// F  :  complex single precision
// I  :  unsigned integer
// H  :  unsigned short
// L  :  unsigned long integer
// O  :  object
// Q  :  unsigned long long integer
// S  :  string
// U  :  unicode
// V  :  void
// b  :  signed char
// d  :  double precision
// g  :  long precision
// f  :  single precision
// i  :  integer
// h  :  short
// l  :  long integer
// q  :  long long integer
//
//go:linkname Typename py.typename
func Typename(char *py.Object) *py.Object

// Return the character for the minimum-size type to which given types can
// be safely cast.
//
// The returned type character must represent the smallest size dtype such
// that an array of the returned type can handle the data from an array of
// all types in `typechars` (or if `typechars` is an array, then its
// dtype.char).
//
// Parameters
// ----------
// typechars : list of str or array_like
//
//	If a list of strings, each string should represent a dtype.
//	If array_like, the character representation of the array dtype is used.
//
// typeset : str or list of str, optional
//
//	The set of characters that the returned character is chosen from.
//	The default set is 'GDFgdf'.
//
// default : str, optional
//
//	The default character, this is returned if none of the characters in
//	`typechars` matches a character in `typeset`.
//
// Returns
// -------
// typechar : str
//
//	The character representing the minimum-size type that was found.
//
// See Also
// --------
// dtype, sctype2char, maximum_sctype
//
// Examples
// --------
// >>> np.mintypecode(['d', 'f', 'S'])
// 'd'
// >>> x = np.array([1.1, 2-3.j])
// >>> np.mintypecode(x)
// 'D'
//
// >>> np.mintypecode('abceh', default='G')
// 'G'
//
//go:linkname Mintypecode py.mintypecode
func Mintypecode(typechars *py.Object, typeset *py.Object, default_ *py.Object) *py.Object

// Return the indices to access the main diagonal of an array.
//
// This returns a tuple of indices that can be used to access the main
// diagonal of an array `a` with “a.ndim >= 2“ dimensions and shape
// (n, n, ..., n). For “a.ndim = 2“ this is the usual diagonal, for
// “a.ndim > 2“ this is the set of indices to access “a[i, i, ..., i]“
// for “i = [0..n-1]“.
//
// Parameters
// ----------
// n : int
//
//	The size, along each dimension, of the arrays for which the returned
//	indices can be used.
//
// ndim : int, optional
//
//	The number of dimensions.
//
// See Also
// --------
// diag_indices_from
//
// Notes
// -----
// .. versionadded:: 1.4.0
//
// Examples
// --------
// Create a set of indices to access the diagonal of a (4, 4) array:
//
// >>> di = np.diag_indices(4)
// >>> di
// (array([0, 1, 2, 3]), array([0, 1, 2, 3]))
// >>> a = np.arange(16).reshape(4, 4)
// >>> a
// array([[ 0,  1,  2,  3],
//
//	[ 4,  5,  6,  7],
//	[ 8,  9, 10, 11],
//	[12, 13, 14, 15]])
//
// >>> a[di] = 100
// >>> a
// array([[100,   1,   2,   3],
//
//	[  4, 100,   6,   7],
//	[  8,   9, 100,  11],
//	[ 12,  13,  14, 100]])
//
// Now, we create indices to manipulate a 3-D array:
//
// >>> d3 = np.diag_indices(2, 3)
// >>> d3
// (array([0, 1]), array([0, 1]), array([0, 1]))
//
// And use it to set the diagonal of an array of zeros to 1:
//
// >>> a = np.zeros((2, 2, 2), dtype=int)
// >>> a[d3] = 1
// >>> a
// array([[[1, 0],
//
//	 [0, 0]],
//	[[0, 0],
//	 [0, 1]]])
//
//go:linkname DiagIndices py.diag_indices
func DiagIndices(n *py.Object, ndim *py.Object) *py.Object

// Check whether or not an object can be iterated over.
//
// Parameters
// ----------
// y : object
//
//	Input object.
//
// Returns
// -------
// b : bool
//
//	Return ``True`` if the object has an iterator method or is a
//	sequence and ``False`` otherwise.
//
// Examples
// --------
// >>> np.iterable([1, 2, 3])
// True
// >>> np.iterable(2)
// False
//
// Notes
// -----
// In most cases, the results of “np.iterable(obj)“ are consistent with
// “isinstance(obj, collections.abc.Iterable)“. One notable exception is
// the treatment of 0-dimensional arrays::
//
//	>>> from collections.abc import Iterable
//	>>> a = np.array(1.0)  # 0-dimensional numpy array
//	>>> isinstance(a, Iterable)
//	True
//	>>> np.iterable(a)
//	False
//
//go:linkname Iterable py.iterable
func Iterable(y *py.Object) *py.Object

// Display a message on a device.
//
// Parameters
// ----------
// mesg : str
//
//	Message to display.
//
// device : object
//
//	Device to write message. If None, defaults to ``sys.stdout`` which is
//	very similar to ``print``. `device` needs to have ``write()`` and
//	``flush()`` methods.
//
// linefeed : bool, optional
//
//	Option whether to print a line feed or not. Defaults to True.
//
// Raises
// ------
// AttributeError
//
//	If `device` does not have a ``write()`` or ``flush()`` method.
//
// Examples
// --------
// Besides “sys.stdout“, a file-like object can also be used as it has
// both required methods:
//
// >>> from io import StringIO
// >>> buf = StringIO()
// >>> np.disp(u'"Display" in a file', device=buf)
// >>> buf.getvalue()
// '"Display" in a file\n'
//
//go:linkname Disp py.disp
func Disp(mesg *py.Object, device *py.Object, linefeed *py.Object) *py.Object

// Convert the input to an array, checking for NaNs or Infs.
//
//	Parameters
//	----------
//	a : array_like
//	    Input data, in any form that can be converted to an array.  This
//	    includes lists, lists of tuples, tuples, tuples of tuples, tuples
//	    of lists and ndarrays.  Success requires no NaNs or Infs.
//	dtype : data-type, optional
//	    By default, the data-type is inferred from the input data.
//	order : {'C', 'F', 'A', 'K'}, optional
//	    Memory layout.  'A' and 'K' depend on the order of input array a.
//	    'C' row-major (C-style),
//	    'F' column-major (Fortran-style) memory representation.
//	    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
//	    'K' (keep) preserve input order
//	    Defaults to 'C'.
//
//	Returns
//	-------
//	out : ndarray
//	    Array interpretation of `a`.  No copy is performed if the input
//	    is already an ndarray.  If `a` is a subclass of ndarray, a base
//	    class ndarray is returned.
//
//	Raises
//	------
//	ValueError
//	    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
//
//	See Also
//	--------
//	asarray : Create and array.
//	asanyarray : Similar function which passes through subclasses.
//	ascontiguousarray : Convert input to a contiguous array.
//	asfarray : Convert input to a floating point ndarray.
//	asfortranarray : Convert input to an ndarray with column-major
//	                 memory order.
//	fromiter : Create an array from an iterator.
//	fromfunction : Construct an array by executing a function on grid
//	               positions.
//
//	Examples
//	--------
//	Convert a list into an array.  If all elements are finite
//	``asarray_chkfinite`` is identical to ``asarray``.
//
//	>>> a = [1, 2]
//	>>> np.asarray_chkfinite(a, dtype=float)
//	array([1., 2.])
//
//	Raises ValueError if array_like contains Nans or Infs.
//
//	>>> a = [1, 2, np.inf]
//	>>> try:
//	...     np.asarray_chkfinite(a)
//	... except ValueError:
//	...     print('ValueError')
//	...
//	ValueError
//
//go:linkname AsarrayChkfinite py.asarray_chkfinite
func AsarrayChkfinite(a *py.Object, dtype *py.Object, order *py.Object) *py.Object

// Return the Hamming window.
//
// The Hamming window is a taper formed by using a weighted cosine.
//
// Parameters
// ----------
// M : int
//
//	Number of points in the output window. If zero or less, an
//	empty array is returned.
//
// Returns
// -------
// out : ndarray
//
//	The window, with the maximum value normalized to one (the value
//	one appears only if the number of samples is odd).
//
// See Also
// --------
// bartlett, blackman, hanning, kaiser
//
// Notes
// -----
// The Hamming window is defined as
//
// .. math::  w(n) = 0.54 - 0.46\cos\left(\frac{2\pi{n}}{M-1}\right)
//
//	\qquad 0 \leq n \leq M-1
//
// The Hamming was named for R. W. Hamming, an associate of J. W. Tukey
// and is described in Blackman and Tukey. It was recommended for
// smoothing the truncated autocovariance function in the time domain.
// Most references to the Hamming window come from the signal processing
// literature, where it is used as one of many windowing functions for
// smoothing values.  It is also known as an apodization (which means
// "removing the foot", i.e. smoothing discontinuities at the beginning
// and end of the sampled signal) or tapering function.
//
// References
// ----------
// .. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
//
//	spectra, Dover Publications, New York.
//
// .. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
//
//	University of Alberta Press, 1975, pp. 109-110.
//
// .. [3] Wikipedia, "Window function",
//
//	https://en.wikipedia.org/wiki/Window_function
//
// .. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
//
//	"Numerical Recipes", Cambridge University Press, 1986, page 425.
//
// Examples
// --------
// >>> np.hamming(12)
// array([ 0.08      ,  0.15302337,  0.34890909,  0.60546483,  0.84123594, # may vary
//
//	0.98136677,  0.98136677,  0.84123594,  0.60546483,  0.34890909,
//	0.15302337,  0.08      ])
//
// Plot the window and the frequency response:
//
// >>> import matplotlib.pyplot as plt
// >>> from numpy.fft import fft, fftshift
// >>> window = np.hamming(51)
// >>> plt.plot(window)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Hamming window")
// Text(0.5, 1.0, 'Hamming window')
// >>> plt.ylabel("Amplitude")
// Text(0, 0.5, 'Amplitude')
// >>> plt.xlabel("Sample")
// Text(0.5, 0, 'Sample')
// >>> plt.show()
//
// >>> plt.figure()
// <Figure size 640x480 with 0 Axes>
// >>> A = fft(window, 2048) / 25.5
// >>> mag = np.abs(fftshift(A))
// >>> freq = np.linspace(-0.5, 0.5, len(A))
// >>> response = 20 * np.log10(mag)
// >>> response = np.clip(response, -100, 100)
// >>> plt.plot(freq, response)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Frequency response of Hamming window")
// Text(0.5, 1.0, 'Frequency response of Hamming window')
// >>> plt.ylabel("Magnitude [dB]")
// Text(0, 0.5, 'Magnitude [dB]')
// >>> plt.xlabel("Normalized frequency [cycles per sample]")
// Text(0.5, 0, 'Normalized frequency [cycles per sample]')
// >>> plt.axis('tight')
// ...
// >>> plt.show()
//
//go:linkname Hamming py.hamming
func Hamming(M *py.Object) *py.Object

// Return the Hanning window.
//
// The Hanning window is a taper formed by using a weighted cosine.
//
// Parameters
// ----------
// M : int
//
//	Number of points in the output window. If zero or less, an
//	empty array is returned.
//
// Returns
// -------
// out : ndarray, shape(M,)
//
//	The window, with the maximum value normalized to one (the value
//	one appears only if `M` is odd).
//
// See Also
// --------
// bartlett, blackman, hamming, kaiser
//
// Notes
// -----
// The Hanning window is defined as
//
// .. math::  w(n) = 0.5 - 0.5\cos\left(\frac{2\pi{n}}{M-1}\right)
//
//	\qquad 0 \leq n \leq M-1
//
// The Hanning was named for Julius von Hann, an Austrian meteorologist.
// It is also known as the Cosine Bell. Some authors prefer that it be
// called a Hann window, to help avoid confusion with the very similar
// Hamming window.
//
// Most references to the Hanning window come from the signal processing
// literature, where it is used as one of many windowing functions for
// smoothing values.  It is also known as an apodization (which means
// "removing the foot", i.e. smoothing discontinuities at the beginning
// and end of the sampled signal) or tapering function.
//
// References
// ----------
// .. [1] Blackman, R.B. and Tukey, J.W., (1958) The measurement of power
//
//	spectra, Dover Publications, New York.
//
// .. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
//
//	The University of Alberta Press, 1975, pp. 106-108.
//
// .. [3] Wikipedia, "Window function",
//
//	https://en.wikipedia.org/wiki/Window_function
//
// .. [4] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
//
//	"Numerical Recipes", Cambridge University Press, 1986, page 425.
//
// Examples
// --------
// >>> np.hanning(12)
// array([0.        , 0.07937323, 0.29229249, 0.57115742, 0.82743037,
//
//	0.97974649, 0.97974649, 0.82743037, 0.57115742, 0.29229249,
//	0.07937323, 0.        ])
//
// Plot the window and its frequency response:
//
// >>> import matplotlib.pyplot as plt
// >>> from numpy.fft import fft, fftshift
// >>> window = np.hanning(51)
// >>> plt.plot(window)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Hann window")
// Text(0.5, 1.0, 'Hann window')
// >>> plt.ylabel("Amplitude")
// Text(0, 0.5, 'Amplitude')
// >>> plt.xlabel("Sample")
// Text(0.5, 0, 'Sample')
// >>> plt.show()
//
// >>> plt.figure()
// <Figure size 640x480 with 0 Axes>
// >>> A = fft(window, 2048) / 25.5
// >>> mag = np.abs(fftshift(A))
// >>> freq = np.linspace(-0.5, 0.5, len(A))
// >>> with np.errstate(divide='ignore', invalid='ignore'):
// ...     response = 20 * np.log10(mag)
// ...
// >>> response = np.clip(response, -100, 100)
// >>> plt.plot(freq, response)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Frequency response of the Hann window")
// Text(0.5, 1.0, 'Frequency response of the Hann window')
// >>> plt.ylabel("Magnitude [dB]")
// Text(0, 0.5, 'Magnitude [dB]')
// >>> plt.xlabel("Normalized frequency [cycles per sample]")
// Text(0.5, 0, 'Normalized frequency [cycles per sample]')
// >>> plt.axis('tight')
// ...
// >>> plt.show()
//
//go:linkname Hanning py.hanning
func Hanning(M *py.Object) *py.Object

// Return the Bartlett window.
//
// The Bartlett window is very similar to a triangular window, except
// that the end points are at zero.  It is often used in signal
// processing for tapering a signal, without generating too much
// ripple in the frequency domain.
//
// Parameters
// ----------
// M : int
//
//	Number of points in the output window. If zero or less, an
//	empty array is returned.
//
// Returns
// -------
// out : array
//
//	The triangular window, with the maximum value normalized to one
//	(the value one appears only if the number of samples is odd), with
//	the first and last samples equal to zero.
//
// See Also
// --------
// blackman, hamming, hanning, kaiser
//
// Notes
// -----
// The Bartlett window is defined as
//
// .. math:: w(n) = \frac{2}{M-1} \left(
//
//	\frac{M-1}{2} - \left|n - \frac{M-1}{2}\right|
//	\right)
//
// Most references to the Bartlett window come from the signal processing
// literature, where it is used as one of many windowing functions for
// smoothing values.  Note that convolution with this window produces linear
// interpolation.  It is also known as an apodization (which means "removing
// the foot", i.e. smoothing discontinuities at the beginning and end of the
// sampled signal) or tapering function. The Fourier transform of the
// Bartlett window is the product of two sinc functions. Note the excellent
// discussion in Kanasewich [2]_.
//
// References
// ----------
// .. [1] M.S. Bartlett, "Periodogram Analysis and Continuous Spectra",
//
//	Biometrika 37, 1-16, 1950.
//
// .. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics",
//
//	The University of Alberta Press, 1975, pp. 109-110.
//
// .. [3] A.V. Oppenheim and R.W. Schafer, "Discrete-Time Signal
//
//	Processing", Prentice-Hall, 1999, pp. 468-471.
//
// .. [4] Wikipedia, "Window function",
//
//	https://en.wikipedia.org/wiki/Window_function
//
// .. [5] W.H. Press,  B.P. Flannery, S.A. Teukolsky, and W.T. Vetterling,
//
//	"Numerical Recipes", Cambridge University Press, 1986, page 429.
//
// Examples
// --------
// >>> import matplotlib.pyplot as plt
// >>> np.bartlett(12)
// array([ 0.        ,  0.18181818,  0.36363636,  0.54545455,  0.72727273, # may vary
//
//	0.90909091,  0.90909091,  0.72727273,  0.54545455,  0.36363636,
//	0.18181818,  0.        ])
//
// Plot the window and its frequency response (requires SciPy and matplotlib):
//
// >>> from numpy.fft import fft, fftshift
// >>> window = np.bartlett(51)
// >>> plt.plot(window)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Bartlett window")
// Text(0.5, 1.0, 'Bartlett window')
// >>> plt.ylabel("Amplitude")
// Text(0, 0.5, 'Amplitude')
// >>> plt.xlabel("Sample")
// Text(0.5, 0, 'Sample')
// >>> plt.show()
//
// >>> plt.figure()
// <Figure size 640x480 with 0 Axes>
// >>> A = fft(window, 2048) / 25.5
// >>> mag = np.abs(fftshift(A))
// >>> freq = np.linspace(-0.5, 0.5, len(A))
// >>> with np.errstate(divide='ignore', invalid='ignore'):
// ...     response = 20 * np.log10(mag)
// ...
// >>> response = np.clip(response, -100, 100)
// >>> plt.plot(freq, response)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Frequency response of Bartlett window")
// Text(0.5, 1.0, 'Frequency response of Bartlett window')
// >>> plt.ylabel("Magnitude [dB]")
// Text(0, 0.5, 'Magnitude [dB]')
// >>> plt.xlabel("Normalized frequency [cycles per sample]")
// Text(0.5, 0, 'Normalized frequency [cycles per sample]')
// >>> _ = plt.axis('tight')
// >>> plt.show()
//
//go:linkname Bartlett py.bartlett
func Bartlett(M *py.Object) *py.Object

// Return the Blackman window.
//
// The Blackman window is a taper formed by using the first three
// terms of a summation of cosines. It was designed to have close to the
// minimal leakage possible.  It is close to optimal, only slightly worse
// than a Kaiser window.
//
// Parameters
// ----------
// M : int
//
//	Number of points in the output window. If zero or less, an empty
//	array is returned.
//
// Returns
// -------
// out : ndarray
//
//	The window, with the maximum value normalized to one (the value one
//	appears only if the number of samples is odd).
//
// See Also
// --------
// bartlett, hamming, hanning, kaiser
//
// Notes
// -----
// The Blackman window is defined as
//
// .. math::  w(n) = 0.42 - 0.5 \cos(2\pi n/M) + 0.08 \cos(4\pi n/M)
//
// Most references to the Blackman window come from the signal processing
// literature, where it is used as one of many windowing functions for
// smoothing values.  It is also known as an apodization (which means
// "removing the foot", i.e. smoothing discontinuities at the beginning
// and end of the sampled signal) or tapering function. It is known as a
// "near optimal" tapering function, almost as good (by some measures)
// as the kaiser window.
//
// References
// ----------
// Blackman, R.B. and Tukey, J.W., (1958) The measurement of power spectra,
// Dover Publications, New York.
//
// Oppenheim, A.V., and R.W. Schafer. Discrete-Time Signal Processing.
// Upper Saddle River, NJ: Prentice-Hall, 1999, pp. 468-471.
//
// Examples
// --------
// >>> import matplotlib.pyplot as plt
// >>> np.blackman(12)
// array([-1.38777878e-17,   3.26064346e-02,   1.59903635e-01, # may vary
//
//	4.14397981e-01,   7.36045180e-01,   9.67046769e-01,
//	9.67046769e-01,   7.36045180e-01,   4.14397981e-01,
//	1.59903635e-01,   3.26064346e-02,  -1.38777878e-17])
//
// Plot the window and the frequency response:
//
// >>> from numpy.fft import fft, fftshift
// >>> window = np.blackman(51)
// >>> plt.plot(window)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Blackman window")
// Text(0.5, 1.0, 'Blackman window')
// >>> plt.ylabel("Amplitude")
// Text(0, 0.5, 'Amplitude')
// >>> plt.xlabel("Sample")
// Text(0.5, 0, 'Sample')
// >>> plt.show()
//
// >>> plt.figure()
// <Figure size 640x480 with 0 Axes>
// >>> A = fft(window, 2048) / 25.5
// >>> mag = np.abs(fftshift(A))
// >>> freq = np.linspace(-0.5, 0.5, len(A))
// >>> with np.errstate(divide='ignore', invalid='ignore'):
// ...     response = 20 * np.log10(mag)
// ...
// >>> response = np.clip(response, -100, 100)
// >>> plt.plot(freq, response)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Frequency response of Blackman window")
// Text(0.5, 1.0, 'Frequency response of Blackman window')
// >>> plt.ylabel("Magnitude [dB]")
// Text(0, 0.5, 'Magnitude [dB]')
// >>> plt.xlabel("Normalized frequency [cycles per sample]")
// Text(0.5, 0, 'Normalized frequency [cycles per sample]')
// >>> _ = plt.axis('tight')
// >>> plt.show()
//
//go:linkname Blackman py.blackman
func Blackman(M *py.Object) *py.Object

// Return the Kaiser window.
//
// The Kaiser window is a taper formed by using a Bessel function.
//
// Parameters
// ----------
// M : int
//
//	Number of points in the output window. If zero or less, an
//	empty array is returned.
//
// beta : float
//
//	Shape parameter for window.
//
// Returns
// -------
// out : array
//
//	The window, with the maximum value normalized to one (the value
//	one appears only if the number of samples is odd).
//
// See Also
// --------
// bartlett, blackman, hamming, hanning
//
// Notes
// -----
// The Kaiser window is defined as
//
// .. math::  w(n) = I_0\left( \beta \sqrt{1-\frac{4n^2}{(M-1)^2}}
//
//	\right)/I_0(\beta)
//
// with
//
// .. math:: \quad -\frac{M-1}{2} \leq n \leq \frac{M-1}{2},
//
// where :math:`I_0` is the modified zeroth-order Bessel function.
//
// The Kaiser was named for Jim Kaiser, who discovered a simple
// approximation to the DPSS window based on Bessel functions.  The Kaiser
// window is a very good approximation to the Digital Prolate Spheroidal
// Sequence, or Slepian window, which is the transform which maximizes the
// energy in the main lobe of the window relative to total energy.
//
// The Kaiser can approximate many other windows by varying the beta
// parameter.
//
// ====  =======================
// beta  Window shape
// ====  =======================
// 0     Rectangular
// 5     Similar to a Hamming
// 6     Similar to a Hanning
// 8.6   Similar to a Blackman
// ====  =======================
//
// A beta value of 14 is probably a good starting point. Note that as beta
// gets large, the window narrows, and so the number of samples needs to be
// large enough to sample the increasingly narrow spike, otherwise NaNs will
// get returned.
//
// Most references to the Kaiser window come from the signal processing
// literature, where it is used as one of many windowing functions for
// smoothing values.  It is also known as an apodization (which means
// "removing the foot", i.e. smoothing discontinuities at the beginning
// and end of the sampled signal) or tapering function.
//
// References
// ----------
// .. [1] J. F. Kaiser, "Digital Filters" - Ch 7 in "Systems analysis by
//
//	digital computer", Editors: F.F. Kuo and J.F. Kaiser, p 218-285.
//	John Wiley and Sons, New York, (1966).
//
// .. [2] E.R. Kanasewich, "Time Sequence Analysis in Geophysics", The
//
//	University of Alberta Press, 1975, pp. 177-178.
//
// .. [3] Wikipedia, "Window function",
//
//	https://en.wikipedia.org/wiki/Window_function
//
// Examples
// --------
// >>> import matplotlib.pyplot as plt
// >>> np.kaiser(12, 14)
//
//	array([7.72686684e-06, 3.46009194e-03, 4.65200189e-02, # may vary
//	       2.29737120e-01, 5.99885316e-01, 9.45674898e-01,
//	       9.45674898e-01, 5.99885316e-01, 2.29737120e-01,
//	       4.65200189e-02, 3.46009194e-03, 7.72686684e-06])
//
// Plot the window and the frequency response:
//
// >>> from numpy.fft import fft, fftshift
// >>> window = np.kaiser(51, 14)
// >>> plt.plot(window)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Kaiser window")
// Text(0.5, 1.0, 'Kaiser window')
// >>> plt.ylabel("Amplitude")
// Text(0, 0.5, 'Amplitude')
// >>> plt.xlabel("Sample")
// Text(0.5, 0, 'Sample')
// >>> plt.show()
//
// >>> plt.figure()
// <Figure size 640x480 with 0 Axes>
// >>> A = fft(window, 2048) / 25.5
// >>> mag = np.abs(fftshift(A))
// >>> freq = np.linspace(-0.5, 0.5, len(A))
// >>> response = 20 * np.log10(mag)
// >>> response = np.clip(response, -100, 100)
// >>> plt.plot(freq, response)
// [<matplotlib.lines.Line2D object at 0x...>]
// >>> plt.title("Frequency response of Kaiser window")
// Text(0.5, 1.0, 'Frequency response of Kaiser window')
// >>> plt.ylabel("Magnitude [dB]")
// Text(0, 0.5, 'Magnitude [dB]')
// >>> plt.xlabel("Normalized frequency [cycles per sample]")
// Text(0.5, 0, 'Normalized frequency [cycles per sample]')
// >>> plt.axis('tight')
// (-0.5, 0.5, -100.0, ...) # may vary
// >>> plt.show()
//
//go:linkname Kaiser py.kaiser
func Kaiser(M *py.Object, beta *py.Object) *py.Object

// Add documentation to an existing object, typically one defined in C
//
// The purpose is to allow easier editing of the docstrings without requiring
// a re-compile. This exists primarily for internal use within numpy itself.
//
// Parameters
// ----------
// place : str
//
//	The absolute name of the module to import from
//
// obj : str
//
//	The name of the object to add documentation to, typically a class or
//	function name
//
// doc : {str, Tuple[str, str], List[Tuple[str, str]]}
//
//	If a string, the documentation to apply to `obj`
//
//	If a tuple, then the first element is interpreted as an attribute of
//	`obj` and the second as the docstring to apply - ``(method, docstring)``
//
//	If a list, then each element of the list should be a tuple of length
//	two - ``[(method1, docstring1), (method2, docstring2), ...]``
//
// warn_on_python : bool
//
//	If True, the default, emit `UserWarning` if this is used to attach
//	documentation to a pure-python object.
//
// Notes
// -----
// This routine never raises an error if the docstring can't be written, but
// will raise an error if the object being documented does not exist.
//
// This routine cannot modify read-only docstrings, as appear
// in new-style classes or built-in functions. Because this
// routine never raises an error the caller must check manually
// that the docstrings were changed.
//
// Since this function grabs the “char *“ from a c-level str object and puts
// it into the “tp_doc“ slot of the type of `obj`, it violates a number of
// C-API best-practices, by:
//
//   - modifying a `PyTypeObject` after calling `PyType_Ready`
//   - calling `Py_INCREF` on the str and losing the reference, so the str
//     will never be released
//
// If possible it should be avoided.
//
//go:linkname AddNewdoc py.add_newdoc
func AddNewdoc(place *py.Object, obj *py.Object, doc *py.Object, warnOnPython *py.Object) *py.Object

// Find the wrapper for the array with the highest priority.
//
//	In case of ties, leftmost wins. If no wrapper is found, return None
//
//go:linkname GetArrayWrap py.get_array_wrap
func GetArrayWrap(__llgo_va_list ...interface{}) *py.Object

// Broadcast the input shapes into a single shape.
//
// :ref:`Learn more about broadcasting here <basics.broadcasting>`.
//
// .. versionadded:: 1.20.0
//
// Parameters
// ----------
// `*args` : tuples of ints, or ints
//
//	The shapes to be broadcast against each other.
//
// Returns
// -------
// tuple
//
//	Broadcasted shape.
//
// Raises
// ------
// ValueError
//
//	If the shapes are not compatible and cannot be broadcast according
//	to NumPy's broadcasting rules.
//
// See Also
// --------
// broadcast
// broadcast_arrays
// broadcast_to
//
// Examples
// --------
// >>> np.broadcast_shapes((1, 2), (3, 1), (3, 2))
// (3, 2)
//
// >>> np.broadcast_shapes((6, 7), (5, 6, 1), (7,), (5, 1, 7))
// (5, 6, 7)
//
//go:linkname BroadcastShapes py.broadcast_shapes
func BroadcastShapes(__llgo_va_list ...interface{}) *py.Object

// Return a 2-D array with ones on the diagonal and zeros elsewhere.
//
// Parameters
// ----------
// N : int
//
//	Number of rows in the output.
//
// M : int, optional
//
//	Number of columns in the output. If None, defaults to `N`.
//
// k : int, optional
//
//	Index of the diagonal: 0 (the default) refers to the main diagonal,
//	a positive value refers to an upper diagonal, and a negative value
//	to a lower diagonal.
//
// dtype : data-type, optional
//
//	Data-type of the returned array.
//
// order : {'C', 'F'}, optional
//
//	Whether the output should be stored in row-major (C-style) or
//	column-major (Fortran-style) order in memory.
//
//	.. versionadded:: 1.14.0
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// I : ndarray of shape (N,M)
//
//	An array where all elements are equal to zero, except for the `k`-th
//	diagonal, whose values are equal to one.
//
// See Also
// --------
// identity : (almost) equivalent function
// diag : diagonal 2-D array from a 1-D array specified by the user.
//
// Examples
// --------
// >>> np.eye(2, dtype=int)
// array([[1, 0],
//
//	[0, 1]])
//
// >>> np.eye(3, k=1)
// array([[0.,  1.,  0.],
//
//	[0.,  0.,  1.],
//	[0.,  0.,  0.]])
//
//go:linkname Eye py.eye
func Eye(N *py.Object, M *py.Object, k *py.Object, dtype *py.Object, order *py.Object) *py.Object

// An array with ones at and below the given diagonal and zeros elsewhere.
//
// Parameters
// ----------
// N : int
//
//	Number of rows in the array.
//
// M : int, optional
//
//	Number of columns in the array.
//	By default, `M` is taken equal to `N`.
//
// k : int, optional
//
//	The sub-diagonal at and below which the array is filled.
//	`k` = 0 is the main diagonal, while `k` < 0 is below it,
//	and `k` > 0 is above.  The default is 0.
//
// dtype : dtype, optional
//
//	Data type of the returned array.  The default is float.
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// tri : ndarray of shape (N, M)
//
//	Array with its lower triangle filled with ones and zero elsewhere;
//	in other words ``T[i,j] == 1`` for ``j <= i + k``, 0 otherwise.
//
// Examples
// --------
// >>> np.tri(3, 5, 2, dtype=int)
// array([[1, 1, 1, 0, 0],
//
//	[1, 1, 1, 1, 0],
//	[1, 1, 1, 1, 1]])
//
// >>> np.tri(3, 5, -1)
// array([[0.,  0.,  0.,  0.,  0.],
//
//	[1.,  0.,  0.,  0.,  0.],
//	[1.,  1.,  0.,  0.,  0.]])
//
//go:linkname Tri py.tri
func Tri(N *py.Object, M *py.Object, k *py.Object, dtype *py.Object) *py.Object

// Return the indices to access (n, n) arrays, given a masking function.
//
// Assume `mask_func` is a function that, for a square array a of size
// “(n, n)“ with a possible offset argument `k`, when called as
// “mask_func(a, k)“ returns a new array with zeros in certain locations
// (functions like `triu` or `tril` do precisely this). Then this function
// returns the indices where the non-zero values would be located.
//
// Parameters
// ----------
// n : int
//
//	The returned indices will be valid to access arrays of shape (n, n).
//
// mask_func : callable
//
//	A function whose call signature is similar to that of `triu`, `tril`.
//	That is, ``mask_func(x, k)`` returns a boolean array, shaped like `x`.
//	`k` is an optional argument to the function.
//
// k : scalar
//
//	An optional argument which is passed through to `mask_func`. Functions
//	like `triu`, `tril` take a second argument that is interpreted as an
//	offset.
//
// Returns
// -------
// indices : tuple of arrays.
//
//	The `n` arrays of indices corresponding to the locations where
//	``mask_func(np.ones((n, n)), k)`` is True.
//
// See Also
// --------
// triu, tril, triu_indices, tril_indices
//
// Notes
// -----
// .. versionadded:: 1.4.0
//
// Examples
// --------
// These are the indices that would allow you to access the upper triangular
// part of any 3x3 array:
//
// >>> iu = np.mask_indices(3, np.triu)
//
// For example, if `a` is a 3x3 array:
//
// >>> a = np.arange(9).reshape(3, 3)
// >>> a
// array([[0, 1, 2],
//
//	[3, 4, 5],
//	[6, 7, 8]])
//
// >>> a[iu]
// array([0, 1, 2, 4, 5, 8])
//
// An offset can be passed also to the masking function.  This gets us the
// indices starting on the first diagonal right of the main one:
//
// >>> iu1 = np.mask_indices(3, np.triu, 1)
//
// with which we now extract only three elements:
//
// >>> a[iu1]
// array([1, 2, 5])
//
//go:linkname MaskIndices py.mask_indices
func MaskIndices(n *py.Object, maskFunc *py.Object, k *py.Object) *py.Object

// Return the indices for the lower-triangle of an (n, m) array.
//
// Parameters
// ----------
// n : int
//
//	The row dimension of the arrays for which the returned
//	indices will be valid.
//
// k : int, optional
//
//	Diagonal offset (see `tril` for details).
//
// m : int, optional
//
//	.. versionadded:: 1.9.0
//
//	The column dimension of the arrays for which the returned
//	arrays will be valid.
//	By default `m` is taken equal to `n`.
//
// Returns
// -------
// inds : tuple of arrays
//
//	The indices for the triangle. The returned tuple contains two arrays,
//	each with the indices along one dimension of the array.
//
// See also
// --------
// triu_indices : similar function, for upper-triangular.
// mask_indices : generic function accepting an arbitrary mask function.
// tril, triu
//
// Notes
// -----
// .. versionadded:: 1.4.0
//
// Examples
// --------
// Compute two different sets of indices to access 4x4 arrays, one for the
// lower triangular part starting at the main diagonal, and one starting two
// diagonals further right:
//
// >>> il1 = np.tril_indices(4)
// >>> il2 = np.tril_indices(4, 2)
//
// Here is how they can be used with a sample array:
//
// >>> a = np.arange(16).reshape(4, 4)
// >>> a
// array([[ 0,  1,  2,  3],
//
//	[ 4,  5,  6,  7],
//	[ 8,  9, 10, 11],
//	[12, 13, 14, 15]])
//
// Both for indexing:
//
// >>> a[il1]
// array([ 0,  4,  5, ..., 13, 14, 15])
//
// And for assigning values:
//
// >>> a[il1] = -1
// >>> a
// array([[-1,  1,  2,  3],
//
//	[-1, -1,  6,  7],
//	[-1, -1, -1, 11],
//	[-1, -1, -1, -1]])
//
// These cover almost the whole array (two diagonals right of the main one):
//
// >>> a[il2] = -10
// >>> a
// array([[-10, -10, -10,   3],
//
//	[-10, -10, -10, -10],
//	[-10, -10, -10, -10],
//	[-10, -10, -10, -10]])
//
//go:linkname TrilIndices py.tril_indices
func TrilIndices(n *py.Object, k *py.Object, m *py.Object) *py.Object

// Return the indices for the upper-triangle of an (n, m) array.
//
// Parameters
// ----------
// n : int
//
//	The size of the arrays for which the returned indices will
//	be valid.
//
// k : int, optional
//
//	Diagonal offset (see `triu` for details).
//
// m : int, optional
//
//	.. versionadded:: 1.9.0
//
//	The column dimension of the arrays for which the returned
//	arrays will be valid.
//	By default `m` is taken equal to `n`.
//
// Returns
// -------
// inds : tuple, shape(2) of ndarrays, shape(`n`)
//
//	The indices for the triangle. The returned tuple contains two arrays,
//	each with the indices along one dimension of the array.  Can be used
//	to slice a ndarray of shape(`n`, `n`).
//
// See also
// --------
// tril_indices : similar function, for lower-triangular.
// mask_indices : generic function accepting an arbitrary mask function.
// triu, tril
//
// Notes
// -----
// .. versionadded:: 1.4.0
//
// Examples
// --------
// Compute two different sets of indices to access 4x4 arrays, one for the
// upper triangular part starting at the main diagonal, and one starting two
// diagonals further right:
//
// >>> iu1 = np.triu_indices(4)
// >>> iu2 = np.triu_indices(4, 2)
//
// Here is how they can be used with a sample array:
//
// >>> a = np.arange(16).reshape(4, 4)
// >>> a
// array([[ 0,  1,  2,  3],
//
//	[ 4,  5,  6,  7],
//	[ 8,  9, 10, 11],
//	[12, 13, 14, 15]])
//
// Both for indexing:
//
// >>> a[iu1]
// array([ 0,  1,  2, ..., 10, 11, 15])
//
// And for assigning values:
//
// >>> a[iu1] = -1
// >>> a
// array([[-1, -1, -1, -1],
//
//	[ 4, -1, -1, -1],
//	[ 8,  9, -1, -1],
//	[12, 13, 14, -1]])
//
// These cover only a small part of the whole array (two diagonals right
// of the main one):
//
// >>> a[iu2] = -10
// >>> a
// array([[ -1,  -1, -10, -10],
//
//	[  4,  -1,  -1, -10],
//	[  8,   9,  -1,  -1],
//	[ 12,  13,  14,  -1]])
//
//go:linkname TriuIndices py.triu_indices
func TriuIndices(n *py.Object, k *py.Object, m *py.Object) *py.Object

// Determine if a class is a subclass of a second class.
//
// `issubclass_` is equivalent to the Python built-in “issubclass“,
// except that it returns False instead of raising a TypeError if one
// of the arguments is not a class.
//
// Parameters
// ----------
// arg1 : class
//
//	Input class. True is returned if `arg1` is a subclass of `arg2`.
//
// arg2 : class or tuple of classes.
//
//	Input class. If a tuple of classes, True is returned if `arg1` is a
//	subclass of any of the tuple elements.
//
// Returns
// -------
// out : bool
//
//	Whether `arg1` is a subclass of `arg2` or not.
//
// See Also
// --------
// issubsctype, issubdtype, issctype
//
// Examples
// --------
// >>> np.issubclass_(np.int32, int)
// False
// >>> np.issubclass_(np.int32, float)
// False
// >>> np.issubclass_(np.float64, float)
// True
//
//go:linkname Issubclass py.issubclass_
func Issubclass(arg1 *py.Object, arg2 *py.Object) *py.Object

// Determine if the first argument is a subclass of the second argument.
//
// Parameters
// ----------
// arg1, arg2 : dtype or dtype specifier
//
//	Data-types.
//
// Returns
// -------
// out : bool
//
//	The result.
//
// See Also
// --------
// issctype, issubdtype, obj2sctype
//
// Examples
// --------
// >>> np.issubsctype('S8', str)
// False
// >>> np.issubsctype(np.array([1]), int)
// True
// >>> np.issubsctype(np.array([1]), float)
// False
//
//go:linkname Issubsctype py.issubsctype
func Issubsctype(arg1 *py.Object, arg2 *py.Object) *py.Object

// Issues a DeprecationWarning, adds warning to `old_name`'s
// docstring, rebinds “old_name.__name__“ and returns the new
// function object.
//
// This function may also be used as a decorator.
//
// Parameters
// ----------
// func : function
//
//	The function to be deprecated.
//
// old_name : str, optional
//
//	The name of the function to be deprecated. Default is None, in
//	which case the name of `func` is used.
//
// new_name : str, optional
//
//	The new name for the function. Default is None, in which case the
//	deprecation message is that `old_name` is deprecated. If given, the
//	deprecation message is that `old_name` is deprecated and `new_name`
//	should be used instead.
//
// message : str, optional
//
//	Additional explanation of the deprecation.  Displayed in the
//	docstring after the warning.
//
// Returns
// -------
// old_func : function
//
//	The deprecated function.
//
// Examples
// --------
// Note that “olduint“ returns a value after printing Deprecation
// Warning:
//
// >>> olduint = np.deprecate(np.uint)
// DeprecationWarning: `uint64` is deprecated! # may vary
// >>> olduint(6)
// 6
//
//go:linkname Deprecate py.deprecate
func Deprecate(__llgo_va_list ...interface{}) *py.Object

// Deprecates a function and includes the deprecation in its docstring.
//
// This function is used as a decorator. It returns an object that can be
// used to issue a DeprecationWarning, by passing the to-be decorated
// function as argument, this adds warning to the to-be decorated function's
// docstring and returns the new function object.
//
// See Also
// --------
// deprecate : Decorate a function such that it issues a `DeprecationWarning`
//
// Parameters
// ----------
// msg : str
//
//	Additional explanation of the deprecation. Displayed in the
//	docstring after the warning.
//
// Returns
// -------
// obj : object
//
//go:linkname DeprecateWithDoc py.deprecate_with_doc
func DeprecateWithDoc(msg *py.Object) *py.Object

// Return the directory that contains the NumPy \*.h header files.
//
// Extension modules that need to compile against NumPy should use this
// function to locate the appropriate include directory.
//
// Notes
// -----
// When using “distutils“, for example in “setup.py“::
//
//	import numpy as np
//	...
//	Extension('extension_name', ...
//	        include_dirs=[np.get_include()])
//	...
//
//go:linkname GetInclude py.get_include
func GetInclude() *py.Object

// Get help information for an array, function, class, or module.
//
// Parameters
// ----------
// object : object or str, optional
//
//	Input object or name to get information about. If `object` is
//	an `ndarray` instance, information about the array is printed.
//	If `object` is a numpy object, its docstring is given. If it is
//	a string, available modules are searched for matching objects.
//	If None, information about `info` itself is returned.
//
// maxwidth : int, optional
//
//	Printing width.
//
// output : file like object, optional
//
//	File like object that the output is written to, default is
//	``None``, in which case ``sys.stdout`` will be used.
//	The object has to be opened in 'w' or 'a' mode.
//
// toplevel : str, optional
//
//	Start search at this level.
//
// See Also
// --------
// source, lookfor
//
// Notes
// -----
// When used interactively with an object, “np.info(obj)“ is equivalent
// to “help(obj)“ on the Python prompt or “obj?“ on the IPython
// prompt.
//
// Examples
// --------
// >>> np.info(np.polyval) # doctest: +SKIP
//
//	polyval(p, x)
//	  Evaluate the polynomial p at x.
//	  ...
//
// When using a string for `object` it is possible to get multiple results.
//
// >>> np.info('fft') # doctest: +SKIP
//
//	*** Found in numpy ***
//
// Core FFT routines
// ...
//
//	    *** Found in numpy.fft ***
//	fft(a, n=None, axis=-1)
//
// ...
//
//	*** Repeat reference found in numpy.fft.fftpack ***
//	*** Total of 3 references found. ***
//
// When the argument is an array, information about the array is printed.
//
// >>> a = np.array([[1 + 2j, 3, -4], [-5j, 6, 0]], dtype=np.complex64)
// >>> np.info(a)
// class:  ndarray
// shape:  (2, 3)
// strides:  (24, 8)
// itemsize:  8
// aligned:  True
// contiguous:  True
// fortran:  False
// data pointer: 0x562b6e0d2860  # may vary
// byteorder:  little
// byteswap:  False
// type: complex64
//
//go:linkname Info py.info
func Info(object *py.Object, maxwidth *py.Object, output *py.Object, toplevel *py.Object) *py.Object

// Print or write to a file the source code for a NumPy object.
//
// The source code is only returned for objects written in Python. Many
// functions and classes are defined in C and will therefore not return
// useful information.
//
// Parameters
// ----------
// object : numpy object
//
//	Input object. This can be any object (function, class, module,
//	...).
//
// output : file object, optional
//
//	If `output` not supplied then source code is printed to screen
//	(sys.stdout).  File object must be created with either write 'w' or
//	append 'a' modes.
//
// See Also
// --------
// lookfor, info
//
// Examples
// --------
// >>> np.source(np.interp)                        #doctest: +SKIP
// In file: /usr/lib/python2.6/dist-packages/numpy/lib/function_base.py
// def interp(x, xp, fp, left=None, right=None):
//
//	""".... (full docstring printed)"""
//	if isinstance(x, (float, int, number)):
//	    return compiled_interp([x], xp, fp, left, right).item()
//	else:
//	    return compiled_interp(x, xp, fp, left, right)
//
// The source code is only returned for objects written in Python.
//
// >>> np.source(np.array)                         #doctest: +SKIP
// Not available for this object.
//
//go:linkname Source py.source
func Source(object *py.Object, output *py.Object) *py.Object

// Print the NumPy arrays in the given dictionary.
//
// If there is no dictionary passed in or `vardict` is None then returns
// NumPy arrays in the globals() dictionary (all NumPy arrays in the
// namespace).
//
// Parameters
// ----------
// vardict : dict, optional
//
//	A dictionary possibly containing ndarrays.  Default is globals().
//
// Returns
// -------
// out : None
//
//	Returns 'None'.
//
// Notes
// -----
// Prints out the name, shape, bytes and type of all of the ndarrays
// present in `vardict`.
//
// Examples
// --------
// >>> a = np.arange(10)
// >>> b = np.ones(20)
// >>> np.who()
// Name            Shape            Bytes            Type
// ===========================================================
// a               10               80               int64
// b               20               160              float64
// Upper bound on total bytes  =       240
//
// >>> d = {'x': np.arange(2.0), 'y': np.arange(3.0), 'txt': 'Some str',
// ... 'idx':5}
// >>> np.who(d)
// Name            Shape            Bytes            Type
// ===========================================================
// x               2                16               float64
// y               3                24               float64
// Upper bound on total bytes  =       40
//
//go:linkname Who py.who
func Who(vardict *py.Object) *py.Object

// Do a keyword search on docstrings.
//
// A list of objects that matched the search is displayed,
// sorted by relevance. All given keywords need to be found in the
// docstring for it to be returned as a result, but the order does
// not matter.
//
// Parameters
// ----------
// what : str
//
//	String containing words to look for.
//
// module : str or list, optional
//
//	Name of module(s) whose docstrings to go through.
//
// import_modules : bool, optional
//
//	Whether to import sub-modules in packages. Default is True.
//
// regenerate : bool, optional
//
//	Whether to re-generate the docstring cache. Default is False.
//
// output : file-like, optional
//
//	File-like object to write the output to. If omitted, use a pager.
//
// See Also
// --------
// source, info
//
// Notes
// -----
// Relevance is determined only roughly, by checking if the keywords occur
// in the function name, at the start of a docstring, etc.
//
// Examples
// --------
// >>> np.lookfor('binary representation') # doctest: +SKIP
// Search results for 'binary representation'
// ------------------------------------------
// numpy.binary_repr
//
//	Return the binary representation of the input number as a string.
//
// numpy.core.setup_common.long_double_representation
//
//	Given a binary dump as given by GNU od -b, look for long double
//
// numpy.base_repr
//
//	Return a string representation of a number in the given base system.
//
// ...
//
//go:linkname Lookfor py.lookfor
func Lookfor(what *py.Object, module *py.Object, importModules *py.Object, regenerate *py.Object, output *py.Object) *py.Object

// Returns pointers to the end-points of an array.
//
// Parameters
// ----------
// a : ndarray
//
//	Input array. It must conform to the Python-side of the array
//	interface.
//
// Returns
// -------
// (low, high) : tuple of 2 integers
//
//	The first integer is the first byte of the array, the second
//	integer is just past the last byte of the array.  If `a` is not
//	contiguous it will not use every byte between the (`low`, `high`)
//	values.
//
// Examples
// --------
// >>> I = np.eye(2, dtype='f'); I.dtype
// dtype('float32')
// >>> low, high = np.byte_bounds(I)
// >>> high - low == I.size*I.itemsize
// True
// >>> I = np.eye(2); I.dtype
// dtype('float64')
// >>> low, high = np.byte_bounds(I)
// >>> high - low == I.size*I.itemsize
// True
//
//go:linkname ByteBounds py.byte_bounds
func ByteBounds(a *py.Object) *py.Object

// Protected string evaluation.
//
// Evaluate a string containing a Python literal expression without
// allowing the execution of arbitrary non-literal code.
//
// .. warning::
//
//	This function is identical to :py:meth:`ast.literal_eval` and
//	has the same security implications.  It may not always be safe
//	to evaluate large input strings.
//
// Parameters
// ----------
// source : str
//
//	The string to evaluate.
//
// Returns
// -------
// obj : object
//
//	The result of evaluating `source`.
//
// Raises
// ------
// SyntaxError
//
//	If the code has invalid Python syntax, or if it contains
//	non-literal code.
//
// Examples
// --------
// >>> np.safe_eval('1')
// 1
// >>> np.safe_eval('[1, 2, 3]')
// [1, 2, 3]
// >>> np.safe_eval('{"foo": ("bar", 10.0)}')
// {'foo': ('bar', 10.0)}
//
// >>> np.safe_eval('import os')
// Traceback (most recent call last):
//
//	...
//
// SyntaxError: invalid syntax
//
// >>> np.safe_eval('open("/home/user/.ssh/id_dsa").read()')
// Traceback (most recent call last):
//
//	...
//
// ValueError: malformed node or string: <_ast.Call object at 0x...>
//
//go:linkname SafeEval py.safe_eval
func SafeEval(source *py.Object) *py.Object

// Print information about various resources in the system
// including available intrinsic support and BLAS/LAPACK library
// in use
//
// .. versionadded:: 1.24.0
//
// See Also
// --------
// show_config : Show libraries in the system on which NumPy was built.
//
// Notes
// -----
//  1. Information is derived with the help of `threadpoolctl <https://pypi.org/project/threadpoolctl/>`_
//     library if available.
//  2. SIMD related information is derived from “__cpu_features__“,
//     “__cpu_baseline__“ and “__cpu_dispatch__“
//
//go:linkname ShowRuntime py.show_runtime
func ShowRuntime() *py.Object

// Load data from a text file.
//
// Parameters
// ----------
// fname : file, str, pathlib.Path, list of str, generator
//
//	File, filename, list, or generator to read.  If the filename
//	extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
//	that generators must return bytes or strings. The strings
//	in a list or produced by a generator are treated as lines.
//
// dtype : data-type, optional
//
//	Data-type of the resulting array; default: float.  If this is a
//	structured data-type, the resulting array will be 1-dimensional, and
//	each row will be interpreted as an element of the array.  In this
//	case, the number of columns used must match the number of fields in
//	the data-type.
//
// comments : str or sequence of str or None, optional
//
//	The characters or list of characters used to indicate the start of a
//	comment. None implies no comments. For backwards compatibility, byte
//	strings will be decoded as 'latin1'. The default is '#'.
//
// delimiter : str, optional
//
//	The character used to separate the values. For backwards compatibility,
//	byte strings will be decoded as 'latin1'. The default is whitespace.
//
//	.. versionchanged:: 1.23.0
//	   Only single character delimiters are supported. Newline characters
//	   cannot be used as the delimiter.
//
// converters : dict or callable, optional
//
//	Converter functions to customize value parsing. If `converters` is
//	callable, the function is applied to all columns, else it must be a
//	dict that maps column number to a parser function.
//	See examples for further details.
//	Default: None.
//
//	.. versionchanged:: 1.23.0
//	   The ability to pass a single callable to be applied to all columns
//	   was added.
//
// skiprows : int, optional
//
//	Skip the first `skiprows` lines, including comments; default: 0.
//
// usecols : int or sequence, optional
//
//	Which columns to read, with 0 being the first. For example,
//	``usecols = (1,4,5)`` will extract the 2nd, 5th and 6th columns.
//	The default, None, results in all columns being read.
//
//	.. versionchanged:: 1.11.0
//	    When a single column has to be read it is possible to use
//	    an integer instead of a tuple. E.g ``usecols = 3`` reads the
//	    fourth column the same way as ``usecols = (3,)`` would.
//
// unpack : bool, optional
//
//	If True, the returned array is transposed, so that arguments may be
//	unpacked using ``x, y, z = loadtxt(...)``.  When used with a
//	structured data-type, arrays are returned for each field.
//	Default is False.
//
// ndmin : int, optional
//
//	The returned array will have at least `ndmin` dimensions.
//	Otherwise mono-dimensional axes will be squeezed.
//	Legal values: 0 (default), 1 or 2.
//
//	.. versionadded:: 1.6.0
//
// encoding : str, optional
//
//	Encoding used to decode the inputfile. Does not apply to input streams.
//	The special value 'bytes' enables backward compatibility workarounds
//	that ensures you receive byte arrays as results if possible and passes
//	'latin1' encoded strings to converters. Override this value to receive
//	unicode arrays and pass strings as input to converters.  If set to None
//	the system default is used. The default value is 'bytes'.
//
//	.. versionadded:: 1.14.0
//
// max_rows : int, optional
//
//	Read `max_rows` rows of content after `skiprows` lines. The default is
//	to read all the rows. Note that empty rows containing no data such as
//	empty lines and comment lines are not counted towards `max_rows`,
//	while such lines are counted in `skiprows`.
//
//	.. versionadded:: 1.16.0
//
//	.. versionchanged:: 1.23.0
//	    Lines containing no data, including comment lines (e.g., lines
//	    starting with '#' or as specified via `comments`) are not counted
//	    towards `max_rows`.
//
// quotechar : unicode character or None, optional
//
//	The character used to denote the start and end of a quoted item.
//	Occurrences of the delimiter or comment characters are ignored within
//	a quoted item. The default value is ``quotechar=None``, which means
//	quoting support is disabled.
//
//	If two consecutive instances of `quotechar` are found within a quoted
//	field, the first is treated as an escape character. See examples.
//
//	.. versionadded:: 1.23.0
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	Data read from the text file.
//
// See Also
// --------
// load, fromstring, fromregex
// genfromtxt : Load data with missing values handled as specified.
// scipy.io.loadmat : reads MATLAB data files
//
// Notes
// -----
// This function aims to be a fast reader for simply formatted files.  The
// `genfromtxt` function provides more sophisticated handling of, e.g.,
// lines with missing values.
//
// Each row in the input text file must have the same number of values to be
// able to read all values. If all rows do not have same number of values, a
// subset of up to n columns (where n is the least number of values present
// in all rows) can be read by specifying the columns via `usecols`.
//
// .. versionadded:: 1.10.0
//
// The strings produced by the Python float.hex method can be used as
// input for floats.
//
// Examples
// --------
// >>> from io import StringIO   # StringIO behaves like a file object
// >>> c = StringIO("0 1\n2 3")
// >>> np.loadtxt(c)
// array([[0., 1.],
//
//	[2., 3.]])
//
// >>> d = StringIO("M 21 72\nF 35 58")
// >>> np.loadtxt(d, dtype={'names': ('gender', 'age', 'weight'),
// ...                      'formats': ('S1', 'i4', 'f4')})
// array([(b'M', 21, 72.), (b'F', 35, 58.)],
//
//	dtype=[('gender', 'S1'), ('age', '<i4'), ('weight', '<f4')])
//
// >>> c = StringIO("1,0,2\n3,0,4")
// >>> x, y = np.loadtxt(c, delimiter=',', usecols=(0, 2), unpack=True)
// >>> x
// array([1., 3.])
// >>> y
// array([2., 4.])
//
// The `converters` argument is used to specify functions to preprocess the
// text prior to parsing. `converters` can be a dictionary that maps
// preprocessing functions to each column:
//
// >>> s = StringIO("1.618, 2.296\n3.141, 4.669\n")
// >>> conv = {
// ...     0: lambda x: np.floor(float(x)),  # conversion fn for column 0
// ...     1: lambda x: np.ceil(float(x)),  # conversion fn for column 1
// ... }
// >>> np.loadtxt(s, delimiter=",", converters=conv)
// array([[1., 3.],
//
//	[3., 5.]])
//
// `converters` can be a callable instead of a dictionary, in which case it
// is applied to all columns:
//
// >>> s = StringIO("0xDE 0xAD\n0xC0 0xDE")
// >>> import functools
// >>> conv = functools.partial(int, base=16)
// >>> np.loadtxt(s, converters=conv)
// array([[222., 173.],
//
//	[192., 222.]])
//
// This example shows how `converters` can be used to convert a field
// with a trailing minus sign into a negative number.
//
// >>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
// >>> def conv(fld):
// ...     return -float(fld[:-1]) if fld.endswith(b'-') else float(fld)
// ...
// >>> np.loadtxt(s, converters=conv)
// array([[ 10.01, -31.25],
//
//	[ 19.22,  64.31],
//	[-17.57,  63.94]])
//
// Using a callable as the converter can be particularly useful for handling
// values with different formatting, e.g. floats with underscores:
//
// >>> s = StringIO("1 2.7 100_000")
// >>> np.loadtxt(s, converters=float)
// array([1.e+00, 2.7e+00, 1.e+05])
//
// This idea can be extended to automatically handle values specified in
// many different formats:
//
// >>> def conv(val):
// ...     try:
// ...         return float(val)
// ...     except ValueError:
// ...         return float.fromhex(val)
// >>> s = StringIO("1, 2.5, 3_000, 0b4, 0x1.4000000000000p+2")
// >>> np.loadtxt(s, delimiter=",", converters=conv, encoding=None)
// array([1.0e+00, 2.5e+00, 3.0e+03, 1.8e+02, 5.0e+00])
//
// Note that with the default “encoding="bytes"“, the inputs to the
// converter function are latin-1 encoded byte strings. To deactivate the
// implicit encoding prior to conversion, use “encoding=None“
//
// >>> s = StringIO('10.01 31.25-\n19.22 64.31\n17.57- 63.94')
// >>> conv = lambda x: -float(x[:-1]) if x.endswith('-') else float(x)
// >>> np.loadtxt(s, converters=conv, encoding=None)
// array([[ 10.01, -31.25],
//
//	[ 19.22,  64.31],
//	[-17.57,  63.94]])
//
// Support for quoted fields is enabled with the `quotechar` parameter.
// Comment and delimiter characters are ignored when they appear within a
// quoted item delineated by `quotechar`:
//
// >>> s = StringIO('"alpha, #42", 10.0\n"beta, #64", 2.0\n')
// >>> dtype = np.dtype([("label", "U12"), ("value", float)])
// >>> np.loadtxt(s, dtype=dtype, delimiter=",", quotechar='"')
// array([('alpha, #42', 10.), ('beta, #64',  2.)],
//
//	dtype=[('label', '<U12'), ('value', '<f8')])
//
// Quoted fields can be separated by multiple whitespace characters:
//
// >>> s = StringIO('"alpha, #42"       10.0\n"beta, #64" 2.0\n')
// >>> dtype = np.dtype([("label", "U12"), ("value", float)])
// >>> np.loadtxt(s, dtype=dtype, delimiter=None, quotechar='"')
// array([('alpha, #42', 10.), ('beta, #64',  2.)],
//
//	dtype=[('label', '<U12'), ('value', '<f8')])
//
// Two consecutive quote characters within a quoted field are treated as a
// single escaped character:
//
// >>> s = StringIO('"Hello, my name is ""Monty""!"')
// >>> np.loadtxt(s, dtype="U", delimiter=",", quotechar='"')
// array('Hello, my name is "Monty"!', dtype='<U26')
//
// Read subset of columns when all rows do not contain equal number of values:
//
// >>> d = StringIO("1 2\n2 4\n3 9 12\n4 16 20")
// >>> np.loadtxt(d, usecols=(0, 1))
// array([[ 1.,  2.],
//
//	[ 2.,  4.],
//	[ 3.,  9.],
//	[ 4., 16.]])
//
//go:linkname Loadtxt py.loadtxt
func Loadtxt(fname *py.Object, dtype *py.Object, comments *py.Object, delimiter *py.Object, converters *py.Object, skiprows *py.Object, usecols *py.Object, unpack *py.Object, ndmin *py.Object, encoding *py.Object, maxRows *py.Object) *py.Object

// Load data from a text file, with missing values handled as specified.
//
// Each line past the first `skip_header` lines is split at the `delimiter`
// character, and characters following the `comments` character are discarded.
//
// Parameters
// ----------
// fname : file, str, pathlib.Path, list of str, generator
//
//	File, filename, list, or generator to read.  If the filename
//	extension is ``.gz`` or ``.bz2``, the file is first decompressed. Note
//	that generators must return bytes or strings. The strings
//	in a list or produced by a generator are treated as lines.
//
// dtype : dtype, optional
//
//	Data type of the resulting array.
//	If None, the dtypes will be determined by the contents of each
//	column, individually.
//
// comments : str, optional
//
//	The character used to indicate the start of a comment.
//	All the characters occurring on a line after a comment are discarded.
//
// delimiter : str, int, or sequence, optional
//
//	The string used to separate values.  By default, any consecutive
//	whitespaces act as delimiter.  An integer or sequence of integers
//	can also be provided as width(s) of each field.
//
// skiprows : int, optional
//
//	`skiprows` was removed in numpy 1.10. Please use `skip_header` instead.
//
// skip_header : int, optional
//
//	The number of lines to skip at the beginning of the file.
//
// skip_footer : int, optional
//
//	The number of lines to skip at the end of the file.
//
// converters : variable, optional
//
//	The set of functions that convert the data of a column to a value.
//	The converters can also be used to provide a default value
//	for missing data: ``converters = {3: lambda s: float(s or 0)}``.
//
// missing : variable, optional
//
//	`missing` was removed in numpy 1.10. Please use `missing_values`
//	instead.
//
// missing_values : variable, optional
//
//	The set of strings corresponding to missing data.
//
// filling_values : variable, optional
//
//	The set of values to be used as default when the data are missing.
//
// usecols : sequence, optional
//
//	Which columns to read, with 0 being the first.  For example,
//	``usecols = (1, 4, 5)`` will extract the 2nd, 5th and 6th columns.
//
// names : {None, True, str, sequence}, optional
//
//	If `names` is True, the field names are read from the first line after
//	the first `skip_header` lines. This line can optionally be preceded
//	by a comment delimiter. If `names` is a sequence or a single-string of
//	comma-separated names, the names will be used to define the field names
//	in a structured dtype. If `names` is None, the names of the dtype
//	fields will be used, if any.
//
// excludelist : sequence, optional
//
//	A list of names to exclude. This list is appended to the default list
//	['return','file','print']. Excluded names are appended with an
//	underscore: for example, `file` would become `file_`.
//
// deletechars : str, optional
//
//	A string combining invalid characters that must be deleted from the
//	names.
//
// defaultfmt : str, optional
//
//	A format used to define default field names, such as "f%i" or "f_%02i".
//
// autostrip : bool, optional
//
//	Whether to automatically strip white spaces from the variables.
//
// replace_space : char, optional
//
//	Character(s) used in replacement of white spaces in the variable
//	names. By default, use a '_'.
//
// case_sensitive : {True, False, 'upper', 'lower'}, optional
//
//	If True, field names are case sensitive.
//	If False or 'upper', field names are converted to upper case.
//	If 'lower', field names are converted to lower case.
//
// unpack : bool, optional
//
//	If True, the returned array is transposed, so that arguments may be
//	unpacked using ``x, y, z = genfromtxt(...)``.  When used with a
//	structured data-type, arrays are returned for each field.
//	Default is False.
//
// usemask : bool, optional
//
//	If True, return a masked array.
//	If False, return a regular array.
//
// loose : bool, optional
//
//	If True, do not raise errors for invalid values.
//
// invalid_raise : bool, optional
//
//	If True, an exception is raised if an inconsistency is detected in the
//	number of columns.
//	If False, a warning is emitted and the offending lines are skipped.
//
// max_rows : int,  optional
//
//	The maximum number of rows to read. Must not be used with skip_footer
//	at the same time.  If given, the value must be at least 1. Default is
//	to read the entire file.
//
//	.. versionadded:: 1.10.0
//
// encoding : str, optional
//
//	Encoding used to decode the inputfile. Does not apply when `fname` is
//	a file object.  The special value 'bytes' enables backward compatibility
//	workarounds that ensure that you receive byte arrays when possible
//	and passes latin1 encoded strings to converters. Override this value to
//	receive unicode arrays and pass strings as input to converters.  If set
//	to None the system default is used. The default value is 'bytes'.
//
//	.. versionadded:: 1.14.0
//
// ndmin : int, optional
//
//	Same parameter as `loadtxt`
//
//	.. versionadded:: 1.23.0
//
// like : array_like, optional
//
//	Reference object to allow the creation of arrays which are not
//	NumPy arrays. If an array-like passed in as ``like`` supports
//	the ``__array_function__`` protocol, the result will be defined
//	by it. In this case, it ensures the creation of an array object
//	compatible with that passed in via this argument.
//
//	.. versionadded:: 1.20.0
//
// Returns
// -------
// out : ndarray
//
//	Data read from the text file. If `usemask` is True, this is a
//	masked array.
//
// See Also
// --------
// numpy.loadtxt : equivalent function when no data is missing.
//
// Notes
// -----
//   - When spaces are used as delimiters, or when no delimiter has been given
//     as input, there should not be any missing data between two fields.
//   - When the variables are named (either by a flexible dtype or with `names`),
//     there must not be any header in the file (else a ValueError
//     exception is raised).
//   - Individual values are not stripped of spaces by default.
//     When using a custom converter, make sure the function does remove spaces.
//
// References
// ----------
// .. [1] NumPy User Guide, section `I/O with NumPy
//
//	<https://docs.scipy.org/doc/numpy/user/basics.io.genfromtxt.html>`_.
//
// Examples
// --------
// >>> from io import StringIO
// >>> import numpy as np
//
// # Comma delimited file with mixed dtype
//
// >>> s = StringIO(u"1,1.3,abcde")
// >>> data = np.genfromtxt(s, dtype=[('myint','i8'),('myfloat','f8'),
// ... ('mystring','S5')], delimiter=",")
// >>> data
// array((1, 1.3, b'abcde'),
//
//	dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
//
// Using dtype = None
//
// >>> _ = s.seek(0) # needed for StringIO example only
// >>> data = np.genfromtxt(s, dtype=None,
// ... names = ['myint','myfloat','mystring'], delimiter=",")
// >>> data
// array((1, 1.3, b'abcde'),
//
//	dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
//
// # Specifying dtype and names
//
// >>> _ = s.seek(0)
// >>> data = np.genfromtxt(s, dtype="i8,f8,S5",
// ... names=['myint','myfloat','mystring'], delimiter=",")
// >>> data
// array((1, 1.3, b'abcde'),
//
//	dtype=[('myint', '<i8'), ('myfloat', '<f8'), ('mystring', 'S5')])
//
// # An example with fixed-width columns
//
// >>> s = StringIO(u"11.3abcde")
// >>> data = np.genfromtxt(s, dtype=None, names=['intvar','fltvar','strvar'],
// ...     delimiter=[1,3,5])
// >>> data
// array((1, 1.3, b'abcde'),
//
//	dtype=[('intvar', '<i8'), ('fltvar', '<f8'), ('strvar', 'S5')])
//
// # An example to show comments
//
// >>> f = StringIO(”'
// ... text,# of chars
// ... hello world,11
// ... numpy,5”')
// >>> np.genfromtxt(f, dtype='S12,S12', delimiter=',')
// array([(b'text', b”), (b'hello world', b'11'), (b'numpy', b'5')],
//
//	dtype=[('f0', 'S12'), ('f1', 'S12')])
//
//go:linkname Genfromtxt py.genfromtxt
func Genfromtxt(fname *py.Object, dtype *py.Object, comments *py.Object, delimiter *py.Object, skipHeader *py.Object, skipFooter *py.Object, converters *py.Object, missingValues *py.Object, fillingValues *py.Object, usecols *py.Object, names *py.Object, excludelist *py.Object, deletechars *py.Object, replaceSpace *py.Object, autostrip *py.Object, caseSensitive *py.Object, defaultfmt *py.Object, unpack *py.Object, usemask *py.Object, loose *py.Object, invalidRaise *py.Object, maxRows *py.Object, encoding *py.Object) *py.Object

// Load ASCII data from a file and return it in a record array.
//
// If “usemask=False“ a standard `recarray` is returned,
// if “usemask=True“ a MaskedRecords array is returned.
//
// Parameters
// ----------
// fname, kwargs : For a description of input parameters, see `genfromtxt`.
//
// See Also
// --------
// numpy.genfromtxt : generic function
//
// Notes
// -----
// By default, `dtype` is None, which means that the data-type of the output
// array will be determined from the data.
//
//go:linkname Recfromtxt py.recfromtxt
func Recfromtxt(fname *py.Object) *py.Object

// Load ASCII data stored in a comma-separated file.
//
// The returned array is a record array (if “usemask=False“, see
// `recarray`) or a masked record array (if “usemask=True“,
// see `ma.mrecords.MaskedRecords`).
//
// Parameters
// ----------
// fname, kwargs : For a description of input parameters, see `genfromtxt`.
//
// See Also
// --------
// numpy.genfromtxt : generic function to load ASCII data.
//
// Notes
// -----
// By default, `dtype` is None, which means that the data-type of the output
// array will be determined from the data.
//
//go:linkname Recfromcsv py.recfromcsv
func Recfromcsv(fname *py.Object) *py.Object

// Load arrays or pickled objects from “.npy“, “.npz“ or pickled files.
//
// .. warning:: Loading files that contain object arrays uses the “pickle“
//
//	module, which is not secure against erroneous or maliciously
//	constructed data. Consider passing ``allow_pickle=False`` to
//	load data that is known not to contain object arrays for the
//	safer handling of untrusted sources.
//
// Parameters
// ----------
// file : file-like object, string, or pathlib.Path
//
//	The file to read. File-like objects must support the
//	``seek()`` and ``read()`` methods and must always
//	be opened in binary mode.  Pickled files require that the
//	file-like object support the ``readline()`` method as well.
//
// mmap_mode : {None, 'r+', 'r', 'w+', 'c'}, optional
//
//	If not None, then memory-map the file, using the given mode (see
//	`numpy.memmap` for a detailed description of the modes).  A
//	memory-mapped array is kept on disk. However, it can be accessed
//	and sliced like any ndarray.  Memory mapping is especially useful
//	for accessing small fragments of large files without reading the
//	entire file into memory.
//
// allow_pickle : bool, optional
//
//	Allow loading pickled object arrays stored in npy files. Reasons for
//	disallowing pickles include security, as loading pickled data can
//	execute arbitrary code. If pickles are disallowed, loading object
//	arrays will fail. Default: False
//
//	.. versionchanged:: 1.16.3
//	    Made default False in response to CVE-2019-6446.
//
// fix_imports : bool, optional
//
//	Only useful when loading Python 2 generated pickled files on Python 3,
//	which includes npy/npz files containing object arrays. If `fix_imports`
//	is True, pickle will try to map the old Python 2 names to the new names
//	used in Python 3.
//
// encoding : str, optional
//
//	What encoding to use when reading Python 2 strings. Only useful when
//	loading Python 2 generated pickled files in Python 3, which includes
//	npy/npz files containing object arrays. Values other than 'latin1',
//	'ASCII', and 'bytes' are not allowed, as they can corrupt numerical
//	data. Default: 'ASCII'
//
// max_header_size : int, optional
//
//	Maximum allowed size of the header.  Large headers may not be safe
//	to load securely and thus require explicitly passing a larger value.
//	See :py:func:`ast.literal_eval()` for details.
//	This option is ignored when `allow_pickle` is passed.  In that case
//	the file is by definition trusted and the limit is unnecessary.
//
// Returns
// -------
// result : array, tuple, dict, etc.
//
//	Data stored in the file. For ``.npz`` files, the returned instance
//	of NpzFile class must be closed to avoid leaking file descriptors.
//
// Raises
// ------
// OSError
//
//	If the input file does not exist or cannot be read.
//
// UnpicklingError
//
//	If ``allow_pickle=True``, but the file cannot be loaded as a pickle.
//
// ValueError
//
//	The file contains an object array, but ``allow_pickle=False`` given.
//
// EOFError
//
//	When calling ``np.load`` multiple times on the same file handle,
//	if all data has already been read
//
// See Also
// --------
// save, savez, savez_compressed, loadtxt
// memmap : Create a memory-map to an array stored in a file on disk.
// lib.format.open_memmap : Create or load a memory-mapped “.npy“ file.
//
// Notes
// -----
//
//   - If the file contains pickle data, then whatever object is stored
//     in the pickle is returned.
//
//   - If the file is a “.npy“ file, then a single array is returned.
//
//   - If the file is a “.npz“ file, then a dictionary-like object is
//     returned, containing “{filename: array}“ key-value pairs, one for
//     each file in the archive.
//
//   - If the file is a “.npz“ file, the returned value supports the
//     context manager protocol in a similar fashion to the open function::
//
//     with load('foo.npz') as data:
//     a = data['a']
//
//     The underlying file descriptor is closed when exiting the 'with'
//     block.
//
// Examples
// --------
// Store data to disk, and load it again:
//
// >>> np.save('/tmp/123', np.array([[1, 2, 3], [4, 5, 6]]))
// >>> np.load('/tmp/123.npy')
// array([[1, 2, 3],
//
//	[4, 5, 6]])
//
// Store compressed data to disk, and load it again:
//
// >>> a=np.array([[1, 2, 3], [4, 5, 6]])
// >>> b=np.array([1, 2])
// >>> np.savez('/tmp/123.npz', a=a, b=b)
// >>> data = np.load('/tmp/123.npz')
// >>> data['a']
// array([[1, 2, 3],
//
//	[4, 5, 6]])
//
// >>> data['b']
// array([1, 2])
// >>> data.close()
//
// Mem-map the stored array, and then access the second row
// directly from disk:
//
// >>> X = np.load('/tmp/123.npy', mmap_mode='r')
// >>> X[1, :]
// memmap([4, 5, 6])
//
//go:linkname Load py.load
func Load(file *py.Object, mmapMode *py.Object, allowPickle *py.Object, fixImports *py.Object, encoding *py.Object) *py.Object

// Construct an array from a text file, using regular expression parsing.
//
// The returned array is always a structured array, and is constructed from
// all matches of the regular expression in the file. Groups in the regular
// expression are converted to fields of the structured array.
//
// Parameters
// ----------
// file : path or file
//
//	Filename or file object to read.
//
//	.. versionchanged:: 1.22.0
//	    Now accepts `os.PathLike` implementations.
//
// regexp : str or regexp
//
//	Regular expression used to parse the file.
//	Groups in the regular expression correspond to fields in the dtype.
//
// dtype : dtype or list of dtypes
//
//	Dtype for the structured array; must be a structured datatype.
//
// encoding : str, optional
//
//	Encoding used to decode the inputfile. Does not apply to input streams.
//
//	.. versionadded:: 1.14.0
//
// Returns
// -------
// output : ndarray
//
//	The output array, containing the part of the content of `file` that
//	was matched by `regexp`. `output` is always a structured array.
//
// Raises
// ------
// TypeError
//
//	When `dtype` is not a valid dtype for a structured array.
//
// See Also
// --------
// fromstring, loadtxt
//
// Notes
// -----
// Dtypes for structured arrays can be specified in several forms, but all
// forms specify at least the data type and field name. For details see
// `basics.rec`.
//
// Examples
// --------
// >>> from io import StringIO
// >>> text = StringIO("1312 foo\n1534  bar\n444   qux")
//
// >>> regexp = r"(\d+)\s+(...)"  # match [digits, whitespace, anything]
// >>> output = np.fromregex(text, regexp,
// ...                       [('num', np.int64), ('key', 'S3')])
// >>> output
// array([(1312, b'foo'), (1534, b'bar'), ( 444, b'qux')],
//
//	dtype=[('num', '<i8'), ('key', 'S3')])
//
// >>> output['num']
// array([1312, 1534,  444])
//
//go:linkname Fromregex py.fromregex
func Fromregex(file *py.Object, regexp *py.Object, dtype *py.Object, encoding *py.Object) *py.Object

// Build a matrix object from a string, nested sequence, or array.
//
// Parameters
// ----------
// obj : str or array_like
//
//	Input data. If a string, variables in the current scope may be
//	referenced by name.
//
// ldict : dict, optional
//
//	A dictionary that replaces local operands in current frame.
//	Ignored if `obj` is not a string or `gdict` is None.
//
// gdict : dict, optional
//
//	A dictionary that replaces global operands in current frame.
//	Ignored if `obj` is not a string.
//
// Returns
// -------
// out : matrix
//
//	Returns a matrix object, which is a specialized 2-D array.
//
// See Also
// --------
// block :
//
//	A generalization of this function for N-d arrays, that returns normal
//	ndarrays.
//
// Examples
// --------
// >>> A = np.mat('1 1; 1 1')
// >>> B = np.mat('2 2; 2 2')
// >>> C = np.mat('3 4; 5 6')
// >>> D = np.mat('7 8; 9 0')
//
// All the following expressions construct the same block matrix:
//
// >>> np.bmat([[A, B], [C, D]])
// matrix([[1, 1, 2, 2],
//
//	[1, 1, 2, 2],
//	[3, 4, 7, 8],
//	[5, 6, 9, 0]])
//
// >>> np.bmat(np.r_[np.c_[A, B], np.c_[C, D]])
// matrix([[1, 1, 2, 2],
//
//	[1, 1, 2, 2],
//	[3, 4, 7, 8],
//	[5, 6, 9, 0]])
//
// >>> np.bmat('A,B; C,D')
// matrix([[1, 1, 2, 2],
//
//	[1, 1, 2, 2],
//	[3, 4, 7, 8],
//	[5, 6, 9, 0]])
//
//go:linkname Bmat py.bmat
func Bmat(obj *py.Object, ldict *py.Object, gdict *py.Object) *py.Object

// Interpret the input as a matrix.
//
// Unlike `matrix`, `asmatrix` does not make a copy if the input is already
// a matrix or an ndarray.  Equivalent to “matrix(data, copy=False)“.
//
// Parameters
// ----------
// data : array_like
//
//	Input data.
//
// dtype : data-type
//
//	Data-type of the output matrix.
//
// Returns
// -------
// mat : matrix
//
//	`data` interpreted as a matrix.
//
// Examples
// --------
// >>> x = np.array([[1, 2], [3, 4]])
//
// >>> m = np.asmatrix(x)
//
// >>> x[0,0] = 5
//
// >>> m
// matrix([[5, 2],
//
//	[3, 4]])
//
//go:linkname Mat py.mat
func Mat(data *py.Object, dtype *py.Object) *py.Object

// Interpret the input as a matrix.
//
// Unlike `matrix`, `asmatrix` does not make a copy if the input is already
// a matrix or an ndarray.  Equivalent to “matrix(data, copy=False)“.
//
// Parameters
// ----------
// data : array_like
//
//	Input data.
//
// dtype : data-type
//
//	Data-type of the output matrix.
//
// Returns
// -------
// mat : matrix
//
//	`data` interpreted as a matrix.
//
// Examples
// --------
// >>> x = np.array([[1, 2], [3, 4]])
//
// >>> m = np.asmatrix(x)
//
// >>> x[0,0] = 5
//
// >>> m
// matrix([[5, 2],
//
//	[3, 4]])
//
//go:linkname Asmatrix py.asmatrix
func Asmatrix(data *py.Object, dtype *py.Object) *py.Object

// absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
//
// Calculate the absolute value element-wise.
//
// “np.abs“ is a shorthand for this function.
//
// Parameters
// ----------
// x : array_like
//
//	Input array.
//
// out : ndarray, None, or tuple of ndarray and None, optional
//
//	A location into which the result is stored. If provided, it must have
//	a shape that the inputs broadcast to. If not provided or None,
//	a freshly-allocated array is returned. A tuple (possible only as a
//	keyword argument) must have length equal to the number of outputs.
//
// where : array_like, optional
//
//	This condition is broadcast over the input. At locations where the
//	condition is True, the `out` array will be set to the ufunc result.
//	Elsewhere, the `out` array will retain its original value.
//	Note that if an uninitialized `out` array is created via the default
//	``out=None``, locations within it where the condition is False will
//	remain uninitialized.
//
// **kwargs
//
//	For other keyword-only arguments, see the
//	:ref:`ufunc docs <ufuncs.kwargs>`.
//
// Returns
// -------
// absolute : ndarray
//
//	An ndarray containing the absolute value of
//	each element in `x`.  For complex input, ``a + ib``, the
//	absolute value is :math:`\sqrt{ a^2 + b^2 }`.
//	This is a scalar if `x` is a scalar.
//
// Examples
// --------
// >>> x = np.array([-1.2, 1.2])
// >>> np.absolute(x)
// array([ 1.2,  1.2])
// >>> np.absolute(1.2 + 1j)
// 1.5620499351813308
//
// Plot the function over “[-10, 10]“:
//
// >>> import matplotlib.pyplot as plt
//
// >>> x = np.linspace(start=-10, stop=10, num=101)
// >>> plt.plot(x, np.absolute(x))
// >>> plt.show()
//
// Plot the function over the complex plane:
//
// >>> xx = x + 1j * x[:, np.newaxis]
// >>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
// >>> plt.show()
//
// The `abs` function can be used as a shorthand for “np.absolute“ on
// ndarrays.
//
// >>> x = np.array([-1.2, 1.2])
// >>> abs(x)
// array([1.2, 1.2])
//
//go:linkname Abs py.abs
func Abs(__llgo_va_list ...interface{}) *py.Object

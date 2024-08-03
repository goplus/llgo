package pub

import (
	"unsafe"

	"github.com/goplus/llgo/c"
)

/*
 * Dispatch table element.  function_id numbers and the functions are defined
 * in core_dispatch.h, see macros with 'OSSL_CORE_MAKE_FUNC' in their names.
 *
 * An array of these is always terminated by function_id == 0
 */
type ossl_dispatch_st struct {
	FunctionId c.Int
	Function   *func()
}

type OSSL_DISPATCH ossl_dispatch_st

type ossl_core_handle_st struct {
	//todo
}

type OSSL_CORE_HANDLE ossl_core_handle_st

// typedef int (OSSL_provider_init_fn)(const OSSL_CORE_HANDLE *handle,
// const OSSL_DISPATCH *in,
// const OSSL_DISPATCH **out,
// void **provctx);
type OSSL_provider_init_fn func(
	handle *OSSL_CORE_HANDLE,
	in *OSSL_DISPATCH, out **OSSL_DISPATCH,
	provctx *unsafe.Pointer)

type ossl_param_st struct {
	Key        *c.Char        /* the name of the parameter */
	DataType   c.Uint         /* declare what kind of content is in buffer */
	Data       unsafe.Pointer /* value being passed in or out */
	DataSize   uintptr        /* data size */
	ReturnSize uintptr        /* returned content size */
}

type OSSL_PARAM ossl_param_st

type OSSL_CALLBACK func(params []OSSL_PARAM, arg unsafe.Pointer) c.Int

/*
 * Type to tie together algorithm names, property definition string and
 * the algorithm implementation in the form of a dispatch table.
 *
 * An array of these is always terminated by algorithm_names == NULL
 */
type ossl_algorithm_st struct {
	AlgorithmNames       *c.Char /* key */
	PropertyDefinition   *c.Char /* key */
	Implementation       *OSSL_DISPATCH
	AlgorithmDescription *c.Char
}

type OSSL_ALGORITHM ossl_algorithm_st

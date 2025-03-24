package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	Void = iota
	Int
	Float
	Double
	LongDouble
	Uint8
	Sint8
	Uint16
	Sint16
	Uint32
	Sint32
	Uint64
	Sint64
	Struct
	Pointer
	Complex
)

const (
	OK = iota
	BAD_TYPEDEF
	BAD_ABI
	BAD_ARGTYPE
)

type Type struct {
	Size      uintptr
	Alignment uint16
	Type      uint16
	Elements  **Type
}

/*typedef struct {
  ffi_abi abi;
  unsigned nargs;
  ffi_type **arg_types;
  ffi_type *rtype;
  unsigned bytes;
  unsigned flags;
#ifdef FFI_EXTRA_CIF_FIELDS
  FFI_EXTRA_CIF_FIELDS;
#endif
} ffi_cif;
*/

type Cif struct {
	Abi      c.Uint
	NArgs    c.Uint
	ArgTypes **Type
	RType    *Type
	Bytes    c.Uint
	Flags    c.Uint
	//Extra    c.Uint
}

/*
ffi_status
ffi_prep_cif(ffi_cif *cif,

	ffi_abi abi,
	unsigned int nargs,
	ffi_type *rtype,
	ffi_type **atypes);
*/
func PrepCif(cif *Cif, abi c.Uint, nargs c.Uint, rtype *Type, atype **Type) c.Uint {
	panic("not implemented")
}

/*
ffi_status ffi_prep_cif_var(ffi_cif *cif,

	ffi_abi abi,
	unsigned int nfixedargs,
	unsigned int ntotalargs,
	ffi_type *rtype,
	ffi_type **atypes);
*/
func PrepCifVar(cif *Cif, abi c.Uint, nfixedargs c.Uint, ntotalargs c.Uint, rtype *Type, atype **Type) c.Uint {
	panic("not implemented")
}

/*
void ffi_call(ffi_cif *cif,

	void (*fn)(void),
	void *rvalue,
	void **avalue);
*/
func Call(cif *Cif, fn unsafe.Pointer, rvalue unsafe.Pointer, avalue *unsafe.Pointer) {
	panic("not implemented")
}

// void *ffi_closure_alloc (size_t size, void **code);
func ClosureAlloc(code *unsafe.Pointer) unsafe.Pointer {
	panic("not implemented")
}

// void ffi_closure_free (void *);
func ClosureFree(unsafe.Pointer) {
	panic("not implemented")
}

/*
ffi_status
ffi_prep_closure_loc (ffi_closure*,
      ffi_cif *,
      void (*fun)(ffi_cif*,void*,void**,void*),
      void *user_data,
      void *codeloc);
*/

//llgo:type C
type ClosureFunc func(cif *Cif, ret unsafe.Pointer, args *unsafe.Pointer, userdata unsafe.Pointer)

func PreClosureLoc(closure unsafe.Pointer, cif *Cif, fn ClosureFunc, userdata unsafe.Pointer, codeloc unsafe.Pointer) c.Uint {
	panic("not implemented")
}

func add(ptr unsafe.Pointer, offset uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(ptr) + offset)
}

func Index(args *unsafe.Pointer, i uintptr) unsafe.Pointer {
	return (*(*unsafe.Pointer)(add(unsafe.Pointer(args), i*unsafe.Sizeof(0))))
}

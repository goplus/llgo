package ffi

import (
	"unsafe"

	c "github.com/goplus/llgo/runtime/internal/clite"
)

const (
	LLGoPackage = "link: $(pkg-config --libs libffi); -lffi"
	LLGoFiles   = "$(pkg-config --cflags libffi): _wrap/libffi.c"
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
//go:linkname PrepCif C.ffi_prep_cif
func PrepCif(cif *Cif, abi c.Uint, nargs c.Uint, rtype *Type, atype **Type) c.Uint

/*
ffi_status ffi_prep_cif_var(ffi_cif *cif,
			    ffi_abi abi,
			    unsigned int nfixedargs,
			    unsigned int ntotalargs,
			    ffi_type *rtype,
			    ffi_type **atypes);
*/
//go:linkname PrepCifVar C.ffi_prep_cif_var
func PrepCifVar(cif *Cif, abi c.Uint, nfixedargs c.Uint, ntotalargs c.Uint, rtype *Type, atype **Type) c.Uint

/*
void ffi_call(ffi_cif *cif,
			void (*fn)(void),
			void *rvalue,
			void **avalue);
*/
//go:linkname Call C.ffi_call
func Call(cif *Cif, fn unsafe.Pointer, rvalue unsafe.Pointer, avalue *unsafe.Pointer)

// void *ffi_closure_alloc (size_t size, void **code);
//
//go:linkname ClosureAlloc C.llog_ffi_closure_alloc
func ClosureAlloc(code *unsafe.Pointer) unsafe.Pointer

// void ffi_closure_free (void *);
//
//go:linkname ClosureFree C.ffi_closure_free
func ClosureFree(unsafe.Pointer)

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

//go:linkname PreClosureLoc C.ffi_prep_closure_loc
func PreClosureLoc(closure unsafe.Pointer, cif *Cif, fn ClosureFunc, userdata unsafe.Pointer, codeloc unsafe.Pointer) c.Uint

func add(ptr unsafe.Pointer, offset uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(ptr) + offset)
}

func Index(args *unsafe.Pointer, i uintptr) unsafe.Pointer {
	return (*(*unsafe.Pointer)(add(unsafe.Pointer(args), i*unsafe.Sizeof(0))))
}

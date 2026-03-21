// Package mdtest provides test-only wrappers that mirror the named metadata
// read APIs we expect to add to github.com/goplus/llvm. Because this package
// cannot add methods to llvm.Module/llvm.Value, it exposes package-level
// helpers with the same data model so callers can later switch to direct
// goplus/llvm APIs with minimal churn.
package mdtest

/*
#include <stdlib.h>

typedef struct LLVMOpaqueModule *LLVMModuleRef;
typedef struct LLVMOpaqueValue *LLVMValueRef;

unsigned LLVMGetNamedMetadataNumOperands(LLVMModuleRef M, const char *Name);
void LLVMGetNamedMetadataOperands(LLVMModuleRef M, const char *Name, LLVMValueRef *Dest);
unsigned LLVMGetMDNodeNumOperands(LLVMValueRef V);
void LLVMGetMDNodeOperands(LLVMValueRef V, LLVMValueRef *Dest);
const char *LLVMGetMDString(LLVMValueRef V, unsigned *Length);
LLVMValueRef LLVMIsAMDString(LLVMValueRef Val);

static unsigned llgoNamedMetadataNumOperands(void *M, const char *Name) {
	return LLVMGetNamedMetadataNumOperands((LLVMModuleRef)M, Name);
}

static void llgoNamedMetadataOperands(void *M, const char *Name, LLVMValueRef *Dest) {
	LLVMGetNamedMetadataOperands((LLVMModuleRef)M, Name, Dest);
}

static unsigned llgoMDNodeNumOperands(void *V) {
	return LLVMGetMDNodeNumOperands((LLVMValueRef)V);
}

static void llgoMDNodeOperands(void *V, LLVMValueRef *Dest) {
	LLVMGetMDNodeOperands((LLVMValueRef)V, Dest);
}

static const char *llgoMDString(void *V, unsigned *Length) {
	return LLVMGetMDString((LLVMValueRef)V, Length);
}

static int llgoIsMDString(void *V) {
	return LLVMIsAMDString((LLVMValueRef)V) != 0;
}

*/
import "C"

import (
	"unsafe"

	"github.com/goplus/llvm"
)

func GetNamedMetadataNumOperands(mod llvm.Module, name string) int {
	cname := C.CString(name)
	defer C.free(unsafe.Pointer(cname))
	return int(C.llgoNamedMetadataNumOperands(unsafe.Pointer(mod.C), cname))
}

func GetNamedMetadataOperands(mod llvm.Module, name string) []llvm.Value {
	n := GetNamedMetadataNumOperands(mod, name)
	if n != 0 {
		cname := C.CString(name)
		defer C.free(unsafe.Pointer(cname))
		values := make([]llvm.Value, n)
		C.llgoNamedMetadataOperands(unsafe.Pointer(mod.C), cname, (*C.LLVMValueRef)(unsafe.Pointer(&values[0])))
		return values
	}
	return nil
}

func GetMDNodeNumOperands(v llvm.Value) int {
	return int(C.llgoMDNodeNumOperands(unsafe.Pointer(v.C)))
}

func GetMDNodeOperands(v llvm.Value) []llvm.Value {
	n := GetMDNodeNumOperands(v)
	if n != 0 {
		values := make([]llvm.Value, n)
		C.llgoMDNodeOperands(unsafe.Pointer(v.C), (*C.LLVMValueRef)(unsafe.Pointer(&values[0])))
		return values
	}
	return nil
}

func IsAMDString(v llvm.Value) bool {
	return C.llgoIsMDString(unsafe.Pointer(v.C)) != 0
}

func GetMDString(v llvm.Value) string {
	var n C.uint
	s := C.llgoMDString(unsafe.Pointer(v.C), &n)
	return C.GoStringN(s, C.int(n))
}

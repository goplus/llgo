package dce

/*
#include <stdlib.h>

typedef struct LLVMOpaqueModule *LLVMModuleRef;
typedef struct LLVMOpaqueValue *LLVMValueRef;

unsigned LLVMGetNamedMetadataNumOperands(LLVMModuleRef M, const char *Name);
void LLVMGetNamedMetadataOperands(LLVMModuleRef M, const char *Name, LLVMValueRef *Dest);
unsigned LLVMGetMDNodeNumOperands(LLVMValueRef V);
void LLVMGetMDNodeOperands(LLVMValueRef V, LLVMValueRef *Dest);
const char *LLVMGetMDString(LLVMValueRef V, unsigned *Length);

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
*/
import "C"

import (
	"fmt"
	"strings"
	"unsafe"

	llvm "github.com/goplus/llvm"
)

const (
	llgoUseIfaceMetadata       = "llgo.useiface"
	llgoUseIfaceMethodMetadata = "llgo.useifacemethod"
	llgoMethodOffMetadata      = "llgo.methodoff"
	llgoUseNamedMethodMetadata = "llgo.usenamedmethod"
	llgoReflectMethodMetadata  = "llgo.reflectmethod"

	runtimeABIPrefix = "github.com/goplus/llgo/runtime/abi."
)

// BuildInput constructs the phase-1 analyzer input from LLVM modules.
// This stage centralizes LLVM scanning so the core analysis can run on
// plain Go data structures.
func BuildInput(mods []llvm.Module) (Input, error) {
	input := Input{
		OrdinaryEdges: make(map[string]map[string]struct{}),
		TypeChildren:  make(map[string]map[string]struct{}),
		MethodRefs:    make(map[string]map[int]map[string]struct{}),
	}
	for _, mod := range mods {
		if mod.IsNil() {
			continue
		}
		scanModuleOrdinaryEdges(input.OrdinaryEdges, mod)
		scanModuleTypeChildren(input.TypeChildren, mod)
		scanModuleMethodRefs(input.MethodRefs, mod)
		if err := scanModuleMetadata(&input, mod); err != nil {
			return Input{}, err
		}
	}
	return input, nil
}

func scanModuleOrdinaryEdges(edges map[string]map[string]struct{}, mod llvm.Module) {
	for fn := mod.FirstFunction(); !fn.IsNil(); fn = llvm.NextFunction(fn) {
		src := fn.Name()
		if src == "" || fn.IsDeclaration() {
			continue
		}
		for bb := fn.FirstBasicBlock(); !bb.IsNil(); bb = llvm.NextBasicBlock(bb) {
			for inst := bb.FirstInstruction(); !inst.IsNil(); inst = llvm.NextInstruction(inst) {
				collectValueEdges(edges, src, inst)
			}
		}
	}
	for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
		src := g.Name()
		if src == "" {
			continue
		}
		init := g.Initializer()
		if init.IsNil() {
			continue
		}
		if isTypeGlobal(g) {
			collectTypeGlobalOrdinaryEdges(edges, src, g)
			continue
		}
		collectValueEdges(edges, src, init)
	}
}

func collectTypeGlobalOrdinaryEdges(edges map[string]map[string]struct{}, src string, g llvm.Value) {
	init := g.Initializer()
	if init.IsNil() {
		return
	}
	if !hasUncommonTypeLayout(g.GlobalValueType()) || init.OperandsCount() != 3 {
		collectValueEdges(edges, src, init)
		return
	}
	collectValueEdges(edges, src, init.Operand(0))
	collectValueEdges(edges, src, init.Operand(1))
}

func collectValueEdges(edges map[string]map[string]struct{}, src string, root llvm.Value) {
	seen := make(map[unsafe.Pointer]struct{})
	var visit func(v llvm.Value)
	visit = func(v llvm.Value) {
		if v.IsNil() {
			return
		}
		ptr := unsafe.Pointer(v.C)
		if _, ok := seen[ptr]; ok {
			return
		}
		seen[ptr] = struct{}{}

		if dst := symbolNameOf(v); dst != "" {
			addEdge(edges, src, dst)
		}
		for i := 0; i < v.OperandsCount(); i++ {
			visit(v.Operand(i))
		}
	}
	visit(root)
}

func addEdge(edges map[string]map[string]struct{}, src, dst string) {
	if src == "" || dst == "" {
		return
	}
	out := edges[src]
	if out == nil {
		out = make(map[string]struct{})
		edges[src] = out
	}
	out[dst] = struct{}{}
}

func symbolNameOf(v llvm.Value) string {
	if v.IsNil() || v.IsAGlobalValue().IsNil() {
		return ""
	}
	return v.Name()
}

func scanModuleTypeChildren(typeChildren map[string]map[string]struct{}, mod llvm.Module) {
	globals := make(map[string]llvm.Value)
	for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
		if name := g.Name(); name != "" {
			globals[name] = g
		}
	}
	for _, g := range globals {
		if !isTypeGlobal(g) {
			continue
		}
		scanTypeChildren(typeChildren, g)
	}
}

func scanTypeChildren(typeChildren map[string]map[string]struct{}, g llvm.Value) {
	src := g.Name()
	init := g.Initializer()
	if src == "" || init.IsNil() {
		return
	}
	seen := make(map[unsafe.Pointer]struct{})
	var visit func(v llvm.Value)
	visit = func(v llvm.Value) {
		if v.IsNil() {
			return
		}
		ptr := unsafe.Pointer(v.C)
		if _, ok := seen[ptr]; ok {
			return
		}
		seen[ptr] = struct{}{}

		for i := 0; i < v.OperandsCount(); i++ {
			op := v.Operand(i)
			if op.IsNil() {
				continue
			}
			if !op.IsAGlobalVariable().IsNil() {
				dst := op.Name()
				if dst == "" || dst == src {
					continue
				}
				if isTypeGlobal(op) {
					addEdge(typeChildren, src, dst)
					continue
				}
				if init := op.Initializer(); !init.IsNil() {
					visit(init)
				}
				continue
			}
			visit(op)
		}
	}
	visit(init)
}

func scanModuleMethodRefs(methodRefs map[string]map[int]map[string]struct{}, mod llvm.Module) {
	for g := mod.FirstGlobal(); !g.IsNil(); g = llvm.NextGlobal(g) {
		if !isTypeGlobal(g) {
			continue
		}
		scanMethodRefs(methodRefs, g)
	}
}

func scanMethodRefs(methodRefs map[string]map[int]map[string]struct{}, g llvm.Value) {
	if !hasUncommonTypeLayout(g.GlobalValueType()) {
		return
	}
	init := g.Initializer()
	if init.IsNil() || init.OperandsCount() != 3 {
		return
	}
	methods := init.Operand(2)
	for i := 0; i < methods.OperandsCount(); i++ {
		method := methods.Operand(i)
		if method.IsNil() || method.OperandsCount() != 4 {
			continue
		}
		for j := 1; j < 4; j++ {
			if ref := symbolNameOf(method.Operand(j)); ref != "" {
				addMethodRef(methodRefs, g.Name(), i, ref)
			}
		}
	}
}

func addMethodRef(methodRefs map[string]map[int]map[string]struct{}, typeName string, index int, sym string) {
	if typeName == "" || sym == "" {
		return
	}
	byIndex := methodRefs[typeName]
	if byIndex == nil {
		byIndex = make(map[int]map[string]struct{})
		methodRefs[typeName] = byIndex
	}
	refs := byIndex[index]
	if refs == nil {
		refs = make(map[string]struct{})
		byIndex[index] = refs
	}
	refs[sym] = struct{}{}
}

func isTypeGlobal(v llvm.Value) bool {
	if v.IsNil() || v.IsAGlobalVariable().IsNil() {
		return false
	}
	return isABITypeDescriptor(v.GlobalValueType())
}

func isABITypeDescriptor(t llvm.Type) bool {
	if t.IsNil() || t.TypeKind() != llvm.StructTypeKind {
		return false
	}
	if isRuntimeABIType(t) {
		return true
	}
	elems := t.StructElementTypes()
	return len(elems) != 0 && isRuntimeABIType(elems[0])
}

func isRuntimeABIType(t llvm.Type) bool {
	return t.TypeKind() == llvm.StructTypeKind && strings.HasPrefix(t.StructName(), runtimeABIPrefix)
}

func hasUncommonTypeLayout(t llvm.Type) bool {
	if t.IsNil() || t.TypeKind() != llvm.StructTypeKind {
		return false
	}
	elems := t.StructElementTypes()
	return len(elems) == 3 && elems[1].TypeKind() == llvm.StructTypeKind && elems[1].StructName() == runtimeABIPrefix+"UncommonType"
}

func scanModuleMetadata(input *Input, mod llvm.Module) error {
	if err := scanUseIface(input, mod); err != nil {
		return err
	}
	if err := scanUseIfaceMethod(input, mod); err != nil {
		return err
	}
	if err := scanMethodOff(input, mod); err != nil {
		return err
	}
	if err := scanUseNamedMethod(input, mod); err != nil {
		return err
	}
	if err := scanReflectMethod(input, mod); err != nil {
		return err
	}
	return nil
}

func scanUseIface(input *Input, mod llvm.Module) error {
	rows, err := namedMetadataRows(mod, llgoUseIfaceMetadata)
	if err != nil {
		return err
	}
	for _, row := range rows {
		if len(row) != 2 {
			return fmt.Errorf("%s row has %d fields, want 2", llgoUseIfaceMetadata, len(row))
		}
		input.UseIface = append(input.UseIface, UseIfaceRow{
			Owner:  mdString(row[0]),
			Target: mdString(row[1]),
		})
	}
	return nil
}

func scanUseIfaceMethod(input *Input, mod llvm.Module) error {
	rows, err := namedMetadataRows(mod, llgoUseIfaceMethodMetadata)
	if err != nil {
		return err
	}
	for _, row := range rows {
		if len(row) != 4 {
			return fmt.Errorf("%s row has %d fields, want 4", llgoUseIfaceMethodMetadata, len(row))
		}
		input.UseIfaceMethod = append(input.UseIfaceMethod, UseIfaceMethodRow{
			Owner:  mdString(row[0]),
			Target: mdString(row[1]),
			Name:   mdString(row[2]),
			MTyp:   mdString(row[3]),
		})
	}
	return nil
}

func scanMethodOff(input *Input, mod llvm.Module) error {
	rows, err := namedMetadataRows(mod, llgoMethodOffMetadata)
	if err != nil {
		return err
	}
	for _, row := range rows {
		if len(row) != 4 {
			return fmt.Errorf("%s row has %d fields, want 4", llgoMethodOffMetadata, len(row))
		}
		input.MethodOff = append(input.MethodOff, MethodOffRow{
			TypeName: mdString(row[0]),
			Index:    int(row[1].ZExtValue()),
			Name:     mdString(row[2]),
			MTyp:     mdString(row[3]),
		})
	}
	return nil
}

func scanUseNamedMethod(input *Input, mod llvm.Module) error {
	rows, err := namedMetadataRows(mod, llgoUseNamedMethodMetadata)
	if err != nil {
		return err
	}
	for _, row := range rows {
		if len(row) != 2 {
			return fmt.Errorf("%s row has %d fields, want 2", llgoUseNamedMethodMetadata, len(row))
		}
		input.UseNamedMethod = append(input.UseNamedMethod, UseNamedMethodRow{
			Owner: mdString(row[0]),
			Name:  mdString(row[1]),
		})
	}
	return nil
}

func scanReflectMethod(input *Input, mod llvm.Module) error {
	rows, err := namedMetadataRows(mod, llgoReflectMethodMetadata)
	if err != nil {
		return err
	}
	for _, row := range rows {
		if len(row) != 1 {
			return fmt.Errorf("%s row has %d fields, want 1", llgoReflectMethodMetadata, len(row))
		}
		input.ReflectMethod = append(input.ReflectMethod, ReflectMethodRow{
			Owner: mdString(row[0]),
		})
	}
	return nil
}

func namedMetadataRows(mod llvm.Module, name string) ([][]llvm.Value, error) {
	cname := C.CString(name)
	defer C.free(unsafe.Pointer(cname))

	n := int(C.llgoNamedMetadataNumOperands(unsafe.Pointer(mod.C), cname))
	if n == 0 {
		return nil, nil
	}
	ops := make([]llvm.Value, n)
	C.llgoNamedMetadataOperands(unsafe.Pointer(mod.C), cname, (*C.LLVMValueRef)(unsafe.Pointer(&ops[0])))
	rows := make([][]llvm.Value, 0, n)
	for _, op := range ops {
		row, err := mdNodeOperands(op)
		if err != nil {
			return nil, fmt.Errorf("%s: %w", name, err)
		}
		rows = append(rows, row)
	}
	return rows, nil
}

func mdNodeOperands(node llvm.Value) ([]llvm.Value, error) {
	n := int(C.llgoMDNodeNumOperands(unsafe.Pointer(node.C)))
	if n < 0 {
		return nil, fmt.Errorf("invalid mdnode operand count")
	}
	if n == 0 {
		return nil, nil
	}
	ops := make([]llvm.Value, n)
	C.llgoMDNodeOperands(unsafe.Pointer(node.C), (*C.LLVMValueRef)(unsafe.Pointer(&ops[0])))
	return ops, nil
}

func mdString(v llvm.Value) string {
	var n C.unsigned
	s := C.llgoMDString(unsafe.Pointer(v.C), &n)
	return C.GoStringN(s, C.int(n))
}

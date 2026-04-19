// LITTEST
package main

import (
	"unsafe"

	"github.com/goplus/llgo/runtime/abi"
)

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/abinamed.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = alloca %"{{.*}}/runtime/abi.StructField", align 8
// CHECK-NEXT:   %1 = alloca %"{{.*}}/runtime/abi.StructField", align 8
// CHECK-NEXT:   %2 = alloca %"{{.*}}/runtime/abi.StructField", align 8
// CHECK-NEXT:   %3 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 48)
// CHECK-NEXT:   store %"{{.*}}/cl/_testrt/abinamed.T" zeroinitializer, ptr %3, align 8
// CHECK-NEXT:   %4 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_{{.*}}/cl/_testrt/abinamed.T", ptr undef }, ptr %3, 1
// CHECK-NEXT:   %5 = call ptr @"{{.*}}/cl/_testrt/abinamed.toEface"(%"{{.*}}/runtime/internal/runtime.eface" %4)
// CHECK-NEXT:   %6 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 72)
// CHECK-NEXT:   store %"{{.*}}/runtime/abi.Type" zeroinitializer, ptr %6, align 8
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @"_llgo_{{.*}}/runtime/abi.Type", ptr undef }, ptr %6, 1
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/cl/_testrt/abinamed.toEface"(%"{{.*}}/runtime/internal/runtime.eface" %7)
// CHECK-NEXT:   %9 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %10 = load ptr, ptr %9, align 8
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %10)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %11 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %12 = load ptr, ptr %11, align 8
// CHECK-NEXT:   %13 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %12, i32 0, i32 10
// CHECK-NEXT:   %14 = load ptr, ptr %13, align 8
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %14)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %15 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %8, i32 0, i32 0
// CHECK-NEXT:   %16 = load ptr, ptr %15, align 8
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %16)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %17 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %8, i32 0, i32 0
// CHECK-NEXT:   %18 = load ptr, ptr %17, align 8
// CHECK-NEXT:   %19 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %18, i32 0, i32 10
// CHECK-NEXT:   %20 = load ptr, ptr %19, align 8
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %20)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %21 = alloca %"{{.*}}/runtime/abi.StructField", align 8
// CHECK-NEXT:   call void @llvm.memset(ptr %21, i8 0, i64 56, i1 false)
// CHECK-NEXT:   %22 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %23 = load ptr, ptr %22, align 8
// CHECK-NEXT:   %24 = call ptr @"{{.*}}/runtime/abi.(*Type).StructType"(ptr %23)
// CHECK-NEXT:   %25 = getelementptr inbounds %"{{.*}}/runtime/abi.StructType", ptr %24, i32 0, i32 2
// CHECK-NEXT:   %26 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %25, align 8
// CHECK-NEXT:   %27 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %26, 0
// CHECK-NEXT:   %28 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %26, 1
// CHECK-NEXT:   %29 = icmp sge i64 0, %28
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %29)
// CHECK-NEXT:   %30 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %27, i64 0
// CHECK-NEXT:   %31 = load %"{{.*}}/runtime/abi.StructField", ptr %30, align 8
// CHECK-NEXT:   store %"{{.*}}/runtime/abi.StructField" %31, ptr %21, align 8
// CHECK-NEXT:   %32 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %21, i32 0, i32 1
// CHECK-NEXT:   %33 = load ptr, ptr %32, align 8
// CHECK-NEXT:   %34 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %35 = load ptr, ptr %34, align 8
// CHECK-NEXT:   %36 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %35, i32 0, i32 10
// CHECK-NEXT:   %37 = load ptr, ptr %36, align 8
// CHECK-NEXT:   %38 = icmp ne ptr %33, %37
// CHECK-NEXT:   br i1 %38, label %_llgo_1, label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %39 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @125, i64 13 }, ptr %39, align 8
// CHECK-NEXT:   %40 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %39, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %40)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_0
// CHECK-NEXT:   %41 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %21, i32 0, i32 1
// CHECK-NEXT:   %42 = load ptr, ptr %41, align 8
// CHECK-NEXT:   %43 = call ptr @"{{.*}}/runtime/abi.(*Type).Elem"(ptr %42)
// CHECK-NEXT:   %44 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %45 = load ptr, ptr %44, align 8
// CHECK-NEXT:   %46 = icmp ne ptr %43, %45
// CHECK-NEXT:   br i1 %46, label %_llgo_3, label %_llgo_4
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_2
// CHECK-NEXT:   %47 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @126, i64 18 }, ptr %47, align 8
// CHECK-NEXT:   %48 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %47, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %48)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_4:                                          ; preds = %_llgo_2
// CHECK-NEXT:   call void @llvm.memset(ptr %2, i8 0, i64 56, i1 false)
// CHECK-NEXT:   %49 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %50 = load ptr, ptr %49, align 8
// CHECK-NEXT:   %51 = call ptr @"{{.*}}/runtime/abi.(*Type).StructType"(ptr %50)
// CHECK-NEXT:   %52 = getelementptr inbounds %"{{.*}}/runtime/abi.StructType", ptr %51, i32 0, i32 2
// CHECK-NEXT:   %53 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %52, align 8
// CHECK-NEXT:   %54 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %53, 0
// CHECK-NEXT:   %55 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %53, 1
// CHECK-NEXT:   %56 = icmp sge i64 1, %55
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %56)
// CHECK-NEXT:   %57 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %54, i64 1
// CHECK-NEXT:   %58 = load %"{{.*}}/runtime/abi.StructField", ptr %57, align 8
// CHECK-NEXT:   store %"{{.*}}/runtime/abi.StructField" %58, ptr %2, align 8
// CHECK-NEXT:   %59 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %2, i32 0, i32 1
// CHECK-NEXT:   %60 = load ptr, ptr %59, align 8
// CHECK-NEXT:   %61 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %8, i32 0, i32 0
// CHECK-NEXT:   %62 = load ptr, ptr %61, align 8
// CHECK-NEXT:   %63 = getelementptr inbounds %"{{.*}}/runtime/abi.Type", ptr %62, i32 0, i32 10
// CHECK-NEXT:   %64 = load ptr, ptr %63, align 8
// CHECK-NEXT:   %65 = icmp ne ptr %60, %64
// CHECK-NEXT:   br i1 %65, label %_llgo_5, label %_llgo_6
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_5:                                          ; preds = %_llgo_4
// CHECK-NEXT:   %66 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @127, i64 13 }, ptr %66, align 8
// CHECK-NEXT:   %67 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %66, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %67)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_6:                                          ; preds = %_llgo_4
// CHECK-NEXT:   %68 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %2, i32 0, i32 1
// CHECK-NEXT:   %69 = load ptr, ptr %68, align 8
// CHECK-NEXT:   %70 = call ptr @"{{.*}}/runtime/abi.(*Type).Elem"(ptr %69)
// CHECK-NEXT:   %71 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %8, i32 0, i32 0
// CHECK-NEXT:   %72 = load ptr, ptr %71, align 8
// CHECK-NEXT:   %73 = icmp ne ptr %70, %72
// CHECK-NEXT:   br i1 %73, label %_llgo_7, label %_llgo_8
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_7:                                          ; preds = %_llgo_6
// CHECK-NEXT:   %74 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @128, i64 18 }, ptr %74, align 8
// CHECK-NEXT:   %75 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %74, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %75)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_8:                                          ; preds = %_llgo_6
// CHECK-NEXT:   call void @llvm.memset(ptr %1, i8 0, i64 56, i1 false)
// CHECK-NEXT:   %76 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %77 = load ptr, ptr %76, align 8
// CHECK-NEXT:   %78 = call ptr @"{{.*}}/runtime/abi.(*Type).StructType"(ptr %77)
// CHECK-NEXT:   %79 = getelementptr inbounds %"{{.*}}/runtime/abi.StructType", ptr %78, i32 0, i32 2
// CHECK-NEXT:   %80 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %79, align 8
// CHECK-NEXT:   %81 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %80, 0
// CHECK-NEXT:   %82 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %80, 1
// CHECK-NEXT:   %83 = icmp sge i64 2, %82
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %83)
// CHECK-NEXT:   %84 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %81, i64 2
// CHECK-NEXT:   %85 = load %"{{.*}}/runtime/abi.StructField", ptr %84, align 8
// CHECK-NEXT:   store %"{{.*}}/runtime/abi.StructField" %85, ptr %1, align 8
// CHECK-NEXT:   %86 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %1, i32 0, i32 1
// CHECK-NEXT:   %87 = load ptr, ptr %86, align 8
// CHECK-NEXT:   %88 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %8, i32 0, i32 0
// CHECK-NEXT:   %89 = load ptr, ptr %88, align 8
// CHECK-NEXT:   %90 = call ptr @"{{.*}}/runtime/abi.(*Type).StructType"(ptr %89)
// CHECK-NEXT:   %91 = getelementptr inbounds %"{{.*}}/runtime/abi.StructType", ptr %90, i32 0, i32 2
// CHECK-NEXT:   %92 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %91, align 8
// CHECK-NEXT:   %93 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %92, 0
// CHECK-NEXT:   %94 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %92, 1
// CHECK-NEXT:   %95 = icmp sge i64 0, %94
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %95)
// CHECK-NEXT:   %96 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %93, i64 0
// CHECK-NEXT:   %97 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %96, i32 0, i32 1
// CHECK-NEXT:   %98 = load ptr, ptr %97, align 8
// CHECK-NEXT:   %99 = icmp ne ptr %87, %98
// CHECK-NEXT:   br i1 %99, label %_llgo_9, label %_llgo_10
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_9:                                          ; preds = %_llgo_8
// CHECK-NEXT:   %100 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @129, i64 13 }, ptr %100, align 8
// CHECK-NEXT:   %101 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %100, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %101)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_10:                                         ; preds = %_llgo_8
// CHECK-NEXT:   call void @llvm.memset(ptr %0, i8 0, i64 56, i1 false)
// CHECK-NEXT:   %102 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %103 = load ptr, ptr %102, align 8
// CHECK-NEXT:   %104 = call ptr @"{{.*}}/runtime/abi.(*Type).StructType"(ptr %103)
// CHECK-NEXT:   %105 = getelementptr inbounds %"{{.*}}/runtime/abi.StructType", ptr %104, i32 0, i32 2
// CHECK-NEXT:   %106 = load %"{{.*}}/runtime/internal/runtime.Slice", ptr %105, align 8
// CHECK-NEXT:   %107 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %106, 0
// CHECK-NEXT:   %108 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %106, 1
// CHECK-NEXT:   %109 = icmp sge i64 3, %108
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %109)
// CHECK-NEXT:   %110 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %107, i64 3
// CHECK-NEXT:   %111 = load %"{{.*}}/runtime/abi.StructField", ptr %110, align 8
// CHECK-NEXT:   store %"{{.*}}/runtime/abi.StructField" %111, ptr %0, align 8
// CHECK-NEXT:   %112 = getelementptr inbounds %"{{.*}}/runtime/abi.StructField", ptr %0, i32 0, i32 1
// CHECK-NEXT:   %113 = load ptr, ptr %112, align 8
// CHECK-NEXT:   %114 = call ptr @"{{.*}}/runtime/abi.(*Type).Elem"(ptr %113)
// CHECK-NEXT:   %115 = getelementptr inbounds %"{{.*}}/cl/_testrt/abinamed.eface", ptr %5, i32 0, i32 0
// CHECK-NEXT:   %116 = load ptr, ptr %115, align 8
// CHECK-NEXT:   %117 = icmp ne ptr %114, %116
// CHECK-NEXT:   br i1 %117, label %_llgo_11, label %_llgo_12
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_11:                                         ; preds = %_llgo_10
// CHECK-NEXT:   %118 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.String" { ptr @130, i64 13 }, ptr %118, align 8
// CHECK-NEXT:   %119 = insertvalue %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %118, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.Panic"(%"{{.*}}/runtime/internal/runtime.eface" %119)
// CHECK-NEXT:   unreachable
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_12:                                         ; preds = %_llgo_10
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

type T struct {
	p *T
	t *abi.Type
	n uintptr
	a []T
}

type eface struct {
	typ  *abi.Type
	data unsafe.Pointer
}

func main() {
	e := toEface(T{})
	e2 := toEface(abi.Type{})

	println(e.typ)
	println(e.typ.PtrToThis_)
	println(e2.typ)
	println(e2.typ.PtrToThis_)

	f0 := e.typ.StructType().Fields[0]
	if f0.Typ != e.typ.PtrToThis_ {
		panic("error field 0")
	}
	if f0.Typ.Elem() != e.typ {
		panic("error field 0 elem")
	}
	f1 := e.typ.StructType().Fields[1]
	if f1.Typ != e2.typ.PtrToThis_ {
		panic("error field 1")
	}
	if f1.Typ.Elem() != e2.typ {
		panic("error field 1 elem")
	}
	f2 := e.typ.StructType().Fields[2]
	if f2.Typ != e2.typ.StructType().Fields[0].Typ {
		panic("error field 2")
	}
	f3 := e.typ.StructType().Fields[3]
	if f3.Typ.Elem() != e.typ {
		panic("error field 3")
	}
}

// CHECK-LABEL: define ptr @"{{.*}}/cl/_testrt/abinamed.toEface"(%"{{.*}}/runtime/internal/runtime.eface" %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" %0, ptr %1, align 8
// CHECK-NEXT:   ret ptr %1
// CHECK-NEXT: }
func toEface(i any) *eface {
	return (*eface)(unsafe.Pointer(&i))
}

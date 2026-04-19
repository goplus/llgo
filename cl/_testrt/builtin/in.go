// LITTEST
package main

import (
	"unsafe"
)

// CHECK-LINE: @0 = private unnamed_addr constant [5 x i8] c"hello", align 1
// CHECK-LINE: @1 = private unnamed_addr constant [3 x i8] c"def", align 1
// CHECK-LINE: @3 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
// CHECK-LINE: @4 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
// CHECK-LINE: @5 = private unnamed_addr constant [3 x i8] c"abc", align 1
// CHECK-LINE: @6 = private unnamed_addr constant [3 x i8] c"abd", align 1
// CHECK-LINE: @7 = private unnamed_addr constant [2 x i8] c"fn", align 1

var a int64 = 1<<63 - 1
var b int64 = -1 << 63
var n uint64 = 1<<64 - 1

const (
	uvnan    = 0x7FF8000000000001
	uvinf    = 0x7FF0000000000000
	uvneginf = 0xFFF0000000000000
	uvone    = 0x3FF0000000000000
	mask     = 0x7FF
	shift    = 64 - 11 - 1
	bias     = 1023
	signMask = 1 << 63
	fracMask = 1<<shift - 1
)

// CHECK-LABEL: define double @"{{.*}}/cl/_testrt/builtin.Float64frombits"(i64 %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   store i64 %0, ptr %1, align 8
// CHECK-NEXT:   %2 = load double, ptr %1, align 8
// CHECK-NEXT:   ret double %2
// CHECK-NEXT: }

func Float64frombits(b uint64) float64 { return *(*float64)(unsafe.Pointer(&b)) }

// CHECK-LABEL: define double @"{{.*}}/cl/_testrt/builtin.Inf"(i64 %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = icmp sge i64 %0, 0
// CHECK-NEXT:   br i1 %1, label %_llgo_1, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_2
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
// CHECK-NEXT:   %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
// CHECK-NEXT:   %3 = call double @"{{.*}}/cl/_testrt/builtin.Float64frombits"(i64 %2)
// CHECK-NEXT:   ret double %3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_0
// CHECK-NEXT:   br label %_llgo_2
// CHECK-NEXT: }

// Inf returns positive infinity if sign >= 0, negative infinity if sign < 0.
func Inf(sign int) float64 {
	var v uint64
	if sign >= 0 {
		v = uvinf
	} else {
		v = uvneginf
	}
	return Float64frombits(v)
}

// CHECK-LABEL: define i1 @"{{.*}}/cl/_testrt/builtin.IsNaN"(double %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %1 = fcmp une double %0, %0
// CHECK-NEXT:   ret i1 %1
// CHECK-NEXT: }

func IsNaN(f float64) (is bool) {
	return f != f
}

// CHECK-LABEL: define double @"{{.*}}/cl/_testrt/builtin.NaN"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call double @"{{.*}}/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
// CHECK-NEXT:   ret double %0
// CHECK-NEXT: }

// NaN returns an IEEE 754 “not-a-number” value.
func NaN() float64 { return Float64frombits(uvnan) }

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/builtin.demo"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

func demo() {
}

// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/builtin.main"() {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %0 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 32)
// CHECK-NEXT:   %1 = getelementptr inbounds i64, ptr %0, i64 0
// CHECK-NEXT:   store i64 1, ptr %1, align 8
// CHECK-NEXT:   %2 = getelementptr inbounds i64, ptr %0, i64 1
// CHECK-NEXT:   store i64 2, ptr %2, align 8
// CHECK-NEXT:   %3 = getelementptr inbounds i64, ptr %0, i64 2
// CHECK-NEXT:   store i64 3, ptr %3, align 8
// CHECK-NEXT:   %4 = getelementptr inbounds i64, ptr %0, i64 3
// CHECK-NEXT:   store i64 4, ptr %4, align 8
// CHECK-NEXT:   %5 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %0, 0
// CHECK-NEXT:   %6 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %5, i64 4, 1
// CHECK-NEXT:   %7 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %6, i64 4, 2
// CHECK-NEXT:   %8 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 32)
// CHECK-NEXT:   %9 = getelementptr inbounds i64, ptr %8, i64 0
// CHECK-NEXT:   %10 = getelementptr inbounds i64, ptr %8, i64 1
// CHECK-NEXT:   %11 = getelementptr inbounds i64, ptr %8, i64 2
// CHECK-NEXT:   %12 = getelementptr inbounds i64, ptr %8, i64 3
// CHECK-NEXT:   store i64 1, ptr %9, align 8
// CHECK-NEXT:   store i64 2, ptr %10, align 8
// CHECK-NEXT:   store i64 3, ptr %11, align 8
// CHECK-NEXT:   store i64 4, ptr %12, align 8
// CHECK-NEXT:   %13 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 10)
// CHECK-NEXT:   %14 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
// CHECK-NEXT:   %15 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 1
// CHECK-NEXT:   %16 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %7)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %15)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %16)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %17 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %14, 1
// CHECK-NEXT:   %18 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %14, 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %14)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %17)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %18)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 4)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 4)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 4)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 4)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %19 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 32)
// CHECK-NEXT:   %20 = getelementptr inbounds i64, ptr %19, i64 0
// CHECK-NEXT:   store i64 1, ptr %20, align 8
// CHECK-NEXT:   %21 = getelementptr inbounds i64, ptr %19, i64 1
// CHECK-NEXT:   store i64 2, ptr %21, align 8
// CHECK-NEXT:   %22 = getelementptr inbounds i64, ptr %19, i64 2
// CHECK-NEXT:   store i64 3, ptr %22, align 8
// CHECK-NEXT:   %23 = getelementptr inbounds i64, ptr %19, i64 3
// CHECK-NEXT:   store i64 4, ptr %23, align 8
// CHECK-NEXT:   %24 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %19, 0
// CHECK-NEXT:   %25 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %24, i64 4, 1
// CHECK-NEXT:   %26 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %25, i64 4, 2
// CHECK-NEXT:   %27 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %26, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %27)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 4)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %28 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %29 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 1
// CHECK-NEXT:   %30 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %31 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %30, i64 8, i64 %28, i64 1, i64 %29, i64 %28)
// CHECK-NEXT:   %32 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %31, 1
// CHECK-NEXT:   %33 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %34 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 1
// CHECK-NEXT:   %35 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %36 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %35, i64 8, i64 %33, i64 1, i64 %34, i64 %33)
// CHECK-NEXT:   %37 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %36, 2
// CHECK-NEXT:   %38 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %39 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %40 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %38, i64 1, i64 2, i64 %38)
// CHECK-NEXT:   %41 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %40, 1
// CHECK-NEXT:   %42 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %43 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %44 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 %42)
// CHECK-NEXT:   %45 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %44, 2
// CHECK-NEXT:   %46 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %47 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %48 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %47, i64 8, i64 %46, i64 1, i64 2, i64 2)
// CHECK-NEXT:   %49 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %48, 1
// CHECK-NEXT:   %50 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 2
// CHECK-NEXT:   %51 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %7, 0
// CHECK-NEXT:   %52 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %51, i64 8, i64 %50, i64 1, i64 2, i64 2)
// CHECK-NEXT:   %53 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %52, 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %37)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %41)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %45)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %49)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %53)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %54 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
// CHECK-NEXT:   %55 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %54, 1
// CHECK-NEXT:   %56 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
// CHECK-NEXT:   %57 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %56, 2
// CHECK-NEXT:   %58 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
// CHECK-NEXT:   %59 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %58, 1
// CHECK-NEXT:   %60 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
// CHECK-NEXT:   %61 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %60, 2
// CHECK-NEXT:   %62 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
// CHECK-NEXT:   %63 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %62, 1
// CHECK-NEXT:   %64 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
// CHECK-NEXT:   %65 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %64, 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %55)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %57)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %59)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %61)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %63)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %65)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %66 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringSlice"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
// CHECK-NEXT:   %67 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringSlice"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
// CHECK-NEXT:   %68 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringSlice"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
// CHECK-NEXT:   %69 = extractvalue %"{{.*}}/runtime/internal/runtime.String" %68, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @0, i64 5 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %66)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %67)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %69)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %70 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 32)
// CHECK-NEXT:   %71 = getelementptr inbounds i64, ptr %70, i64 0
// CHECK-NEXT:   store i64 5, ptr %71, align 8
// CHECK-NEXT:   %72 = getelementptr inbounds i64, ptr %70, i64 1
// CHECK-NEXT:   store i64 6, ptr %72, align 8
// CHECK-NEXT:   %73 = getelementptr inbounds i64, ptr %70, i64 2
// CHECK-NEXT:   store i64 7, ptr %73, align 8
// CHECK-NEXT:   %74 = getelementptr inbounds i64, ptr %70, i64 3
// CHECK-NEXT:   store i64 8, ptr %74, align 8
// CHECK-NEXT:   %75 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %70, 0
// CHECK-NEXT:   %76 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %75, i64 4, 1
// CHECK-NEXT:   %77 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %76, i64 4, 2
// CHECK-NEXT:   %78 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %77, 0
// CHECK-NEXT:   %79 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %77, 1
// CHECK-NEXT:   %80 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.SliceAppend"(%"{{.*}}/runtime/internal/runtime.Slice" %7, ptr %78, i64 %79, i64 8)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %80)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %81 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 3)
// CHECK-NEXT:   %82 = getelementptr inbounds i8, ptr %81, i64 0
// CHECK-NEXT:   store i8 97, ptr %82, align 1
// CHECK-NEXT:   %83 = getelementptr inbounds i8, ptr %81, i64 1
// CHECK-NEXT:   store i8 98, ptr %83, align 1
// CHECK-NEXT:   %84 = getelementptr inbounds i8, ptr %81, i64 2
// CHECK-NEXT:   store i8 99, ptr %84, align 1
// CHECK-NEXT:   %85 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %81, 0
// CHECK-NEXT:   %86 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %85, i64 3, 1
// CHECK-NEXT:   %87 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %86, i64 3, 2
// CHECK-NEXT:   %88 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.SliceAppend"(%"{{.*}}/runtime/internal/runtime.Slice" %87, ptr @1, i64 3, i64 1)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %88)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %89 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 0)
// CHECK-NEXT:   %90 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %89, 0
// CHECK-NEXT:   %91 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %90, i64 0, 1
// CHECK-NEXT:   %92 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %91, i64 0, 2
// CHECK-NEXT:   %93 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   %94 = getelementptr inbounds { ptr, ptr }, ptr %93, i64 0
// CHECK-NEXT:   store { ptr, ptr } { ptr @"__llgo_stub.{{.*}}/cl/_testrt/builtin.main$1", ptr null }, ptr %94, align 8
// CHECK-NEXT:   %95 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %93, 0
// CHECK-NEXT:   %96 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %95, i64 1, 1
// CHECK-NEXT:   %97 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %96, i64 1, 2
// CHECK-NEXT:   %98 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %97, 0
// CHECK-NEXT:   %99 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %97, 1
// CHECK-NEXT:   %100 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.SliceAppend"(%"{{.*}}/runtime/internal/runtime.Slice" %92, ptr %98, i64 %99, i64 16)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %100)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %101 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 16)
// CHECK-NEXT:   store %"{{.*}}/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, ptr %101, align 8
// CHECK-NEXT:   %102 = load %"{{.*}}/runtime/internal/runtime.eface", ptr %101, align 8
// CHECK-NEXT:   %103 = ptrtoint ptr %101 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 true)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 0)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 100)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 -100)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 255)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 -100)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintEface"(%"{{.*}}/runtime/internal/runtime.eface" %102)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %101)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %103)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %104 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 3)
// CHECK-NEXT:   %105 = call ptr @"{{.*}}/runtime/internal/runtime.AllocZ"(i64 8)
// CHECK-NEXT:   %106 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" undef, ptr %104, 0
// CHECK-NEXT:   %107 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %106, i64 3, 1
// CHECK-NEXT:   %108 = insertvalue %"{{.*}}/runtime/internal/runtime.Slice" %107, i64 3, 2
// CHECK-NEXT:   %109 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %88, 0
// CHECK-NEXT:   %110 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %88, 1
// CHECK-NEXT:   %111 = call i64 @"{{.*}}/runtime/internal/runtime.SliceCopy"(%"{{.*}}/runtime/internal/runtime.Slice" %108, ptr %109, i64 %110, i64 1)
// CHECK-NEXT:   store i64 %111, ptr %105, align 8
// CHECK-NEXT:   %112 = load i64, ptr %105, align 8
// CHECK-NEXT:   %113 = getelementptr inbounds i8, ptr %104, i64 0
// CHECK-NEXT:   %114 = load i8, ptr %113, align 1
// CHECK-NEXT:   %115 = getelementptr inbounds i8, ptr %104, i64 1
// CHECK-NEXT:   %116 = load i8, ptr %115, align 1
// CHECK-NEXT:   %117 = getelementptr inbounds i8, ptr %104, i64 2
// CHECK-NEXT:   %118 = load i8, ptr %117, align 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %112)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %119 = zext i8 %114 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %119)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %120 = zext i8 %116 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %120)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %121 = zext i8 %118 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %121)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %122 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.NewSlice3"(ptr %104, i64 1, i64 3, i64 1, i64 3, i64 3)
// CHECK-NEXT:   %123 = call i64 @"{{.*}}/runtime/internal/runtime.SliceCopy"(%"{{.*}}/runtime/internal/runtime.Slice" %122, ptr @3, i64 4, i64 1)
// CHECK-NEXT:   store i64 %123, ptr %105, align 8
// CHECK-NEXT:   %124 = load i64, ptr %105, align 8
// CHECK-NEXT:   %125 = getelementptr inbounds i8, ptr %104, i64 0
// CHECK-NEXT:   %126 = load i8, ptr %125, align 1
// CHECK-NEXT:   %127 = getelementptr inbounds i8, ptr %104, i64 1
// CHECK-NEXT:   %128 = load i8, ptr %127, align 1
// CHECK-NEXT:   %129 = getelementptr inbounds i8, ptr %104, i64 2
// CHECK-NEXT:   %130 = load i8, ptr %129, align 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %124)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %131 = zext i8 %126 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %131)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %132 = zext i8 %128 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %132)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %133 = zext i8 %130 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintUint"(i64 %133)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %134 = call ptr @"{{.*}}/runtime/internal/runtime.AllocU"(i64 8)
// CHECK-NEXT:   %135 = getelementptr inbounds { ptr }, ptr %134, i32 0, i32 0
// CHECK-NEXT:   store ptr %105, ptr %135, align 8
// CHECK-NEXT:   %136 = insertvalue { ptr, ptr } { ptr @"{{.*}}/cl/_testrt/builtin.main$3", ptr undef }, ptr %134, 1
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr @"{{.*}}/cl/_testrt/builtin.demo")
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr @"{{.*}}/cl/_testrt/builtin.demo")
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr @"{{.*}}/cl/_testrt/builtin.main$2")
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %137 = extractvalue { ptr, ptr } %136, 0
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintPointer"(ptr %137)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %138 = call ptr @"{{.*}}/runtime/internal/runtime.NewStringIter"(%"{{.*}}/runtime/internal/runtime.String" { ptr @4, i64 7 })
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
// CHECK-NEXT:   %139 = call { i1, i64, i32 } @"{{.*}}/runtime/internal/runtime.StringIterNext"(ptr %138)
// CHECK-NEXT:   %140 = extractvalue { i1, i64, i32 } %139, 0
// CHECK-NEXT:   br i1 %140, label %_llgo_2, label %_llgo_3
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_2:                                          ; preds = %_llgo_1
// CHECK-NEXT:   %141 = extractvalue { i1, i64, i32 } %139, 1
// CHECK-NEXT:   %142 = extractvalue { i1, i64, i32 } %139, 2
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %141)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   %143 = sext i32 %142 to i64
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %143)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   br label %_llgo_1
// CHECK-EMPTY:
// CHECK-NEXT: _llgo_3:                                          ; preds = %_llgo_1
// CHECK-NEXT:   %144 = call double @"{{.*}}/cl/_testrt/builtin.Inf"(i64 1)
// CHECK-NEXT:   %145 = call double @"{{.*}}/cl/_testrt/builtin.Inf"(i64 -1)
// CHECK-NEXT:   %146 = call double @"{{.*}}/cl/_testrt/builtin.NaN"()
// CHECK-NEXT:   %147 = call double @"{{.*}}/cl/_testrt/builtin.NaN"()
// CHECK-NEXT:   %148 = call i1 @"{{.*}}/cl/_testrt/builtin.IsNaN"(double %147)
// CHECK-NEXT:   %149 = call i1 @"{{.*}}/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintFloat"(double %144)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintFloat"(double %145)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintFloat"(double %146)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %148)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %149)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %150 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.StringToBytes"(%"{{.*}}/runtime/internal/runtime.String" { ptr @4, i64 7 })
// CHECK-NEXT:   %151 = call %"{{.*}}/runtime/internal/runtime.Slice" @"{{.*}}/runtime/internal/runtime.StringToRunes"(%"{{.*}}/runtime/internal/runtime.String" { ptr @4, i64 7 })
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %150)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintSlice"(%"{{.*}}/runtime/internal/runtime.Slice" %151)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %152 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringFromBytes"(%"{{.*}}/runtime/internal/runtime.Slice" %150)
// CHECK-NEXT:   %153 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringFromRunes"(%"{{.*}}/runtime/internal/runtime.Slice" %151)
// CHECK-NEXT:   %154 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %150, 0
// CHECK-NEXT:   %155 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %150, 1
// CHECK-NEXT:   %156 = icmp sge i64 3, %155
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %156)
// CHECK-NEXT:   %157 = getelementptr inbounds i8, ptr %154, i64 3
// CHECK-NEXT:   %158 = load i8, ptr %157, align 1
// CHECK-NEXT:   %159 = zext i8 %158 to i32
// CHECK-NEXT:   %160 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringFromRune"(i32 %159)
// CHECK-NEXT:   %161 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %151, 0
// CHECK-NEXT:   %162 = extractvalue %"{{.*}}/runtime/internal/runtime.Slice" %151, 1
// CHECK-NEXT:   %163 = icmp sge i64 0, %162
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.AssertIndexRange"(i1 %163)
// CHECK-NEXT:   %164 = getelementptr inbounds i32, ptr %161, i64 0
// CHECK-NEXT:   %165 = load i32, ptr %164, align 4
// CHECK-NEXT:   %166 = call %"{{.*}}/runtime/internal/runtime.String" @"{{.*}}/runtime/internal/runtime.StringFromRune"(i32 %165)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %152)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %153)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %160)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" %166)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   %167 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 })
// CHECK-NEXT:   %168 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 })
// CHECK-NEXT:   %169 = call i1 @"{{.*}}/runtime/internal/runtime.StringEqual"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 })
// CHECK-NEXT:   %170 = xor i1 %169, true
// CHECK-NEXT:   %171 = call i1 @"{{.*}}/runtime/internal/runtime.StringLess"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 })
// CHECK-NEXT:   %172 = call i1 @"{{.*}}/runtime/internal/runtime.StringLess"(%"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 })
// CHECK-NEXT:   %173 = xor i1 %172, true
// CHECK-NEXT:   %174 = call i1 @"{{.*}}/runtime/internal/runtime.StringLess"(%"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 })
// CHECK-NEXT:   %175 = call i1 @"{{.*}}/runtime/internal/runtime.StringLess"(%"{{.*}}/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"{{.*}}/runtime/internal/runtime.String" { ptr @6, i64 3 })
// CHECK-NEXT:   %176 = xor i1 %175, true
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %167)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %168)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %170)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %171)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %173)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %174)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 32)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintBool"(i1 %176)
// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

func main() {
	var s = []int{1, 2, 3, 4}
	var a = [...]int{1, 2, 3, 4}
	d := make([]byte, 4, 10)
	println(s, len(s), cap(s))
	println(d, len(d), cap(d))
	println(len(a), cap(a), cap(&a), len(&a))
	println(len([]int{1, 2, 3, 4}), len([4]int{1, 2, 3, 4}))
	println(len(s[1:]), cap(s[1:]), len(s[1:2]), cap(s[1:2]), len(s[1:2:2]), cap(s[1:2:2]))
	println(len(a[1:]), cap(a[1:]), len(a[1:2]), cap(a[1:2]), len(a[1:2:2]), cap(a[1:2:2]))

	println("hello", "hello"[1:], "hello"[1:2], len("hello"[5:]))
	println(append(s, 5, 6, 7, 8))
	data := []byte{'a', 'b', 'c'}
	data = append(data, "def"...)
	println(data)
	fns := []func(){}

	// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/builtin.main$1"() {
	// CHECK-NEXT: _llgo_0:
	// CHECK-NEXT:   ret void
	// CHECK-NEXT: }

	fns = append(fns, func() {})
	println(fns)
	var i any = 100
	println(true, 0, 100, -100, uint(255), int32(-100), 0.0, 100.5, i, &i, uintptr(unsafe.Pointer(&i)))
	var dst [3]byte
	n := copy(dst[:], data)
	println(n, dst[0], dst[1], dst[2])
	n = copy(dst[1:], "ABCD")
	println(n, dst[0], dst[1], dst[2])

	fn1 := demo

	// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/builtin.main$2"() {
	// CHECK-NEXT: _llgo_0:
	// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintString"(%"{{.*}}/runtime/internal/runtime.String" { ptr @7, i64 2 })
	// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
	// CHECK-NEXT:   ret void
	// CHECK-NEXT: }

	fn2 := func() {
		println("fn")
	}

	// CHECK-LABEL: define void @"{{.*}}/cl/_testrt/builtin.main$3"(ptr %0) {
	// CHECK-NEXT: _llgo_0:
	// CHECK-NEXT:   %1 = load { ptr }, ptr %0, align 8
	// CHECK-NEXT:   %2 = extractvalue { ptr } %1, 0
	// CHECK-NEXT:   %3 = load i64, ptr %2, align 8
	// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintInt"(i64 %3)
	// CHECK-NEXT:   call void @"{{.*}}/runtime/internal/runtime.PrintByte"(i8 10)
	// CHECK-NEXT:   ret void
	// CHECK-NEXT: }

	fn3 := func() {
		println(n)
	}
	println(demo, fn1, fn2, fn3)

	for i, v := range "中abcd" {
		println(i, v)
	}

	println(Inf(1), Inf(-1), NaN(), IsNaN(NaN()), IsNaN(1.0))

	data1 := []byte("中abcd")
	data2 := []rune("中abcd")
	println(data1, data2)
	println(string(data1), string(data2), string(data1[3]), string(data2[0]))
	s1 := "abc"
	s2 := "abd"
	println(s1 == "abc", s1 == s2, s1 != s2, s1 < s2, s1 <= s2, s1 > s2, s1 >= s2)
}

// CHECK-LABEL: define linkonce void @"__llgo_stub.{{.*}}/cl/_testrt/builtin.main$1"(ptr %0) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   tail call void @"{{.*}}/cl/_testrt/builtin.main$1"()
// CHECK-NEXT:   ret void
// CHECK-NEXT: }

// CHECK-LABEL: define linkonce i1 @"__llgo_stub.{{.*}}/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
// CHECK-NEXT: _llgo_0:
// CHECK-NEXT:   %3 = tail call i1 @"{{.*}}/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
// CHECK-NEXT:   ret i1 %3
// CHECK-NEXT: }

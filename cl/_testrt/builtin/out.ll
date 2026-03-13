; ModuleID = 'github.com/goplus/llgo/cl/_testrt/builtin'
source_filename = "github.com/goplus/llgo/cl/_testrt/builtin"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/builtin.a" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.b" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testrt/builtin.init$guard" = global i1 false, align 1
@"github.com/goplus/llgo/cl/_testrt/builtin.n" = global i64 0, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@1 = private unnamed_addr constant [3 x i8] c"def", align 1
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
@2 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@3 = private unnamed_addr constant [4 x i8] c"ABCD", align 1
@4 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1
@5 = private unnamed_addr constant [3 x i8] c"abc", align 1
@6 = private unnamed_addr constant [3 x i8] c"abd", align 1
@7 = private unnamed_addr constant [2 x i8] c"fn", align 1

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store i64 %0, ptr %1, align 4
  %2 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load double, ptr %1, align 8
  ret double %3
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 %0) {
_llgo_0:
  %1 = icmp sge i64 %0, 0
  br i1 %1, label %_llgo_1, label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_0
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_3, %_llgo_1
  %2 = phi i64 [ 9218868437227405312, %_llgo_1 ], [ -4503599627370496, %_llgo_3 ]
  %3 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 %2)
  ret double %3

_llgo_3:                                          ; preds = %_llgo_0
  br label %_llgo_2
}

define i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %0) {
_llgo_0:
  %1 = fcmp une double %0, %0
  ret i1 %1
}

define double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"() {
_llgo_0:
  %0 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Float64frombits"(i64 9221120237041090561)
  ret double %0
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.demo"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.init$guard", align 1
  store i64 9223372036854775807, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.a", align 4
  store i64 -9223372036854775808, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.b", align 4
  store i64 -1, ptr @"github.com/goplus/llgo/cl/_testrt/builtin.n", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %4, align 4
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 4, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 4, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  %10 = getelementptr inbounds i64, ptr %8, i64 1
  %11 = getelementptr inbounds i64, ptr %8, i64 2
  %12 = getelementptr inbounds i64, ptr %8, i64 3
  store i64 1, ptr %9, align 4
  store i64 2, ptr %10, align 4
  store i64 3, ptr %11, align 4
  store i64 4, ptr %12, align 4
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 10)
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 1, i64 10, i64 0, i64 4, i64 10)
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %20 = getelementptr inbounds i64, ptr %19, i64 0
  store i64 1, ptr %20, align 4
  %21 = getelementptr inbounds i64, ptr %19, i64 1
  store i64 2, ptr %21, align 4
  %22 = getelementptr inbounds i64, ptr %19, i64 2
  store i64 3, ptr %22, align 4
  %23 = getelementptr inbounds i64, ptr %19, i64 3
  store i64 4, ptr %23, align 4
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 4, 1
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 4, 2
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %29 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %30 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %31 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %30, i64 8, i64 %28, i64 1, i64 %29, i64 %28)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, 1
  %33 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %36 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %35, i64 8, i64 %33, i64 1, i64 %34, i64 %33)
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %40 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %39, i64 8, i64 %38, i64 1, i64 2, i64 %38)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, 1
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %42, i64 1, i64 2, i64 %42)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 2
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %48 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %47, i64 8, i64 %46, i64 1, i64 2, i64 2)
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48, 1
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %52 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %51, i64 8, i64 %50, i64 1, i64 2, i64 2)
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %54 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, 1
  %56 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 4, i64 4)
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, 2
  %58 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, 1
  %60 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 4)
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, 2
  %62 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, 1
  %64 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %8, i64 8, i64 4, i64 1, i64 2, i64 2)
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %61)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %63)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %65)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %66 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %68, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %71 = getelementptr inbounds i64, ptr %70, i64 0
  store i64 5, ptr %71, align 4
  %72 = getelementptr inbounds i64, ptr %70, i64 1
  store i64 6, ptr %72, align 4
  %73 = getelementptr inbounds i64, ptr %70, i64 2
  store i64 7, ptr %73, align 4
  %74 = getelementptr inbounds i64, ptr %70, i64 3
  store i64 8, ptr %74, align 4
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 4, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 4, 2
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 0
  %79 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 1
  %80 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, ptr %78, i64 %79, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %82 = getelementptr inbounds i8, ptr %81, i64 0
  store i8 97, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 98, ptr %83, align 1
  %84 = getelementptr inbounds i8, ptr %81, i64 2
  store i8 99, ptr %84, align 1
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 3, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 3, 2
  %88 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 0, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 0, 2
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %94 = getelementptr inbounds { ptr, ptr }, ptr %93, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null }, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 1, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 2
  %98 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 0
  %99 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, 1
  %100 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %98, i64 %99, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr inttoptr (i64 100 to ptr) }, ptr %101, align 8
  %102 = icmp eq ptr %101, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %102)
  %103 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %101, align 8
  %104 = ptrtoint ptr %101 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 255)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 -100)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 0.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double 1.005000e+02)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %103)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %101)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %105, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 3, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 3, 2
  %110 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 0
  %111 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, 1
  %112 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, ptr %110, i64 %111, i64 1)
  store i64 %112, ptr %106, align 4
  %113 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %113)
  %114 = load i64, ptr %106, align 4
  %115 = getelementptr inbounds i8, ptr %105, i64 0
  %116 = icmp eq ptr %115, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %116)
  %117 = load i8, ptr %115, align 1
  %118 = getelementptr inbounds i8, ptr %105, i64 1
  %119 = icmp eq ptr %118, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load i8, ptr %118, align 1
  %121 = getelementptr inbounds i8, ptr %105, i64 2
  %122 = icmp eq ptr %121, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %122)
  %123 = load i8, ptr %121, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %114)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %124 = zext i8 %117 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %124)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %125 = zext i8 %120 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %125)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %126 = zext i8 %123 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %127 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %105, i64 1, i64 3, i64 1, i64 3, i64 3)
  %128 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, ptr @3, i64 4, i64 1)
  store i64 %128, ptr %106, align 4
  %129 = icmp eq ptr %106, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %129)
  %130 = load i64, ptr %106, align 4
  %131 = getelementptr inbounds i8, ptr %105, i64 0
  %132 = icmp eq ptr %131, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = load i8, ptr %131, align 1
  %134 = getelementptr inbounds i8, ptr %105, i64 1
  %135 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = load i8, ptr %134, align 1
  %137 = getelementptr inbounds i8, ptr %105, i64 2
  %138 = icmp eq ptr %137, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %138)
  %139 = load i8, ptr %137, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %130)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %140 = zext i8 %133 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %140)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %141 = zext i8 %136 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %141)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %142 = zext i8 %139 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %142)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %144 = getelementptr inbounds { ptr }, ptr %143, i32 0, i32 0
  store ptr %106, ptr %144, align 8
  %145 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef }, ptr %143, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %146 = extractvalue { ptr, ptr } %145, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %148 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %147)
  %149 = extractvalue { i1, i64, i32 } %148, 0
  br i1 %149, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %150 = extractvalue { i1, i64, i32 } %148, 1
  %151 = extractvalue { i1, i64, i32 } %148, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %152 = sext i32 %151 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %152)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %153 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %154 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %155 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %156 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %157 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %156)
  %158 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %153)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %154)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %159 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %160 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %161 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159)
  %162 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160)
  %163 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, 0
  %164 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, 1
  %165 = icmp sge i64 3, %164
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %165)
  %166 = getelementptr inbounds i8, ptr %163, i64 3
  %167 = icmp eq ptr %166, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %167)
  %168 = load i8, ptr %166, align 1
  %169 = zext i8 %168 to i32
  %170 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %169)
  %171 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160, 0
  %172 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160, 1
  %173 = icmp sge i64 0, %172
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %173)
  %174 = getelementptr inbounds i32, ptr %171, i64 0
  %175 = icmp eq ptr %174, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %175)
  %176 = load i32, ptr %174, align 4
  %177 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %161)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %162)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %170)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %178 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %179 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %180 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %181 = xor i1 %180, true
  %182 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %183 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %184 = xor i1 %183, true
  %185 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %186 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %187 = xor i1 %186, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %179)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %181)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %182)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %184)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %187)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"() {
_llgo_0:
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$2"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/builtin.main$3"(ptr %0) {
_llgo_0:
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = load { ptr }, ptr %0, align 8
  %3 = extractvalue { ptr } %2, 0
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = load i64, ptr %3, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/builtin.main$1"()
  ret void
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

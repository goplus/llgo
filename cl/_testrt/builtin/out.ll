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
@"__llgo.moduleZeroSizedAlloc$164d69fd37c81cc1" = private unnamed_addr global [0 x { ptr, ptr }] zeroinitializer
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 2, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 3 }, ptr @"*_llgo_int" }, align 8
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
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 2, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 3, ptr %6, align 4
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 4, ptr %8, align 4
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 4, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %13 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %13)
  %14 = getelementptr inbounds i64, ptr %12, i64 0
  %15 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %15)
  %16 = getelementptr inbounds i64, ptr %12, i64 1
  %17 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %17)
  %18 = getelementptr inbounds i64, ptr %12, i64 2
  %19 = icmp eq ptr %12, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %19)
  %20 = getelementptr inbounds i64, ptr %12, i64 3
  store i64 1, ptr %14, align 4
  store i64 2, ptr %16, align 4
  store i64 3, ptr %18, align 4
  store i64 4, ptr %20, align 4
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 4, i64 10, i64 1)
  %22 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, 1
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %27 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %27)
  %28 = getelementptr inbounds i64, ptr %26, i64 0
  store i64 1, ptr %28, align 4
  %29 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %29)
  %30 = getelementptr inbounds i64, ptr %26, i64 1
  store i64 2, ptr %30, align 4
  %31 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %31)
  %32 = getelementptr inbounds i64, ptr %26, i64 2
  store i64 3, ptr %32, align 4
  %33 = icmp eq ptr %26, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %33)
  %34 = getelementptr inbounds i64, ptr %26, i64 3
  store i64 4, ptr %34, align 4
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 4, 1
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 4, 2
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %39 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %42 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %41, i64 8, i64 %39, i64 1, i64 %40, i64 %39)
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, 1
  %44 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %47 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %46, i64 8, i64 %44, i64 1, i64 %45, i64 %44)
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, 2
  %49 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %51 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %50, i64 8, i64 %49, i64 1, i64 2, i64 %49)
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, 1
  %53 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %55 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %54, i64 8, i64 %53, i64 1, i64 2, i64 %53)
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, 2
  %57 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %59 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %58, i64 8, i64 %57, i64 1, i64 2, i64 2)
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, 1
  %61 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 2
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 0
  %63 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %62, i64 8, i64 %61, i64 1, i64 2, i64 2)
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %52)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %60)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %64)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, 1
  %67 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 4, i64 4)
  %68 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, 2
  %69 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, 1
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 4)
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 2
  %73 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %74 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, 1
  %75 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %12, i64 8, i64 4, i64 1, i64 2, i64 2)
  %76 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %74)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %76)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %78 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %79 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %80 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %79, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %80)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %82 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = getelementptr inbounds i64, ptr %81, i64 0
  store i64 5, ptr %83, align 4
  %84 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %84)
  %85 = getelementptr inbounds i64, ptr %81, i64 1
  store i64 6, ptr %85, align 4
  %86 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %86)
  %87 = getelementptr inbounds i64, ptr %81, i64 2
  store i64 7, ptr %87, align 4
  %88 = icmp eq ptr %81, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %88)
  %89 = getelementptr inbounds i64, ptr %81, i64 3
  store i64 8, ptr %89, align 4
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %81, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 4, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 4, 2
  %93 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 0
  %94 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, 1
  %95 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, ptr %93, i64 %94, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %97 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %97)
  %98 = getelementptr inbounds i8, ptr %96, i64 0
  store i8 97, ptr %98, align 1
  %99 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %99)
  %100 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 98, ptr %100, align 1
  %101 = icmp eq ptr %96, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %101)
  %102 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 99, ptr %102, align 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 3, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 3, 2
  %106 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %108 = icmp eq ptr %107, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = getelementptr inbounds { ptr, ptr }, ptr %107, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null }, ptr %109, align 8
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %107, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 1, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 1, 2
  %113 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, 0
  %114 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, 1
  %115 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"__llgo.moduleZeroSizedAlloc$164d69fd37c81cc1", i64 0, i64 0 }, ptr %113, i64 %114, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %117, align 4
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %117, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %118, ptr %116, align 8
  %119 = icmp eq ptr %116, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %119)
  %120 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %116, align 8
  %121 = ptrtoint ptr %116 to i64
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %120)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %116)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %121)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %122, 0
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, i64 3, 1
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i64 3, 2
  %127 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, 0
  %128 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %106, 1
  %129 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, ptr %127, i64 %128, i64 1)
  store i64 %129, ptr %123, align 4
  %130 = icmp eq ptr %123, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load i64, ptr %123, align 4
  %132 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %132)
  %133 = getelementptr inbounds i8, ptr %122, i64 0
  %134 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %134)
  %135 = load i8, ptr %133, align 1
  %136 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %136)
  %137 = getelementptr inbounds i8, ptr %122, i64 1
  %138 = icmp eq ptr %137, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %138)
  %139 = load i8, ptr %137, align 1
  %140 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %140)
  %141 = getelementptr inbounds i8, ptr %122, i64 2
  %142 = icmp eq ptr %141, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %142)
  %143 = load i8, ptr %141, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %144 = zext i8 %135 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %144)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %145 = zext i8 %139 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %145)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %146 = zext i8 %143 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %146)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %147 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %122, i64 1, i64 3, i64 1, i64 3, i64 3)
  %148 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %147, ptr @3, i64 4, i64 1)
  store i64 %148, ptr %123, align 4
  %149 = icmp eq ptr %123, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %149)
  %150 = load i64, ptr %123, align 4
  %151 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %151)
  %152 = getelementptr inbounds i8, ptr %122, i64 0
  %153 = icmp eq ptr %152, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %153)
  %154 = load i8, ptr %152, align 1
  %155 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %155)
  %156 = getelementptr inbounds i8, ptr %122, i64 1
  %157 = icmp eq ptr %156, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %157)
  %158 = load i8, ptr %156, align 1
  %159 = icmp eq ptr %122, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = getelementptr inbounds i8, ptr %122, i64 2
  %161 = icmp eq ptr %160, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %161)
  %162 = load i8, ptr %160, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %150)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %163 = zext i8 %154 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %163)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %164 = zext i8 %158 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %164)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %165 = zext i8 %162 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %165)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %167 = getelementptr inbounds { ptr }, ptr %166, i32 0, i32 0
  store ptr %123, ptr %167, align 8
  %168 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef }, ptr %166, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %169 = extractvalue { ptr, ptr } %168, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %169)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %171 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %170)
  %172 = extractvalue { i1, i64, i32 } %171, 0
  br i1 %172, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %173 = extractvalue { i1, i64, i32 } %171, 1
  %174 = extractvalue { i1, i64, i32 } %171, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %173)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %175 = sext i32 %174 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %175)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %176 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %177 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %178 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %179 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %180 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %179)
  %181 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %180)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %181)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %182 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %183 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %184 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182)
  %185 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183)
  %186 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, 0
  %187 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %182, 1
  %188 = icmp sge i64 3, %187
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %188)
  %189 = getelementptr inbounds i8, ptr %186, i64 3
  %190 = icmp eq ptr %189, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %190)
  %191 = load i8, ptr %189, align 1
  %192 = zext i8 %191 to i32
  %193 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %192)
  %194 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, 0
  %195 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, 1
  %196 = icmp sge i64 0, %195
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %196)
  %197 = getelementptr inbounds i32, ptr %194, i64 0
  %198 = icmp eq ptr %197, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %198)
  %199 = load i32, ptr %197, align 4
  %200 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRune"(i32 %199)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %184)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %185)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %193)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %200)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %201 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %202 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %203 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %204 = xor i1 %203, true
  %205 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %206 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %207 = xor i1 %206, true
  %208 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %209 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %210 = xor i1 %209, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %201)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %202)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %204)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %205)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %207)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %208)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %210)
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
  %1 = load { ptr }, ptr %0, align 8
  %2 = extractvalue { ptr } %1, 0
  %3 = icmp eq ptr %2, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load i64, ptr %2, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr, i64, i64, i64, i64, i64)

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr, i64, i64)

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

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
  %9 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %9)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 4, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 4, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %14 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %14)
  %15 = getelementptr inbounds i64, ptr %13, i64 0
  %16 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %16)
  %17 = getelementptr inbounds i64, ptr %13, i64 1
  %18 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %18)
  %19 = getelementptr inbounds i64, ptr %13, i64 2
  %20 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %20)
  %21 = getelementptr inbounds i64, ptr %13, i64 3
  store i64 1, ptr %15, align 4
  store i64 2, ptr %17, align 4
  store i64 3, ptr %19, align 4
  store i64 4, ptr %21, align 4
  %22 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.MakeSlice"(i64 4, i64 10, i64 1)
  %23 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 1
  %24 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 1
  %26 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %28 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %28)
  %29 = getelementptr inbounds i64, ptr %27, i64 0
  store i64 1, ptr %29, align 4
  %30 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %30)
  %31 = getelementptr inbounds i64, ptr %27, i64 1
  store i64 2, ptr %31, align 4
  %32 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %32)
  %33 = getelementptr inbounds i64, ptr %27, i64 2
  store i64 3, ptr %33, align 4
  %34 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %34)
  %35 = getelementptr inbounds i64, ptr %27, i64 3
  store i64 4, ptr %35, align 4
  %36 = icmp eq ptr %27, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %36)
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %27, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 4, 1
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 4, 2
  %40 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %42 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 1
  %43 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %44 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %43, i64 8, i64 %41, i64 1, i64 %42, i64 %41)
  %45 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44, 1
  %46 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %47 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 1
  %48 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %49 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %48, i64 8, i64 %46, i64 1, i64 %47, i64 %46)
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %52 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %53 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %52, i64 8, i64 %51, i64 1, i64 2, i64 %51)
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, 1
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %57 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %56, i64 8, i64 %55, i64 1, i64 2, i64 %55)
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, 2
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %61 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %60, i64 8, i64 %59, i64 1, i64 2, i64 2)
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, 1
  %63 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 2
  %64 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, 0
  %65 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %64, i64 8, i64 %63, i64 1, i64 2, i64 2)
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %62)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %67 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %67)
  %68 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 4, i64 4)
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, 1
  %70 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %70)
  %71 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 4, i64 4)
  %72 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, 2
  %73 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %73)
  %74 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 2, i64 4)
  %75 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, 1
  %76 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %76)
  %77 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 2, i64 4)
  %78 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, 2
  %79 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %79)
  %80 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 2, i64 2)
  %81 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %80, 1
  %82 = icmp eq ptr %13, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %82)
  %83 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %13, i64 8, i64 4, i64 1, i64 2, i64 2)
  %84 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %75)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %78)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %84)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %85 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 5)
  %86 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 1, i64 2)
  %87 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, i64 5, i64 5)
  %88 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %87, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %85)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %88)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %90 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %90)
  %91 = getelementptr inbounds i64, ptr %89, i64 0
  store i64 5, ptr %91, align 4
  %92 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %92)
  %93 = getelementptr inbounds i64, ptr %89, i64 1
  store i64 6, ptr %93, align 4
  %94 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %94)
  %95 = getelementptr inbounds i64, ptr %89, i64 2
  store i64 7, ptr %95, align 4
  %96 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %96)
  %97 = getelementptr inbounds i64, ptr %89, i64 3
  store i64 8, ptr %97, align 4
  %98 = icmp eq ptr %89, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %98)
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 4, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 4, 2
  %102 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 0
  %103 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, 1
  %104 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, ptr %102, i64 %103, i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %106 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %106)
  %107 = getelementptr inbounds i8, ptr %105, i64 0
  store i8 97, ptr %107, align 1
  %108 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %108)
  %109 = getelementptr inbounds i8, ptr %105, i64 1
  store i8 98, ptr %109, align 1
  %110 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %110)
  %111 = getelementptr inbounds i8, ptr %105, i64 2
  store i8 99, ptr %111, align 1
  %112 = icmp eq ptr %105, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %112)
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %105, 0
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 3, 1
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 3, 2
  %116 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115, ptr @1, i64 3, i64 1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %118 = icmp eq ptr %117, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %118)
  %119 = getelementptr inbounds { ptr, ptr }, ptr %117, i64 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/builtin.main$1", ptr null }, ptr %119, align 8
  %120 = icmp eq ptr %117, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %120)
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 1, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 1, 2
  %124 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, 0
  %125 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, 1
  %126 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.SliceAppend"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"__llgo.moduleZeroSizedAlloc$164d69fd37c81cc1", i64 0, i64 0 }, ptr %124, i64 %125, i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 100, ptr %128, align 4
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr undef }, ptr %128, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %129, ptr %127, align 8
  %130 = icmp eq ptr %127, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %130)
  %131 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %127, align 8
  %132 = ptrtoint ptr %127 to i64
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintEface"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %131)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %127)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %132)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 3)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %135 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %135)
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %133, 0
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136, i64 3, 1
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 3, 2
  %139 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 0
  %140 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, 1
  %141 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, ptr %139, i64 %140, i64 1)
  store i64 %141, ptr %134, align 4
  %142 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %142)
  %143 = load i64, ptr %134, align 4
  %144 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %144)
  %145 = getelementptr inbounds i8, ptr %133, i64 0
  %146 = icmp eq ptr %145, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %146)
  %147 = load i8, ptr %145, align 1
  %148 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %148)
  %149 = getelementptr inbounds i8, ptr %133, i64 1
  %150 = icmp eq ptr %149, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %150)
  %151 = load i8, ptr %149, align 1
  %152 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %152)
  %153 = getelementptr inbounds i8, ptr %133, i64 2
  %154 = icmp eq ptr %153, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %154)
  %155 = load i8, ptr %153, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %143)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %156 = zext i8 %147 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %156)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %157 = zext i8 %151 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %157)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %158 = zext i8 %155 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %158)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %159 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %159)
  %160 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.NewSlice3"(ptr %133, i64 1, i64 3, i64 1, i64 3, i64 3)
  %161 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.SliceCopy"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %160, ptr @3, i64 4, i64 1)
  store i64 %161, ptr %134, align 4
  %162 = icmp eq ptr %134, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %162)
  %163 = load i64, ptr %134, align 4
  %164 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %164)
  %165 = getelementptr inbounds i8, ptr %133, i64 0
  %166 = icmp eq ptr %165, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %166)
  %167 = load i8, ptr %165, align 1
  %168 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %168)
  %169 = getelementptr inbounds i8, ptr %133, i64 1
  %170 = icmp eq ptr %169, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %170)
  %171 = load i8, ptr %169, align 1
  %172 = icmp eq ptr %133, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %172)
  %173 = getelementptr inbounds i8, ptr %133, i64 2
  %174 = icmp eq ptr %173, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %174)
  %175 = load i8, ptr %173, align 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %163)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %176 = zext i8 %167 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %176)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %177 = zext i8 %171 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %177)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %178 = zext i8 %175 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %178)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %179 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %180 = getelementptr inbounds { ptr }, ptr %179, i32 0, i32 0
  store ptr %134, ptr %180, align 8
  %181 = insertvalue { ptr, ptr } { ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$3", ptr undef }, ptr %179, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.demo")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr @"github.com/goplus/llgo/cl/_testrt/builtin.main$2")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %182 = extractvalue { ptr, ptr } %181, 0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %182)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewStringIter"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %184 = call { i1, i64, i32 } @"github.com/goplus/llgo/runtime/internal/runtime.StringIterNext"(ptr %183)
  %185 = extractvalue { i1, i64, i32 } %184, 0
  br i1 %185, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %186 = extractvalue { i1, i64, i32 } %184, 1
  %187 = extractvalue { i1, i64, i32 } %184, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %186)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %188 = sext i32 %187 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %188)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %189 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 1)
  %190 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.Inf"(i64 -1)
  %191 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %192 = call double @"github.com/goplus/llgo/cl/_testrt/builtin.NaN"()
  %193 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double %192)
  %194 = call i1 @"github.com/goplus/llgo/cl/_testrt/builtin.IsNaN"(double 1.000000e+00)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %189)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %190)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintFloat"(double %191)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %193)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %194)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %195 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  %196 = call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/runtime/internal/runtime.StringToRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %197 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromBytes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195)
  %198 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromRunes"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196)
  %199 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, 0
  %200 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, 1
  %201 = icmp sge i64 3, %200
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %201, i64 3, i64 %200)
  %202 = getelementptr inbounds i8, ptr %199, i64 3
  %203 = icmp eq ptr %202, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %203)
  %204 = load i8, ptr %202, align 1
  %205 = zext i8 %204 to i64
  %206 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64 %205)
  %207 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, 0
  %208 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, 1
  %209 = icmp sge i64 0, %208
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %209, i64 0, i64 %208)
  %210 = getelementptr inbounds i32, ptr %207, i64 0
  %211 = icmp eq ptr %210, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %211)
  %212 = load i32, ptr %210, align 4
  %213 = sext i32 %212 to i64
  %214 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromInt64"(i64 %213)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %197)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %198)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %206)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %214)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %215 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %216 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %217 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %218 = xor i1 %217, true
  %219 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %220 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %221 = xor i1 %220, true
  %222 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 })
  %223 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 3 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 3 })
  %224 = xor i1 %223, true
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %215)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %216)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %218)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %221)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %222)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %224)
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1, i64, i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromUint64"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringFromInt64"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringLess"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

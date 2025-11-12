; ModuleID = 'github.com/goplus/llgo/cl/_testgo/methodinit1389'
source_filename = "github.com/goplus/llgo/cl/_testgo/methodinit1389"

%"github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl" = type { i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testgo/methodinit1389.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/cl/_testgo/methodinit1389", align 1
@1 = private unnamed_addr constant [6 x i8] c"MyImpl", align 1
@"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [6 x i8] c"MyType", align 1
@_llgo_uint32 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [6 x i8] c"myType", align 1
@4 = private unnamed_addr constant [7 x i8] c"GetType", align 1
@"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl" = linkonce global ptr null, align 8
@"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

define i32 @"github.com/goplus/llgo/cl/_testgo/methodinit1389.(*MyImpl).GetType"(ptr %0) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", ptr %0, i32 0, i32 0
  %2 = load i32, ptr %1, align 4
  ret i32 %2
}

define void @"github.com/goplus/llgo/cl/_testgo/methodinit1389.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testgo/methodinit1389.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/methodinit1389.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", ptr %0, i32 0, i32 0
  store i32 42, ptr %1, align 4
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %3 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %4 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  %5 = load ptr, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %5, ptr %3)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %7, ptr %0, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %8)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %8, 0
  %11 = getelementptr ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  %13 = insertvalue { ptr, ptr } undef, ptr %12, 0
  %14 = insertvalue { ptr, ptr } %13, ptr %9, 1
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = call i32 %16(ptr %15)
  %18 = call i32 (ptr, ...) @printf(ptr @5, i32 %17)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/methodinit1389.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 4, i64 0, i64 1)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_uint32, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %8, ptr @_llgo_uint32, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_uint32, align 8
  br i1 %5, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %9, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %10 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17)
  store ptr %18, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY", align 8
  %19 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY", align 8
  br i1 %2, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  %21 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 4, i64 0, i64 1)
  %24 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_9
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 0, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 0, 2
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %31 = getelementptr ptr, ptr %30, i64 0
  store ptr %20, ptr %31, align 8
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %32, i64 1, 1
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %33, i64 1, 2
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %35)
  store ptr %35, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %36 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %36, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %37, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.(*MyImpl).GetType", 2
  %39 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %38, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.(*MyImpl).GetType", 3
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %41 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %40, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %39, ptr %41, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 1, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %19, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44)
  br label %_llgo_10

_llgo_13:                                         ; preds = %_llgo_10
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %45)
  store ptr %45, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_10
  %46 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  %47 = load ptr, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %49 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr undef }, ptr %46, 1
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %51 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %50, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %49, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 1
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 1, 2
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54)
  store ptr %55, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i32 @printf(ptr, ...)

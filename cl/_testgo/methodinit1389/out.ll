; ModuleID = 'github.com/goplus/llgo/cl/_testgo/methodinit1389'
source_filename = "github.com/goplus/llgo/cl/_testgo/methodinit1389"

%"github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl" = type { i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
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
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/methodinit1389.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 4)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", ptr %0, i32 0, i32 0
  store i32 42, ptr %1, align 4
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl"()
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl"()
  %4 = call ptr @"__llgo_load__llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A"()
  %5 = call ptr @"__llgo_load__llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18"()
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

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 4, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType"()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY"()
  %5 = call ptr @"__llgo_load__llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.(*MyImpl).GetType", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.(*MyImpl).GetType", 3
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %10, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 1
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  ret ptr %14
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  %3 = call ptr @__llgo_load__llgo_uint32()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyType", align 8
  ret ptr %4
}

define linkonce ptr @__llgo_load__llgo_uint32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %2, ptr @_llgo_uint32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint32, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 6 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, i64 4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/methodinit1389.struct$F1YtB4UXXA_55JpungcN29bL4mLWdntomBxmcFXnAmY", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"__llgo_load__llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 10, i64 4, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %2, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 6 }, i64 25, i64 4, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testgo/methodinit1389.MyImpl", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$4mJNbBfcNfFu6gAmx3nCz3EJQfaPkLGSXjyM5QjoA3A"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 7 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$4FafzZPRYnkZgE2x1lwj0eWiYg-eTUyn6ddQ88Qli18", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare i32 @printf(ptr, ...)

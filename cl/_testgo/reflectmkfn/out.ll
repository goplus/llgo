; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectmkfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectmkfn"

%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.PtrType" = type { %"github.com/goplus/llgo/runtime/abi.Type", ptr }
%"github.com/goplus/llgo/runtime/abi.StructType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.FuncType" = type { %"github.com/goplus/llgo/runtime/abi.Type", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%reflect.Value = type { ptr, ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard" = global i1 false, align 1
@_llgo_string = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 8, i32 1749264893, i8 4, i8 8, i8 8, i8 24, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr @"*_llgo_string" }, align 8
@0 = private unnamed_addr constant [6 x i8] c"string", align 1
@"*_llgo_string" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1323879264, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr null }, ptr @_llgo_string }, align 8
@_llgo_int = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 0, i32 -25294021, i8 12, i8 8, i8 8, i8 34, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr @"*_llgo_int" }, align 8
@1 = private unnamed_addr constant [3 x i8] c"int", align 1
@"*_llgo_int" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -939606833, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 3 }, ptr null }, ptr @_llgo_int }, align 8
@"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.StructType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 16, i64 16, i32 -1385668625, i8 32, i8 8, i8 8, i8 25, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 60 }, ptr @"*_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" }, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU$fields", i64 2, i64 2 } }, align 8
@2 = private unnamed_addr constant [60 x i8] c"struct { $f func(string, int) string; $data unsafe.Pointer }", align 1
@"*_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1397580055, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 60 }, ptr null }, ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" }, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.FuncType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 1371530963, i8 0, i8 8, i8 8, i8 51, { ptr, ptr } zeroinitializer, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 24 }, ptr @"*_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$in", i64 2, i64 2 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" { ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$out", i64 1, i64 1 } }, align 8
@4 = private unnamed_addr constant [24 x i8] c"func(string, int) string", align 1
@"*_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1546681513, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 24 }, ptr null }, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" }, align 8
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$in" = weak_odr constant [2 x ptr] [ptr @_llgo_string, ptr @_llgo_int], align 8
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI$out" = weak_odr constant [1 x ptr] [ptr @_llgo_string], align 8
@5 = private unnamed_addr constant [5 x i8] c"$data", align 1
@_llgo_Pointer = weak_odr constant %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 507576105, i8 12, i8 8, i8 8, i8 58, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr @"*_llgo_Pointer" }, align 8
@6 = private unnamed_addr constant [14 x i8] c"unsafe.Pointer", align 1
@"*_llgo_Pointer" = weak_odr constant %"github.com/goplus/llgo/runtime/abi.PtrType" { %"github.com/goplus/llgo/runtime/abi.Type" { i64 8, i64 8, i32 -1134390089, i8 10, i8 8, i8 8, i8 54, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr", ptr null }, ptr null, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 14 }, ptr null }, ptr @_llgo_Pointer }, align 8
@"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU$fields" = weak_odr constant [2 x %"github.com/goplus/llgo/runtime/abi.StructField"] [%"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI", i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }, %"github.com/goplus/llgo/runtime/abi.StructField" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr @_llgo_Pointer, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false }], align 8
@7 = private unnamed_addr constant [94 x i8] c"type assertion interface{} -> struct{$f func(string, int) string; $data unsafe.Pointer} failed", align 1
@8 = private unnamed_addr constant [3 x i8] c"abc", align 1
@9 = private unnamed_addr constant [6 x i8] c"abcabc", align 1
@10 = private unnamed_addr constant [5 x i8] c"error", align 1

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  call void @reflect.init()
  call void @strings.init()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, i64 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %2, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %2, 1
  %4 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %1, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, i64 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_int, ptr null })
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %5, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %10, i64 0
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %12, 1
  %14 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %14, ptr %11, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %10, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 2
  %18 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i1 false)
  %19 = call %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %18, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1", ptr null })
  %20 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %19)
  %21 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, 0
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr @"_llgo_closure$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", ptr %21)
  br i1 %22, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 5 }, ptr %23, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %23, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %24)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %25 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, 1
  %26 = load { ptr, ptr }, ptr %25, align 8
  %27 = extractvalue { ptr, ptr } %26, 1
  %28 = extractvalue { ptr, ptr } %26, 0
  %29 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %28(ptr %27, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 3 }, i64 2)
  %30 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %29, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 6 })
  %31 = xor i1 %30, true
  br i1 %31, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 94 }, ptr %32, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %32, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %33)
  unreachable
}

define %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %3 = icmp sge i64 0, %2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %3)
  %4 = getelementptr inbounds %reflect.Value, ptr %1, i64 0
  %5 = load %reflect.Value, ptr %4, align 8
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value %5)
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %9 = icmp sge i64 1, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %reflect.Value, ptr %7, i64 1
  %11 = load %reflect.Value, ptr %10, align 8
  %12 = call i64 @reflect.Value.Int(%reflect.Value %11)
  %13 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @strings.Repeat(%"github.com/goplus/llgo/runtime/internal/runtime.String" %6, i64 %12)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %15 = getelementptr inbounds %reflect.Value, ptr %14, i64 0
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" { ptr @_llgo_string, ptr undef }, ptr %16, 1
  %18 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  store %reflect.Value %18, ptr %15, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 2
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21
}

declare void @reflect.init()

declare void @strings.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.strequal"(ptr %1, ptr %2)
  ret i1 %3
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequalptr"(ptr %1, ptr %2)
  ret i1 %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr, ptr)

define linkonce i1 @"__llgo_stub.github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %0, ptr %1, ptr %2) {
_llgo_0:
  %3 = tail call i1 @"github.com/goplus/llgo/runtime/internal/runtime.memequal64"(ptr %1, ptr %2)
  ret i1 %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface", { ptr, ptr })

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.MatchesClosure"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare i64 @reflect.Value.Int(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @strings.Repeat(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

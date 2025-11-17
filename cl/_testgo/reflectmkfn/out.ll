; ModuleID = 'github.com/goplus/llgo/cl/_testgo/reflectmkfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/reflectmkfn"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%reflect.Value = type { ptr, ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard" = global i1 false, align 1
@_llgo_string = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [2 x i8] c"$f", align 1
@1 = private unnamed_addr constant [5 x i8] c"$data", align 1
@2 = private unnamed_addr constant [45 x i8] c"github.com/goplus/llgo/cl/_testgo/reflectmkfn", align 1
@3 = private unnamed_addr constant [94 x i8] c"type assertion interface{} -> struct{$f func(string, int) string; $data unsafe.Pointer} failed", align 1
@4 = private unnamed_addr constant [3 x i8] c"abc", align 1
@5 = private unnamed_addr constant [6 x i8] c"abcabc", align 1
@6 = private unnamed_addr constant [5 x i8] c"error", align 1

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$guard", align 1
  call void @reflect.init()
  call void @strings.init()
  call void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 32)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, i64 0
  %2 = call ptr @__llgo_load__llgo_string()
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  %6 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %6, ptr %1, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, i64 1
  %8 = call ptr @__llgo_load__llgo_int()
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11, ptr %7, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 2, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %15, i64 0
  %17 = call ptr @__llgo_load__llgo_string()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %18, 1
  %21 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %21, ptr %16, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 1, 2
  %25 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i1 false)
  %26 = call %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %25, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1", ptr null })
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value %26)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, 0
  %29 = call ptr @"__llgo_load__llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI"()
  %30 = call ptr @__llgo_load__llgo_Pointer()
  %31 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU"()
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_3
  %33 = call ptr @__llgo_load__llgo_string()
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %34, align 8
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %35, ptr %34, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %36)
  unreachable

_llgo_2:                                          ; preds = %_llgo_3
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, 1
  %38 = load { ptr, ptr }, ptr %37, align 8
  %39 = extractvalue { ptr, ptr } %38, 1
  %40 = extractvalue { ptr, ptr } %38, 0
  %41 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" %40(ptr %39, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 3 }, i64 2)
  %42 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %41, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 6 })
  %43 = xor i1 %42, true
  br i1 %43, label %_llgo_1, label %_llgo_2

_llgo_4:                                          ; preds = %_llgo_0
  %44 = call ptr @__llgo_load__llgo_string()
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 94 }, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
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
  %16 = call ptr @__llgo_load__llgo_string()
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %13, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  %20 = call %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  store %reflect.Value %20, ptr %15, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 2
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23
}

declare void @reflect.init()

declare void @strings.init()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.TypeOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

define linkonce ptr @__llgo_load__llgo_string() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_string, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %2, ptr @_llgo_string, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define void @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.init$after"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_string()
  %1 = call ptr @__llgo_load__llgo_int()
  %2 = call ptr @"__llgo_load__llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI"()
  %3 = call ptr @__llgo_load__llgo_Pointer()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU"()
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.iface" @reflect.FuncOf(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare %reflect.Value @reflect.MakeFunc(%"github.com/goplus/llgo/runtime/internal/runtime.iface", { ptr, ptr })

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1) {
_llgo_0:
  %2 = tail call %"github.com/goplus/llgo/runtime/internal/runtime.Slice" @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.main$1"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2
}

declare %"github.com/goplus/llgo/runtime/internal/runtime.eface" @reflect.Value.Interface(%reflect.Value)

define linkonce ptr @"__llgo_load__llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %16)
  store ptr %16, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %17 = load ptr, ptr @"_llgo_func$CFociaKlCvq9sERkLkn9LoCwUbRN_-idPZ-9Ui7-BZI", align 8
  ret ptr %17
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %2, ptr %5, align 8
  %6 = getelementptr ptr, ptr %4, i64 1
  store ptr %3, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 2, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 2, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %12 = getelementptr ptr, ptr %11, i64 0
  store ptr %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i1 false)
  %17 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 2 }, ptr %16, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %19 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 5 }, ptr %18, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %17, ptr %21, align 8
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %20, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %19, ptr %22, align 8
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 2, 1
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24, i64 2, 2
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 45 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25)
  store ptr %26, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = load ptr, ptr @"github.com/goplus/llgo/cl/_testgo/reflectmkfn.struct$XBbb2Vd9fa-WWUcWFPjreitD8Eex4qtMIsPbz__3VQU", align 8
  ret ptr %27
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.StringEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @reflect.Value.String(%reflect.Value)

declare i64 @reflect.Value.Int(%reflect.Value)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @strings.Repeat(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64)

declare %reflect.Value @reflect.ValueOf(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

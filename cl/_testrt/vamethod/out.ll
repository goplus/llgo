; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }

@"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@2 = private unnamed_addr constant [9 x i8] c"(%d) %s\0A\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/vamethod", align 1
@5 = private unnamed_addr constant [4 x i8] c"CFmt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_int8 = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [6 x i8] c"Printf", align 1
@_llgo_any = linkonce global ptr null, align 8
@"[]_llgo_any" = linkonce global ptr null, align 8
@_llgo_int32 = linkonce global ptr null, align 8
@"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T" = linkonce global ptr null, align 8
@"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [9 x i8] c"SetFormat", align 1
@"*_llgo_int8" = linkonce global ptr null, align 8
@"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA" = linkonce global ptr null, align 8
@"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [4 x i8] c"IFmt", align 1
@"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [12 x i8] c"%s (%d,%d)\0A\00", align 1
@11 = private unnamed_addr constant [5 x i8] c"ifmt\00", align 1
@12 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf"(%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ...) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 8, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @printf(ptr %3)
  ret i32 %4
}

define i32 @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf"(ptr %0, ...) {
_llgo_0:
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2)
  ret i32 %3
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  store ptr %1, ptr %2, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr @0)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  %3 = call i32 (ptr, ...) @printf(ptr %2, ptr @1, i64 100)
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat"(ptr %0, ptr @2)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", ptr %0, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 (ptr, ...) @printf(ptr %5, i64 200, ptr @3)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  %8 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt"()
  %9 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt"()
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %7, 1
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %13 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt"()
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %13, ptr %12)
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %15 = call ptr @__llgo_load__llgo_string()
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 5 }, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %16, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %18)
  unreachable

_llgo_2:                                          ; preds = %_llgo_5
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  %20 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 0
  %21 = getelementptr ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = insertvalue { ptr, ptr } undef, ptr %22, 0
  %24 = insertvalue { ptr, ptr } %23, ptr %19, 1
  %25 = extractvalue { ptr, ptr } %24, 1
  %26 = extractvalue { ptr, ptr } %24, 0
  call void %26(ptr %25, ptr @10)
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %44)
  %28 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %44, 0
  %29 = getelementptr ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = insertvalue { ptr, ptr } undef, ptr %30, 0
  %32 = insertvalue { ptr, ptr } %31, ptr %27, 1
  %33 = extractvalue { ptr, ptr } %32, 1
  %34 = extractvalue { ptr, ptr } %32, 0
  %35 = call i32 (ptr, ...) %34(ptr %33, ptr @11, i64 100, i64 200)
  ret void

_llgo_3:                                          ; preds = %_llgo_0
  %36 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 1
  %37 = call ptr @"__llgo_load__llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0"()
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %37, ptr %12)
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %39, ptr %36, 1
  %41 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.iface" %40, 0
  %42 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %41, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_0
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %43 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } [ %42, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %44 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 0
  %45 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.iface", i1 } %43, 1
  br i1 %45, label %_llgo_2, label %_llgo_1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare i32 @printf(ptr, ...)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 25, i64 8, i64 1, i64 2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T"()
  %5 = call ptr @"__llgo_load__llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw"()
  %6 = call ptr @"__llgo_load__llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 2
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 3
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %6, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 2
  %12 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf", 3
  %13 = call ptr @__llgo_load__llgo_int8()
  %14 = call ptr @"__llgo_load_*_llgo_int8"()
  %15 = call ptr @"__llgo_load__llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA"()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %15, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %16, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", 2
  %18 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %17, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", 3
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %19, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %12, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 1, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %24, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %24, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %18, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 2, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %30 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  ret ptr %30
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %3 = call ptr @__llgo_load__llgo_int8()
  %4 = call ptr @__llgo_load__llgo_any()
  %5 = call ptr @"__llgo_load_[]_llgo_any"()
  %6 = call ptr @__llgo_load__llgo_int32()
  %7 = call ptr @"__llgo_load__llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs"()
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %7, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr @printf, 2
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @printf, 3
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %12 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %11, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr %12, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 1, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  ret ptr %16
}

define linkonce ptr @__llgo_load__llgo_int8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %2, ptr @_llgo_int8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int8, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @__llgo_load__llgo_any() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  store ptr %6, ptr @_llgo_any, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_any, align 8
  ret ptr %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"__llgo_load_[]_llgo_any"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_any", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %6)
  store ptr %7, ptr @"[]_llgo_any", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = load ptr, ptr @"[]_llgo_any", align 8
  ret ptr %8
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

define linkonce ptr @__llgo_load__llgo_int32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %2, ptr @_llgo_int32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int32, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load__llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %6)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %9 = getelementptr ptr, ptr %8, i64 0
  store ptr %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %15 = getelementptr ptr, ptr %14, i64 0
  store ptr %13, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %19)
  store ptr %19, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %20 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  ret ptr %20
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %3, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %6 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %5, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %4, ptr %6, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %10)
  store ptr %10, ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw", align 8
  ret ptr %11
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

define linkonce ptr @"__llgo_load_*_llgo_int8"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_int8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_int8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_int8", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %5 = getelementptr ptr, ptr %4, i64 0
  store ptr %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 0, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %13)
  store ptr %13, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  ret ptr %14
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 25, i64 8, i64 1, i64 2)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 })
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  %3 = call ptr @"__llgo_load_[]_llgo_any"()
  %4 = call ptr @"__llgo_load__llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs"()
  %5 = call ptr @"__llgo_load_*_llgo_int8"()
  %6 = call ptr @"__llgo_load__llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA"()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %4, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef }, ptr %6, 1
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %9, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %7, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %9, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %8, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %9, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 2, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %15 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  ret ptr %15
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

define linkonce ptr @"__llgo_load__llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs"()
  %3 = call ptr @"__llgo_load__llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA"()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %2, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef }, ptr %3, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %4, ptr %7, align 8
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

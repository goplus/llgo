; ModuleID = 'github.com/goplus/llgo/cl/_testrt/vamethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/vamethod"

%"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt" = type { ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
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
  call void @"github.com/goplus/llgo/cl/_testrt/vamethod.init$after"()
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
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %9 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %7, 1
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  %14 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr %13, ptr %12)
  br i1 %14, label %_llgo_3, label %_llgo_4

_llgo_1:                                          ; preds = %_llgo_5
  %15 = load ptr, ptr @_llgo_string, align 8
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
  %37 = load ptr, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
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

define void @"github.com/goplus/llgo/cl/_testrt/vamethod.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 25, i64 8, i64 1, i64 2)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %0)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %3, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int8, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %8, ptr @_llgo_int8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_int8, align 8
  br i1 %5, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %10 = load ptr, ptr @_llgo_any, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_9, label %_llgo_10

_llgo_8:                                          ; preds = %_llgo_16, %_llgo_6
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  %14 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_17, label %_llgo_18

_llgo_9:                                          ; preds = %_llgo_7
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 0, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 0, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  store ptr %20, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_7
  %21 = load ptr, ptr @_llgo_any, align 8
  %22 = load ptr, ptr @"[]_llgo_any", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 0, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 0, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27)
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %28)
  store ptr %29, ptr @"[]_llgo_any", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %30 = load ptr, ptr @"[]_llgo_any", align 8
  %31 = load ptr, ptr @_llgo_int32, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %33, ptr @_llgo_int32, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %34 = load ptr, ptr @_llgo_int32, align 8
  %35 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %37, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 0, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 0, 2
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40)
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %41)
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %44 = getelementptr ptr, ptr %43, i64 0
  store ptr %42, ptr %44, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 1, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 1, 2
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %50 = getelementptr ptr, ptr %49, i64 0
  store ptr %48, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 2
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %54)
  store ptr %54, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %55 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %56 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %55, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %56, ptr @printf, 2
  %58 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %57, ptr @printf, 3
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %60 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %59, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %58, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %3, ptr %9, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63)
  br label %_llgo_8

_llgo_17:                                         ; preds = %_llgo_8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %64)
  store ptr %64, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_8
  %65 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.T", align 8
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, i64 3, i64 1, i64 0, i64 1)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %66)
  %68 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %67, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 true)
  %69 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %69, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %68, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %74)
  store ptr %74, ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw", align 8
  %75 = load ptr, ptr @"_llgo_struct$quUppefyumGvUA5WNkqjeO0PomZGx9OI8NFZ2pfWLXw", align 8
  br i1 %2, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %76 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 2
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 3
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).Printf", 2
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.CFmt.Printf", 3
  %83 = load ptr, ptr @_llgo_int8, align 8
  %84 = load ptr, ptr @"*_llgo_int8", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_21, label %_llgo_22

_llgo_20:                                         ; preds = %_llgo_24, %_llgo_18
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 25, i64 8, i64 1, i64 2)
  %87 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %_llgo_25, label %_llgo_26

_llgo_21:                                         ; preds = %_llgo_19
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %89)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %90)
  store ptr %90, ptr @"*_llgo_int8", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_19
  %91 = load ptr, ptr @"*_llgo_int8", align 8
  %92 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %94)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %97 = getelementptr ptr, ptr %96, i64 0
  store ptr %95, ptr %97, align 8
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 1, 1
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 1, 2
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %101, 0
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 0, 1
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 0, 2
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %105)
  store ptr %105, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %106 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  %107 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef, ptr undef, ptr undef }, ptr %106, 1
  %108 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %107, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", 2
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %108, ptr @"github.com/goplus/llgo/cl/_testrt/vamethod.(*CFmt).SetFormat", 3
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %111 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %110, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr %111, align 8
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %110, 0
  %113 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, i64 1, 1
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %113, i64 1, 2
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %115, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %115, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr %117, align 8
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %115, 0
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 2, 1
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %75, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120)
  br label %_llgo_20

_llgo_25:                                         ; preds = %_llgo_20
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %86)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %121)
  store ptr %121, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.CFmt", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_20
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 4 })
  %123 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  %124 = icmp eq ptr %123, null
  br i1 %124, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  store ptr %122, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/vamethod.IFmt", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %125 = load ptr, ptr @"[]_llgo_any", align 8
  %126 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %127 = load ptr, ptr @"*_llgo_int8", align 8
  %128 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  br i1 %124, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %129 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %126, 1
  %130 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef }, ptr %128, 1
  %131 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %131, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %129, ptr %132, align 8
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %131, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %130, ptr %133, align 8
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %131, 0
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 2, 1
  %136 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i64 2, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %122, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %136)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %137 = load ptr, ptr @"_llgo_func$sSO5Bw-E3E7TeJqIJF_OmmojTYyqWBhYrUwNYJNw7Bs", align 8
  %138 = load ptr, ptr @"_llgo_func$vAfTC3ZLX0_lZI-ZNliu0_DkE266FSmKXxj_cqKPPkA", align 8
  %139 = load ptr, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
  %140 = icmp eq ptr %139, null
  br i1 %140, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %141 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 6 }, ptr undef }, ptr %137, 1
  %142 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 9 }, ptr undef }, ptr %138, 1
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %144 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %143, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %141, ptr %144, align 8
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %143, i64 1
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %142, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %143, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, i64 2, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %147, i64 2, 2
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148)
  store ptr %149, ptr @"_llgo_iface$a85zs5wWQQoPIERm_en8plssh4spdIeeXZPC-E0TDh0", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %150 = load ptr, ptr @_llgo_string, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %152, ptr @_llgo_string, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.Implements"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

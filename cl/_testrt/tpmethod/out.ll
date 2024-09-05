; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"main.Tuple[error]" = type { %"github.com/goplus/llgo/internal/runtime.iface" }
%"main.future[main.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.Imethod" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [30 x i8] c"main.future[main.Tuple[error]]", align 1
@"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY" = linkonce global ptr null, align 8
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [17 x i8] c"main.Tuple[error]", align 1
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [1 x i8] c"v", align 1
@4 = private unnamed_addr constant [5 x i8] c"Error", align 1
@5 = private unnamed_addr constant [4 x i8] c"main", align 1
@6 = private unnamed_addr constant [5 x i8] c"error", align 1
@7 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@9 = private unnamed_addr constant [1 x i8] c"f", align 1
@10 = private unnamed_addr constant [4 x i8] c"data", align 1
@11 = private unnamed_addr constant [2 x i8] c"fn", align 1
@12 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [25 x i8] c"future[main.Tuple[error]]", align 1
@"*_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw" = linkonce global ptr null, align 8

define %"github.com/goplus/llgo/internal/runtime.iface" @main.ReadFile(%"github.com/goplus/llgo/internal/runtime.String" %0) {
_llgo_0:
  %1 = alloca { ptr, ptr }, align 8
  %2 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 0
  store ptr @"__llgo_stub.main.ReadFile$1", ptr %2, align 8
  %3 = getelementptr inbounds { ptr, ptr }, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 8
  %4 = load { ptr, ptr }, ptr %1, align 8
  %5 = call %"github.com/goplus/llgo/internal/runtime.iface" @"main.Async[main.Tuple[error]]"({ ptr, ptr } %4)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %5
}

define void @"main.ReadFile$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca %"main.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"main.Tuple[error]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.iface" zeroinitializer, ptr %2, align 8
  %3 = load %"main.Tuple[error]", ptr %1, align 8
  %4 = extractvalue { ptr, ptr } %0, 1
  %5 = extractvalue { ptr, ptr } %0, 0
  call void %5(ptr %4, %"main.Tuple[error]" %3)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"main.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.ReadFile(%"github.com/goplus/llgo/internal/runtime.String" %5)
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %6)
  %8 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %6, 0
  %9 = getelementptr ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  %11 = alloca { ptr, ptr }, align 8
  %12 = getelementptr inbounds { ptr, ptr }, ptr %11, i32 0, i32 0
  store ptr %10, ptr %12, align 8
  %13 = getelementptr inbounds { ptr, ptr }, ptr %11, i32 0, i32 1
  store ptr %7, ptr %13, align 8
  %14 = load { ptr, ptr }, ptr %11, align 8
  %15 = extractvalue { ptr, ptr } %14, 1
  %16 = extractvalue { ptr, ptr } %14, 0
  %17 = alloca { ptr, ptr }, align 8
  %18 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 0
  store ptr @"__llgo_stub.main.main$1", ptr %18, align 8
  %19 = getelementptr inbounds { ptr, ptr }, ptr %17, i32 0, i32 1
  store ptr null, ptr %19, align 8
  %20 = load { ptr, ptr }, ptr %17, align 8
  call void %16(ptr %15, { ptr, ptr } %20)
  ret i32 0
}

define void @"main.main$1"(%"main.Tuple[error]" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce %"github.com/goplus/llgo/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"main.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"main.Tuple[error]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"main.Tuple[error]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/internal/runtime.iface" @"main.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"main.Tuple[error]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %1)
  ret %"github.com/goplus/llgo/internal/runtime.iface" %2
}

define linkonce void @"main.(*future[main.Tuple[error]]).Then"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"main.future[main.Tuple[error]]", ptr %0, i32 0, i32 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  call void %5(ptr %4, { ptr, ptr } %1)
  ret void
}

define linkonce %"github.com/goplus/llgo/internal/runtime.iface" @"main.Async[main.Tuple[error]]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"main.future[main.Tuple[error]]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  %3 = load ptr, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %4 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %4, ptr %3)
  %6 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, i32 0, i32 1
  store ptr %1, ptr %8, align 8
  %9 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %6, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %9
}

define linkonce void @"__llgo_stub.main.ReadFile$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"main.ReadFile$1"({ ptr, ptr } %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface")

define linkonce void @"__llgo_stub.main.main$1"(ptr %0, %"main.Tuple[error]" %1) {
_llgo_0:
  tail call void @"main.main$1"(%"main.Tuple[error]" %1)
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintIface"(%"github.com/goplus/llgo/internal/runtime.iface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @1, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 30, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 24, i64 0, i64 1)
  store ptr %4, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %5 = load ptr, ptr @_llgo_Pointer, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %7)
  store ptr %7, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = load ptr, ptr @_llgo_Pointer, align 8
  %9 = load ptr, ptr @_llgo_Pointer, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @2, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 17, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %13, i64 25, i64 16, i64 1, i64 1)
  %15 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %14, ptr @"_llgo_main.Tuple[error]", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %19, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %20 = load ptr, ptr @_llgo_string, align 8
  %21 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %24 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %24, i32 0, i32 0
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %24, i32 0, i32 1
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %24, i32 0, i32 2
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %24, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %30 = getelementptr ptr, ptr %29, i64 0
  store ptr %20, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 0
  store ptr %29, ptr %32, align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 1
  store i64 1, ptr %33, align 4
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, i32 0, i32 2
  store i64 1, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %31, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %28, %"github.com/goplus/llgo/internal/runtime.Slice" %35, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %36)
  store ptr %36, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %37 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @3, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 1, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 0, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 0
  store ptr @4, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %46, i32 0, i32 1
  store i64 5, ptr %48, align 4
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %46, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %50, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %49, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %50, i32 0, i32 1
  store ptr %37, ptr %52, align 8
  %53 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %50, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %55 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %54, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %53, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %54, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 1, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 1, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 0
  store ptr @5, ptr %62, align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %61, i32 0, i32 1
  store i64 4, ptr %63, align 4
  %64 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %61, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @6, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 5, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %64, %"github.com/goplus/llgo/internal/runtime.String" %68, %"github.com/goplus/llgo/internal/runtime.Slice" %60)
  %70 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %41, ptr %69, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %45, i1 false)
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr @5, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 4, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %76 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %75, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %70, ptr %76, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 0
  store ptr %75, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 1
  store i64 1, ptr %79, align 4
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, i32 0, i32 2
  store i64 1, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %77, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %74, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %81)
  store ptr %82, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %83 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %16, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @7, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 3, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %89 = load ptr, ptr @_llgo_error, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  %91 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @9, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 1, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr null, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 0, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %101 = getelementptr ptr, ptr %100, i64 0
  store ptr %9, ptr %101, align 8
  %102 = getelementptr ptr, ptr %100, i64 1
  store ptr %91, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 0
  store ptr %100, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 1
  store i64 2, ptr %105, align 4
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, i32 0, i32 2
  store i64 2, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %103, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %109 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 0
  store ptr %108, ptr %110, align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 1
  store i64 0, ptr %111, align 4
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, i32 0, i32 2
  store i64 0, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %109, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %107, %"github.com/goplus/llgo/internal/runtime.Slice" %113, i1 false)
  %115 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %95, ptr %114, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %99, i1 false)
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @10, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 0
  store ptr null, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %120, i32 0, i32 1
  store i64 0, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %120, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %125 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %119, ptr %124, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %123, i1 false)
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @5, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %131 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %130, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %115, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %130, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %125, ptr %132, align 8
  %133 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 0
  store ptr %130, ptr %134, align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 1
  store i64 2, ptr %135, align 4
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, i32 0, i32 2
  store i64 2, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %133, align 8
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %129, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %137)
  store ptr %138, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %139 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @11, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 2, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr null, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 0, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 0
  store ptr @9, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %148, i32 0, i32 1
  store i64 1, ptr %150, align 4
  %151 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %148, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 0
  store ptr null, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %152, i32 0, i32 1
  store i64 0, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %152, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %157 = getelementptr ptr, ptr %156, i64 0
  store ptr %8, ptr %157, align 8
  %158 = getelementptr ptr, ptr %156, i64 1
  store ptr %139, ptr %158, align 8
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 0
  store ptr %156, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 1
  store i64 2, ptr %161, align 4
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, i32 0, i32 2
  store i64 2, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %159, align 8
  %164 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 0
  store ptr %164, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 1
  store i64 0, ptr %167, align 4
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, i32 0, i32 2
  store i64 0, ptr %168, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %165, align 8
  %170 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %163, %"github.com/goplus/llgo/internal/runtime.Slice" %169, i1 false)
  %171 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %151, ptr %170, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %155, i1 false)
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @10, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 4, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr null, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %181 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %175, ptr %180, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %179, i1 false)
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr @5, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 4, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %187 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %186, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %171, ptr %187, align 8
  %188 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %186, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %181, ptr %188, align 8
  %189 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 0
  store ptr %186, ptr %190, align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 1
  store i64 2, ptr %191, align 4
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, i32 0, i32 2
  store i64 2, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %189, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %185, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %193)
  %195 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %143, ptr %194, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %147, i1 false)
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr @5, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 4, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %201 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %200, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %195, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 0
  store ptr %200, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 1
  store i64 1, ptr %204, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 2
  store i64 1, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %199, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %206)
  store ptr %207, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %208 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %209 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 0
  store ptr @12, ptr %210, align 8
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %209, i32 0, i32 1
  store i64 4, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %209, align 8
  %213 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %214 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %_llgo_15, label %_llgo_16

_llgo_11:                                         ; preds = %_llgo_9
  %216 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 0
  store ptr @4, ptr %217, align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %216, i32 0, i32 1
  store i64 5, ptr %218, align 4
  %219 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %216, align 8
  %220 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %220, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %219, ptr %221, align 8
  %222 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %220, i32 0, i32 1
  store ptr %88, ptr %222, align 8
  %223 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %220, align 8
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %225 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %224, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %223, ptr %225, align 8
  %226 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 0
  store ptr %224, ptr %227, align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 1
  store i64 1, ptr %228, align 4
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, i32 0, i32 2
  store i64 1, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %226, align 8
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 0
  store ptr @5, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %231, i32 0, i32 1
  store i64 4, ptr %233, align 4
  %234 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %231, align 8
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @6, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 5, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %234, %"github.com/goplus/llgo/internal/runtime.String" %238, %"github.com/goplus/llgo/internal/runtime.Slice" %230)
  store ptr %239, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %240 = load ptr, ptr @_llgo_error, align 8
  %241 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %244 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 0
  store ptr %243, ptr %245, align 8
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 1
  store i64 0, ptr %246, align 4
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, i32 0, i32 2
  store i64 0, ptr %247, align 4
  %248 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %244, align 8
  %249 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %250 = getelementptr ptr, ptr %249, i64 0
  store ptr %240, ptr %250, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 0
  store ptr %249, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 1
  store i64 1, ptr %253, align 4
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, i32 0, i32 2
  store i64 1, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %251, align 8
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %248, %"github.com/goplus/llgo/internal/runtime.Slice" %255, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %256)
  store ptr %256, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %257 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %258 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 1
  store ptr %257, ptr %260, align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %258, i32 0, i32 3
  store ptr @"main.(*Tuple[error]).Get", ptr %262, align 8
  %263 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %258, align 8
  %264 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %87, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 1
  store ptr %257, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %264, i32 0, i32 3
  store ptr @"main.Tuple[error].Get", ptr %268, align 8
  %269 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %264, align 8
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %271 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %270, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %269, ptr %271, align 8
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 0
  store ptr %270, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 1
  store i64 1, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 2
  store i64 1, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, align 8
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %278 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %277, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %263, ptr %278, align 8
  %279 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %279, i32 0, i32 0
  store ptr %277, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %279, i32 0, i32 1
  store i64 1, ptr %281, align 4
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %279, i32 0, i32 2
  store i64 1, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %279, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr @5, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 1
  store i64 4, ptr %286, align 4
  %287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %284, align 8
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 0
  store ptr @8, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 1
  store i64 12, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %288, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %14, %"github.com/goplus/llgo/internal/runtime.String" %287, %"github.com/goplus/llgo/internal/runtime.String" %291, ptr %83, %"github.com/goplus/llgo/internal/runtime.Slice" %276, %"github.com/goplus/llgo/internal/runtime.Slice" %283)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_10
  %292 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %293 = getelementptr ptr, ptr %292, i64 0
  store ptr %213, ptr %293, align 8
  %294 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 0
  store ptr %292, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 1
  store i64 1, ptr %296, align 4
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, i32 0, i32 2
  store i64 1, ptr %297, align 4
  %298 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %294, align 8
  %299 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %300 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %300, i32 0, i32 0
  store ptr %299, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %300, i32 0, i32 1
  store i64 0, ptr %302, align 4
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %300, i32 0, i32 2
  store i64 0, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %300, align 8
  %305 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %298, %"github.com/goplus/llgo/internal/runtime.Slice" %304, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %305)
  store ptr %305, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_10
  %306 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %307 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %212, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 1
  store ptr %306, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 2
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %310, align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %307, i32 0, i32 3
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %311, align 8
  %312 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %307, align 8
  %313 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %313, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %312, ptr %314, align 8
  %315 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 0
  store ptr %313, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 1
  store i64 1, ptr %317, align 4
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 2
  store i64 1, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, align 8
  %320 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 0
  store ptr @5, ptr %321, align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %320, i32 0, i32 1
  store i64 4, ptr %322, align 4
  %323 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %320, align 8
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 0
  store ptr @13, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 1
  store i64 25, ptr %326, align 4
  %327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %324, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %323, %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %208, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %319)
  %328 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 0
  store ptr @1, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 1
  store i64 30, ptr %330, align 4
  %331 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %328, align 8
  %332 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %331, i64 25, i64 24, i64 0, i64 1)
  %333 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %332)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %333)
  store ptr %333, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %334 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %335 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %336 = icmp eq ptr %335, null
  br i1 %336, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %337 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 0
  store ptr @12, ptr %338, align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %337, i32 0, i32 1
  store i64 4, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %337, align 8
  %341 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %340, ptr %342, align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, i32 0, i32 1
  store ptr %334, ptr %343, align 8
  %344 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %341, align 8
  %345 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %346 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %345, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %344, ptr %346, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 0
  store ptr %345, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 1
  store i64 1, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 2
  store i64 1, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, align 8
  %352 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %353 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 0
  store ptr @5, ptr %353, align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %352, i32 0, i32 1
  store i64 4, ptr %354, align 4
  %355 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %352, align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr null, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 0, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %355, %"github.com/goplus/llgo/internal/runtime.String" %359, %"github.com/goplus/llgo/internal/runtime.Slice" %351)
  store ptr %360, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

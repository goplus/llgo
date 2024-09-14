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
@"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY" = linkonce global ptr null, align 8
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [1 x i8] c"v", align 1
@2 = private unnamed_addr constant [5 x i8] c"Error", align 1
@3 = private unnamed_addr constant [4 x i8] c"main", align 1
@4 = private unnamed_addr constant [5 x i8] c"error", align 1
@5 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@_llgo_error = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@7 = private unnamed_addr constant [1 x i8] c"f", align 1
@8 = private unnamed_addr constant [4 x i8] c"data", align 1
@9 = private unnamed_addr constant [2 x i8] c"fn", align 1
@10 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [25 x i8] c"future[main.Tuple[error]]", align 1
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 24, i64 0, i64 1)
  store ptr %0, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %1 = load ptr, ptr @_llgo_Pointer, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = load ptr, ptr @_llgo_Pointer, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 16, i64 1, i64 1)
  %7 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %6, ptr @"_llgo_main.Tuple[error]", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %11, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, i32 0, i32 2
  store i64 0, ptr %19, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %16, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %22 = getelementptr ptr, ptr %21, i64 0
  store ptr %12, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 0
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 1
  store i64 1, ptr %25, align 4
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, i32 0, i32 2
  store i64 1, ptr %26, align 4
  %27 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %23, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %20, %"github.com/goplus/llgo/internal/runtime.Slice" %27, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %28)
  store ptr %28, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %29 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @1, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 1, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 0
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %34, i32 0, i32 1
  store i64 0, ptr %36, align 4
  %37 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @2, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 5, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  %42 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %41, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, i32 0, i32 1
  store ptr %29, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %42, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %47 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %46, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %45, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 1, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @3, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 4, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 0
  store ptr @4, ptr %58, align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %57, i32 0, i32 1
  store i64 5, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %57, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %56, %"github.com/goplus/llgo/internal/runtime.String" %60, %"github.com/goplus/llgo/internal/runtime.Slice" %52)
  %62 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %33, ptr %61, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %37, i1 false)
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 0
  store ptr @3, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %63, i32 0, i32 1
  store i64 4, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %63, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %68 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %67, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %62, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 0
  store ptr %67, ptr %70, align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 1
  store i64 1, ptr %71, align 4
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, i32 0, i32 2
  store i64 1, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %69, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %66, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %73)
  store ptr %74, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %75 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %8, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @5, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 3, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %81 = load ptr, ptr @_llgo_error, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_14, %_llgo_8
  %83 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @7, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 1, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr null, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 0, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %93 = getelementptr ptr, ptr %92, i64 0
  store ptr %5, ptr %93, align 8
  %94 = getelementptr ptr, ptr %92, i64 1
  store ptr %83, ptr %94, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 0
  store ptr %92, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 1
  store i64 2, ptr %97, align 4
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, i32 0, i32 2
  store i64 2, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %95, align 8
  %100 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 0
  store ptr %100, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 1
  store i64 0, ptr %103, align 4
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, i32 0, i32 2
  store i64 0, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %101, align 8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %99, %"github.com/goplus/llgo/internal/runtime.Slice" %105, i1 false)
  %107 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %87, ptr %106, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %91, i1 false)
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr @8, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 4, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr null, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 0, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %117 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %111, ptr %116, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %115, i1 false)
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @3, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 4, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %123 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %122, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %107, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %122, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %117, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 0
  store ptr %122, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 1
  store i64 2, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 2
  store i64 2, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %121, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %129)
  store ptr %130, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %131 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 0
  store ptr @9, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %132, i32 0, i32 1
  store i64 2, ptr %134, align 4
  %135 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %132, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 0
  store ptr null, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %136, i32 0, i32 1
  store i64 0, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %136, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @7, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 1, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr null, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 0, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %149 = getelementptr ptr, ptr %148, i64 0
  store ptr %4, ptr %149, align 8
  %150 = getelementptr ptr, ptr %148, i64 1
  store ptr %131, ptr %150, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 0
  store ptr %148, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 1
  store i64 2, ptr %153, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 2
  store i64 2, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 0
  store ptr %156, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 1
  store i64 0, ptr %159, align 4
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, i32 0, i32 2
  store i64 0, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %157, align 8
  %162 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %155, %"github.com/goplus/llgo/internal/runtime.Slice" %161, i1 false)
  %163 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %143, ptr %162, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %147, i1 false)
  %164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 0
  store ptr @8, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 1
  store i64 4, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %164, align 8
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr null, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 0, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %173 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %167, ptr %172, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %171, i1 false)
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 0
  store ptr @3, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %174, i32 0, i32 1
  store i64 4, ptr %176, align 4
  %177 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %174, align 8
  %178 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %179 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %178, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %163, ptr %179, align 8
  %180 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %178, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %173, ptr %180, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 0
  store ptr %178, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 1
  store i64 2, ptr %183, align 4
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, i32 0, i32 2
  store i64 2, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %181, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %177, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %185)
  %187 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %135, ptr %186, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %139, i1 false)
  %188 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 0
  store ptr @3, ptr %189, align 8
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %188, i32 0, i32 1
  store i64 4, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %188, align 8
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %193 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %192, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %187, ptr %193, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %194, i32 0, i32 0
  store ptr %192, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %194, i32 0, i32 1
  store i64 1, ptr %196, align 4
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %194, i32 0, i32 2
  store i64 1, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %194, align 8
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %191, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %198)
  store ptr %199, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %200 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %201 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 0
  store ptr @10, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 1
  store i64 4, ptr %203, align 4
  %204 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %201, align 8
  %205 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %206 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %207 = icmp eq ptr %206, null
  br i1 %207, label %_llgo_15, label %_llgo_16

_llgo_11:                                         ; preds = %_llgo_9
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 0
  store ptr @2, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 1
  store i64 5, ptr %210, align 4
  %211 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %208, align 8
  %212 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %212, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %211, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %212, i32 0, i32 1
  store ptr %80, ptr %214, align 8
  %215 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %212, align 8
  %216 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %217 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %216, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %215, ptr %217, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 0
  store ptr %216, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 1
  store i64 1, ptr %220, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 2
  store i64 1, ptr %221, align 4
  %222 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, align 8
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr @3, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 4, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %228 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 0
  store ptr @4, ptr %228, align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %227, i32 0, i32 1
  store i64 5, ptr %229, align 4
  %230 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %227, align 8
  %231 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %226, %"github.com/goplus/llgo/internal/runtime.String" %230, %"github.com/goplus/llgo/internal/runtime.Slice" %222)
  store ptr %231, ptr @_llgo_error, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %232 = load ptr, ptr @_llgo_error, align 8
  %233 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %235 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 0
  store ptr %235, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 1
  store i64 0, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 2
  store i64 0, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, align 8
  %241 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %242 = getelementptr ptr, ptr %241, i64 0
  store ptr %232, ptr %242, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 0
  store ptr %241, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 1
  store i64 1, ptr %245, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 2
  store i64 1, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, align 8
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %240, %"github.com/goplus/llgo/internal/runtime.Slice" %247, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %248)
  store ptr %248, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %249 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %250 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %250, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %250, i32 0, i32 1
  store ptr %249, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %250, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %250, i32 0, i32 3
  store ptr @"main.(*Tuple[error]).Get", ptr %254, align 8
  %255 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %250, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 1
  store ptr %249, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %256, i32 0, i32 3
  store ptr @"main.Tuple[error].Get", ptr %260, align 8
  %261 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %256, align 8
  %262 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %263 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %262, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %261, ptr %263, align 8
  %264 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 0
  store ptr %262, ptr %265, align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 1
  store i64 1, ptr %266, align 4
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, i32 0, i32 2
  store i64 1, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %264, align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %270 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %269, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %255, ptr %270, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 0
  store ptr %269, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 1
  store i64 1, ptr %273, align 4
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, i32 0, i32 2
  store i64 1, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %271, align 8
  %276 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %277 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %276, i32 0, i32 0
  store ptr @3, ptr %277, align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %276, i32 0, i32 1
  store i64 4, ptr %278, align 4
  %279 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %276, align 8
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @6, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 12, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %6, %"github.com/goplus/llgo/internal/runtime.String" %279, %"github.com/goplus/llgo/internal/runtime.String" %283, ptr %75, %"github.com/goplus/llgo/internal/runtime.Slice" %268, %"github.com/goplus/llgo/internal/runtime.Slice" %275)
  br label %_llgo_10

_llgo_15:                                         ; preds = %_llgo_10
  %284 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %285 = getelementptr ptr, ptr %284, i64 0
  store ptr %205, ptr %285, align 8
  %286 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %286, i32 0, i32 0
  store ptr %284, ptr %287, align 8
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %286, i32 0, i32 1
  store i64 1, ptr %288, align 4
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %286, i32 0, i32 2
  store i64 1, ptr %289, align 4
  %290 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %286, align 8
  %291 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 0
  store ptr %291, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 1
  store i64 0, ptr %294, align 4
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, i32 0, i32 2
  store i64 0, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %292, align 8
  %297 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %290, %"github.com/goplus/llgo/internal/runtime.Slice" %296, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %297)
  store ptr %297, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_10
  %298 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %299 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %204, ptr %300, align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 1
  store ptr %298, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 2
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %299, i32 0, i32 3
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %303, align 8
  %304 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %299, align 8
  %305 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %306 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %305, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %304, ptr %306, align 8
  %307 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 0
  store ptr %305, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 1
  store i64 1, ptr %309, align 4
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 2
  store i64 1, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, align 8
  %312 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 0
  store ptr @3, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 1
  store i64 4, ptr %314, align 4
  %315 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %312, align 8
  %316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 0
  store ptr @11, ptr %317, align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 1
  store i64 25, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %316, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %315, %"github.com/goplus/llgo/internal/runtime.String" %319, ptr %200, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %311)
  %320 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %320)
  store ptr %320, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %321 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %322 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %324 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 0
  store ptr @10, ptr %325, align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %324, i32 0, i32 1
  store i64 4, ptr %326, align 4
  %327 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %324, align 8
  %328 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %328, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %327, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %328, i32 0, i32 1
  store ptr %321, ptr %330, align 8
  %331 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %328, align 8
  %332 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %333 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %332, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %331, ptr %333, align 8
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %334, i32 0, i32 0
  store ptr %332, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %334, i32 0, i32 1
  store i64 1, ptr %336, align 4
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %334, i32 0, i32 2
  store i64 1, ptr %337, align 4
  %338 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %334, align 8
  %339 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 0
  store ptr @3, ptr %340, align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %339, i32 0, i32 1
  store i64 4, ptr %341, align 4
  %342 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %339, align 8
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 0
  store ptr null, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 1
  store i64 0, ptr %345, align 4
  %346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %343, align 8
  %347 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %342, %"github.com/goplus/llgo/internal/runtime.String" %346, %"github.com/goplus/llgo/internal/runtime.Slice" %338)
  store ptr %347, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

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

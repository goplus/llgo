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
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [17 x i8] c"main.Tuple[error]", align 1
@_llgo_error = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [5 x i8] c"error", align 1
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"v", align 1
@7 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4" = linkonce global ptr null, align 8
@"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"f", align 1
@10 = private unnamed_addr constant [4 x i8] c"data", align 1
@"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw" = linkonce global ptr null, align 8
@"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk" = linkonce global ptr null, align 8
@"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY" = linkonce global ptr null, align 8
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
  %3 = load ptr, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %4 = load ptr, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %5 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %6 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %7 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %8 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %8, ptr %4)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i32 0, i32 0
  store ptr %9, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, i32 0, i32 1
  store ptr %1, ptr %12, align 8
  %13 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %10, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %13
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
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @2, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 17, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %12, i64 25, i64 16, i64 1, i64 1)
  %14 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %13, ptr @"_llgo_main.Tuple[error]", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %18, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = load ptr, ptr @_llgo_string, align 8
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
  %38 = load ptr, ptr @_llgo_error, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @3, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 5, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  %44 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %44, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %43, ptr %45, align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %44, i32 0, i32 1
  store ptr %37, ptr %46, align 8
  %47 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %44, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %49 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %48, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %47, ptr %49, align 8
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 0
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 1
  store i64 1, ptr %52, align 4
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, i32 0, i32 2
  store i64 1, ptr %53, align 4
  %54 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %50, align 8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @4, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 4, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 0
  store ptr @5, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 1
  store i64 5, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %59, align 8
  %63 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %58, %"github.com/goplus/llgo/internal/runtime.String" %62, %"github.com/goplus/llgo/internal/runtime.Slice" %54)
  store ptr %63, ptr @_llgo_error, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %64 = load ptr, ptr @_llgo_error, align 8
  %65 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 0
  store ptr @6, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %66, i32 0, i32 1
  store i64 1, ptr %68, align 4
  %69 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %66, align 8
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr null, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 0, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @3, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 5, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  %78 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %77, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, i32 0, i32 1
  store ptr %65, ptr %80, align 8
  %81 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %78, align 8
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %83 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %82, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %81, ptr %83, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 0
  store ptr %82, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 1
  store i64 1, ptr %86, align 4
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, i32 0, i32 2
  store i64 1, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %84, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @4, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 4, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @5, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 5, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %92, %"github.com/goplus/llgo/internal/runtime.String" %96, %"github.com/goplus/llgo/internal/runtime.Slice" %88)
  %98 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %69, ptr %97, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %73, i1 false)
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr @4, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 4, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %104 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %103, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %98, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 0
  store ptr %103, ptr %106, align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 1
  store i64 1, ptr %107, align 4
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, i32 0, i32 2
  store i64 1, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %105, align 8
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %102, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %109)
  store ptr %110, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %111 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %112 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %113 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 0
  store ptr @7, ptr %113, align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %112, i32 0, i32 1
  store i64 3, ptr %114, align 4
  %115 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %112, align 8
  %116 = load ptr, ptr @_llgo_error, align 8
  %117 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %119 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %120 = load ptr, ptr @_llgo_Pointer, align 8
  %121 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %122 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 0
  store ptr %124, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 1
  store i64 0, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 2
  store i64 0, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %131 = getelementptr ptr, ptr %130, i64 0
  store ptr %116, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %130, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 1, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 1, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %129, %"github.com/goplus/llgo/internal/runtime.Slice" %136, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %137)
  store ptr %137, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %138 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %139 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %139, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %139, i32 0, i32 1
  store ptr %138, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %139, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %139, i32 0, i32 3
  store ptr @"main.(*Tuple[error]).Get", ptr %143, align 8
  %144 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %139, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 1
  store ptr %138, ptr %147, align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %145, i32 0, i32 3
  store ptr @"main.Tuple[error].Get", ptr %149, align 8
  %150 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %145, align 8
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %152 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %151, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %150, ptr %152, align 8
  %153 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 0
  store ptr %151, ptr %154, align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 1
  store i64 1, ptr %155, align 4
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, i32 0, i32 2
  store i64 1, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %153, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %159 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %158, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %144, ptr %159, align 8
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %160, i32 0, i32 0
  store ptr %158, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %160, i32 0, i32 1
  store i64 1, ptr %162, align 4
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %160, i32 0, i32 2
  store i64 1, ptr %163, align 4
  %164 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %160, align 8
  %165 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 0
  store ptr @4, ptr %166, align 8
  %167 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %165, i32 0, i32 1
  store i64 4, ptr %167, align 4
  %168 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %165, align 8
  %169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 0
  store ptr @8, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 1
  store i64 12, ptr %171, align 4
  %172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %169, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %13, %"github.com/goplus/llgo/internal/runtime.String" %168, %"github.com/goplus/llgo/internal/runtime.String" %172, ptr %111, %"github.com/goplus/llgo/internal/runtime.Slice" %157, %"github.com/goplus/llgo/internal/runtime.Slice" %164)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %174 = getelementptr ptr, ptr %173, i64 0
  store ptr %120, ptr %174, align 8
  %175 = getelementptr ptr, ptr %173, i64 1
  store ptr %121, ptr %175, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 0
  store ptr %173, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 1
  store i64 2, ptr %178, align 4
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, i32 0, i32 2
  store i64 2, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %176, align 8
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 0
  store ptr %181, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 1
  store i64 0, ptr %184, align 4
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, i32 0, i32 2
  store i64 0, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %182, align 8
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %180, %"github.com/goplus/llgo/internal/runtime.Slice" %186, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %187)
  store ptr %187, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %188 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %189 = load ptr, ptr @_llgo_Pointer, align 8
  %190 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %191 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 0
  store ptr @9, ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 1
  store i64 1, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %191, align 8
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr null, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 0, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %200 = getelementptr ptr, ptr %199, i64 0
  store ptr %189, ptr %200, align 8
  %201 = getelementptr ptr, ptr %199, i64 1
  store ptr %190, ptr %201, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 0
  store ptr %199, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 1
  store i64 2, ptr %204, align 4
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, i32 0, i32 2
  store i64 2, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %202, align 8
  %207 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 0
  store ptr %207, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 1
  store i64 0, ptr %210, align 4
  %211 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, i32 0, i32 2
  store i64 0, ptr %211, align 4
  %212 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %208, align 8
  %213 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %206, %"github.com/goplus/llgo/internal/runtime.Slice" %212, i1 false)
  %214 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %194, ptr %213, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %198, i1 false)
  %215 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 0
  store ptr @10, ptr %216, align 8
  %217 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %215, i32 0, i32 1
  store i64 4, ptr %217, align 4
  %218 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %215, align 8
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 0
  store ptr null, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 1
  store i64 0, ptr %221, align 4
  %222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %219, align 8
  %223 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %224 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %218, ptr %223, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %222, i1 false)
  %225 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 0
  store ptr @4, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 1
  store i64 4, ptr %227, align 4
  %228 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %225, align 8
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %230 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %229, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %214, ptr %230, align 8
  %231 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %229, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %224, ptr %231, align 8
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 0
  store ptr %229, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 1
  store i64 2, ptr %234, align 4
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, i32 0, i32 2
  store i64 2, ptr %235, align 4
  %236 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %232, align 8
  %237 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %228, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %236)
  store ptr %237, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %238 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %239 = load ptr, ptr @_llgo_Pointer, align 8
  %240 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %241 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %243 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %244 = getelementptr ptr, ptr %243, i64 0
  store ptr %239, ptr %244, align 8
  %245 = getelementptr ptr, ptr %243, i64 1
  store ptr %240, ptr %245, align 8
  %246 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %246, i32 0, i32 0
  store ptr %243, ptr %247, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %246, i32 0, i32 1
  store i64 2, ptr %248, align 4
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %246, i32 0, i32 2
  store i64 2, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %246, align 8
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %252, i32 0, i32 0
  store ptr %251, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %252, i32 0, i32 1
  store i64 0, ptr %254, align 4
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %252, i32 0, i32 2
  store i64 0, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %252, align 8
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %250, %"github.com/goplus/llgo/internal/runtime.Slice" %256, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %257)
  store ptr %257, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %258 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %259 = load ptr, ptr @_llgo_Pointer, align 8
  %260 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @9, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 1, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %266 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 0
  store ptr null, ptr %266, align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %265, i32 0, i32 1
  store i64 0, ptr %267, align 4
  %268 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %265, align 8
  %269 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %270 = getelementptr ptr, ptr %269, i64 0
  store ptr %259, ptr %270, align 8
  %271 = getelementptr ptr, ptr %269, i64 1
  store ptr %260, ptr %271, align 8
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 0
  store ptr %269, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 1
  store i64 2, ptr %274, align 4
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, i32 0, i32 2
  store i64 2, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %272, align 8
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 0
  store ptr %277, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 1
  store i64 0, ptr %280, align 4
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, i32 0, i32 2
  store i64 0, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %278, align 8
  %283 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %276, %"github.com/goplus/llgo/internal/runtime.Slice" %282, i1 false)
  %284 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %264, ptr %283, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %268, i1 false)
  %285 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 0
  store ptr @10, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %285, i32 0, i32 1
  store i64 4, ptr %287, align 4
  %288 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %285, align 8
  %289 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 0
  store ptr null, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 1
  store i64 0, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %289, align 8
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %294 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %288, ptr %293, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %292, i1 false)
  %295 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 0
  store ptr @4, ptr %296, align 8
  %297 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %295, i32 0, i32 1
  store i64 4, ptr %297, align 4
  %298 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %295, align 8
  %299 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %300 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %299, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %284, ptr %300, align 8
  %301 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %299, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %294, ptr %301, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 0
  store ptr %299, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 1
  store i64 2, ptr %304, align 4
  %305 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, i32 0, i32 2
  store i64 2, ptr %305, align 4
  %306 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %302, align 8
  %307 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %298, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %306)
  store ptr %307, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %308 = load ptr, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %309 = load ptr, ptr @_llgo_Pointer, align 8
  %310 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %311 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %311, i32 0, i32 0
  store ptr @11, ptr %312, align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %311, i32 0, i32 1
  store i64 2, ptr %313, align 4
  %314 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %311, align 8
  %315 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %315, i32 0, i32 0
  store ptr null, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %315, i32 0, i32 1
  store i64 0, ptr %317, align 4
  %318 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %315, align 8
  %319 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 0
  store ptr @9, ptr %320, align 8
  %321 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %319, i32 0, i32 1
  store i64 1, ptr %321, align 4
  %322 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %319, align 8
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr null, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 0, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %328 = getelementptr ptr, ptr %327, i64 0
  store ptr %309, ptr %328, align 8
  %329 = getelementptr ptr, ptr %327, i64 1
  store ptr %310, ptr %329, align 8
  %330 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 0
  store ptr %327, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 1
  store i64 2, ptr %332, align 4
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, i32 0, i32 2
  store i64 2, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %330, align 8
  %335 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %336, i32 0, i32 0
  store ptr %335, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %336, i32 0, i32 1
  store i64 0, ptr %338, align 4
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %336, i32 0, i32 2
  store i64 0, ptr %339, align 4
  %340 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %336, align 8
  %341 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %334, %"github.com/goplus/llgo/internal/runtime.Slice" %340, i1 false)
  %342 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %322, ptr %341, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %326, i1 false)
  %343 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 0
  store ptr @10, ptr %344, align 8
  %345 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %343, i32 0, i32 1
  store i64 4, ptr %345, align 4
  %346 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %343, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %347, i32 0, i32 0
  store ptr null, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %347, i32 0, i32 1
  store i64 0, ptr %349, align 4
  %350 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %347, align 8
  %351 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %352 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %346, ptr %351, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %350, i1 false)
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr @4, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 4, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %358 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %357, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %342, ptr %358, align 8
  %359 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %357, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %352, ptr %359, align 8
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 0
  store ptr %357, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 1
  store i64 2, ptr %362, align 4
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, i32 0, i32 2
  store i64 2, ptr %363, align 4
  %364 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %360, align 8
  %365 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %356, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %364)
  %366 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %314, ptr %365, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %318, i1 false)
  %367 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 0
  store ptr @4, ptr %368, align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %367, i32 0, i32 1
  store i64 4, ptr %369, align 4
  %370 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %367, align 8
  %371 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %372 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %371, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %366, ptr %372, align 8
  %373 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %374 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %373, i32 0, i32 0
  store ptr %371, ptr %374, align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %373, i32 0, i32 1
  store i64 1, ptr %375, align 4
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %373, i32 0, i32 2
  store i64 1, ptr %376, align 4
  %377 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %373, align 8
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %370, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %377)
  store ptr %378, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %379 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr @12, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 4, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %385 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %386 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %387 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %388 = icmp eq ptr %387, null
  br i1 %388, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %389 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %390 = getelementptr ptr, ptr %389, i64 0
  store ptr %386, ptr %390, align 8
  %391 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %391, i32 0, i32 0
  store ptr %389, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %391, i32 0, i32 1
  store i64 1, ptr %393, align 4
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %391, i32 0, i32 2
  store i64 1, ptr %394, align 4
  %395 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %391, align 8
  %396 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 0
  store ptr %396, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 1
  store i64 0, ptr %399, align 4
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, i32 0, i32 2
  store i64 0, ptr %400, align 4
  %401 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %397, align 8
  %402 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %395, %"github.com/goplus/llgo/internal/runtime.Slice" %401, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %402)
  store ptr %402, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %403 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %404 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %383, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 1
  store ptr %403, ptr %406, align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 2
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %404, i32 0, i32 3
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %408, align 8
  %409 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %404, align 8
  %410 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %411 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %410, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %409, ptr %411, align 8
  %412 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 0
  store ptr %410, ptr %413, align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 1
  store i64 1, ptr %414, align 4
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 2
  store i64 1, ptr %415, align 4
  %416 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, align 8
  %417 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 0
  store ptr @4, ptr %418, align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %417, i32 0, i32 1
  store i64 4, ptr %419, align 4
  %420 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %417, align 8
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 0
  store ptr @13, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %421, i32 0, i32 1
  store i64 25, ptr %423, align 4
  %424 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %421, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %420, %"github.com/goplus/llgo/internal/runtime.String" %424, ptr %379, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %416)
  %425 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 0
  store ptr @1, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 1
  store i64 30, ptr %427, align 4
  %428 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %425, align 8
  %429 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %428, i64 25, i64 24, i64 0, i64 1)
  %430 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %429)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %430)
  store ptr %430, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %431 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %432 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %434 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 0
  store ptr @12, ptr %435, align 8
  %436 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %434, i32 0, i32 1
  store i64 4, ptr %436, align 4
  %437 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %434, align 8
  %438 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %437, ptr %439, align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, i32 0, i32 1
  store ptr %431, ptr %440, align 8
  %441 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %438, align 8
  %442 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %443 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %442, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %441, ptr %443, align 8
  %444 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %445 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 0
  store ptr %442, ptr %445, align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 1
  store i64 1, ptr %446, align 4
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, i32 0, i32 2
  store i64 1, ptr %447, align 4
  %448 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %444, align 8
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 0
  store ptr @4, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 1
  store i64 4, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %449, align 8
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr null, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 0, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  %457 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %452, %"github.com/goplus/llgo/internal/runtime.String" %456, %"github.com/goplus/llgo/internal/runtime.Slice" %448)
  store ptr %457, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

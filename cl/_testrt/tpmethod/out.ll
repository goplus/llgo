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
@"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4" = linkonce global ptr null, align 8
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [17 x i8] c"main.Tuple[error]", align 1
@_llgo_error = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"Error", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
@5 = private unnamed_addr constant [5 x i8] c"error", align 1
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"v", align 1
@7 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"f", align 1
@10 = private unnamed_addr constant [4 x i8] c"data", align 1
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
  br i1 %16, label %_llgo_11, label %_llgo_12

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
  %120 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %123, i32 0, i32 0
  store ptr %122, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %123, i32 0, i32 1
  store i64 0, ptr %125, align 4
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %123, i32 0, i32 2
  store i64 0, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %123, align 8
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %129 = getelementptr ptr, ptr %128, i64 0
  store ptr %116, ptr %129, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 0
  store ptr %128, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 1
  store i64 1, ptr %132, align 4
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, i32 0, i32 2
  store i64 1, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %130, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %127, %"github.com/goplus/llgo/internal/runtime.Slice" %134, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %135)
  store ptr %135, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %136 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %137 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %137, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %137, i32 0, i32 1
  store ptr %136, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %137, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %140, align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %137, i32 0, i32 3
  store ptr @"main.(*Tuple[error]).Get", ptr %141, align 8
  %142 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %137, align 8
  %143 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %143, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %115, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %143, i32 0, i32 1
  store ptr %136, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %143, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %143, i32 0, i32 3
  store ptr @"main.Tuple[error].Get", ptr %147, align 8
  %148 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %143, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %150 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %149, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %148, ptr %150, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 0
  store ptr %149, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 1
  store i64 1, ptr %153, align 4
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, i32 0, i32 2
  store i64 1, ptr %154, align 4
  %155 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %151, align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %157 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %156, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %142, ptr %157, align 8
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 0
  store ptr %156, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 1
  store i64 1, ptr %160, align 4
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, i32 0, i32 2
  store i64 1, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %158, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr @4, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 4, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 0
  store ptr @8, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 1
  store i64 12, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %14, %"github.com/goplus/llgo/internal/runtime.String" %166, %"github.com/goplus/llgo/internal/runtime.String" %170, ptr %111, %"github.com/goplus/llgo/internal/runtime.Slice" %155, %"github.com/goplus/llgo/internal/runtime.Slice" %162)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %172 = getelementptr ptr, ptr %171, i64 0
  store ptr %9, ptr %172, align 8
  %173 = getelementptr ptr, ptr %171, i64 1
  store ptr %119, ptr %173, align 8
  %174 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 0
  store ptr %171, ptr %175, align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 1
  store i64 2, ptr %176, align 4
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, i32 0, i32 2
  store i64 2, ptr %177, align 4
  %178 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %174, align 8
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 0
  store ptr %179, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 1
  store i64 0, ptr %182, align 4
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, i32 0, i32 2
  store i64 0, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %180, align 8
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %178, %"github.com/goplus/llgo/internal/runtime.Slice" %184, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %185)
  store ptr %185, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %186 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %187 = load ptr, ptr @_llgo_Pointer, align 8
  %188 = load ptr, ptr @_llgo_Pointer, align 8
  %189 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr @9, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 1, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr null, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 0, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %199 = getelementptr ptr, ptr %198, i64 0
  store ptr %188, ptr %199, align 8
  %200 = getelementptr ptr, ptr %198, i64 1
  store ptr %189, ptr %200, align 8
  %201 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %201, i32 0, i32 0
  store ptr %198, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %201, i32 0, i32 1
  store i64 2, ptr %203, align 4
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %201, i32 0, i32 2
  store i64 2, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %201, align 8
  %206 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %207, i32 0, i32 0
  store ptr %206, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %207, i32 0, i32 1
  store i64 0, ptr %209, align 4
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %207, i32 0, i32 2
  store i64 0, ptr %210, align 4
  %211 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %207, align 8
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %205, %"github.com/goplus/llgo/internal/runtime.Slice" %211, i1 false)
  %213 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %193, ptr %212, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %197, i1 false)
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 0
  store ptr @10, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 1
  store i64 4, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %214, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr null, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 0, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %223 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %217, ptr %222, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %221, i1 false)
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @4, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 4, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %229 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %213, ptr %229, align 8
  %230 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %223, ptr %230, align 8
  %231 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %232 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 0
  store ptr %228, ptr %232, align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 1
  store i64 2, ptr %233, align 4
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, i32 0, i32 2
  store i64 2, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %231, align 8
  %236 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %227, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %235)
  store ptr %236, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %237 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %238 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %241 = getelementptr ptr, ptr %240, i64 0
  store ptr %8, ptr %241, align 8
  %242 = getelementptr ptr, ptr %240, i64 1
  store ptr %237, ptr %242, align 8
  %243 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %244 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 0
  store ptr %240, ptr %244, align 8
  %245 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 1
  store i64 2, ptr %245, align 4
  %246 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, i32 0, i32 2
  store i64 2, ptr %246, align 4
  %247 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %243, align 8
  %248 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %249 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 0
  store ptr %248, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 1
  store i64 0, ptr %251, align 4
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, i32 0, i32 2
  store i64 0, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %249, align 8
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %247, %"github.com/goplus/llgo/internal/runtime.Slice" %253, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %254)
  store ptr %254, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %255 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %256 = load ptr, ptr @_llgo_Pointer, align 8
  %257 = load ptr, ptr @_llgo_Pointer, align 8
  %258 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
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
  store ptr %257, ptr %270, align 8
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
  %310 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %311 = load ptr, ptr @_llgo_Pointer, align 8
  %312 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @11, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 2, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr null, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 0, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  %321 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 0
  store ptr @9, ptr %322, align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 1
  store i64 1, ptr %323, align 4
  %324 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %321, align 8
  %325 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %326 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 0
  store ptr null, ptr %326, align 8
  %327 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %325, i32 0, i32 1
  store i64 0, ptr %327, align 4
  %328 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %325, align 8
  %329 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %330 = getelementptr ptr, ptr %329, i64 0
  store ptr %309, ptr %330, align 8
  %331 = getelementptr ptr, ptr %329, i64 1
  store ptr %312, ptr %331, align 8
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 0
  store ptr %329, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 1
  store i64 2, ptr %334, align 4
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, i32 0, i32 2
  store i64 2, ptr %335, align 4
  %336 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %332, align 8
  %337 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 0
  store ptr %337, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 1
  store i64 0, ptr %340, align 4
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, i32 0, i32 2
  store i64 0, ptr %341, align 4
  %342 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %338, align 8
  %343 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %336, %"github.com/goplus/llgo/internal/runtime.Slice" %342, i1 false)
  %344 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %324, ptr %343, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %328, i1 false)
  %345 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 0
  store ptr @10, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 1
  store i64 4, ptr %347, align 4
  %348 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %345, align 8
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 0
  store ptr null, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 1
  store i64 0, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %349, align 8
  %353 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %354 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %348, ptr %353, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %352, i1 false)
  %355 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %355, i32 0, i32 0
  store ptr @4, ptr %356, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %355, i32 0, i32 1
  store i64 4, ptr %357, align 4
  %358 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %355, align 8
  %359 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %360 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %359, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %344, ptr %360, align 8
  %361 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %359, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %354, ptr %361, align 8
  %362 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %363 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 0
  store ptr %359, ptr %363, align 8
  %364 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 1
  store i64 2, ptr %364, align 4
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, i32 0, i32 2
  store i64 2, ptr %365, align 4
  %366 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %362, align 8
  %367 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %358, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %366)
  %368 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %316, ptr %367, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %320, i1 false)
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr @4, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 4, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %374 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %373, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %368, ptr %374, align 8
  %375 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %375, i32 0, i32 0
  store ptr %373, ptr %376, align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %375, i32 0, i32 1
  store i64 1, ptr %377, align 4
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %375, i32 0, i32 2
  store i64 1, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %375, align 8
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %372, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %379)
  store ptr %380, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %381 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 0
  store ptr @12, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 1
  store i64 4, ptr %384, align 4
  %385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %382, align 8
  %386 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %387 = load ptr, ptr @_llgo_Pointer, align 8
  %388 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %389 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %390 = icmp eq ptr %389, null
  br i1 %390, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %391 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %392 = getelementptr ptr, ptr %391, i64 0
  store ptr %388, ptr %392, align 8
  %393 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %393, i32 0, i32 0
  store ptr %391, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %393, i32 0, i32 1
  store i64 1, ptr %395, align 4
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %393, i32 0, i32 2
  store i64 1, ptr %396, align 4
  %397 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %393, align 8
  %398 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %399 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %400 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 0
  store ptr %398, ptr %400, align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 1
  store i64 0, ptr %401, align 4
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, i32 0, i32 2
  store i64 0, ptr %402, align 4
  %403 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %399, align 8
  %404 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %397, %"github.com/goplus/llgo/internal/runtime.Slice" %403, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %404)
  store ptr %404, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %405 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %406 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %385, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 1
  store ptr %405, ptr %408, align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 2
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %406, i32 0, i32 3
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %410, align 8
  %411 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %406, align 8
  %412 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %413 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %412, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %411, ptr %413, align 8
  %414 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 0
  store ptr %412, ptr %415, align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 1
  store i64 1, ptr %416, align 4
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, i32 0, i32 2
  store i64 1, ptr %417, align 4
  %418 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %414, align 8
  %419 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 0
  store ptr @4, ptr %420, align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %419, i32 0, i32 1
  store i64 4, ptr %421, align 4
  %422 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %419, align 8
  %423 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %423, i32 0, i32 0
  store ptr @13, ptr %424, align 8
  %425 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %423, i32 0, i32 1
  store i64 25, ptr %425, align 4
  %426 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %423, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %422, %"github.com/goplus/llgo/internal/runtime.String" %426, ptr %381, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %418)
  %427 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 0
  store ptr @1, ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 1
  store i64 30, ptr %429, align 4
  %430 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %427, align 8
  %431 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %430, i64 25, i64 24, i64 0, i64 1)
  %432 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %431)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %432)
  store ptr %432, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %433 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %434 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %436 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %436, i32 0, i32 0
  store ptr @12, ptr %437, align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %436, i32 0, i32 1
  store i64 4, ptr %438, align 4
  %439 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %436, align 8
  %440 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %440, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %439, ptr %441, align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %440, i32 0, i32 1
  store ptr %433, ptr %442, align 8
  %443 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %440, align 8
  %444 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %445 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %444, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %443, ptr %445, align 8
  %446 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 0
  store ptr %444, ptr %447, align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 1
  store i64 1, ptr %448, align 4
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 2
  store i64 1, ptr %449, align 4
  %450 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, align 8
  %451 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %452 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 0
  store ptr @4, ptr %452, align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %451, i32 0, i32 1
  store i64 4, ptr %453, align 4
  %454 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %451, align 8
  %455 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %455, i32 0, i32 0
  store ptr null, ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %455, i32 0, i32 1
  store i64 0, ptr %457, align 4
  %458 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %455, align 8
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %454, %"github.com/goplus/llgo/internal/runtime.String" %458, %"github.com/goplus/llgo/internal/runtime.Slice" %450)
  store ptr %459, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
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

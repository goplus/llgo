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
  %3 = load ptr, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %4 = load ptr, ptr @_llgo_Pointer, align 8
  %5 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %6 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %7 = load ptr, ptr @_llgo_Pointer, align 8
  %8 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %9 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %10 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr %10, ptr %3)
  %12 = alloca %"github.com/goplus/llgo/internal/runtime.iface", align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 0
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, i32 0, i32 1
  store ptr %1, ptr %14, align 8
  %15 = load %"github.com/goplus/llgo/internal/runtime.iface", ptr %12, align 8
  ret %"github.com/goplus/llgo/internal/runtime.iface" %15
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
  %21 = load ptr, ptr @_llgo_string, align 8
  %22 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 0
  store ptr %24, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, i32 0, i32 2
  store i64 0, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %25, align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %31 = getelementptr ptr, ptr %30, i64 0
  store ptr %21, ptr %31, align 8
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 1
  store i64 1, ptr %34, align 4
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, i32 0, i32 2
  store i64 1, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %32, align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %29, %"github.com/goplus/llgo/internal/runtime.Slice" %36, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %37)
  store ptr %37, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %38 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %39 = load ptr, ptr @_llgo_error, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @3, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 5, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %46 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %44, ptr %46, align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, i32 0, i32 1
  store ptr %38, ptr %47, align 8
  %48 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %45, align 8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %50 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %49, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %48, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 0
  store ptr %49, ptr %52, align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 1
  store i64 1, ptr %53, align 4
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, i32 0, i32 2
  store i64 1, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %51, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @4, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @5, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 5, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %59, %"github.com/goplus/llgo/internal/runtime.String" %63, %"github.com/goplus/llgo/internal/runtime.Slice" %55)
  store ptr %64, ptr @_llgo_error, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %65 = load ptr, ptr @_llgo_error, align 8
  %66 = load ptr, ptr @_llgo_string, align 8
  %67 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 0
  store ptr @6, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %68, i32 0, i32 1
  store i64 1, ptr %70, align 4
  %71 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %68, align 8
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr null, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 0, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @3, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 5, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %80, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %80, i32 0, i32 1
  store ptr %67, ptr %82, align 8
  %83 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %80, align 8
  %84 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %85 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %84, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %83, ptr %85, align 8
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 0
  store ptr %84, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 1
  store i64 1, ptr %88, align 4
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, i32 0, i32 2
  store i64 1, ptr %89, align 4
  %90 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %86, align 8
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 0
  store ptr @4, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %91, i32 0, i32 1
  store i64 4, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %91, align 8
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 0
  store ptr @5, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 1
  store i64 5, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %95, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %94, %"github.com/goplus/llgo/internal/runtime.String" %98, %"github.com/goplus/llgo/internal/runtime.Slice" %90)
  %100 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %71, ptr %99, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %75, i1 false)
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @4, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 4, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %106 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %105, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %100, ptr %106, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 0
  store ptr %105, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 1
  store i64 1, ptr %109, align 4
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, i32 0, i32 2
  store i64 1, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %107, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %104, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %111)
  store ptr %112, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %113 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @7, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 3, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = load ptr, ptr @_llgo_error, align 8
  %119 = load ptr, ptr @_llgo_error, align 8
  %120 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %122 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %123 = load ptr, ptr @_llgo_Pointer, align 8
  %124 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %125 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 0
  store ptr %127, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 1
  store i64 0, ptr %130, align 4
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, i32 0, i32 2
  store i64 0, ptr %131, align 4
  %132 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %128, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %134 = getelementptr ptr, ptr %133, i64 0
  store ptr %119, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %133, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 1, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 1, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %132, %"github.com/goplus/llgo/internal/runtime.Slice" %139, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %140)
  store ptr %140, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %141 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %142 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %117, ptr %143, align 8
  %144 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 1
  store ptr %141, ptr %144, align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %142, i32 0, i32 3
  store ptr @"main.(*Tuple[error]).Get", ptr %146, align 8
  %147 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %142, align 8
  %148 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %117, ptr %149, align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i32 0, i32 1
  store ptr %141, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i32 0, i32 2
  store ptr @"main.(*Tuple[error]).Get", ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %148, i32 0, i32 3
  store ptr @"main.Tuple[error].Get", ptr %152, align 8
  %153 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %148, align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %155 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %154, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %153, ptr %155, align 8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %156, i32 0, i32 0
  store ptr %154, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %156, i32 0, i32 1
  store i64 1, ptr %158, align 4
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %156, i32 0, i32 2
  store i64 1, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %156, align 8
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %162 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %161, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %147, ptr %162, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %163, i32 0, i32 0
  store ptr %161, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %163, i32 0, i32 1
  store i64 1, ptr %165, align 4
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %163, i32 0, i32 2
  store i64 1, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %163, align 8
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @4, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 4, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @8, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 12, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %14, %"github.com/goplus/llgo/internal/runtime.String" %171, %"github.com/goplus/llgo/internal/runtime.String" %175, ptr %113, %"github.com/goplus/llgo/internal/runtime.Slice" %160, %"github.com/goplus/llgo/internal/runtime.Slice" %167)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %177 = getelementptr ptr, ptr %176, i64 0
  store ptr %123, ptr %177, align 8
  %178 = getelementptr ptr, ptr %176, i64 1
  store ptr %124, ptr %178, align 8
  %179 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 0
  store ptr %176, ptr %180, align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 1
  store i64 2, ptr %181, align 4
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, i32 0, i32 2
  store i64 2, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %179, align 8
  %184 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %185 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 0
  store ptr %184, ptr %186, align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 1
  store i64 0, ptr %187, align 4
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, i32 0, i32 2
  store i64 0, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %185, align 8
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %183, %"github.com/goplus/llgo/internal/runtime.Slice" %189, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %190)
  store ptr %190, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %191 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %192 = load ptr, ptr @_llgo_Pointer, align 8
  %193 = load ptr, ptr @_llgo_Pointer, align 8
  %194 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %195 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 0
  store ptr @9, ptr %196, align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %195, i32 0, i32 1
  store i64 1, ptr %197, align 4
  %198 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %195, align 8
  %199 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 0
  store ptr null, ptr %200, align 8
  %201 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %199, i32 0, i32 1
  store i64 0, ptr %201, align 4
  %202 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %199, align 8
  %203 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %204 = getelementptr ptr, ptr %203, i64 0
  store ptr %193, ptr %204, align 8
  %205 = getelementptr ptr, ptr %203, i64 1
  store ptr %194, ptr %205, align 8
  %206 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %207 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 0
  store ptr %203, ptr %207, align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 1
  store i64 2, ptr %208, align 4
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, i32 0, i32 2
  store i64 2, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %206, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %212 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %213 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 0
  store ptr %211, ptr %213, align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 1
  store i64 0, ptr %214, align 4
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, i32 0, i32 2
  store i64 0, ptr %215, align 4
  %216 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %212, align 8
  %217 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %210, %"github.com/goplus/llgo/internal/runtime.Slice" %216, i1 false)
  %218 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %198, ptr %217, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %202, i1 false)
  %219 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 0
  store ptr @10, ptr %220, align 8
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %219, i32 0, i32 1
  store i64 4, ptr %221, align 4
  %222 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %219, align 8
  %223 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %224 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 0
  store ptr null, ptr %224, align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %223, i32 0, i32 1
  store i64 0, ptr %225, align 4
  %226 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %223, align 8
  %227 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %228 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %222, ptr %227, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %226, i1 false)
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 0
  store ptr @4, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 1
  store i64 4, ptr %231, align 4
  %232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %229, align 8
  %233 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %234 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %233, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %218, ptr %234, align 8
  %235 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %233, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %228, ptr %235, align 8
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 0
  store ptr %233, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 1
  store i64 2, ptr %238, align 4
  %239 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, i32 0, i32 2
  store i64 2, ptr %239, align 4
  %240 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %236, align 8
  %241 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %232, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %240)
  store ptr %241, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %242 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %243 = load ptr, ptr @_llgo_Pointer, align 8
  %244 = load ptr, ptr @_llgo_Pointer, align 8
  %245 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %246 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %247 = load ptr, ptr @_llgo_Pointer, align 8
  %248 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %249 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %250 = icmp eq ptr %249, null
  br i1 %250, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %252 = getelementptr ptr, ptr %251, i64 0
  store ptr %243, ptr %252, align 8
  %253 = getelementptr ptr, ptr %251, i64 1
  store ptr %248, ptr %253, align 8
  %254 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 0
  store ptr %251, ptr %255, align 8
  %256 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 1
  store i64 2, ptr %256, align 4
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, i32 0, i32 2
  store i64 2, ptr %257, align 4
  %258 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %254, align 8
  %259 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 0
  store ptr %259, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 1
  store i64 0, ptr %262, align 4
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, i32 0, i32 2
  store i64 0, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %260, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %258, %"github.com/goplus/llgo/internal/runtime.Slice" %264, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %265)
  store ptr %265, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %266 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %267 = load ptr, ptr @_llgo_Pointer, align 8
  %268 = load ptr, ptr @_llgo_Pointer, align 8
  %269 = load ptr, ptr @_llgo_Pointer, align 8
  %270 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %271 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %272 = load ptr, ptr @_llgo_Pointer, align 8
  %273 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %274 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %274, i32 0, i32 0
  store ptr @9, ptr %275, align 8
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %274, i32 0, i32 1
  store i64 1, ptr %276, align 4
  %277 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %274, align 8
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 0
  store ptr null, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 1
  store i64 0, ptr %280, align 4
  %281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %278, align 8
  %282 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %283 = getelementptr ptr, ptr %282, i64 0
  store ptr %268, ptr %283, align 8
  %284 = getelementptr ptr, ptr %282, i64 1
  store ptr %273, ptr %284, align 8
  %285 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %285, i32 0, i32 0
  store ptr %282, ptr %286, align 8
  %287 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %285, i32 0, i32 1
  store i64 2, ptr %287, align 4
  %288 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %285, i32 0, i32 2
  store i64 2, ptr %288, align 4
  %289 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %285, align 8
  %290 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %291 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 0
  store ptr %290, ptr %292, align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 1
  store i64 0, ptr %293, align 4
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, i32 0, i32 2
  store i64 0, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %291, align 8
  %296 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %289, %"github.com/goplus/llgo/internal/runtime.Slice" %295, i1 false)
  %297 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %277, ptr %296, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %281, i1 false)
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 0
  store ptr @10, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 1
  store i64 4, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %298, align 8
  %302 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 0
  store ptr null, ptr %303, align 8
  %304 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %302, i32 0, i32 1
  store i64 0, ptr %304, align 4
  %305 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %302, align 8
  %306 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %307 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %301, ptr %306, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %305, i1 false)
  %308 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 0
  store ptr @4, ptr %309, align 8
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %308, i32 0, i32 1
  store i64 4, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %308, align 8
  %312 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %313 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %312, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %297, ptr %313, align 8
  %314 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %312, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %307, ptr %314, align 8
  %315 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 0
  store ptr %312, ptr %316, align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 1
  store i64 2, ptr %317, align 4
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, i32 0, i32 2
  store i64 2, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %315, align 8
  %320 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %311, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %319)
  store ptr %320, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %321 = load ptr, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %322 = load ptr, ptr @_llgo_Pointer, align 8
  %323 = load ptr, ptr @_llgo_Pointer, align 8
  %324 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %325 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %326 = load ptr, ptr @_llgo_Pointer, align 8
  %327 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %328 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %329 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 0
  store ptr @11, ptr %329, align 8
  %330 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %328, i32 0, i32 1
  store i64 2, ptr %330, align 4
  %331 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %328, align 8
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 0
  store ptr null, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 1
  store i64 0, ptr %334, align 4
  %335 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %332, align 8
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr @9, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 1, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  %340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 0
  store ptr null, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 1
  store i64 0, ptr %342, align 4
  %343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %340, align 8
  %344 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %345 = getelementptr ptr, ptr %344, i64 0
  store ptr %322, ptr %345, align 8
  %346 = getelementptr ptr, ptr %344, i64 1
  store ptr %327, ptr %346, align 8
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 0
  store ptr %344, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 1
  store i64 2, ptr %349, align 4
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, i32 0, i32 2
  store i64 2, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %347, align 8
  %352 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 0
  store ptr %352, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 1
  store i64 0, ptr %355, align 4
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, i32 0, i32 2
  store i64 0, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %353, align 8
  %358 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %351, %"github.com/goplus/llgo/internal/runtime.Slice" %357, i1 false)
  %359 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %339, ptr %358, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %343, i1 false)
  %360 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 0
  store ptr @10, ptr %361, align 8
  %362 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %360, i32 0, i32 1
  store i64 4, ptr %362, align 4
  %363 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %360, align 8
  %364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 0
  store ptr null, ptr %365, align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 1
  store i64 0, ptr %366, align 4
  %367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %364, align 8
  %368 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %369 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %363, ptr %368, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %367, i1 false)
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr @4, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 4, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %375 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %374, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %359, ptr %375, align 8
  %376 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %374, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %369, ptr %376, align 8
  %377 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 0
  store ptr %374, ptr %378, align 8
  %379 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 1
  store i64 2, ptr %379, align 4
  %380 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, i32 0, i32 2
  store i64 2, ptr %380, align 4
  %381 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %377, align 8
  %382 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %373, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %381)
  %383 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %331, ptr %382, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %335, i1 false)
  %384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 0
  store ptr @4, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 1
  store i64 4, ptr %386, align 4
  %387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %384, align 8
  %388 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %389 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %388, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %383, ptr %389, align 8
  %390 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 0
  store ptr %388, ptr %391, align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 1
  store i64 1, ptr %392, align 4
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, i32 0, i32 2
  store i64 1, ptr %393, align 4
  %394 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %390, align 8
  %395 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %387, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %394)
  store ptr %395, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %396 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 0
  store ptr @12, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 1
  store i64 4, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %397, align 8
  %401 = load ptr, ptr @_llgo_Pointer, align 8
  %402 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %403 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %404 = load ptr, ptr @_llgo_Pointer, align 8
  %405 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %406 = load ptr, ptr @_llgo_Pointer, align 8
  %407 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %408 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %409 = load ptr, ptr @_llgo_Pointer, align 8
  %410 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %411 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %412 = icmp eq ptr %411, null
  br i1 %412, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %413 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %414 = getelementptr ptr, ptr %413, i64 0
  store ptr %410, ptr %414, align 8
  %415 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %416 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 0
  store ptr %413, ptr %416, align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 1
  store i64 1, ptr %417, align 4
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, i32 0, i32 2
  store i64 1, ptr %418, align 4
  %419 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %415, align 8
  %420 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %421 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 0
  store ptr %420, ptr %422, align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 1
  store i64 0, ptr %423, align 4
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, i32 0, i32 2
  store i64 0, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %421, align 8
  %426 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %419, %"github.com/goplus/llgo/internal/runtime.Slice" %425, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %426)
  store ptr %426, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %427 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %428 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %400, ptr %429, align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i32 0, i32 1
  store ptr %427, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i32 0, i32 2
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %431, align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %428, i32 0, i32 3
  store ptr @"main.(*future[main.Tuple[error]]).Then", ptr %432, align 8
  %433 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %428, align 8
  %434 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %435 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %434, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %433, ptr %435, align 8
  %436 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %437 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 0
  store ptr %434, ptr %437, align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 1
  store i64 1, ptr %438, align 4
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, i32 0, i32 2
  store i64 1, ptr %439, align 4
  %440 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %436, align 8
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 0
  store ptr @4, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 1
  store i64 4, ptr %443, align 4
  %444 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %441, align 8
  %445 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %446 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %445, i32 0, i32 0
  store ptr @13, ptr %446, align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %445, i32 0, i32 1
  store i64 25, ptr %447, align 4
  %448 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %445, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %444, %"github.com/goplus/llgo/internal/runtime.String" %448, ptr %396, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %440)
  %449 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 0
  store ptr @1, ptr %450, align 8
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %449, i32 0, i32 1
  store i64 30, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %449, align 8
  %453 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %452, i64 25, i64 24, i64 0, i64 1)
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %453)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %454)
  store ptr %454, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %455 = load ptr, ptr @_llgo_Pointer, align 8
  %456 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %457 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %458 = load ptr, ptr @_llgo_Pointer, align 8
  %459 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %460 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %461 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %462 = icmp eq ptr %461, null
  br i1 %462, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %463 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 0
  store ptr @12, ptr %464, align 8
  %465 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %463, i32 0, i32 1
  store i64 4, ptr %465, align 4
  %466 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %463, align 8
  %467 = alloca %"github.com/goplus/llgo/internal/abi.Imethod", align 8
  %468 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %466, ptr %468, align 8
  %469 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, i32 0, i32 1
  store ptr %460, ptr %469, align 8
  %470 = load %"github.com/goplus/llgo/internal/abi.Imethod", ptr %467, align 8
  %471 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %472 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %471, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %470, ptr %472, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 0
  store ptr %471, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 1
  store i64 1, ptr %475, align 4
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, i32 0, i32 2
  store i64 1, ptr %476, align 4
  %477 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %473, align 8
  %478 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 0
  store ptr @4, ptr %479, align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 1
  store i64 4, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %478, align 8
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 0
  store ptr null, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 1
  store i64 0, ptr %484, align 4
  %485 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %482, align 8
  %486 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %481, %"github.com/goplus/llgo/internal/runtime.String" %485, %"github.com/goplus/llgo/internal/runtime.Slice" %477)
  store ptr %486, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
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

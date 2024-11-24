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
  %1 = call %"github.com/goplus/llgo/internal/runtime.iface" @"main.Async[main.Tuple[error]]"({ ptr, ptr } { ptr @"__llgo_stub.main.ReadFile$1", ptr null })
  ret %"github.com/goplus/llgo/internal/runtime.iface" %1
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
  %2 = call %"github.com/goplus/llgo/internal/runtime.iface" @main.ReadFile(%"github.com/goplus/llgo/internal/runtime.String" { ptr @0, i64 7 })
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/internal/runtime.iface" %2, 0
  %5 = getelementptr ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = insertvalue { ptr, ptr } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr } %7, ptr %3, 1
  %9 = extractvalue { ptr, ptr } %8, 1
  %10 = extractvalue { ptr, ptr } %8, 0
  call void %10(ptr %9, { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null })
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
  %10 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/internal/runtime.iface" %10, ptr %1, 1
  ret %"github.com/goplus/llgo/internal/runtime.iface" %11
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
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 30 }, i64 25, i64 24, i64 0, i64 1)
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
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 17 }, i64 25, i64 16, i64 1, i64 1)
  %6 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %5, ptr @"_llgo_main.Tuple[error]", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %10, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %11 = load ptr, ptr @_llgo_string, align 8
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %16 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %16, i64 0, 1
  %18 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %17, i64 0, 2
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %20 = getelementptr ptr, ptr %19, i64 0
  store ptr %12, ptr %20, align 8
  %21 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %19, 0
  %22 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %21, i64 1, 1
  %23 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %22, i64 1, 2
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %18, %"github.com/goplus/llgo/internal/runtime.Slice" %23, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %25 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %26 = load ptr, ptr @_llgo_error, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %28 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %25, 1
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %30 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %29, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %28, ptr %30, align 8
  %31 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %29, 0
  %32 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %31, i64 1, 1
  %33 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %32, i64 1, 2
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, %"github.com/goplus/llgo/internal/runtime.Slice" %33)
  store ptr %34, ptr @_llgo_error, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %35 = load ptr, ptr @_llgo_error, align 8
  %36 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %37 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %36, 1
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %39 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %38, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %37, ptr %39, align 8
  %40 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %40, i64 1, 1
  %42 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %41, i64 1, 2
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, %"github.com/goplus/llgo/internal/runtime.Slice" %42)
  %44 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 1 }, ptr %43, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %46 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %45, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %44, ptr %46, align 8
  %47 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %45, 0
  %48 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %47, i64 1, 1
  %49 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %48, i64 1, 2
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %49)
  store ptr %50, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %51 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %7, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %52 = load ptr, ptr @_llgo_error, align 8
  %53 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %55 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %56 = load ptr, ptr @_llgo_Pointer, align 8
  %57 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %58 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %61 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, i64 0, 1
  %63 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, i64 0, 2
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %65 = getelementptr ptr, ptr %64, i64 0
  store ptr %52, ptr %65, align 8
  %66 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %64, 0
  %67 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %66, i64 1, 1
  %68 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %67, i64 1, 2
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %63, %"github.com/goplus/llgo/internal/runtime.Slice" %68, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %69)
  store ptr %69, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %70 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %71 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %70, 1
  %72 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %71, ptr @"main.(*Tuple[error]).Get", 2
  %73 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %72, ptr @"main.(*Tuple[error]).Get", 3
  %74 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %70, 1
  %75 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %74, ptr @"main.(*Tuple[error]).Get", 2
  %76 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %75, ptr @"main.Tuple[error].Get", 3
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %77, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %76, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %77, 0
  %80 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, i64 1, 1
  %81 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, i64 1, 2
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %83 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %82, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %73, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %84, i64 1, 1
  %86 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %85, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %5, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 12 }, ptr %51, %"github.com/goplus/llgo/internal/runtime.Slice" %81, %"github.com/goplus/llgo/internal/runtime.Slice" %86)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %88 = getelementptr ptr, ptr %87, i64 0
  store ptr %56, ptr %88, align 8
  %89 = getelementptr ptr, ptr %87, i64 1
  store ptr %57, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %87, 0
  %91 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %90, i64 2, 1
  %92 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %91, i64 2, 2
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %94 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %93, 0
  %95 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %94, i64 0, 1
  %96 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %95, i64 0, 2
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %92, %"github.com/goplus/llgo/internal/runtime.Slice" %96, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %97)
  store ptr %97, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %98 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %99 = load ptr, ptr @_llgo_Pointer, align 8
  %100 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %102 = getelementptr ptr, ptr %101, i64 0
  store ptr %99, ptr %102, align 8
  %103 = getelementptr ptr, ptr %101, i64 1
  store ptr %100, ptr %103, align 8
  %104 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %101, 0
  %105 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %104, i64 2, 1
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %105, i64 2, 2
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %108 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %107, 0
  %109 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %108, i64 0, 1
  %110 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %109, i64 0, 2
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %106, %"github.com/goplus/llgo/internal/runtime.Slice" %110, i1 false)
  %112 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %111, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %114 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %113, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %115 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %116 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %115, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %112, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %115, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %114, ptr %117, align 8
  %118 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %115, 0
  %119 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %118, i64 2, 1
  %120 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %119, i64 2, 2
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %120)
  store ptr %121, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %122 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %123 = load ptr, ptr @_llgo_Pointer, align 8
  %124 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %125 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %128 = getelementptr ptr, ptr %127, i64 0
  store ptr %123, ptr %128, align 8
  %129 = getelementptr ptr, ptr %127, i64 1
  store ptr %124, ptr %129, align 8
  %130 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %127, 0
  %131 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %130, i64 2, 1
  %132 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %131, i64 2, 2
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %134 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %133, 0
  %135 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %134, i64 0, 1
  %136 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %135, i64 0, 2
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %132, %"github.com/goplus/llgo/internal/runtime.Slice" %136, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %137)
  store ptr %137, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %138 = load ptr, ptr @"_llgo_func$8wjokNeb8lp2A2m-DoWHb8GZbqJJXaBuxj8bfRgBwsw", align 8
  %139 = load ptr, ptr @_llgo_Pointer, align 8
  %140 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %141 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %142 = getelementptr ptr, ptr %141, i64 0
  store ptr %139, ptr %142, align 8
  %143 = getelementptr ptr, ptr %141, i64 1
  store ptr %140, ptr %143, align 8
  %144 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %141, 0
  %145 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %144, i64 2, 1
  %146 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %145, i64 2, 2
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %148 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %147, 0
  %149 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %148, i64 0, 1
  %150 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %149, i64 0, 2
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %146, %"github.com/goplus/llgo/internal/runtime.Slice" %150, i1 false)
  %152 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %151, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %154 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %153, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %156 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %155, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %152, ptr %156, align 8
  %157 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %155, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %154, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %155, 0
  %159 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %158, i64 2, 1
  %160 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %159, i64 2, 2
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %160)
  store ptr %161, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %162 = load ptr, ptr @"main.struct$ti_L8YygAzqrdADYjADo-CrIBPIrzAe7WUDQrPhGsLk", align 8
  %163 = load ptr, ptr @_llgo_Pointer, align 8
  %164 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  %166 = getelementptr ptr, ptr %165, i64 0
  store ptr %163, ptr %166, align 8
  %167 = getelementptr ptr, ptr %165, i64 1
  store ptr %164, ptr %167, align 8
  %168 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %165, 0
  %169 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %168, i64 2, 1
  %170 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %169, i64 2, 2
  %171 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %172 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %171, 0
  %173 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %172, i64 0, 1
  %174 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %173, i64 0, 2
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %170, %"github.com/goplus/llgo/internal/runtime.Slice" %174, i1 false)
  %176 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %175, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %178 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %177, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %179 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %180 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %179, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %176, ptr %180, align 8
  %181 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %179, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %178, ptr %181, align 8
  %182 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %179, 0
  %183 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %182, i64 2, 1
  %184 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %183, i64 2, 2
  %185 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %184)
  %186 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 2 }, ptr %185, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %187 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %188 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %187, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %186, ptr %188, align 8
  %189 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %187, 0
  %190 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %189, i64 1, 1
  %191 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %190, i64 1, 2
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %191)
  store ptr %192, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %193 = load ptr, ptr @"main.struct$ovoVIslEZIUrMi_-W6orVCU5A_Y8gqTBvvvJEMlWdJY", align 8
  %194 = load ptr, ptr @"_llgo_func$-0z_KAFZTayiATHsoRweDLyk3Y_08iRGccLVoNDb2Q4", align 8
  %195 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %196 = load ptr, ptr @"main.struct$NucqrsSdwvefK8Neq8AbgvHqpAoTlQ4Z7-24dNSPHoY", align 8
  %197 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %198 = icmp eq ptr %197, null
  br i1 %198, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %199 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %200 = getelementptr ptr, ptr %199, i64 0
  store ptr %196, ptr %200, align 8
  %201 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %199, 0
  %202 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %201, i64 1, 1
  %203 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %202, i64 1, 2
  %204 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %205 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %204, 0
  %206 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %205, i64 0, 1
  %207 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %206, i64 0, 2
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %203, %"github.com/goplus/llgo/internal/runtime.Slice" %207, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %208)
  store ptr %208, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %209 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %210 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %209, 1
  %211 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %210, ptr @"main.(*future[main.Tuple[error]]).Then", 2
  %212 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %211, ptr @"main.(*future[main.Tuple[error]]).Then", 3
  %213 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %214 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %213, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %212, ptr %214, align 8
  %215 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %213, 0
  %216 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %215, i64 1, 1
  %217 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %216, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 25 }, ptr %193, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %217)
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 30 }, i64 25, i64 24, i64 0, i64 1)
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %218)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %219)
  store ptr %219, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %220 = load ptr, ptr @"_llgo_func$C0YAnS54eM5TTOK79-PISU_oLySCvOtTKOpIh9jI2pM", align 8
  %221 = load ptr, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %223 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 4 }, ptr undef }, ptr %220, 1
  %224 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %225 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %224, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %223, ptr %225, align 8
  %226 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %224, 0
  %227 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %226, i64 1, 1
  %228 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %227, i64 1, 2
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %228)
  store ptr %229, ptr @"_llgo_iface$Nwf494fPwMWb08Ae8NF-s-Tau0AFb_mdl0sjJX-pbHw", align 8
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

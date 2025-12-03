; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmethod"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [42 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmethod", align 1
@2 = private unnamed_addr constant [63 x i8] c"future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@_llgo_error = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"v", align 1
@7 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [2 x i8] c"$f", align 1
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"fn", align 1
@11 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos" = linkonce global ptr null, align 8

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1", ptr null })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %2, align 8
  %3 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, align 8
  %4 = extractvalue { ptr, ptr } %0, 1
  %5 = extractvalue { ptr, ptr } %0, 0
  call void %5(ptr %4, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %3)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main"() {
_llgo_0:
  %0 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0)
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %0, 0
  %3 = getelementptr ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = insertvalue { ptr, ptr } undef, ptr %4, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %1, 1
  %7 = extractvalue { ptr, ptr } %6, 1
  %8 = extractvalue { ptr, ptr } %6, 0
  call void %8(ptr %7, { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1", ptr null })
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %5 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %6 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %7 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %8 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %8, ptr %4)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"({ ptr, ptr } %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %0, %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, i64 25, i64 24, i64 0, i64 1)
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %1, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %5 = load ptr, ptr @_llgo_error, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %4, ptr @_llgo_error, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 0, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 0, 2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr ptr, ptr %18, i64 0
  store ptr %17, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %23)
  store ptr %23, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %24 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %6, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %24, 1
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %26, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %25, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %31 = load ptr, ptr @_llgo_error, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %33 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %32, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %35 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %34, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %33, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 2
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  store ptr %39, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %40 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %3, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %42 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %44 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %46 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 0, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 0, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %53 = getelementptr ptr, ptr %52, i64 0
  store ptr %41, ptr %53, align 8
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 1, 1
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 1, 2
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %57)
  store ptr %57, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %58 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %59 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %58, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 3
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %58, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get", 3
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %66 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %65, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %64, ptr %66, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 2
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %70, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %61, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 1, 1
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1, ptr %40, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %76 = getelementptr ptr, ptr %75, i64 0
  store ptr %45, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %75, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 1, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 1, 2
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %80, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, i64 0, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 0, 2
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %84)
  store ptr %84, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %85 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %86 = load ptr, ptr @_llgo_Pointer, align 8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %88)
  store ptr %88, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %89 = load ptr, ptr @_llgo_Pointer, align 8
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %92 = getelementptr ptr, ptr %91, i64 0
  store ptr %90, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, i64 1, 1
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %94, i64 1, 2
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 0, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 0, 2
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i1 false)
  %101 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %100, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %103 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %102, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %105 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %104, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %101, ptr %105, align 8
  %106 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %104, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %103, ptr %106, align 8
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %104, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 2, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 2, 2
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109)
  store ptr %110, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %111 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %113 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %116 = getelementptr ptr, ptr %115, i64 0
  store ptr %112, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %115, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 1, 1
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 1, 2
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %120, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 0, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 0, 2
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i1 false)
  %125 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %124, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %127 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %126, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %129 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %125, ptr %129, align 8
  %130 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %127, ptr %130, align 8
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %128, 0
  %132 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, i64 2, 1
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %132, i64 2, 2
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133)
  %135 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %136 = getelementptr ptr, ptr %135, i64 0
  store ptr %134, ptr %136, align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %135, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 1, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, i64 1, 2
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %140, 0
  %142 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, i64 0, 1
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %142, i64 0, 2
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %144)
  store ptr %144, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %145 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %148 = getelementptr ptr, ptr %147, i64 0
  store ptr %146, ptr %148, align 8
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %147, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, i64 1, 1
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %150, i64 1, 2
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %152, 0
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, i64 0, 1
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, i64 0, 2
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, i1 false)
  %157 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %156, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %159 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %158, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %161 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %160, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %157, ptr %161, align 8
  %162 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %160, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %159, ptr %162, align 8
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %160, 0
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, i64 2, 1
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %164, i64 2, 2
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165)
  %167 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %168 = getelementptr ptr, ptr %167, i64 0
  store ptr %166, ptr %168, align 8
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %167, 0
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %169, i64 1, 1
  %171 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170, i64 1, 2
  %172 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %172, 0
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, i64 0, 1
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %174, i64 0, 2
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %171, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, i1 false)
  %177 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %176, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %178 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %179 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %178, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %181 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %180, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %177, ptr %181, align 8
  %182 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %180, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %179, ptr %182, align 8
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %180, 0
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i64 2, 1
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184, i64 2, 2
  %186 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185)
  store ptr %186, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  %187 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %189 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %190 = getelementptr ptr, ptr %189, i64 0
  store ptr %188, ptr %190, align 8
  %191 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %189, 0
  %192 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %191, i64 1, 1
  %193 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %192, i64 1, 2
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %194, 0
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, i64 0, 1
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, i64 0, 2
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %193, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, i1 false)
  %199 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %198, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %200 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %201 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %200, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %203 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %199, ptr %203, align 8
  %204 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %202, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %201, ptr %204, align 8
  %205 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %202, 0
  %206 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %205, i64 2, 1
  %207 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %206, i64 2, 2
  %208 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %207)
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %210 = getelementptr ptr, ptr %209, i64 0
  store ptr %208, ptr %210, align 8
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %209, 0
  %212 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211, i64 1, 1
  %213 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %212, i64 1, 2
  %214 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %214, 0
  %216 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %215, i64 0, 1
  %217 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %216, i64 0, 2
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %213, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %217, i1 false)
  %219 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %218, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %221 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %220, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %223 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %222, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %219, ptr %223, align 8
  %224 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %222, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %221, ptr %224, align 8
  %225 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %222, 0
  %226 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %225, i64 2, 1
  %227 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %226, i64 2, 2
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %227)
  %229 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %228, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %230 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %231 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %230, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %229, ptr %231, align 8
  %232 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %230, 0
  %233 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %232, i64 1, 1
  %234 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %233, i64 1, 2
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %234)
  store ptr %235, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  %236 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  %237 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %238 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %239 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %239, 1
  %241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %240, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 2
  %242 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %241, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 3
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %244 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %243, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %242, ptr %244, align 8
  %245 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %243, 0
  %246 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %245, i64 1, 1
  %247 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %246, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %236, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %247)
  %248 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, i64 25, i64 24, i64 0, i64 1)
  %249 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %248)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %249)
  store ptr %249, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %250 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %251 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %253 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %250, 1
  %254 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %255 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %254, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %253, ptr %255, align 8
  %256 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %254, 0
  %257 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %256, i64 1, 1
  %258 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %257, i64 1, 2
  %259 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %258)
  store ptr %259, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  call void %5(ptr %4, { ptr, ptr } %1)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

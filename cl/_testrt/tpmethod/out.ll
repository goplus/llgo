; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmethod"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
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

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %3 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1", ptr null }, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"(ptr %2, ptr %3)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %2, align 8
  %3 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, align 8
  %4 = load { ptr, ptr }, ptr %0, align 8
  %5 = extractvalue { ptr, ptr } %4, 1
  %6 = extractvalue { ptr, ptr } %4, 0
  %7 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %3, ptr %7, align 8
  call void %6(ptr %5, ptr %7)
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
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile"(ptr %0, ptr %1)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %0, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, ptr %3, align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr %3)
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
  %6 = getelementptr ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { ptr, ptr } undef, ptr %7, 0
  %9 = insertvalue { ptr, ptr } %8, ptr %4, 1
  %10 = extractvalue { ptr, ptr } %9, 1
  %11 = extractvalue { ptr, ptr } %9, 0
  %12 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1", ptr null }, ptr %12, align 8
  call void %11(ptr %10, ptr %12)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %3 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(ptr %2, ptr %3)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %4, ptr %5, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(ptr %0, ptr %1) {
_llgo_0:
  %2 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %2, i8 0, i64 16, i1 false)
  %3 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %3, ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %2, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %4, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, align 8
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.iface", align 8
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %2, ptr %4, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(ptr %3, ptr %4)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %3, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %5, ptr %0, align 8
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then"(ptr %0, ptr %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = load { ptr, ptr }, ptr %1, align 8
  %5 = extractvalue { ptr, ptr } %3, 1
  %6 = extractvalue { ptr, ptr } %3, 0
  %7 = alloca { ptr, ptr }, align 8
  store { ptr, ptr } %4, ptr %7, align 8
  call void %6(ptr %5, ptr %7)
  ret void
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"(ptr %0, ptr %1) {
_llgo_0:
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %2, i32 0, i32 0
  %4 = load { ptr, ptr }, ptr %1, align 8
  store { ptr, ptr } %4, ptr %3, align 8
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %6 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %7 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %8 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %9 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %10 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %10, ptr %6)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %12, ptr %2, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" %13, ptr %0, align 8
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.ReadFile$1"(ptr %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(ptr)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/tpmethod.main$1"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/tpmethod.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 24, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %3, ptr %4, i64 25, i64 16, i64 1, i64 1)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %5, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %9, align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %8, ptr %9)
  %11 = load ptr, ptr @_llgo_error, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  store ptr %10, ptr @_llgo_error, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %13 = load ptr, ptr @_llgo_string, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %15, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %16 = load ptr, ptr @_llgo_string, align 8
  %17 = load ptr, ptr @_llgo_string, align 8
  %18 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 0, 1
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 0, 2
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %25 = getelementptr ptr, ptr %24, i64 0
  store ptr %17, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %24, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 1, 2
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, ptr %30, align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %29, ptr %30, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %31)
  store ptr %31, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %32 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br i1 %12, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %32, 1
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %35 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %34, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %33, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 1, 2
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %39, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %10, ptr %39)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %40 = load ptr, ptr @_llgo_error, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %42, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr %41, ptr %42)
  %44 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %45 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %45, align 8
  %46 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %46, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %44, ptr %45, ptr %43, i64 0, ptr %46, i1 false)
  %47 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %44, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %49 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %48, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %47, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 1, 1
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 2
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %53, align 8
  %54 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %53, i64 16, ptr %54)
  store ptr %55, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %56 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %7, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %57 = load ptr, ptr @_llgo_error, align 8
  %58 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %60 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %62 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %_llgo_15, label %_llgo_16

_llgo_13:                                         ; preds = %_llgo_11
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 0, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 0, 2
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %69 = getelementptr ptr, ptr %68, i64 0
  store ptr %57, ptr %69, align 8
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %68, 0
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %70, i64 1, 1
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 1, 2
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %73, align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, ptr %74, align 8
  %75 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %73, ptr %74, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %75)
  store ptr %75, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_11
  %76 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %78 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %77, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %79 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %78, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 3
  %80 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %76, 1
  %81 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %80, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %82 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %81, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get", 3
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %84 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %83, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %82, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 1, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 1, 2
  %88 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %89 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %88, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %79, ptr %89, align 8
  %90 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %88, 0
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %90, i64 1, 1
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 1, 2
  %93 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr %93, align 8
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, ptr %94, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %5, ptr %56, ptr %93, ptr %94)
  br label %_llgo_12

_llgo_15:                                         ; preds = %_llgo_12
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %96 = getelementptr ptr, ptr %95, i64 0
  store ptr %61, ptr %96, align 8
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %95, 0
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 1, 1
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, i64 1, 2
  %100 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %100, 0
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 0, 1
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102, i64 0, 2
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, ptr %105, align 8
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %104, ptr %105, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %106)
  store ptr %106, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %107 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %108 = load ptr, ptr @_llgo_Pointer, align 8
  %109 = icmp eq ptr %108, null
  br i1 %109, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %110)
  store ptr %110, ptr @_llgo_Pointer, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %111 = load ptr, ptr @_llgo_Pointer, align 8
  %112 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %113 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %114 = getelementptr ptr, ptr %113, i64 0
  store ptr %112, ptr %114, align 8
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %113, 0
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115, i64 1, 1
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116, i64 1, 2
  %118 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %118, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 0, 1
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 0, 2
  %122 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, ptr %122, align 8
  %123 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, ptr %123, align 8
  %124 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %122, ptr %123, i1 false)
  %125 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %126, align 8
  %127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %127, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %125, ptr %126, ptr %124, i64 0, ptr %127, i1 false)
  %128 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %125, align 8
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %130 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %131 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %131, align 8
  %132 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %132, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %130, ptr %131, ptr %129, i64 8, ptr %132, i1 false)
  %133 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %130, align 8
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %134, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %128, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %134, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %133, ptr %136, align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %134, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 2, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, i64 2, 2
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %140, align 8
  %141 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, ptr %141, align 8
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %140, i64 16, ptr %141)
  store ptr %142, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %143 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %144 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %145 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %148 = getelementptr ptr, ptr %147, i64 0
  store ptr %144, ptr %148, align 8
  %149 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %147, 0
  %150 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %149, i64 1, 1
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %150, i64 1, 2
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %152, 0
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, i64 0, 1
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, i64 0, 2
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, ptr %157, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %156, ptr %157, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %158)
  store ptr %158, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %159 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %160 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %162 = getelementptr ptr, ptr %161, i64 0
  store ptr %160, ptr %162, align 8
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %161, 0
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, i64 1, 1
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %164, i64 1, 2
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %166, 0
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167, i64 0, 1
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %168, i64 0, 2
  %170 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165, ptr %170, align 8
  %171 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %169, ptr %171, align 8
  %172 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %170, ptr %171, i1 false)
  %173 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %174 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %175, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %173, ptr %174, ptr %172, i64 0, ptr %175, i1 false)
  %176 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %173, align 8
  %177 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %178 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %179 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %179, align 8
  %180 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %180, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %178, ptr %179, ptr %177, i64 8, ptr %180, i1 false)
  %181 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %178, align 8
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %183 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %182, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %176, ptr %183, align 8
  %184 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %182, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %181, ptr %184, align 8
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %182, 0
  %186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185, i64 2, 1
  %187 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %186, i64 2, 2
  %188 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %188, align 8
  %189 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %187, ptr %189, align 8
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %188, i64 16, ptr %189)
  store ptr %190, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  %191 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  %192 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %193 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %194 = getelementptr ptr, ptr %193, i64 0
  store ptr %192, ptr %194, align 8
  %195 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %193, 0
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %195, i64 1, 1
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, i64 1, 2
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %199 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %198, 0
  %200 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %199, i64 0, 1
  %201 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %200, i64 0, 2
  %202 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, ptr %202, align 8
  %203 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201, ptr %203, align 8
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %202, ptr %203, i1 false)
  %205 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %206 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %206, align 8
  %207 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %207, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %205, ptr %206, ptr %204, i64 0, ptr %207, i1 false)
  %208 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %205, align 8
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %210 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %211 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %211, align 8
  %212 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %212, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %210, ptr %211, ptr %209, i64 8, ptr %212, i1 false)
  %213 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %210, align 8
  %214 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %215 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %214, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %208, ptr %215, align 8
  %216 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %214, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %213, ptr %216, align 8
  %217 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %214, 0
  %218 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %217, i64 2, 1
  %219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %218, i64 2, 2
  %220 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %220, align 8
  %221 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %219, ptr %221, align 8
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %220, i64 16, ptr %221)
  %223 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %224 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %224, align 8
  %225 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %225, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %223, ptr %224, ptr %222, i64 0, ptr %225, i1 false)
  %226 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %223, align 8
  %227 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %228 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %227, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %226, ptr %228, align 8
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %227, 0
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %229, i64 1, 1
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230, i64 1, 2
  %232 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %232, align 8
  %233 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %231, ptr %233, align 8
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %232, i64 16, ptr %233)
  store ptr %234, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  %235 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  %236 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %237 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %238 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %239 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %238, 1
  %240 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %239, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 2
  %241 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %240, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 3
  %242 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %243 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %242, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %241, ptr %243, align 8
  %244 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %242, 0
  %245 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %244, i64 1, 1
  %246 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %245, i64 1, 2
  %247 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %247, align 8
  %248 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %246, ptr %248, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %235, ptr %247, ptr %248)
  %249 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %249, align 8
  %250 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, ptr %250, align 8
  %251 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %249, ptr %250, i64 25, i64 24, i64 0, i64 1)
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %251)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %252)
  store ptr %252, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %253 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %254 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %256 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %253, 1
  %257 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %258 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %257, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %256, ptr %258, align 8
  %259 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %257, 0
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %259, i64 1, 1
  %261 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %260, i64 1, 2
  %262 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, ptr %262, align 8
  %263 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %261, ptr %263, align 8
  %264 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %262, ptr %263)
  store ptr %264, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmethod'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmethod"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

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

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get"(%"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
}

define linkonce void @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %0, i32 0, i32 0
  %3 = load { ptr, ptr }, ptr %2, align 8
  %4 = extractvalue { ptr, ptr } %3, 1
  %5 = extractvalue { ptr, ptr } %3, 0
  call void %5(ptr %4, { ptr, ptr } %1)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"github.com/goplus/llgo/cl/_testrt/tpmethod.Async[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"()
  %4 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"()
  %5 = call ptr @"__llgo_load__llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo"()
  %6 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8"()
  %7 = call ptr @"__llgo_load__llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o"()
  %8 = call ptr @"__llgo_load__llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos"()
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

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, i64 25, i64 24, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]"()
  %4 = call ptr @"__llgo_load__llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo"()
  %5 = call ptr @__llgo_load__llgo_Pointer()
  %6 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8"()
  %7 = call ptr @"__llgo_load__llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o"()
  %8 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs"()
  %9 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY"()
  %10 = call ptr @"__llgo_load__llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo"()
  %11 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8"()
  %12 = call ptr @"__llgo_load__llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o"()
  %13 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %12, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %13, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 2
  %15 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %14, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 3
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %15, ptr %17, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 1, 1
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %9, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  ret ptr %21
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  %3 = call ptr @__llgo_load__llgo_error()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo"()
  %5 = call ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"()
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %8 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 3
  %9 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %5, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %9, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*Tuple[error]).Get", 2
  %11 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %10, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error].Get", 3
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %13 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %12, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %11, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %12, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 1, 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 1, 2
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %17, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %8, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 1, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %22 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]", align 8
  ret ptr %22
}

define linkonce ptr @__llgo_load__llgo_error() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_error, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  store ptr %2, ptr @_llgo_error, align 8
  %3 = call ptr @__llgo_load__llgo_string()
  %4 = call ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr undef }, ptr %4, 1
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %5, ptr %7, align 8
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 1, 1
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr %2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @_llgo_error, align 8
  ret ptr %11
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

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

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define linkonce ptr @"__llgo_load__llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %6, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamedInterface"(ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamedInterface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 0, 2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %8 = getelementptr ptr, ptr %7, i64 0
  store ptr %2, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %7, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 1, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load__llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %12)
  store ptr %12, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  ret ptr %13
}

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 2, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  store ptr %22, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %23 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  ret ptr %23
}

define linkonce ptr @"__llgo_load__llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 2, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %24 = getelementptr ptr, ptr %23, i64 0
  store ptr %22, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 0, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %32)
  store ptr %32, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %33 = load ptr, ptr @"_llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o", align 8
  ret ptr %33
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 2, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %24 = getelementptr ptr, ptr %23, i64 0
  store ptr %22, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 0, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i1 false)
  %33 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %32, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %35 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %34, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %33, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %35, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 2
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41)
  store ptr %42, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %43 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$RKfcSKegPcHdzhxU0W5IivepgA09rDfPw-OLCUsxWOs", align 8
  ret ptr %43
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %4 = getelementptr ptr, ptr %3, i64 0
  store ptr %2, ptr %4, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %3, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, i64 1, 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 2
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 0, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 0, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i1 false)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %16, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %16, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 2, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 2, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %24 = getelementptr ptr, ptr %23, i64 0
  store ptr %22, ptr %24, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %25, i64 1, 1
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 1, 2
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 1
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30, i64 0, 2
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %31, i1 false)
  %33 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %32, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %35 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %34, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %33, ptr %37, align 8
  %38 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %36, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %35, ptr %38, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %36, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 2, 1
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, i64 2, 2
  %42 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41)
  %43 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %42, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %45 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %44, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %43, ptr %45, align 8
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 1, 1
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, i64 1, 2
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %48)
  store ptr %49, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %50 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$kt0sK2vUcLNEVLy1xxIBee3YiHDiDSmGrh1CrSDZOYY", align 8
  ret ptr %50
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, i64 25, i64 24, i64 0, i64 1)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load__llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"__llgo_load__llgo_func$pIyBXw4qkUL3JRjAVf_wwtiGz7b0evOvoFHlctBJd6o"()
  %3 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %2, 1
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"_llgo_iface$kSla6xFkiJD3PX1RdCGebCgULXloNxgSHKPEQsXsqos", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

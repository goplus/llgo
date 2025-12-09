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
@"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [2 x i8] c"$f", align 1
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg" = linkonce global ptr null, align 8
@"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ" = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$jo9zmj0nvZhJfbKVeTyrrEWH6rW5Qg_YzzgpnLPI0JQ" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"fn", align 1
@11 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70" = linkonce global ptr null, align 8

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
  %6 = load ptr, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %7 = load ptr, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  %8 = load ptr, ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70", align 8
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
  %91 = load ptr, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %94 = getelementptr ptr, ptr %93, i64 0
  store ptr %90, ptr %94, align 8
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %93, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 1, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 1, 2
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %98, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 0, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 0, 2
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i1 false)
  %103 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %102, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %105 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %104, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %107 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %106, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %103, ptr %107, align 8
  %108 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %106, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %105, ptr %108, align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %106, 0
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, i64 2, 1
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 2, 2
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111)
  store ptr %112, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %113 = load ptr, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %115 = load ptr, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %118 = getelementptr ptr, ptr %117, i64 0
  store ptr %114, ptr %118, align 8
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %120 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119, i64 1, 1
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %120, i64 1, 2
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %122, 0
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 0, 1
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, i64 0, 2
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i1 false)
  %127 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %126, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %129 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %128, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %130 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %131 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %130, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %127, ptr %131, align 8
  %132 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %130, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %129, ptr %132, align 8
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %130, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 2, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 2, 2
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135)
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %138 = getelementptr ptr, ptr %137, i64 0
  store ptr %136, ptr %138, align 8
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %137, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, i64 1, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 1, 2
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %142, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 0, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 0, 2
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %146)
  store ptr %146, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %147 = load ptr, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  %148 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %149 = load ptr, ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ", align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %152 = getelementptr ptr, ptr %151, i64 0
  store ptr %148, ptr %152, align 8
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %151, 0
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, i64 1, 1
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154, i64 1, 2
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %156, 0
  %158 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %157, i64 0, 1
  %159 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %158, i64 0, 2
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %159, i1 false)
  %161 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %160, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %163 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %162, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %164 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %165 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %164, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %161, ptr %165, align 8
  %166 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %164, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %163, ptr %166, align 8
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %164, 0
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167, i64 2, 1
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %168, i64 2, 2
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %169)
  %171 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %172 = getelementptr ptr, ptr %171, i64 0
  store ptr %170, ptr %172, align 8
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %171, 0
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, i64 1, 1
  %175 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %174, i64 1, 2
  %176 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %177 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %176, 0
  %178 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %177, i64 0, 1
  %179 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %178, i64 0, 2
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %175, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %179, i1 false)
  %181 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %180, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %182 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %183 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %182, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %184 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %185 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %184, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %181, ptr %185, align 8
  %186 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %184, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %183, ptr %186, align 8
  %187 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %184, 0
  %188 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %187, i64 2, 1
  %189 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %188, i64 2, 2
  %190 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %189)
  store ptr %190, ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %191 = load ptr, ptr @"_llgo_closure$yKrN3O99COYbJrrZrqSSbi_6bJYExxLvIiGn_b6kZDQ", align 8
  %192 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
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
  %202 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %201, i1 false)
  %203 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %202, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %205 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %204, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %206 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %207 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %206, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %203, ptr %207, align 8
  %208 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %206, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %205, ptr %208, align 8
  %209 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %206, 0
  %210 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %209, i64 2, 1
  %211 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %210, i64 2, 2
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %211)
  %213 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %214 = getelementptr ptr, ptr %213, i64 0
  store ptr %212, ptr %214, align 8
  %215 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %213, 0
  %216 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %215, i64 1, 1
  %217 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %216, i64 1, 2
  %218 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %219 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %218, 0
  %220 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %219, i64 0, 1
  %221 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %220, i64 0, 2
  %222 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %217, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %221, i1 false)
  %223 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %222, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %224 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %225 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %224, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %227 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %226, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %223, ptr %227, align 8
  %228 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %226, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %225, ptr %228, align 8
  %229 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %226, 0
  %230 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %229, i64 2, 1
  %231 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %230, i64 2, 2
  %232 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %231)
  %233 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %232, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %235 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %234, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %233, ptr %235, align 8
  %236 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %234, 0
  %237 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %236, i64 1, 1
  %238 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %237, i64 1, 2
  %239 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %238)
  store ptr %239, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$jo9zmj0nvZhJfbKVeTyrrEWH6rW5Qg_YzzgpnLPI0JQ", align 8
  %240 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.struct$jo9zmj0nvZhJfbKVeTyrrEWH6rW5Qg_YzzgpnLPI0JQ", align 8
  %241 = load ptr, ptr @"_llgo_func$wp7b63sFyNWPTd8VyEOOosByqpZg5pKsGThGMOTpyvo", align 8
  %242 = load ptr, ptr @"_llgo_closure$s_pTkk2q6m_bRjfPic11Z1ogmQ-VdSHpGxyzvfszwb8", align 8
  %243 = load ptr, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  %244 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %243, 1
  %245 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %244, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 2
  %246 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %245, ptr @"github.com/goplus/llgo/cl/_testrt/tpmethod.(*future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]).Then", 3
  %247 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %248 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %247, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %246, ptr %248, align 8
  %249 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %247, 0
  %250 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %249, i64 1, 1
  %251 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %250, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %240, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %251)
  %252 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 63 }, i64 25, i64 24, i64 0, i64 1)
  %253 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %252)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %253)
  store ptr %253, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/tpmethod.future[github.com/goplus/llgo/cl/_testrt/tpmethod.Tuple[error]]", align 8
  %254 = load ptr, ptr @"_llgo_func$YDtAFTesCi1EpIfGs4nqPSJzLIDwkg-8FAbVKMCx8cg", align 8
  %255 = load ptr, ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70", align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %257 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %254, 1
  %258 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %259 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %258, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %257, ptr %259, align 8
  %260 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %258, 0
  %261 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %260, i64 1, 1
  %262 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %261, i64 1, 2
  %263 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 42 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %262)
  store ptr %263, ptr @"_llgo_iface$XcsCI4xRViVu44YvSfJySCCik7Xq487CpVScS6LGI70", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
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

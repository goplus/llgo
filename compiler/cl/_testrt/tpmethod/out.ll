; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"main.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"main.future[main.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [25 x i8] c"future[main.Tuple[error]]", align 1
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [12 x i8] c"Tuple[error]", align 1
@_llgo_error = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"v", align 1
@7 = private unnamed_addr constant [3 x i8] c"Get", align 1
@"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w" = linkonce global ptr null, align 8
@"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [2 x i8] c"$f", align 1
@9 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s" = linkonce global ptr null, align 8
@"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs" = linkonce global ptr null, align 8
@"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [2 x i8] c"fn", align 1
@11 = private unnamed_addr constant [4 x i8] c"Then", align 1
@"*_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0" = linkonce global ptr null, align 8

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @main.ReadFile(%"github.com/goplus/llgo/runtime/internal/runtime.String" %0) {
_llgo_0:
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.Async[main.Tuple[error]]"({ ptr, ptr } { ptr @"__llgo_stub.main.ReadFile$1", ptr null })
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %1
}

define void @"main.ReadFile$1"({ ptr, ptr } %0) {
_llgo_0:
  %1 = alloca %"main.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  %2 = getelementptr inbounds %"main.Tuple[error]", ptr %1, i32 0, i32 0
  store %"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer, ptr %2, align 8
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @main.ReadFile(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 })
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %2)
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2, 0
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
  %1 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %0) {
_llgo_0:
  %1 = alloca %"main.Tuple[error]", align 8
  call void @llvm.memset(ptr %1, i8 0, i64 16, i1 false)
  store %"main.Tuple[error]" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"main.Tuple[error]", ptr %1, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.iface", ptr %2, align 8
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %3
}

define %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.(*Tuple[error]).Get"(ptr %0) {
_llgo_0:
  %1 = load %"main.Tuple[error]", ptr %0, align 8
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.Tuple[error].Get"(%"main.Tuple[error]" %1)
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %2
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

define linkonce %"github.com/goplus/llgo/runtime/internal/runtime.iface" @"main.Async[main.Tuple[error]]"({ ptr, ptr } %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = getelementptr inbounds %"main.future[main.Tuple[error]]", ptr %1, i32 0, i32 0
  store { ptr, ptr } %0, ptr %2, align 8
  %3 = load ptr, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %4 = load ptr, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %5 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %6 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %7 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %8 = load ptr, ptr @"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0", align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewItab"(ptr %8, ptr %4)
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.iface" %10, ptr %1, 1
  ret %"github.com/goplus/llgo/runtime/internal/runtime.iface" %11
}

define linkonce void @"__llgo_stub.main.ReadFile$1"(ptr %0, { ptr, ptr } %1) {
_llgo_0:
  tail call void @"main.ReadFile$1"({ ptr, ptr } %1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.IfacePtrData"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

define linkonce void @"__llgo_stub.main.main$1"(ptr %0, %"main.Tuple[error]" %1) {
_llgo_0:
  tail call void @"main.main$1"(%"main.Tuple[error]" %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintIface"(%"github.com/goplus/llgo/runtime/internal/runtime.iface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 }, i64 25, i64 24, i64 0, i64 1)
  store ptr %0, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 12 }, i64 25, i64 16, i64 1, i64 1)
  %2 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %1, ptr @"_llgo_main.Tuple[error]", align 8
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
  %11 = load ptr, ptr @_llgo_string, align 8
  %12 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15, i64 0, 1
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 0, 2
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %19 = getelementptr ptr, ptr %18, i64 0
  store ptr %11, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 1, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 1, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i1 false)
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
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38)
  store ptr %39, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %40 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %3, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %41 = load ptr, ptr @_llgo_error, align 8
  %42 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_13, label %_llgo_14

_llgo_12:                                         ; preds = %_llgo_14, %_llgo_10
  %44 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %45 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %46 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
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
  %60 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %59, ptr @"main.(*Tuple[error]).Get", 2
  %61 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %60, ptr @"main.(*Tuple[error]).Get", 3
  %62 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %58, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %62, ptr @"main.(*Tuple[error]).Get", 2
  %64 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %63, ptr @"main.Tuple[error].Get", 3
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
  store ptr %84, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_12
  %85 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
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
  %90 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
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
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109)
  store ptr %110, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %111 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %112 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %113 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %124)
  store ptr %124, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %125 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %126 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %128 = getelementptr ptr, ptr %127, i64 0
  store ptr %126, ptr %128, align 8
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %127, 0
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, i64 1, 1
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, i64 1, 2
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %133 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %132, 0
  %134 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %133, i64 0, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %134, i64 0, 2
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %135, i1 false)
  %137 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %136, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %138 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %139 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %138, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %141 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %140, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %137, ptr %141, align 8
  %142 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %140, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %139, ptr %142, align 8
  %143 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %140, 0
  %144 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %143, i64 2, 1
  %145 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %144, i64 2, 2
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %145)
  store ptr %146, ptr @"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs", align 8
  %147 = load ptr, ptr @"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs", align 8
  %148 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %150 = getelementptr ptr, ptr %149, i64 0
  store ptr %148, ptr %150, align 8
  %151 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %149, 0
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %151, i64 1, 1
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 1, 2
  %154 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %155 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %154, 0
  %156 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %155, i64 0, 1
  %157 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %156, i64 0, 2
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %157, i1 false)
  %159 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %158, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %160 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %161 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 5 }, ptr %160, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %162 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %163 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %162, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %159, ptr %163, align 8
  %164 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %162, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %161, ptr %164, align 8
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %162, 0
  %166 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165, i64 2, 1
  %167 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %166, i64 2, 2
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %167)
  %169 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %168, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %171 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %170, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %169, ptr %171, align 8
  %172 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %170, 0
  %173 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %172, i64 1, 1
  %174 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %173, i64 1, 2
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %174)
  store ptr %175, ptr @"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo", align 8
  %176 = load ptr, ptr @"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo", align 8
  %177 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %178 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %179 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %180 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %179, 1
  %181 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %180, ptr @"main.(*future[main.Tuple[error]]).Then", 2
  %182 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %181, ptr @"main.(*future[main.Tuple[error]]).Then", 3
  %183 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %184 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %183, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %182, ptr %184, align 8
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %183, 0
  %186 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185, i64 1, 1
  %187 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %186, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %176, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %187)
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 25 }, i64 25, i64 24, i64 0, i64 1)
  %189 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %188)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %189)
  store ptr %189, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %190 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %191 = load ptr, ptr @"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0", align 8
  %192 = icmp eq ptr %191, null
  br i1 %192, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %193 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 4 }, ptr undef }, ptr %190, 1
  %194 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %195 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %194, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %193, ptr %195, align 8
  %196 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %194, 0
  %197 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %196, i64 1, 1
  %198 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %197, i64 1, 2
  %199 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %198)
  store ptr %199, ptr @"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

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

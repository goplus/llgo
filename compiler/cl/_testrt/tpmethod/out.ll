; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"main.Tuple[error]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.iface" }
%"main.future[main.Tuple[error]]" = type { { ptr, ptr } }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.Imethod" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"foo.txt", align 1
@"_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [6 x i8] c"future", align 1
@"_llgo_main.Tuple[error]" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"Tuple", align 1
@_llgo_error = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [5 x i8] c"error", align 1
@_llgo_string = linkonce global ptr null, align 8
@"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [5 x i8] c"Error", align 1
@"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"v", align 1
@"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [2 x i8] c"$f", align 1
@8 = private unnamed_addr constant [5 x i8] c"$data", align 1
@"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s" = linkonce global ptr null, align 8
@"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs" = linkonce global ptr null, align 8
@"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"fn", align 1
@"*_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [4 x i8] c"Then", align 1

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
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 25, i64 24, i64 0, i64 1)
  store ptr %0, ptr @"_llgo_main.future[main.Tuple[error]]", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 5 }, i64 25, i64 16, i64 1, i64 1)
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
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 0, 1
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43, i64 0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1, ptr %40, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %44)
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %45 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %46 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %47 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %50 = getelementptr ptr, ptr %49, i64 0
  store ptr %46, ptr %50, align 8
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %49, 0
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, i64 1, 1
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %52, i64 1, 2
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %54, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i64 0, 1
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 0, 2
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %58)
  store ptr %58, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %59 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %60 = load ptr, ptr @_llgo_Pointer, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %62)
  store ptr %62, ptr @_llgo_Pointer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %63 = load ptr, ptr @_llgo_Pointer, align 8
  %64 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %66 = getelementptr ptr, ptr %65, i64 0
  store ptr %64, ptr %66, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %65, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 1, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 1, 2
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %70, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %71, i64 0, 1
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %72, i64 0, 2
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i1 false)
  %75 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %74, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %77 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %76, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %79 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %78, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %75, ptr %79, align 8
  %80 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %78, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %77, ptr %80, align 8
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %78, 0
  %82 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %81, i64 2, 1
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %82, i64 2, 2
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %83)
  store ptr %84, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %85 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %86 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %87 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %90 = getelementptr ptr, ptr %89, i64 0
  store ptr %86, ptr %90, align 8
  %91 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %89, 0
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %91, i64 1, 1
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %92, i64 1, 2
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %95 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %94, 0
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %95, i64 0, 1
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 0, 2
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %93, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %98)
  store ptr %98, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %99 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %100 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %102 = getelementptr ptr, ptr %101, i64 0
  store ptr %100, ptr %102, align 8
  %103 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %101, 0
  %104 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %103, i64 1, 1
  %105 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %104, i64 1, 2
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %107 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %106, 0
  %108 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %107, i64 0, 1
  %109 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %108, i64 0, 2
  %110 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %105, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %109, i1 false)
  %111 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %110, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %113 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %112, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %114 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %115 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %114, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %111, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %114, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %113, ptr %116, align 8
  %117 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %114, 0
  %118 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %117, i64 2, 1
  %119 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %118, i64 2, 2
  %120 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %119)
  store ptr %120, ptr @"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs", align 8
  %121 = load ptr, ptr @"main.struct$awGH2Wh33bS1v_s7SNAwKW27E20HcwiiPPzh9UA7QDs", align 8
  %122 = load ptr, ptr @"main.struct$vwhCZhgsid50r1SsT8OmKpRI0Cpljg78h5JlpD1CTR4", align 8
  %123 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  %124 = getelementptr ptr, ptr %123, i64 0
  store ptr %122, ptr %124, align 8
  %125 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %123, 0
  %126 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %125, i64 1, 1
  %127 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %126, i64 1, 2
  %128 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %129 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %128, 0
  %130 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %129, i64 0, 1
  %131 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %130, i64 0, 2
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %127, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %131, i1 false)
  %133 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %132, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %134 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %135 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 5 }, ptr %134, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %137 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %136, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %133, ptr %137, align 8
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %136, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %135, ptr %138, align 8
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %136, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, i64 2, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 2, 2
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141)
  %143 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %142, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %144 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %145 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %144, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %143, ptr %145, align 8
  %146 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %144, 0
  %147 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %146, i64 1, 1
  %148 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %147, i64 1, 2
  %149 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %148)
  store ptr %149, ptr @"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo", align 8
  %150 = load ptr, ptr @"main.struct$N1awC7qGapVTS_NFj1Q0jk6nCjATrIK-60oOEyDjabo", align 8
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %152 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %151, 0
  %153 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %152, i64 0, 1
  %154 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %153, i64 0, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %150, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %154)
  %155 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 6 }, i64 25, i64 24, i64 0, i64 1)
  %156 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %155)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %156)
  store ptr %156, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %157 = load ptr, ptr @"_llgo_func$_so3zZGPIhTQghxFcf7CCCVzSOk2lxOt7xgGKcTzc0s", align 8
  %158 = load ptr, ptr @"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0", align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %160 = insertvalue %"github.com/goplus/llgo/runtime/abi.Imethod" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 4 }, ptr undef }, ptr %157, 1
  %161 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  %162 = getelementptr %"github.com/goplus/llgo/runtime/abi.Imethod", ptr %161, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Imethod" %160, ptr %162, align 8
  %163 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %161, 0
  %164 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %163, i64 1, 1
  %165 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %164, i64 1, 2
  %166 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %165)
  store ptr %166, ptr @"_llgo_iface$pTofAxYfPZHsCMD5T70nrOx1gjHf9m2QCLNvEOl1py0", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
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

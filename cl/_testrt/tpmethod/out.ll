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
@"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [1 x i8] c"f", align 1
@10 = private unnamed_addr constant [4 x i8] c"data", align 1
@"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY" = linkonce global ptr null, align 8
@"main.struct$mxZtxt4nClm7R35-Ksu7sUaZcPWf2mnqwCsrqo4qOB8" = linkonce global ptr null, align 8
@"main.struct$LaXSfCbp9zvBYWtLq2i0GtWrY5UrmS8NmXCVxsyY920" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [2 x i8] c"fn", align 1
@12 = private unnamed_addr constant [4 x i8] c"Then", align 1
@13 = private unnamed_addr constant [25 x i8] c"future[main.Tuple[error]]", align 1
@"*_llgo_main.future[main.Tuple[error]]" = linkonce global ptr null, align 8
@"_llgo_iface$siNiE0pGpvdoyzPUhSP4dREmGht9v7Axb0C9hezIyDM" = linkonce global ptr null, align 8

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
  %5 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %6 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %7 = load ptr, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  %8 = load ptr, ptr @"_llgo_iface$siNiE0pGpvdoyzPUhSP4dREmGht9v7Axb0C9hezIyDM", align 8
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
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @2, i64 17 }, i64 25, i64 16, i64 1, i64 1)
  %2 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %1, ptr @"_llgo_main.Tuple[error]", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @_llgo_string, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %6, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = load ptr, ptr @_llgo_string, align 8
  %9 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %12 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %12, i64 0, 1
  %14 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %13, i64 0, 2
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %16 = getelementptr ptr, ptr %15, i64 0
  store ptr %8, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %17, i64 1, 1
  %19 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %18, i64 1, 2
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %14, %"github.com/goplus/llgo/internal/runtime.Slice" %19, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %20)
  store ptr %20, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %21 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %22 = load ptr, ptr @_llgo_error, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %24 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %21, 1
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %26 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %25, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %24, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %27, i64 1, 1
  %29 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %28, i64 1, 2
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, %"github.com/goplus/llgo/internal/runtime.Slice" %29)
  store ptr %30, ptr @_llgo_error, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %31 = load ptr, ptr @_llgo_error, align 8
  %32 = load ptr, ptr @"_llgo_func$zNDVRsWTIpUPKouNUS805RGX--IV9qVK8B31IZbg5to", align 8
  %33 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @3, i64 5 }, ptr undef }, ptr %32, 1
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %35 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %34, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %33, ptr %35, align 8
  %36 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %34, 0
  %37 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %36, i64 1, 1
  %38 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %37, i64 1, 2
  %39 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @5, i64 5 }, %"github.com/goplus/llgo/internal/runtime.Slice" %38)
  %40 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @6, i64 1 }, ptr %39, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %42 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %41, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %40, ptr %42, align 8
  %43 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %43, i64 1, 1
  %45 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %44, i64 1, 2
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %45)
  store ptr %46, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  %47 = load ptr, ptr @"main.struct$ddtj0teo4LtYcagzh1w6BsSZ7226uefXlqreeHsfVRo", align 8
  br i1 %3, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %48 = load ptr, ptr @_llgo_error, align 8
  %49 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %_llgo_11, label %_llgo_12

_llgo_10:                                         ; preds = %_llgo_12, %_llgo_8
  %51 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %52 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %53 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %_llgo_13, label %_llgo_14

_llgo_11:                                         ; preds = %_llgo_9
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %56 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %55, 0
  %57 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %56, i64 0, 1
  %58 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %57, i64 0, 2
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %60 = getelementptr ptr, ptr %59, i64 0
  store ptr %48, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %61, i64 1, 1
  %63 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %62, i64 1, 2
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %58, %"github.com/goplus/llgo/internal/runtime.Slice" %63, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %64)
  store ptr %64, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_9
  %65 = load ptr, ptr @"_llgo_func$8rsrSd_r3UHd_2DiYTyaOKR7BYkei4zw5ysG35KF38w", align 8
  %66 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %65, 1
  %67 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %66, ptr @"main.(*Tuple[error]).Get", 2
  %68 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %67, ptr @"main.(*Tuple[error]).Get", 3
  %69 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @7, i64 3 }, ptr undef, ptr undef, ptr undef }, ptr %65, 1
  %70 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %69, ptr @"main.(*Tuple[error]).Get", 2
  %71 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %70, ptr @"main.Tuple[error].Get", 3
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %73 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %72, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %71, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %72, 0
  %75 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %74, i64 1, 1
  %76 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %75, i64 1, 2
  %77 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %78 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %77, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %68, ptr %78, align 8
  %79 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %77, 0
  %80 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %79, i64 1, 1
  %81 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %80, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %1, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @8, i64 12 }, ptr %47, %"github.com/goplus/llgo/internal/runtime.Slice" %76, %"github.com/goplus/llgo/internal/runtime.Slice" %81)
  br label %_llgo_10

_llgo_13:                                         ; preds = %_llgo_10
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %83 = getelementptr ptr, ptr %82, i64 0
  store ptr %52, ptr %83, align 8
  %84 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %82, 0
  %85 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %84, i64 1, 1
  %86 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %85, i64 1, 2
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %88 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %87, 0
  %89 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %88, i64 0, 1
  %90 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %89, i64 0, 2
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %86, %"github.com/goplus/llgo/internal/runtime.Slice" %90, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %91)
  store ptr %91, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_10
  %92 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %93 = load ptr, ptr @_llgo_Pointer, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %95)
  store ptr %95, ptr @_llgo_Pointer, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %96 = load ptr, ptr @_llgo_Pointer, align 8
  %97 = load ptr, ptr @"_llgo_main.Tuple[error]", align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %99 = getelementptr ptr, ptr %98, i64 0
  store ptr %97, ptr %99, align 8
  %100 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %98, 0
  %101 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %100, i64 1, 1
  %102 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %101, i64 1, 2
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %104 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %103, 0
  %105 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %104, i64 0, 1
  %106 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %105, i64 0, 2
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %102, %"github.com/goplus/llgo/internal/runtime.Slice" %106, i1 false)
  %108 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %107, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %110 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %109, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %112 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %111, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %108, ptr %112, align 8
  %113 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %111, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %110, ptr %113, align 8
  %114 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %111, 0
  %115 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %114, i64 2, 1
  %116 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %115, i64 2, 2
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %116)
  store ptr %117, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %118 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %119 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %120 = load ptr, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %123 = getelementptr ptr, ptr %122, i64 0
  store ptr %119, ptr %123, align 8
  %124 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %122, 0
  %125 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %124, i64 1, 1
  %126 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %125, i64 1, 2
  %127 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %128 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %127, 0
  %129 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %128, i64 0, 1
  %130 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %129, i64 0, 2
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %126, %"github.com/goplus/llgo/internal/runtime.Slice" %130, i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %131)
  store ptr %131, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %132 = load ptr, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  %133 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %135 = getelementptr ptr, ptr %134, i64 0
  store ptr %133, ptr %135, align 8
  %136 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %134, 0
  %137 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %136, i64 1, 1
  %138 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %137, i64 1, 2
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %140 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %139, 0
  %141 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %140, i64 0, 1
  %142 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %141, i64 0, 2
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %138, %"github.com/goplus/llgo/internal/runtime.Slice" %142, i1 false)
  %144 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %143, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %146 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %145, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %147 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %148 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %144, ptr %148, align 8
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %147, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %146, ptr %149, align 8
  %150 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %147, 0
  %151 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %150, i64 2, 1
  %152 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %151, i64 2, 2
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %152)
  store ptr %153, ptr @"main.struct$mxZtxt4nClm7R35-Ksu7sUaZcPWf2mnqwCsrqo4qOB8", align 8
  %154 = load ptr, ptr @"main.struct$mxZtxt4nClm7R35-Ksu7sUaZcPWf2mnqwCsrqo4qOB8", align 8
  %155 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  %157 = getelementptr ptr, ptr %156, i64 0
  store ptr %155, ptr %157, align 8
  %158 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %156, 0
  %159 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %158, i64 1, 1
  %160 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %159, i64 1, 2
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %162 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %161, 0
  %163 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %162, i64 0, 1
  %164 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %163, i64 0, 2
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %160, %"github.com/goplus/llgo/internal/runtime.Slice" %164, i1 false)
  %166 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @9, i64 1 }, ptr %165, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %167 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %168 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @10, i64 4 }, ptr %167, i64 8, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %169 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %170 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %169, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %166, ptr %170, align 8
  %171 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %169, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %168, ptr %171, align 8
  %172 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %169, 0
  %173 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %172, i64 2, 1
  %174 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %173, i64 2, 2
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %174)
  %176 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @11, i64 2 }, ptr %175, i64 0, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, i1 false)
  %177 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %178 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %177, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %176, ptr %178, align 8
  %179 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %177, 0
  %180 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %179, i64 1, 1
  %181 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %180, i64 1, 2
  %182 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %181)
  store ptr %182, ptr @"main.struct$LaXSfCbp9zvBYWtLq2i0GtWrY5UrmS8NmXCVxsyY920", align 8
  %183 = load ptr, ptr @"main.struct$LaXSfCbp9zvBYWtLq2i0GtWrY5UrmS8NmXCVxsyY920", align 8
  %184 = load ptr, ptr @"_llgo_func$1BeCdGdxwWG-Dtl1HbNuSy2_sb8rBMTmu7zhcPPofmU", align 8
  %185 = load ptr, ptr @"main.struct$rDvDk5u0SueGnrMxDz_wBrplEFUjtXshBCEyKeM6edc", align 8
  %186 = load ptr, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  %187 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 4 }, ptr undef, ptr undef, ptr undef }, ptr %186, 1
  %188 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %187, ptr @"main.(*future[main.Tuple[error]]).Then", 2
  %189 = insertvalue %"github.com/goplus/llgo/internal/abi.Method" %188, ptr @"main.(*future[main.Tuple[error]]).Then", 3
  %190 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %191 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %190, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %189, ptr %191, align 8
  %192 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %190, 0
  %193 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %192, i64 1, 1
  %194 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %193, i64 1, 2
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" { ptr @13, i64 25 }, ptr %183, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %194)
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @1, i64 30 }, i64 25, i64 24, i64 0, i64 1)
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %195)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %196)
  store ptr %196, ptr @"*_llgo_main.future[main.Tuple[error]]", align 8
  %197 = load ptr, ptr @"_llgo_func$80MkNg5FlG-QIrR0qzHGiPc77AqvdbJflSWOeG5LcUY", align 8
  %198 = load ptr, ptr @"_llgo_iface$siNiE0pGpvdoyzPUhSP4dREmGht9v7Axb0C9hezIyDM", align 8
  %199 = icmp eq ptr %198, null
  br i1 %199, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %200 = insertvalue %"github.com/goplus/llgo/internal/abi.Imethod" { %"github.com/goplus/llgo/internal/runtime.String" { ptr @12, i64 4 }, ptr undef }, ptr %197, 1
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  %202 = getelementptr %"github.com/goplus/llgo/internal/abi.Imethod", ptr %201, i64 0
  store %"github.com/goplus/llgo/internal/abi.Imethod" %200, ptr %202, align 8
  %203 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" undef, ptr %201, 0
  %204 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %203, i64 1, 1
  %205 = insertvalue %"github.com/goplus/llgo/internal/runtime.Slice" %204, i64 1, 2
  %206 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" { ptr @4, i64 4 }, %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %205)
  store ptr %206, ptr @"_llgo_iface$siNiE0pGpvdoyzPUhSP4dREmGht9v7Axb0C9hezIyDM", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewItab"(ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

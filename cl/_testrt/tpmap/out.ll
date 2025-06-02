; ModuleID = 'github.com/goplus/llgo/cl/_testrt/tpmap'
source_filename = "github.com/goplus/llgo/cl/_testrt/tpmap"

%"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = type { i64, %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr, i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmap.T2" = type { i64 }
%"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard" = global i1 false, align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/tpmap", align 1
@1 = private unnamed_addr constant [8 x i8] c"cacheKey", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1" = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"T1", align 1
@_llgo_int = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"v", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [7 x i8] c"T3[any]", align 1
@_llgo_any = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo" = linkonce global ptr null, align 8
@"*_llgo_int" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"t1", align 1
@7 = private unnamed_addr constant [2 x i8] c"t2", align 1
@8 = private unnamed_addr constant [2 x i8] c"t3", align 1
@9 = private unnamed_addr constant [2 x i8] c"t4", align 1
@10 = private unnamed_addr constant [2 x i8] c"t5", align 1
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@12 = private unnamed_addr constant [4 x i8] c"keys", align 1
@13 = private unnamed_addr constant [5 x i8] c"elems", align 1
@14 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@15 = private unnamed_addr constant [5 x i8] c"world", align 1

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/tpmap.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  call void @llvm.memset(ptr %4, i8 0, i64 48, i1 false)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, i32 0, i32 1
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, i32 0, i32 3
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, i32 0, i32 4
  store i64 0, ptr %5, align 4
  store i64 0, ptr %7, align 4
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %9, align 8
  store ptr null, ptr %10, align 8
  store i64 0, ptr %11, align 4
  %15 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, align 8
  %16 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" %15, ptr %17, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %16, ptr %3, ptr %17)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  call void @llvm.memset(ptr %19, i8 0, i64 48, i1 false)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, i32 0, i32 1
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T2", ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, i32 0, i32 2
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, i32 0, i32 3
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, i32 0, i32 4
  store i64 0, ptr %20, align 4
  store i64 0, ptr %22, align 4
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %24, align 8
  store ptr null, ptr %25, align 8
  store i64 0, ptr %26, align 4
  %30 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, align 8
  %31 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" %30, ptr %32, align 8
  %33 = alloca { ptr, i1 }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %33, ptr %31, ptr %3, ptr %32)
  %34 = load { ptr, i1 }, ptr %33, align 8
  %35 = extractvalue { ptr, i1 } %34, 0
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %35, align 8
  %37 = extractvalue { ptr, i1 } %34, 1
  %38 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %36, 0
  %39 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %38, i1 %37, 1
  %40 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %39, 0
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %39, 1
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, ptr %42, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 25, i64 48, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %3, align 8
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %4, align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %3, ptr %4, i64 2, i64 8, i64 0, i64 0)
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %5, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %10, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %11 = load ptr, ptr @_llgo_int, align 8
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %12, align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %13, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %5, ptr %11, ptr %12, ptr %13)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %15, ptr %16, i64 25, i64 8, i64 0, i64 0)
  %18 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %17, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %21 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %22, align 8
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %21, ptr %22, ptr %20, i64 0, ptr %23, i1 false)
  %24 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %25, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %24, ptr %26, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %25, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 1, 1
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 1, 2
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, ptr %31, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %30, i64 8, ptr %31)
  store ptr %32, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %33 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %19, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %34 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %34, align 8
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %35, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %17, ptr %33, ptr %34, ptr %35)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %36 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %37, align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr %38, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %37, ptr %38, i64 25, i64 16, i64 0, i64 0)
  %40 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %39, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %42 = load ptr, ptr @_llgo_any, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %45, i64 0, 1
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %46, i64 0, 2
  %48 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %48, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %47, ptr %49, align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %48, ptr %49)
  store ptr %50, ptr @_llgo_any, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %51 = load ptr, ptr @_llgo_any, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 0, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 0, 2
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %56, align 8
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, ptr %57, align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %56, ptr %57)
  %59 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %60, align 8
  %61 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %61, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %59, ptr %60, ptr %58, i64 0, ptr %61, i1 false)
  %62 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %59, align 8
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %64 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %63, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %62, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 1, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 1, 2
  %68 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %68, align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, ptr %69, align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %68, i64 16, ptr %69)
  store ptr %70, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  %71 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  br i1 %41, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %72 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %72, align 8
  %73 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %73, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %39, ptr %71, ptr %72, ptr %73)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %74 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  %75 = load ptr, ptr @"*_llgo_int", align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %77)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %78)
  store ptr %78, ptr @"*_llgo_int", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %79 = load ptr, ptr @"*_llgo_int", align 8
  %80 = load ptr, ptr @_llgo_uintptr, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %82, ptr @_llgo_uintptr, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %83 = load ptr, ptr @_llgo_uintptr, align 8
  %84 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %84, align 8
  %85 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, ptr %85, align 8
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %84, ptr %85, i64 2, i64 8, i64 0, i64 0)
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %87, align 8
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %88, align 8
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %87, ptr %88, i64 25, i64 8, i64 0, i64 0)
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, ptr %91, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %90, ptr %91, i64 25, i64 16, i64 0, i64 0)
  %93 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr %94, align 8
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %95, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %93, ptr %94, ptr %86, i64 0, ptr %95, i1 false)
  %96 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %93, align 8
  %97 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %98 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %99, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %97, ptr %98, ptr %89, i64 8, ptr %99, i1 false)
  %100 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %97, align 8
  %101 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %102 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %102, align 8
  %103 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %103, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %101, ptr %102, ptr %92, i64 16, ptr %103, i1 false)
  %104 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %101, align 8
  %105 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %106 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %105)
  %107 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %108 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %108, align 8
  %109 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %109, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %107, ptr %108, ptr %106, i64 32, ptr %109, i1 false)
  %110 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %107, align 8
  %111 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %112 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %114, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %112, ptr %113, ptr %111, i64 40, ptr %114, i1 false)
  %115 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %112, align 8
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %117 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %96, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %100, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %104, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %110, ptr %120, align 8
  %121 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %116, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %115, ptr %121, align 8
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %116, 0
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 5, 1
  %124 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, i64 5, 2
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %125, align 8
  %126 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %124, ptr %126, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %125, i64 48, ptr %126)
  store ptr %127, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8", align 8
  %128 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8", align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %129, align 8
  %130 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %130, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %128, ptr %129, ptr %130)
  %131 = load ptr, ptr @_llgo_string, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %133 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %133, ptr @_llgo_string, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %134 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %134, align 8
  %135 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, ptr %135, align 8
  %136 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %134, ptr %135, i64 25, i64 48, i64 0, i64 0)
  %137 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %137, align 8
  %138 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, ptr %138, align 8
  %139 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %137, ptr %138, i64 25, i64 48, i64 0, i64 0)
  %140 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %141 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %141)
  %143 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %144 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %145, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %143, ptr %144, ptr %142, i64 0, ptr %145, i1 false)
  %146 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %143, align 8
  %147 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %139)
  %148 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %149 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %150, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %148, ptr %149, ptr %147, i64 8, ptr %150, i1 false)
  %151 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %148, align 8
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %153 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %152)
  %154 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %155, align 8
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %156, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %154, ptr %155, ptr %153, i64 392, ptr %156, i1 false)
  %157 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %159 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %160 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr %160, align 8
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %161, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %159, ptr %160, ptr %158, i64 520, ptr %161, i1 false)
  %162 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %159, align 8
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %164 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %163, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %146, ptr %164, align 8
  %165 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %163, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %151, ptr %165, align 8
  %166 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %163, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %157, ptr %166, align 8
  %167 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %163, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %162, ptr %167, align 8
  %168 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %163, 0
  %169 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %168, i64 4, 1
  %170 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %169, i64 4, 2
  %171 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, ptr %171, align 8
  %172 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %170, ptr %172, align 8
  %173 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %171, i64 528, ptr %172)
  %174 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %136, ptr %140, ptr %173, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %174)
  store ptr %174, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

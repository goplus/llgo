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
  %0 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey"()
  %1 = call ptr @__llgo_load__llgo_string()
  %2 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string"()
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
  %12 = call ptr @__llgo_load__llgo_int()
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %9, align 8
  store ptr null, ptr %10, align 8
  store i64 0, ptr %11, align 4
  %15 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %4, align 8
  %16 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string"()
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
  %27 = call ptr @__llgo_load__llgo_int()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %24, align 8
  store ptr null, ptr %25, align 8
  store i64 0, ptr %26, align 4
  %30 = load %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", ptr %19, align 8
  %31 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string"()
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %"github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey" %30, ptr %32, align 8
  %33 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %31, ptr %3, ptr %32)
  %34 = extractvalue { ptr, i1 } %33, 0
  %35 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %34, align 8
  %36 = extractvalue { ptr, i1 } %33, 1
  %37 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %35, 0
  %38 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %37, i1 %36, 1
  %39 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %38, 0
  %40 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %38, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %39)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %40)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1"()
  %4 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2"()
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]"()
  %6 = call ptr @"__llgo_load_*_llgo_int"()
  %7 = call ptr @__llgo_load__llgo_uintptr()
  %8 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %8, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %9 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey", align 8
  ret ptr %9
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, i64 2, i64 8, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  %3 = call ptr @__llgo_load__llgo_int()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1", align 8
  ret ptr %4
}

define linkonce ptr @__llgo_load__llgo_int() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

define void @"github.com/goplus/llgo/cl/_testrt/tpmap.init$after"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_int()
  %1 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T1"()
  %2 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"()
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2"()
  %4 = call ptr @__llgo_load__llgo_any()
  %5 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo"()
  %6 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]"()
  %7 = call ptr @"__llgo_load_*_llgo_int"()
  %8 = call ptr @__llgo_load__llgo_uintptr()
  %9 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8"()
  %10 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey"()
  %11 = call ptr @__llgo_load__llgo_string()
  %12 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string"()
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, i64 25, i64 8, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  %3 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T2", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %5 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %4, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %5, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %4, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 1, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 1, 2
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8)
  store ptr %9, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %10 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  ret ptr %10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, i64 25, i64 16, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  %3 = call ptr @__llgo_load__llgo_any()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.T3[any]", align 8
  ret ptr %5
}

define linkonce ptr @__llgo_load__llgo_any() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_any, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  store ptr %6, ptr @_llgo_any, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_any, align 8
  ret ptr %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %6, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  store ptr %13, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  ret ptr %14
}

define linkonce ptr @"__llgo_load_*_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_int", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @__llgo_load__llgo_uintptr() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uintptr, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %2, ptr @_llgo_uintptr, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uintptr, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, i64 2, i64 8, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, i64 25, i64 8, i64 0, i64 0)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, i64 25, i64 16, i64 0, i64 0)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %3, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %4, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %8)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %9, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %11, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %14 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %14, align 8
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %13, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %13, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19, i64 5, 1
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 5, 2
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21)
  store ptr %22, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %23 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/tpmap.struct$phCK-T684g3enhknCOfRlq7bWO8q6jPkTysM4zTiUJ8", align 8
  ret ptr %23
}

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

define linkonce ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %5)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr %6, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %3)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr %8, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %11, i64 392, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr %13, i64 520, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 4, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 4, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 39 }, i64 528, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %4, ptr %23, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/tpmap.cacheKey]_llgo_string", align 8
  ret ptr %25
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

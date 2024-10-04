; ModuleID = 'main'
source_filename = "main"

%main.cacheKey = type { i64, %main.T2, %"main.T3[any]", ptr, i64 }
%main.T2 = type { i64 }
%"main.T3[any]" = type { %"github.com/goplus/llgo/internal/runtime.eface" }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.cacheKey = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [13 x i8] c"main.cacheKey", align 1
@_llgo_main.T1 = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [7 x i8] c"main.T1", align 1
@_llgo_int = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [2 x i8] c"T1", align 1
@_llgo_main.T2 = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [7 x i8] c"main.T2", align 1
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [1 x i8] c"v", align 1
@6 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"_llgo_main.T3[any]" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [12 x i8] c"main.T3[any]", align 1
@_llgo_any = linkonce global ptr null, align 8
@"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo" = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [7 x i8] c"T3[any]", align 1
@"*_llgo_int" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"t1", align 1
@10 = private unnamed_addr constant [2 x i8] c"t2", align 1
@11 = private unnamed_addr constant [2 x i8] c"t3", align 1
@12 = private unnamed_addr constant [2 x i8] c"t4", align 1
@13 = private unnamed_addr constant [2 x i8] c"t5", align 1
@14 = private unnamed_addr constant [8 x i8] c"cacheKey", align 1
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_main.cacheKey]_llgo_string" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@16 = private unnamed_addr constant [4 x i8] c"keys", align 1
@17 = private unnamed_addr constant [5 x i8] c"elems", align 1
@18 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@19 = private unnamed_addr constant [5 x i8] c"world", align 1

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
  %2 = load ptr, ptr @_llgo_main.cacheKey, align 8
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %4, i64 0)
  %6 = alloca %main.cacheKey, align 8
  call void @llvm.memset(ptr %6, i8 0, i64 48, i1 false)
  %7 = getelementptr inbounds %main.cacheKey, ptr %6, i32 0, i32 0
  %8 = getelementptr inbounds %main.cacheKey, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %main.T2, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %main.cacheKey, ptr %6, i32 0, i32 2
  %11 = getelementptr inbounds %"main.T3[any]", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %main.cacheKey, ptr %6, i32 0, i32 3
  %13 = getelementptr inbounds %main.cacheKey, ptr %6, i32 0, i32 4
  store i64 0, ptr %7, align 4
  store i64 0, ptr %9, align 4
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, i32 0, i32 0
  store ptr %14, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, i32 0, i32 1
  store ptr null, ptr %17, align 8
  %18 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %18, ptr %11, align 8
  store ptr null, ptr %12, align 8
  store i64 0, ptr %13, align 4
  %19 = load %main.cacheKey, ptr %6, align 8
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @19, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 5, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load ptr, ptr @_llgo_main.cacheKey, align 8
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %19, ptr %27, align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %26, ptr %5, ptr %27)
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %28, align 8
  %29 = alloca %main.cacheKey, align 8
  call void @llvm.memset(ptr %29, i8 0, i64 48, i1 false)
  %30 = getelementptr inbounds %main.cacheKey, ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %main.cacheKey, ptr %29, i32 0, i32 1
  %32 = getelementptr inbounds %main.T2, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds %main.cacheKey, ptr %29, i32 0, i32 2
  %34 = getelementptr inbounds %"main.T3[any]", ptr %33, i32 0, i32 0
  %35 = getelementptr inbounds %main.cacheKey, ptr %29, i32 0, i32 3
  %36 = getelementptr inbounds %main.cacheKey, ptr %29, i32 0, i32 4
  store i64 0, ptr %30, align 4
  store i64 0, ptr %32, align 4
  %37 = load ptr, ptr @_llgo_int, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %37, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %41, ptr %34, align 8
  store ptr null, ptr %35, align 8
  store i64 0, ptr %36, align 4
  %42 = load %main.cacheKey, ptr %29, align 8
  %43 = load ptr, ptr @_llgo_main.cacheKey, align 8
  %44 = load ptr, ptr @_llgo_string, align 8
  %45 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %42, ptr %46, align 8
  %47 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %45, ptr %5, ptr %46)
  %48 = extractvalue { ptr, i1 } %47, 0
  %49 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %48, align 8
  %50 = extractvalue { ptr, i1 } %47, 1
  %51 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %52 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %51, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %49, ptr %52, align 8
  %53 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %51, i32 0, i32 1
  store i1 %50, ptr %53, align 1
  %54 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %51, align 8
  %55 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %54, 0
  %56 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %54, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %56)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 13, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 25, i64 48, i64 0, i64 0)
  store ptr %4, ptr @_llgo_main.cacheKey, align 8
  %5 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 0
  store ptr @1, ptr %6, align 8
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %5, i32 0, i32 1
  store i64 7, ptr %7, align 4
  %8 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %5, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %8, i64 2, i64 8, i64 0, i64 0)
  %10 = load ptr, ptr @_llgo_main.T1, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %9, ptr @_llgo_main.T1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %12 = load ptr, ptr @_llgo_int, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %14, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %15 = load ptr, ptr @_llgo_int, align 8
  br i1 %11, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @2, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @3, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 2, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %9, %"github.com/goplus/llgo/internal/runtime.String" %19, %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %15, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %24 = load ptr, ptr @_llgo_main.T1, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr @4, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 7, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %28, i64 25, i64 8, i64 0, i64 0)
  %30 = load ptr, ptr @_llgo_main.T2, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %29, ptr @_llgo_main.T2, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %32 = load ptr, ptr @_llgo_int, align 8
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 0
  store ptr @5, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %33, i32 0, i32 1
  store i64 1, ptr %35, align 4
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %33, align 8
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 0, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %42 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %36, ptr %41, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %40, i1 false)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @2, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 4, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %48 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %47, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %42, ptr %48, align 8
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 1
  store i64 1, ptr %51, align 4
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, i32 0, i32 2
  store i64 1, ptr %52, align 4
  %53 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %49, align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %46, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %53)
  store ptr %54, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %55 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %31, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @2, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 0
  store ptr @6, ptr %61, align 8
  %62 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %60, i32 0, i32 1
  store i64 2, ptr %62, align 4
  %63 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %60, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %29, %"github.com/goplus/llgo/internal/runtime.String" %59, %"github.com/goplus/llgo/internal/runtime.String" %63, ptr %55, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %64 = load ptr, ptr @_llgo_main.T2, align 8
  %65 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 0
  store ptr @7, ptr %66, align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %65, i32 0, i32 1
  store i64 12, ptr %67, align 4
  %68 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %65, align 8
  %69 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %68, i64 25, i64 16, i64 0, i64 0)
  %70 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %69, ptr @"_llgo_main.T3[any]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %72 = load ptr, ptr @_llgo_any, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 0
  store ptr %74, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 1
  store i64 0, ptr %77, align 4
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, i32 0, i32 2
  store i64 0, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %75, align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 0
  store ptr @2, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %80, i32 0, i32 1
  store i64 4, ptr %82, align 4
  %83 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %80, align 8
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr null, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 0, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %83, %"github.com/goplus/llgo/internal/runtime.String" %87, %"github.com/goplus/llgo/internal/runtime.Slice" %79)
  store ptr %88, ptr @_llgo_any, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %89 = load ptr, ptr @_llgo_any, align 8
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @5, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 1, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr null, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 0, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 0
  store ptr %98, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 1
  store i64 0, ptr %101, align 4
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, i32 0, i32 2
  store i64 0, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %99, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @2, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 4, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 0
  store ptr null, ptr %109, align 8
  %110 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %108, i32 0, i32 1
  store i64 0, ptr %110, align 4
  %111 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %107, %"github.com/goplus/llgo/internal/runtime.String" %111, %"github.com/goplus/llgo/internal/runtime.Slice" %103)
  %113 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %93, ptr %112, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %97, i1 false)
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @2, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 4, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %119 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %118, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %113, ptr %119, align 8
  %120 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 0
  store ptr %118, ptr %121, align 8
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 1
  store i64 1, ptr %122, align 4
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, i32 0, i32 2
  store i64 1, ptr %123, align 4
  %124 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %120, align 8
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %117, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %124)
  store ptr %125, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  %126 = load ptr, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  br i1 %71, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %127 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 0
  store ptr @2, ptr %128, align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %127, i32 0, i32 1
  store i64 4, ptr %129, align 4
  %130 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %127, align 8
  %131 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 0
  store ptr @8, ptr %132, align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %131, i32 0, i32 1
  store i64 7, ptr %133, align 4
  %134 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %131, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %69, %"github.com/goplus/llgo/internal/runtime.String" %130, %"github.com/goplus/llgo/internal/runtime.String" %134, ptr %126, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %135 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %136 = load ptr, ptr @"*_llgo_int", align 8
  %137 = icmp eq ptr %136, null
  br i1 %137, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %139 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %138)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %139)
  store ptr %139, ptr @"*_llgo_int", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %140 = load ptr, ptr @"*_llgo_int", align 8
  %141 = load ptr, ptr @_llgo_uintptr, align 8
  %142 = icmp eq ptr %141, null
  br i1 %142, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %143 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %143, ptr @_llgo_uintptr, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %144 = load ptr, ptr @_llgo_uintptr, align 8
  %145 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 0
  store ptr @1, ptr %146, align 8
  %147 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %145, i32 0, i32 1
  store i64 7, ptr %147, align 4
  %148 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %145, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %148, i64 2, i64 8, i64 0, i64 0)
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 0
  store ptr @4, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %150, i32 0, i32 1
  store i64 7, ptr %152, align 4
  %153 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %150, align 8
  %154 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %153, i64 25, i64 8, i64 0, i64 0)
  %155 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 0
  store ptr @7, ptr %156, align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %155, i32 0, i32 1
  store i64 12, ptr %157, align 4
  %158 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %159 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %158, i64 25, i64 16, i64 0, i64 0)
  %160 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 0
  store ptr @9, ptr %161, align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %160, i32 0, i32 1
  store i64 2, ptr %162, align 4
  %163 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %160, align 8
  %164 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 0
  store ptr null, ptr %165, align 8
  %166 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %164, i32 0, i32 1
  store i64 0, ptr %166, align 4
  %167 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %164, align 8
  %168 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %163, ptr %149, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %167, i1 false)
  %169 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 0
  store ptr @10, ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %169, i32 0, i32 1
  store i64 2, ptr %171, align 4
  %172 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %169, align 8
  %173 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %173, i32 0, i32 0
  store ptr null, ptr %174, align 8
  %175 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %173, i32 0, i32 1
  store i64 0, ptr %175, align 4
  %176 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %173, align 8
  %177 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %172, ptr %154, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %176, i1 false)
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @11, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 2, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr null, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 0, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  %186 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %181, ptr %159, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %185, i1 false)
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr @12, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 2, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 0
  store ptr null, ptr %192, align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %191, i32 0, i32 1
  store i64 0, ptr %193, align 4
  %194 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %191, align 8
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %196 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %195)
  %197 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %190, ptr %196, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %194, i1 false)
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr @13, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 2, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 0
  store ptr null, ptr %203, align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %202, i32 0, i32 1
  store i64 0, ptr %204, align 4
  %205 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %202, align 8
  %206 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %207 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %201, ptr %206, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %205, i1 false)
  %208 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 0
  store ptr @2, ptr %209, align 8
  %210 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %208, i32 0, i32 1
  store i64 4, ptr %210, align 4
  %211 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %208, align 8
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %213 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %212, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %168, ptr %213, align 8
  %214 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %212, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %177, ptr %214, align 8
  %215 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %212, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %186, ptr %215, align 8
  %216 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %212, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %197, ptr %216, align 8
  %217 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %212, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %207, ptr %217, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 0
  store ptr %212, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 1
  store i64 5, ptr %220, align 4
  %221 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, i32 0, i32 2
  store i64 5, ptr %221, align 4
  %222 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %218, align 8
  %223 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %211, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %222)
  store ptr %223, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  %224 = load ptr, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  %225 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 0
  store ptr @2, ptr %226, align 8
  %227 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %225, i32 0, i32 1
  store i64 4, ptr %227, align 4
  %228 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %225, align 8
  %229 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 0
  store ptr @14, ptr %230, align 8
  %231 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %229, i32 0, i32 1
  store i64 8, ptr %231, align 4
  %232 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %229, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %228, %"github.com/goplus/llgo/internal/runtime.String" %232, ptr %224, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %233 = load ptr, ptr @_llgo_string, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %235 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %235, ptr @_llgo_string, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 0
  store ptr @0, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 1
  store i64 13, ptr %238, align 4
  %239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %236, align 8
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %239, i64 25, i64 48, i64 0, i64 0)
  %241 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 0
  store ptr @0, ptr %242, align 8
  %243 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %241, i32 0, i32 1
  store i64 13, ptr %243, align 4
  %244 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %241, align 8
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %244, i64 25, i64 48, i64 0, i64 0)
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %247 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 0
  store ptr @15, ptr %248, align 8
  %249 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %247, i32 0, i32 1
  store i64 7, ptr %249, align 4
  %250 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %247, align 8
  %251 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 0
  store ptr null, ptr %252, align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %251, i32 0, i32 1
  store i64 0, ptr %253, align 4
  %254 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %251, align 8
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %256 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %255)
  %257 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %250, ptr %256, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %254, i1 false)
  %258 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %258, i32 0, i32 0
  store ptr @16, ptr %259, align 8
  %260 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %258, i32 0, i32 1
  store i64 4, ptr %260, align 4
  %261 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %258, align 8
  %262 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 0
  store ptr null, ptr %263, align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %262, i32 0, i32 1
  store i64 0, ptr %264, align 4
  %265 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %262, align 8
  %266 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %245)
  %267 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %261, ptr %266, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %265, i1 false)
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @17, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 5, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 0
  store ptr null, ptr %273, align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %272, i32 0, i32 1
  store i64 0, ptr %274, align 4
  %275 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %272, align 8
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %276)
  %278 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %271, ptr %277, i64 392, %"github.com/goplus/llgo/internal/runtime.String" %275, i1 false)
  %279 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 0
  store ptr @18, ptr %280, align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %279, i32 0, i32 1
  store i64 8, ptr %281, align 4
  %282 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %279, align 8
  %283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 0
  store ptr null, ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 1
  store i64 0, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %283, align 8
  %287 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %288 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %282, ptr %287, i64 520, %"github.com/goplus/llgo/internal/runtime.String" %286, i1 false)
  %289 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 0
  store ptr @2, ptr %290, align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %289, i32 0, i32 1
  store i64 4, ptr %291, align 4
  %292 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %289, align 8
  %293 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %294 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %293, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %257, ptr %294, align 8
  %295 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %293, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %267, ptr %295, align 8
  %296 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %293, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %278, ptr %296, align 8
  %297 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %293, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %288, ptr %297, align 8
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %298, i32 0, i32 0
  store ptr %293, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %298, i32 0, i32 1
  store i64 4, ptr %300, align 4
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %298, i32 0, i32 2
  store i64 4, ptr %301, align 4
  %302 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %298, align 8
  %303 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %292, i64 528, %"github.com/goplus/llgo/internal/runtime.Slice" %302)
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %240, ptr %246, ptr %303, i64 24)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %304)
  store ptr %304, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

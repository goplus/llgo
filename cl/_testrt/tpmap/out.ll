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
  %24 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %19, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %24, ptr %5, ptr %25)
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %26, align 8
  %27 = alloca %main.cacheKey, align 8
  call void @llvm.memset(ptr %27, i8 0, i64 48, i1 false)
  %28 = getelementptr inbounds %main.cacheKey, ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds %main.cacheKey, ptr %27, i32 0, i32 1
  %30 = getelementptr inbounds %main.T2, ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %main.cacheKey, ptr %27, i32 0, i32 2
  %32 = getelementptr inbounds %"main.T3[any]", ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds %main.cacheKey, ptr %27, i32 0, i32 3
  %34 = getelementptr inbounds %main.cacheKey, ptr %27, i32 0, i32 4
  store i64 0, ptr %28, align 4
  store i64 0, ptr %30, align 4
  %35 = load ptr, ptr @_llgo_int, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, i32 0, i32 0
  store ptr %35, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, i32 0, i32 1
  store ptr null, ptr %38, align 8
  %39 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %36, align 8
  store %"github.com/goplus/llgo/internal/runtime.eface" %39, ptr %32, align 8
  store ptr null, ptr %33, align 8
  store i64 0, ptr %34, align 4
  %40 = load %main.cacheKey, ptr %27, align 8
  %41 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %40, ptr %42, align 8
  %43 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %41, ptr %5, ptr %42)
  %44 = extractvalue { ptr, i1 } %43, 0
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %44, align 8
  %46 = extractvalue { ptr, i1 } %43, 1
  %47 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %48 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %47, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %45, ptr %48, align 8
  %49 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %47, i32 0, i32 1
  store i1 %46, ptr %49, align 1
  %50 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %47, align 8
  %51 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %50, 0
  %52 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %50, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %52)
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
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @5, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 1, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %41 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %35, ptr %40, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %39, i1 false)
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 0
  store ptr @2, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %42, i32 0, i32 1
  store i64 4, ptr %44, align 4
  %45 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %42, align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %47 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %46, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %41, ptr %47, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 0
  store ptr %46, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 1
  store i64 1, ptr %50, align 4
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, i32 0, i32 2
  store i64 1, ptr %51, align 4
  %52 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %48, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %45, i64 8, %"github.com/goplus/llgo/internal/runtime.Slice" %52)
  store ptr %53, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %54 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %31, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %55 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 0
  store ptr @2, ptr %56, align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %55, i32 0, i32 1
  store i64 4, ptr %57, align 4
  %58 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %55, align 8
  %59 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 0
  store ptr @6, ptr %60, align 8
  %61 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %59, i32 0, i32 1
  store i64 2, ptr %61, align 4
  %62 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %59, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %29, %"github.com/goplus/llgo/internal/runtime.String" %58, %"github.com/goplus/llgo/internal/runtime.String" %62, ptr %54, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %63 = load ptr, ptr @_llgo_main.T2, align 8
  %64 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 0
  store ptr @7, ptr %65, align 8
  %66 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %64, i32 0, i32 1
  store i64 12, ptr %66, align 4
  %67 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %64, align 8
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %67, i64 25, i64 16, i64 0, i64 0)
  %69 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %68, ptr @"_llgo_main.T3[any]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %71 = load ptr, ptr @_llgo_any, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 0
  store ptr %73, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 1
  store i64 0, ptr %76, align 4
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, i32 0, i32 2
  store i64 0, ptr %77, align 4
  %78 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %74, align 8
  %79 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 0
  store ptr @2, ptr %80, align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %79, i32 0, i32 1
  store i64 4, ptr %81, align 4
  %82 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %79, align 8
  %83 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 0
  store ptr null, ptr %84, align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %83, i32 0, i32 1
  store i64 0, ptr %85, align 4
  %86 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %83, align 8
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %82, %"github.com/goplus/llgo/internal/runtime.String" %86, %"github.com/goplus/llgo/internal/runtime.Slice" %78)
  store ptr %87, ptr @_llgo_any, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %88 = load ptr, ptr @_llgo_any, align 8
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @5, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 1, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 0, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 0
  store ptr %97, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 1
  store i64 0, ptr %100, align 4
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, i32 0, i32 2
  store i64 0, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %98, align 8
  %103 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 0
  store ptr @2, ptr %104, align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %103, i32 0, i32 1
  store i64 4, ptr %105, align 4
  %106 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %103, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 0
  store ptr null, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %107, i32 0, i32 1
  store i64 0, ptr %109, align 4
  %110 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %107, align 8
  %111 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %106, %"github.com/goplus/llgo/internal/runtime.String" %110, %"github.com/goplus/llgo/internal/runtime.Slice" %102)
  %112 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %92, ptr %111, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %96, i1 false)
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 0
  store ptr @2, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %113, i32 0, i32 1
  store i64 4, ptr %115, align 4
  %116 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %113, align 8
  %117 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 56)
  %118 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %117, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %112, ptr %118, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 0
  store ptr %117, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 1
  store i64 1, ptr %121, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 2
  store i64 1, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %116, i64 16, %"github.com/goplus/llgo/internal/runtime.Slice" %123)
  store ptr %124, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  %125 = load ptr, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  br i1 %70, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @2, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @8, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 7, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %68, %"github.com/goplus/llgo/internal/runtime.String" %129, %"github.com/goplus/llgo/internal/runtime.String" %133, ptr %125, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %134 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %135 = load ptr, ptr @"*_llgo_int", align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %137 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %138 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %137)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %138)
  store ptr %138, ptr @"*_llgo_int", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %139 = load ptr, ptr @"*_llgo_int", align 8
  %140 = load ptr, ptr @_llgo_uintptr, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  store ptr %142, ptr @_llgo_uintptr, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %143 = load ptr, ptr @_llgo_uintptr, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @1, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 7, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %147, i64 2, i64 8, i64 0, i64 0)
  %149 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %150 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 0
  store ptr @4, ptr %150, align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %149, i32 0, i32 1
  store i64 7, ptr %151, align 4
  %152 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %149, align 8
  %153 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %152, i64 25, i64 8, i64 0, i64 0)
  %154 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 0
  store ptr @7, ptr %155, align 8
  %156 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %154, i32 0, i32 1
  store i64 12, ptr %156, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %154, align 8
  %158 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %157, i64 25, i64 16, i64 0, i64 0)
  %159 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 0
  store ptr @9, ptr %160, align 8
  %161 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %159, i32 0, i32 1
  store i64 2, ptr %161, align 4
  %162 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %159, align 8
  %163 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 0
  store ptr null, ptr %164, align 8
  %165 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %163, i32 0, i32 1
  store i64 0, ptr %165, align 4
  %166 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %163, align 8
  %167 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %162, ptr %148, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %166, i1 false)
  %168 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 0
  store ptr @10, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %168, i32 0, i32 1
  store i64 2, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %168, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr null, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 0, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %171, ptr %153, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %175, i1 false)
  %177 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 0
  store ptr @11, ptr %178, align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %177, i32 0, i32 1
  store i64 2, ptr %179, align 4
  %180 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %177, align 8
  %181 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 0
  store ptr null, ptr %182, align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %181, i32 0, i32 1
  store i64 0, ptr %183, align 4
  %184 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %181, align 8
  %185 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %180, ptr %158, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %184, i1 false)
  %186 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %187 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 0
  store ptr @12, ptr %187, align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %186, i32 0, i32 1
  store i64 2, ptr %188, align 4
  %189 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %186, align 8
  %190 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %191 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 0
  store ptr null, ptr %191, align 8
  %192 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %190, i32 0, i32 1
  store i64 0, ptr %192, align 4
  %193 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %190, align 8
  %194 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %195 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %194)
  %196 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %189, ptr %195, i64 32, %"github.com/goplus/llgo/internal/runtime.String" %193, i1 false)
  %197 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 0
  store ptr @13, ptr %198, align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %197, i32 0, i32 1
  store i64 2, ptr %199, align 4
  %200 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %197, align 8
  %201 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %202 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 0
  store ptr null, ptr %202, align 8
  %203 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %201, i32 0, i32 1
  store i64 0, ptr %203, align 4
  %204 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %201, align 8
  %205 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 44)
  %206 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %200, ptr %205, i64 40, %"github.com/goplus/llgo/internal/runtime.String" %204, i1 false)
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr @2, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 4, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 280)
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %211, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %167, ptr %212, align 8
  %213 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %211, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %176, ptr %213, align 8
  %214 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %211, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %185, ptr %214, align 8
  %215 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %211, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %196, ptr %215, align 8
  %216 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %211, i64 4
  store %"github.com/goplus/llgo/internal/abi.StructField" %206, ptr %216, align 8
  %217 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %218 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 0
  store ptr %211, ptr %218, align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 1
  store i64 5, ptr %219, align 4
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, i32 0, i32 2
  store i64 5, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %217, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %210, i64 48, %"github.com/goplus/llgo/internal/runtime.Slice" %221)
  store ptr %222, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  %223 = load ptr, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @2, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 4, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %229 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 0
  store ptr @14, ptr %229, align 8
  %230 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %228, i32 0, i32 1
  store i64 8, ptr %230, align 4
  %231 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %228, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %227, %"github.com/goplus/llgo/internal/runtime.String" %231, ptr %223, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %232 = load ptr, ptr @_llgo_string, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %234 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %234, ptr @_llgo_string, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %235 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 0
  store ptr @0, ptr %236, align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %235, i32 0, i32 1
  store i64 13, ptr %237, align 4
  %238 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %235, align 8
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %238, i64 25, i64 48, i64 0, i64 0)
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 0
  store ptr @0, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 1
  store i64 13, ptr %242, align 4
  %243 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %240, align 8
  %244 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %243, i64 25, i64 48, i64 0, i64 0)
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %246 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 0
  store ptr @15, ptr %247, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 1
  store i64 7, ptr %248, align 4
  %249 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %246, align 8
  %250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 0
  store ptr null, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 1
  store i64 0, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %250, align 8
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %255 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %254)
  %256 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %249, ptr %255, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %253, i1 false)
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 0
  store ptr @16, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 1
  store i64 4, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %257, align 8
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr null, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 0, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %244)
  %266 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %260, ptr %265, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %264, i1 false)
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr @17, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 5, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %272 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 0
  store ptr null, ptr %272, align 8
  %273 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %271, i32 0, i32 1
  store i64 0, ptr %273, align 4
  %274 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %271, align 8
  %275 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %275)
  %277 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %270, ptr %276, i64 392, %"github.com/goplus/llgo/internal/runtime.String" %274, i1 false)
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 0
  store ptr @18, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 1
  store i64 8, ptr %280, align 4
  %281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %278, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr null, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 0, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %287 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %281, ptr %286, i64 520, %"github.com/goplus/llgo/internal/runtime.String" %285, i1 false)
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 0
  store ptr @2, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 1
  store i64 4, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %288, align 8
  %292 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %293 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %256, ptr %293, align 8
  %294 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %266, ptr %294, align 8
  %295 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %277, ptr %295, align 8
  %296 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %292, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %287, ptr %296, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 0
  store ptr %292, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 1
  store i64 4, ptr %299, align 4
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, i32 0, i32 2
  store i64 4, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %297, align 8
  %302 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %291, i64 528, %"github.com/goplus/llgo/internal/runtime.Slice" %301)
  %303 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %239, ptr %245, ptr %302, i64 24)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %303)
  store ptr %303, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
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

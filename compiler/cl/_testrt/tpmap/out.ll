; ModuleID = 'main'
source_filename = "main"

%main.cacheKey = type { i64, %main.T2, %"main.T3[any]", ptr, i64 }
%main.T2 = type { i64 }
%"main.T3[any]" = type { %"github.com/goplus/llgo/runtime/internal/runtime.eface" }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_main.cacheKey = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"main", align 1
@1 = private unnamed_addr constant [8 x i8] c"cacheKey", align 1
@_llgo_main.T1 = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [2 x i8] c"T1", align 1
@_llgo_int = linkonce global ptr null, align 8
@_llgo_main.T2 = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"T2", align 1
@"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"v", align 1
@"_llgo_main.T3[any]" = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [7 x i8] c"T3[any]", align 1
@_llgo_any = linkonce global ptr null, align 8
@"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo" = linkonce global ptr null, align 8
@"*_llgo_int" = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [2 x i8] c"t1", align 1
@7 = private unnamed_addr constant [2 x i8] c"t2", align 1
@8 = private unnamed_addr constant [2 x i8] c"t3", align 1
@9 = private unnamed_addr constant [2 x i8] c"t4", align 1
@10 = private unnamed_addr constant [2 x i8] c"t5", align 1
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_main.cacheKey]_llgo_string" = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@12 = private unnamed_addr constant [4 x i8] c"keys", align 1
@13 = private unnamed_addr constant [5 x i8] c"elems", align 1
@14 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@15 = private unnamed_addr constant [5 x i8] c"world", align 1

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
  %2 = load ptr, ptr @_llgo_main.cacheKey, align 8
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %4, i64 0)
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
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %11, align 8
  store ptr null, ptr %12, align 8
  store i64 0, ptr %13, align 4
  %17 = load %main.cacheKey, ptr %6, align 8
  %18 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %17, ptr %19, align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %18, ptr %5, ptr %19)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 5 }, ptr %20, align 8
  %21 = alloca %main.cacheKey, align 8
  call void @llvm.memset(ptr %21, i8 0, i64 48, i1 false)
  %22 = getelementptr inbounds %main.cacheKey, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds %main.cacheKey, ptr %21, i32 0, i32 1
  %24 = getelementptr inbounds %main.T2, ptr %23, i32 0, i32 0
  %25 = getelementptr inbounds %main.cacheKey, ptr %21, i32 0, i32 2
  %26 = getelementptr inbounds %"main.T3[any]", ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds %main.cacheKey, ptr %21, i32 0, i32 3
  %28 = getelementptr inbounds %main.cacheKey, ptr %21, i32 0, i32 4
  store i64 0, ptr %22, align 4
  store i64 0, ptr %24, align 4
  %29 = load ptr, ptr @_llgo_int, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr null, 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %26, align 8
  store ptr null, ptr %27, align 8
  store i64 0, ptr %28, align 4
  %32 = load %main.cacheKey, ptr %21, align 8
  %33 = load ptr, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  store %main.cacheKey %32, ptr %34, align 8
  %35 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %33, ptr %5, ptr %34)
  %36 = extractvalue { ptr, i1 } %35, 0
  %37 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %36, align 8
  %38 = extractvalue { ptr, i1 } %35, 1
  %39 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %37, 0
  %40 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %39, i1 %38, 1
  %41 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %40, 0
  %42 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %40, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %42)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  store ptr %0, ptr @_llgo_main.cacheKey, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, i64 2, i64 8, i64 0, i64 0)
  %2 = load ptr, ptr @_llgo_main.T1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %1, ptr @_llgo_main.T1, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %6, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %7 = load ptr, ptr @_llgo_int, align 8
  br i1 %3, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %1, ptr %7, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %8 = load ptr, ptr @_llgo_main.T1, align 8
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, i64 25, i64 8, i64 0, i64 0)
  %10 = load ptr, ptr @_llgo_main.T2, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %9, ptr @_llgo_main.T2, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %12, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %16, i64 1, 1
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 1, 2
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18)
  store ptr %19, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  %20 = load ptr, ptr @"main.struct$MYpsoM99ZwFY087IpUOkIw1zjBA_sgFXVodmn1m-G88", align 8
  br i1 %11, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %9, ptr %20, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %21 = load ptr, ptr @_llgo_main.T2, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, i64 25, i64 16, i64 0, i64 0)
  %23 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  store ptr %22, ptr @"_llgo_main.T3[any]", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %25 = load ptr, ptr @_llgo_any, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 0, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 0, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  store ptr %31, ptr @_llgo_any, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %32 = load ptr, ptr @_llgo_any, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %34, i64 0, 1
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %35, i64 0, 2
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36)
  %38 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %37, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 56)
  %40 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %39, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %38, ptr %40, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %39, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %41, i64 1, 1
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %42, i64 1, 2
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %43)
  store ptr %44, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  %45 = load ptr, ptr @"main.struct$op7q0963ur0ih9ul6OteH-C75UVydPxwKOVpX1hUjzo", align 8
  br i1 %24, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %22, ptr %45, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %46 = load ptr, ptr @"_llgo_main.T3[any]", align 8
  %47 = load ptr, ptr @"*_llgo_int", align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %50)
  store ptr %50, ptr @"*_llgo_int", align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %51 = load ptr, ptr @"*_llgo_int", align 8
  %52 = load ptr, ptr @_llgo_uintptr, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %54, ptr @_llgo_uintptr, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %55 = load ptr, ptr @_llgo_uintptr, align 8
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 2 }, i64 2, i64 8, i64 0, i64 0)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, i64 25, i64 8, i64 0, i64 0)
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 7 }, i64 25, i64 16, i64 0, i64 0)
  %59 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 2 }, ptr %56, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %60 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 2 }, ptr %57, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %61 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 2 }, ptr %58, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %62)
  %64 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %63, i64 32, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %65 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  %66 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 2 }, ptr %65, i64 40, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 280)
  %68 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %59, ptr %68, align 8
  %69 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %60, ptr %69, align 8
  %70 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %61, ptr %70, align 8
  %71 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %64, ptr %71, align 8
  %72 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %67, i64 4
  store %"github.com/goplus/llgo/runtime/abi.StructField" %66, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %67, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 5, 1
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 5, 2
  %76 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 48, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75)
  store ptr %76, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  %77 = load ptr, ptr @"main.struct$ZLgMjv1XBA1L4yXCpdouRvQF2okeuHQ-YWVTE34gq4I", align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %77, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %80 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %80, ptr @_llgo_string, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 8 }, i64 25, i64 48, i64 0, i64 0)
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %84)
  %86 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr %85, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %82)
  %88 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 4 }, ptr %87, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %89)
  %91 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 5 }, ptr %90, i64 392, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %93 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 8 }, ptr %92, i64 520, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %95 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %86, ptr %95, align 8
  %96 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %88, ptr %96, align 8
  %97 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %91, ptr %97, align 8
  %98 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %94, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %93, ptr %98, align 8
  %99 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %94, 0
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %99, i64 4, 1
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 4, 2
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, i64 528, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101)
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %81, ptr %83, ptr %102, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %103)
  store ptr %103, ptr @"map[_llgo_main.cacheKey]_llgo_string", align 8
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

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

; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"\09elem: ", align 1
@2 = private unnamed_addr constant [9 x i8] c"\09uncomm: ", align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_bool = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_int8 = linkonce global ptr null, align 8
@_llgo_int16 = linkonce global ptr null, align 8
@_llgo_int32 = linkonce global ptr null, align 8
@_llgo_int64 = linkonce global ptr null, align 8
@_llgo_uint = linkonce global ptr null, align 8
@_llgo_uint8 = linkonce global ptr null, align 8
@_llgo_uint16 = linkonce global ptr null, align 8
@_llgo_uint32 = linkonce global ptr null, align 8
@_llgo_uint64 = linkonce global ptr null, align 8
@_llgo_uintptr = linkonce global ptr null, align 8
@_llgo_float32 = linkonce global ptr null, align 8
@_llgo_float64 = linkonce global ptr null, align 8
@"[10]_llgo_int" = linkonce global ptr null, align 8
@"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac" = linkonce global ptr null, align 8
@_llgo_Pointer = linkonce global ptr null, align 8
@"main.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@5 = private unnamed_addr constant [4 x i8] c"main", align 1
@"*_llgo_int" = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = linkonce global ptr null, align 8
@"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [1 x i8] c"x", align 1
@8 = private unnamed_addr constant [1 x i8] c"y", align 1
@9 = private unnamed_addr constant [1 x i8] c"z", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"T", align 1
@11 = private unnamed_addr constant [6 x i8] c"Invoke", align 1

define void @"main.(*T).Invoke"(ptr %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.eface, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @main.dumpTyp(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  ret void
}

define void @main.dumpTyp(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %0)
  %3 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 1
  %7 = load i64, ptr %6, align 4
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %17 = zext i32 %9 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %18 = zext i8 %11 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %19 = zext i8 %13 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %20 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  %21 = icmp ne ptr %20, null
  br i1 %21, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %22 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  %23 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 })
  call void @main.dumpTyp(ptr %22, %"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %24 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %26 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 })
  call void @main.dumpUncommon(ptr %26, %"github.com/goplus/llgo/runtime/internal/runtime.String" %27)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %31 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %32)
  %34 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 })
  call void @main.dumpUncommon(ptr %33, %"github.com/goplus/llgo/runtime/internal/runtime.String" %34)
  br label %_llgo_4
}

define void @main.dumpUncommon(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %8 = zext i16 %5 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %9 = zext i16 %7 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
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
  %2 = load ptr, ptr @_llgo_bool, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr inttoptr (i64 -1 to ptr), 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %4)
  %5 = load ptr, ptr @_llgo_int, align 8
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %7)
  %8 = load ptr, ptr @_llgo_int8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %10)
  %11 = load ptr, ptr @_llgo_int16, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %13)
  %14 = load ptr, ptr @_llgo_int32, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %16)
  %17 = load ptr, ptr @_llgo_int64, align 8
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %17, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  %20 = load ptr, ptr @_llgo_uint, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %22)
  %23 = load ptr, ptr @_llgo_uint8, align 8
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %24, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %25)
  %26 = load ptr, ptr @_llgo_uint16, align 8
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %28)
  %29 = load ptr, ptr @_llgo_uint32, align 8
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %31)
  %32 = load ptr, ptr @_llgo_uint64, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %34)
  %35 = load ptr, ptr @_llgo_uintptr, align 8
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %35, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %36, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %37)
  %38 = load ptr, ptr @_llgo_float32, align 8
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %39, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %40)
  %41 = load ptr, ptr @_llgo_float64, align 8
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %41, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %43)
  %44 = load ptr, ptr @"[10]_llgo_int", align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %45, align 4
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %47)
  %48 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %49 = load ptr, ptr @_llgo_Pointer, align 8
  %50 = load ptr, ptr @"main.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.main.main$1", ptr null }, ptr %51, align 8
  %52 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %50, 0
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, ptr %51, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %53)
  %54 = load ptr, ptr @"*_llgo_int", align 8
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %54, 0
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %55, ptr null, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %56)
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %57, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, i64 0, 1
  %60 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %59, i64 0, 2
  %61 = load ptr, ptr @"[]_llgo_int", align 8
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %60, ptr %62, align 8
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %61, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, ptr %62, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %64)
  %65 = load ptr, ptr @_llgo_string, align 8
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %66, align 8
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %65, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %67, ptr %66, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %68)
  %69 = load ptr, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %70, align 4
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %70, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
  %73 = load ptr, ptr @_llgo_main.T, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %74, 1
  call void @main.dump(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %76)
  ret i32 0
}

define void @"main.main$1"() {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/abi.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %5, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @_llgo_int8, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %8, ptr @_llgo_int8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %9 = load ptr, ptr @_llgo_int16, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 36)
  store ptr %11, ptr @_llgo_int16, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %12 = load ptr, ptr @_llgo_int32, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %14, ptr @_llgo_int32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %15 = load ptr, ptr @_llgo_int64, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %17, ptr @_llgo_int64, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %18 = load ptr, ptr @_llgo_uint, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %20, ptr @_llgo_uint, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %21 = load ptr, ptr @_llgo_uint8, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %23, ptr @_llgo_uint8, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %24 = load ptr, ptr @_llgo_uint16, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %26, ptr @_llgo_uint16, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %27 = load ptr, ptr @_llgo_uint32, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %29, ptr @_llgo_uint32, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %30 = load ptr, ptr @_llgo_uint64, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  store ptr %32, ptr @_llgo_uint64, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %33 = load ptr, ptr @_llgo_uintptr, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 44)
  store ptr %35, ptr @_llgo_uintptr, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %36 = load ptr, ptr @_llgo_float32, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %38, ptr @_llgo_float32, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %39 = load ptr, ptr @_llgo_float64, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %41, ptr @_llgo_float64, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %42 = load ptr, ptr @"[10]_llgo_int", align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 10, ptr %44)
  store ptr %45, ptr @"[10]_llgo_int", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %46 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, i64 0, 1
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %50, i64 0, 2
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %52, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %53, i64 0, 1
  %55 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %54, i64 0, 2
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %56)
  store ptr %56, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %57 = load ptr, ptr @_llgo_Pointer, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %59)
  store ptr %59, ptr @_llgo_Pointer, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %60, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %61, i64 0, 1
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %62, i64 0, 2
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %64, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, i64 0, 1
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %66, i64 0, 2
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i1 false)
  %69 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %68, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %71 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %70, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %73 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %69, ptr %73, align 8
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %71, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, i64 2, 1
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %76, i64 2, 2
  %78 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77)
  store ptr %78, ptr @"main.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %79 = load ptr, ptr @"*_llgo_int", align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %81 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %81)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %82)
  store ptr %82, ptr @"*_llgo_int", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %83 = load ptr, ptr @"[]_llgo_int", align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %85 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %85)
  store ptr %86, ptr @"[]_llgo_int", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %87 = load ptr, ptr @_llgo_string, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %89 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %89, ptr @_llgo_string, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %91 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %90, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %93 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %92, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %95 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %94, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %96 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %97 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %96, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %91, ptr %97, align 8
  %98 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %96, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %93, ptr %98, align 8
  %99 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %96, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %95, ptr %99, align 8
  %100 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %96, 0
  %101 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %100, i64 3, 1
  %102 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %101, i64 3, 2
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %102)
  store ptr %103, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, i64 24, i64 16, i64 0, i64 1)
  %105 = load ptr, ptr @_llgo_main.T, align 8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %104, ptr @_llgo_main.T, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %107 = load ptr, ptr @_llgo_string, align 8
  br i1 %106, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %108 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %109 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %108, 1
  %110 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %109, ptr @"main.(*T).Invoke", 2
  %111 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %110, ptr @"main.(*T).Invoke", 3
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %113 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %112, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %111, ptr %113, align 8
  %114 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %112, 0
  %115 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %114, i64 1, 1
  %116 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %115, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %104, ptr %107, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %116)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce void @"__llgo_stub.main.main$1"(ptr %0) {
_llgo_0:
  tail call void @"main.main$1"()
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

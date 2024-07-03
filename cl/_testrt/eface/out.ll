; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.eface = type { ptr, ptr }
%"github.com/goplus/llgo/internal/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/internal/runtime.String", ptr }
%"github.com/goplus/llgo/internal/abi.UncommonType" = type { %"github.com/goplus/llgo/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/abi.Method" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, ptr, ptr }

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
@"*_llgo_int" = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = linkonce global ptr null, align 8
@"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"x", align 1
@5 = private unnamed_addr constant [1 x i8] c"y", align 1
@6 = private unnamed_addr constant [1 x i8] c"z", align 1
@7 = private unnamed_addr constant [4 x i8] c"main", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@8 = private unnamed_addr constant [6 x i8] c"Invoke", align 1
@9 = private unnamed_addr constant [1 x i8] c"T", align 1

define void @"main.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 0
  store ptr @0, ptr %2, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %1, i32 0, i32 1
  store i64 6, ptr %3, align 4
  %4 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %1, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %main.eface, ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 0, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  call void @main.dumpTyp(ptr %3, %"github.com/goplus/llgo/internal/runtime.String" %7)
  ret void
}

define void @main.dumpTyp(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %2 = call i64 @"github.com/goplus/llgo/internal/abi.(*Type).Kind"(ptr %0)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 0
  %4 = load i64, ptr %3, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 1
  %6 = load i64, ptr %5, align 4
  %7 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %16 = zext i32 %8 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %17 = zext i8 %10 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %17)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %18 = zext i8 %12 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %18)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %0)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %21 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr %0)
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @1, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 7, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %25)
  call void @main.dumpTyp(ptr %21, %"github.com/goplus/llgo/internal/runtime.String" %26)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  %28 = icmp ne ptr %27, null
  br i1 %28, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %29 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %0)
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr @2, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 9, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %33)
  call void @main.dumpUncommon(ptr %29, %"github.com/goplus/llgo/internal/runtime.String" %34)
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %36 = load ptr, ptr %35, align 8
  %37 = icmp ne ptr %36, null
  br i1 %37, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %0, i32 0, i32 10
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr %39)
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr @2, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 9, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String" %1, %"github.com/goplus/llgo/internal/runtime.String" %44)
  call void @main.dumpUncommon(ptr %40, %"github.com/goplus/llgo/internal/runtime.String" %45)
  br label %_llgo_4
}

define void @main.dumpUncommon(ptr %0, %"github.com/goplus/llgo/internal/runtime.String" %1) {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 0
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 1
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.UncommonType", ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %8 = zext i16 %5 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  %9 = zext i16 %7 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64 %9)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"github.com/goplus/llgo/internal/abi.init"()
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
  %2 = load ptr, ptr @_llgo_bool, align 8
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 1
  store ptr inttoptr (i64 -1 to ptr), ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %6)
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %11)
  %12 = load ptr, ptr @_llgo_int8, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 0
  store ptr %12, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, i32 0, i32 1
  store ptr null, ptr %15, align 8
  %16 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %13, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %16)
  %17 = load ptr, ptr @_llgo_int16, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %17, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr null, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %21)
  %22 = load ptr, ptr @_llgo_int32, align 8
  %23 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, i32 0, i32 1
  store ptr null, ptr %25, align 8
  %26 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %23, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %26)
  %27 = load ptr, ptr @_llgo_int64, align 8
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %27, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr null, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %31)
  %32 = load ptr, ptr @_llgo_uint, align 8
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 0
  store ptr %32, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 1
  store ptr null, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %36)
  %37 = load ptr, ptr @_llgo_uint8, align 8
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %37, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr null, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %41)
  %42 = load ptr, ptr @_llgo_uint16, align 8
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 0
  store ptr %42, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %43, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %46)
  %47 = load ptr, ptr @_llgo_uint32, align 8
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %47, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr null, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %51)
  %52 = load ptr, ptr @_llgo_uint64, align 8
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 0
  store ptr %52, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, i32 0, i32 1
  store ptr null, ptr %55, align 8
  %56 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %53, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %56)
  %57 = load ptr, ptr @_llgo_uintptr, align 8
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %57, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr null, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %61)
  %62 = load ptr, ptr @_llgo_float32, align 8
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 0
  store ptr %62, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 1
  store ptr null, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %66)
  %67 = load ptr, ptr @_llgo_float64, align 8
  %68 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  %70 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, i32 0, i32 1
  store ptr null, ptr %70, align 8
  %71 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %68, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %71)
  %72 = load ptr, ptr @_llgo_int, align 8
  %73 = load ptr, ptr @"[10]_llgo_int", align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %74, align 4
  %75 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %75, i32 0, i32 0
  store ptr %73, ptr %76, align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %75, i32 0, i32 1
  store ptr %74, ptr %77, align 8
  %78 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %75, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %78)
  %79 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %80 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, i32 0, i32 0
  store ptr %79, ptr %81, align 8
  %82 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, i32 0, i32 1
  store ptr @"main.main$1", ptr %82, align 8
  %83 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %80, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %83)
  %84 = load ptr, ptr @"*_llgo_int", align 8
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %85, i32 0, i32 0
  store ptr %84, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %85, i32 0, i32 1
  store ptr null, ptr %87, align 8
  %88 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %85, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %88)
  %89 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 0)
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 0
  store ptr %89, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 1
  store i64 0, ptr %92, align 4
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, i32 0, i32 2
  store i64 0, ptr %93, align 4
  %94 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %90, align 8
  %95 = load ptr, ptr @"[]_llgo_int", align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/internal/runtime.Slice" %94, ptr %96, align 8
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 0
  store ptr %95, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, i32 0, i32 1
  store ptr %96, ptr %99, align 8
  %100 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %97, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %100)
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @3, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 5, ptr %103, align 4
  %104 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %101, align 8
  %105 = load ptr, ptr @_llgo_string, align 8
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %104, ptr %106, align 8
  %107 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 0
  store ptr %105, ptr %108, align 8
  %109 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, i32 0, i32 1
  store ptr %106, ptr %109, align 8
  %110 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %107, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %110)
  %111 = load ptr, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %112 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %112, align 4
  %113 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %114 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 0
  store ptr %111, ptr %114, align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, i32 0, i32 1
  store ptr %112, ptr %115, align 8
  %116 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %113, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %116)
  %117 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 0
  store ptr null, ptr %118, align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %117, i32 0, i32 1
  store i64 0, ptr %119, align 4
  %120 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %117, align 8
  %121 = load ptr, ptr @_llgo_main.T, align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %120, ptr %122, align 8
  %123 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %123, i32 0, i32 0
  store ptr %121, ptr %124, align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %123, i32 0, i32 1
  store ptr %122, ptr %125, align 8
  %126 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %123, align 8
  call void @main.dump(%"github.com/goplus/llgo/internal/runtime.eface" %126)
  ret i32 0
}

define void @"main.main$1"() {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/internal/abi.(*Type).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/internal/abi.(*Type).Elem"(ptr)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringCat"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/abi.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 1)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %2, i32 0, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 32
  store i8 %5, ptr %3, align 1
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %8, i32 0, i32 6
  %10 = load i8, ptr %9, align 1
  %11 = or i8 %10, 32
  store i8 %11, ptr %9, align 1
  store ptr %8, ptr @_llgo_int, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %12 = load ptr, ptr @_llgo_int8, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = or i8 %16, 32
  store i8 %17, ptr %15, align 1
  store ptr %14, ptr @_llgo_int8, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %18 = load ptr, ptr @_llgo_int16, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 4)
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %20, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = or i8 %22, 32
  store i8 %23, ptr %21, align 1
  store ptr %20, ptr @_llgo_int16, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %24 = load ptr, ptr @_llgo_int32, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 5)
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %26, i32 0, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = or i8 %28, 32
  store i8 %29, ptr %27, align 1
  store ptr %26, ptr @_llgo_int32, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %30 = load ptr, ptr @_llgo_int64, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 6)
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %32, i32 0, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = or i8 %34, 32
  store i8 %35, ptr %33, align 1
  store ptr %32, ptr @_llgo_int64, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %36 = load ptr, ptr @_llgo_uint, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 7)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %38, i32 0, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %40, 32
  store i8 %41, ptr %39, align 1
  store ptr %38, ptr @_llgo_uint, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %42 = load ptr, ptr @_llgo_uint8, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 8)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %44, i32 0, i32 6
  %46 = load i8, ptr %45, align 1
  %47 = or i8 %46, 32
  store i8 %47, ptr %45, align 1
  store ptr %44, ptr @_llgo_uint8, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %48 = load ptr, ptr @_llgo_uint16, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 9)
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %50, i32 0, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 32
  store i8 %53, ptr %51, align 1
  store ptr %50, ptr @_llgo_uint16, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %54 = load ptr, ptr @_llgo_uint32, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 10)
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %56, i32 0, i32 6
  %58 = load i8, ptr %57, align 1
  %59 = or i8 %58, 32
  store i8 %59, ptr %57, align 1
  store ptr %56, ptr @_llgo_uint32, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %60 = load ptr, ptr @_llgo_uint64, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 11)
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %62, i32 0, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = or i8 %64, 32
  store i8 %65, ptr %63, align 1
  store ptr %62, ptr @_llgo_uint64, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %66 = load ptr, ptr @_llgo_uintptr, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 12)
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %68, i32 0, i32 6
  %70 = load i8, ptr %69, align 1
  %71 = or i8 %70, 32
  store i8 %71, ptr %69, align 1
  store ptr %68, ptr @_llgo_uintptr, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %72 = load ptr, ptr @_llgo_float32, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 13)
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %74, i32 0, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = or i8 %76, 32
  store i8 %77, ptr %75, align 1
  store ptr %74, ptr @_llgo_float32, align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %78 = load ptr, ptr @_llgo_float64, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %80 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 14)
  %81 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Type", ptr %80, i32 0, i32 6
  %82 = load i8, ptr %81, align 1
  %83 = or i8 %82, 32
  store i8 %83, ptr %81, align 1
  store ptr %80, ptr @_llgo_float64, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %84 = load ptr, ptr @"[10]_llgo_int", align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 10, ptr %86)
  store ptr %87, ptr @"[10]_llgo_int", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %88 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 0
  store ptr %90, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 1
  store i64 0, ptr %93, align 4
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, i32 0, i32 2
  store i64 0, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %91, align 8
  %96 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %97 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 0
  store ptr %96, ptr %98, align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 1
  store i64 0, ptr %99, align 4
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, i32 0, i32 2
  store i64 0, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %97, align 8
  %102 = call ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice" %95, %"github.com/goplus/llgo/internal/runtime.Slice" %101, i1 false)
  store ptr %102, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %103 = load ptr, ptr @"*_llgo_int", align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %106 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %105)
  store ptr %106, ptr @"*_llgo_int", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %107 = load ptr, ptr @"[]_llgo_int", align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %110 = call ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr %109)
  store ptr %110, ptr @"[]_llgo_int", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %111 = load ptr, ptr @_llgo_string, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %113 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %113, ptr @_llgo_string, align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @4, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 1, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr null, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 0, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 3)
  %123 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %117, ptr %122, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %121, i1 false)
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 0
  store ptr @5, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %124, i32 0, i32 1
  store i64 1, ptr %126, align 4
  %127 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %124, align 8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 0
  store ptr null, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 1
  store i64 0, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %128, align 8
  %132 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %133 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %127, ptr %132, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %131, i1 false)
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 0
  store ptr @6, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %134, i32 0, i32 1
  store i64 1, ptr %136, align 4
  %137 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %134, align 8
  %138 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 0
  store ptr null, ptr %139, align 8
  %140 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %138, i32 0, i32 1
  store i64 0, ptr %140, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %138, align 8
  %142 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 2)
  %143 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %137, ptr %142, i64 16, %"github.com/goplus/llgo/internal/runtime.String" %141, i1 false)
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @7, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 4, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 168)
  %149 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %148, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %123, ptr %149, align 8
  %150 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %148, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %133, ptr %150, align 8
  %151 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %148, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %143, ptr %151, align 8
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 0
  store ptr %148, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 1
  store i64 3, ptr %154, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 2
  store i64 3, ptr %155, align 4
  %156 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, align 8
  %157 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %147, i64 24, %"github.com/goplus/llgo/internal/runtime.Slice" %156)
  store ptr %157, ptr @"main.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %158 = load ptr, ptr @_llgo_main.T, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %160 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 24, i64 0, i64 1)
  store ptr %160, ptr @_llgo_main.T, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %161 = load ptr, ptr @_llgo_string, align 8
  br i1 %159, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr @8, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 6, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %167 = alloca %"github.com/goplus/llgo/internal/abi.Method", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %165, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 1
  store ptr %166, ptr %169, align 8
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 2
  store ptr @"main.(*T).Invoke", ptr %170, align 8
  %171 = getelementptr inbounds %"github.com/goplus/llgo/internal/abi.Method", ptr %167, i32 0, i32 3
  store ptr @"main.(*T).Invoke", ptr %171, align 8
  %172 = load %"github.com/goplus/llgo/internal/abi.Method", ptr %167, align 8
  %173 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 40)
  %174 = getelementptr %"github.com/goplus/llgo/internal/abi.Method", ptr %173, i64 0
  store %"github.com/goplus/llgo/internal/abi.Method" %172, ptr %174, align 8
  %175 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %176 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 0
  store ptr %173, ptr %176, align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 1
  store i64 1, ptr %177, align 4
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, i32 0, i32 2
  store i64 1, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %175, align 8
  %180 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %181 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 0
  store ptr @7, ptr %181, align 8
  %182 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %180, i32 0, i32 1
  store i64 4, ptr %182, align 4
  %183 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %180, align 8
  %184 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 0
  store ptr @9, ptr %185, align 8
  %186 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %184, i32 0, i32 1
  store i64 1, ptr %186, align 4
  %187 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %184, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %160, %"github.com/goplus/llgo/internal/runtime.String" %183, %"github.com/goplus/llgo/internal/runtime.String" %187, ptr %161, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/internal/runtime.Slice" %179)
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Func"(%"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

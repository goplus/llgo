; ModuleID = 'github.com/goplus/llgo/cl/_testrt/eface'
source_filename = "github.com/goplus/llgo/cl/_testrt/eface"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/eface.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/abi.Type" = type { i64, i64, i32, i8, i8, i8, i8, { ptr, ptr }, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr }
%"github.com/goplus/llgo/runtime/abi.UncommonType" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", i16, i16, i32 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/abi.Method" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/eface.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [6 x i8] c"invoke", align 1
@1 = private unnamed_addr constant [7 x i8] c"\09elem: ", align 1
@2 = private unnamed_addr constant [9 x i8] c"\09uncomm: ", align 1
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
@"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8" = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [2 x i8] c"$f", align 1
@4 = private unnamed_addr constant [5 x i8] c"$data", align 1
@5 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/eface", align 1
@"*_llgo_int" = linkonce global ptr null, align 8
@"[]_llgo_int" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_string = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM" = linkonce global ptr null, align 8
@7 = private unnamed_addr constant [1 x i8] c"x", align 1
@8 = private unnamed_addr constant [1 x i8] c"y", align 1
@9 = private unnamed_addr constant [1 x i8] c"z", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T" = linkonce global ptr null, align 8
@10 = private unnamed_addr constant [1 x i8] c"T", align 1
@11 = private unnamed_addr constant [6 x i8] c"Invoke", align 1

define void @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke"(ptr %0) {
_llgo_0:
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 }, ptr %1, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/eface.eface", ptr %1, i32 0, i32 0
  %4 = load ptr, ptr %3, align 8
  %5 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %5, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %4, ptr %5)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %3)
  %4 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  call void @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr %4, ptr %0)
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = call i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr %0)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 0
  %8 = load i64, ptr %7, align 4
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  %11 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, ptr %20, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %21 = zext i32 %12 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %22 = zext i8 %14 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %23 = zext i8 %16 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %26 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr %0)
  %27 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %28 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %29 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %27, ptr %29, align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 7 }, ptr %30, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %28, ptr %29, ptr %30)
  %31 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %28, align 8
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %31, ptr %32, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %26, ptr %32)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %33 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %34 = icmp ne ptr %33, null
  br i1 %34, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %35 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %36 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %37 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %38 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %36, ptr %38, align 8
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 }, ptr %39, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %37, ptr %38, ptr %39)
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, ptr %41, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %35, ptr %41)
  %42 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %_llgo_5, label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3, %_llgo_2
  ret void

_llgo_5:                                          ; preds = %_llgo_3
  %45 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.Type", ptr %0, i32 0, i32 10
  %46 = load ptr, ptr %45, align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %46)
  %48 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %49 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %50 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %48, ptr %50, align 8
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 }, ptr %51, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr %49, ptr %50, ptr %51)
  %52 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %49, align 8
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %52, ptr %53, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %47, ptr %53)
  br label %_llgo_4
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %0, ptr %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %3)
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 0
  %5 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %4, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/abi.UncommonType", ptr %0, i32 0, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %5, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %11 = zext i16 %7 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %12 = zext i16 %9 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  call void @"github.com/goplus/llgo/cl/_testrt/eface.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr inttoptr (i64 -1 to ptr), 1
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %3, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %3)
  %4 = load ptr, ptr @_llgo_int, align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr null, 1
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %7, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %7)
  %8 = load ptr, ptr @_llgo_int8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %8, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr null, 1
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr %11, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %11)
  %12 = load ptr, ptr @_llgo_int16, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr null, 1
  %15 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %15, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %15)
  %16 = load ptr, ptr @_llgo_int32, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr null, 1
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %19, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %19)
  %20 = load ptr, ptr @_llgo_int64, align 8
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %20, 0
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %21, ptr null, 1
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr %23, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %23)
  %24 = load ptr, ptr @_llgo_uint, align 8
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, ptr null, 1
  %27 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %27, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %27)
  %28 = load ptr, ptr @_llgo_uint8, align 8
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr null, 1
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr %31, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %31)
  %32 = load ptr, ptr @_llgo_uint16, align 8
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %32, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr null, 1
  %35 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %35, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %35)
  %36 = load ptr, ptr @_llgo_uint32, align 8
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr null, 1
  %39 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %39, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %39)
  %40 = load ptr, ptr @_llgo_uint64, align 8
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr null, 1
  %43 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %43, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %43)
  %44 = load ptr, ptr @_llgo_uintptr, align 8
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr null, 1
  %47 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %47, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %47)
  %48 = load ptr, ptr @_llgo_float32, align 8
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr null, 1
  %51 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %51, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %51)
  %52 = load ptr, ptr @_llgo_float64, align 8
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %52, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr null, 1
  %55 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %54, ptr %55, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %55)
  %56 = load ptr, ptr @"[10]_llgo_int", align 8
  %57 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %57, align 4
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %56, 0
  %59 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, ptr %57, 1
  %60 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, ptr %60, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %60)
  %61 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %62 = load ptr, ptr @_llgo_Pointer, align 8
  %63 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1", ptr null }, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %64, 1
  %67 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %66, ptr %67, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %67)
  %68 = load ptr, ptr @"*_llgo_int", align 8
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %68, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr null, 1
  %71 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %70, ptr %71, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %71)
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %73, i64 0, 1
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %74, i64 0, 2
  %76 = load ptr, ptr @"[]_llgo_int", align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %75, ptr %77, align 8
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %76, 0
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %78, ptr %77, 1
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %79, ptr %80, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %80)
  %81 = load ptr, ptr @_llgo_string, align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %82, align 8
  %83 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %81, 0
  %84 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %83, ptr %82, 1
  %85 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %84, ptr %85, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %85)
  %86 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %87 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %87, align 4
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %86, 0
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %88, ptr %87, 1
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %89, ptr %90, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %90)
  %91 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %92, align 8
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %91, 0
  %94 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, ptr %92, 1
  %95 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %94, ptr %95, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(ptr %95)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"() {
_llgo_0:
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/abi.(*Type).String"(ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/abi.(*Type).Kind"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Elem"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/abi.init"()

define void @"github.com/goplus/llgo/cl/_testrt/eface.init$after"() {
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
  %56 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %51, ptr %56, align 8
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, ptr %57, align 8
  %58 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %56, ptr %57, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %58)
  store ptr %58, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %59 = load ptr, ptr @_llgo_Pointer, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %61)
  store ptr %61, ptr @_llgo_Pointer, align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %63 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %62, 0
  %64 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %63, i64 0, 1
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %64, i64 0, 2
  %66 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %67 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %66, 0
  %68 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %67, i64 0, 1
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %68, i64 0, 2
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %65, ptr %70, align 8
  %71 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %69, ptr %71, align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr %70, ptr %71, i1 false)
  %73 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %74 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %74, align 8
  %75 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %75, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %73, ptr %74, ptr %72, i64 0, ptr %75, i1 false)
  %76 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %73, align 8
  %77 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %78 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %79 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %79, align 8
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %80, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %78, ptr %79, ptr %77, i64 8, ptr %80, i1 false)
  %81 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %78, align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %83 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %82, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %76, ptr %83, align 8
  %84 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %82, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %81, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %82, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %85, i64 2, 1
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %86, i64 2, 2
  %88 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, ptr %88, align 8
  %89 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, ptr %89, align 8
  %90 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %88, i64 16, ptr %89)
  store ptr %90, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %91 = load ptr, ptr @"*_llgo_int", align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %93 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %94 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %93)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %94)
  store ptr %94, ptr @"*_llgo_int", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %95 = load ptr, ptr @"[]_llgo_int", align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %97 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %98 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %97)
  store ptr %98, ptr @"[]_llgo_int", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %99 = load ptr, ptr @_llgo_string, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %101, ptr @_llgo_string, align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %103 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %104 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %104, align 8
  %105 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %105, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %103, ptr %104, ptr %102, i64 0, ptr %105, i1 false)
  %106 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %103, align 8
  %107 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %108 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %109 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %109, align 8
  %110 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %110, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %108, ptr %109, ptr %107, i64 8, ptr %110, i1 false)
  %111 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %108, align 8
  %112 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %113 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %114, align 8
  %115 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %115, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %113, ptr %114, ptr %112, i64 16, ptr %115, i1 false)
  %116 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %113, align 8
  %117 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %118 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %106, ptr %118, align 8
  %119 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %111, ptr %119, align 8
  %120 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %116, ptr %120, align 8
  %121 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %117, 0
  %122 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %121, i64 3, 1
  %123 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %122, i64 3, 2
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %123, ptr %125, align 8
  %126 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %124, i64 24, ptr %125)
  store ptr %126, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %127 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, ptr %127, align 8
  %128 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, ptr %128, align 8
  %129 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %127, ptr %128, i64 24, i64 16, i64 0, i64 1)
  %130 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  store ptr %129, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %132 = load ptr, ptr @_llgo_string, align 8
  br i1 %131, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %133 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %134 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %133, 1
  %135 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %134, ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke", 2
  %136 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %135, ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke", 3
  %137 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %138 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %137, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %136, ptr %138, align 8
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %137, 0
  %140 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, i64 1, 1
  %141 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %140, i64 1, 2
  %142 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %142, align 8
  %143 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %141, ptr %143, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %129, ptr %132, ptr %142, ptr %143)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"()
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(ptr, ptr, i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

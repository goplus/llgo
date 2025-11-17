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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 6 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %0) {
_llgo_0:
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %0, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/eface.eface", ptr %1, i32 0, i32 0
  %3 = load ptr, ptr %2, align 8
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %3, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
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
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpTyp"(ptr %22, %"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %24 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %26 = call ptr @"github.com/goplus/llgo/runtime/abi.(*Type).Uncommon"(ptr %0)
  %27 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringCat"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %1, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 9 })
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %26, %"github.com/goplus/llgo/runtime/internal/runtime.String" %27)
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
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %33, %"github.com/goplus/llgo/runtime/internal/runtime.String" %34)
  br label %_llgo_4
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.dumpUncommon"(ptr %0, %"github.com/goplus/llgo/runtime/internal/runtime.String" %1) {
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

define void @"github.com/goplus/llgo/cl/_testrt/eface.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/eface.init$guard", align 1
  call void @"github.com/goplus/llgo/runtime/abi.init"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main"() {
_llgo_0:
  %0 = call ptr @__llgo_load__llgo_bool()
  %1 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %1, ptr inttoptr (i64 -1 to ptr), 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %2)
  %3 = call ptr @__llgo_load__llgo_int()
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %3, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %5)
  %6 = call ptr @__llgo_load__llgo_int8()
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8)
  %9 = call ptr @__llgo_load__llgo_int16()
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %9, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %10, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %11)
  %12 = call ptr @__llgo_load__llgo_int32()
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %13, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %14)
  %15 = call ptr @__llgo_load__llgo_int64()
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %15, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  %18 = call ptr @__llgo_load__llgo_uint()
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %20)
  %21 = call ptr @__llgo_load__llgo_uint8()
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %21, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %22, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %23)
  %24 = call ptr @__llgo_load__llgo_uint16()
  %25 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %24, 0
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %25, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %26)
  %27 = call ptr @__llgo_load__llgo_uint32()
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %29)
  %30 = call ptr @__llgo_load__llgo_uint64()
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %30, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %32)
  %33 = call ptr @__llgo_load__llgo_uintptr()
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %33, 0
  %35 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %35)
  %36 = call ptr @__llgo_load__llgo_float32()
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %36, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %38)
  %39 = call ptr @__llgo_load__llgo_float64()
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %39, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %41)
  %42 = call ptr @"__llgo_load_[10]_llgo_int"()
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 80)
  store [10 x i64] zeroinitializer, ptr %43, align 4
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %45)
  %46 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %47 = call ptr @__llgo_load__llgo_Pointer()
  %48 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"()
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1", ptr null }, ptr %49, align 8
  %50 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %48, 0
  %51 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %50, ptr %49, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %51)
  %52 = call ptr @"__llgo_load_*_llgo_int"()
  %53 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %52, 0
  %54 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, ptr null, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %54)
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 0)
  %56 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %55, 0
  %57 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %56, i64 0, 1
  %58 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %57, i64 0, 2
  %59 = call ptr @"__llgo_load_[]_llgo_int"()
  %60 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %58, ptr %60, align 8
  %61 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %59, 0
  %62 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %61, ptr %60, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %62)
  %63 = call ptr @__llgo_load__llgo_string()
  %64 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %64, align 8
  %65 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %63, 0
  %66 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, ptr %64, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %66)
  %67 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM"()
  %68 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 24)
  store { i8, i64, i64 } zeroinitializer, ptr %68, align 4
  %69 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %67, 0
  %70 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %69, ptr %68, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %70)
  %71 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/eface.T"()
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %72, align 8
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %71, 0
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %73, ptr %72, 1
  call void @"github.com/goplus/llgo/cl/_testrt/eface.dump"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %74)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"() {
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

define linkonce ptr @__llgo_load__llgo_bool() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_bool, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 33)
  store ptr %2, ptr @_llgo_bool, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_bool, align 8
  ret ptr %3
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

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

define linkonce ptr @__llgo_load__llgo_int8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %2, ptr @_llgo_int8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int8, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_int16() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int16, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 36)
  store ptr %2, ptr @_llgo_int16, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int16, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_int32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 37)
  store ptr %2, ptr @_llgo_int32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int32, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_int64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 38)
  store ptr %2, ptr @_llgo_int64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_int64, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_uint() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 39)
  store ptr %2, ptr @_llgo_uint, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_uint8() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint8, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  store ptr %2, ptr @_llgo_uint8, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint8, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_uint16() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint16, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 41)
  store ptr %2, ptr @_llgo_uint16, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint16, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_uint32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 42)
  store ptr %2, ptr @_llgo_uint32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint32, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_uint64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_uint64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 43)
  store ptr %2, ptr @_llgo_uint64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_uint64, align 8
  ret ptr %3
}

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

define linkonce ptr @__llgo_load__llgo_float32() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float32, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 45)
  store ptr %2, ptr @_llgo_float32, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float32, align 8
  ret ptr %3
}

define linkonce ptr @__llgo_load__llgo_float64() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_float64, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 46)
  store ptr %2, ptr @_llgo_float64, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_float64, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_[10]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"[10]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 10, ptr %2)
  store ptr %3, ptr @"[10]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[10]_llgo_int", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testrt/eface.main$1"(ptr %0) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testrt/eface.main$1"()
  ret void
}

define linkonce ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %10)
  store ptr %10, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %11 = load ptr, ptr @"_llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac", align 8
  ret ptr %11
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice", i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

define linkonce ptr @__llgo_load__llgo_Pointer() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_Pointer, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @_llgo_Pointer, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_Pointer, align 8
  ret ptr %3
}

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 0, 1
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 0, 2
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Func"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i1 false)
  %11 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 2 }, ptr %10, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %13 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 5 }, ptr %12, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %15 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %11, ptr %15, align 8
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %14, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %13, ptr %16, align 8
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %14, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, i64 2, 1
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %18, i64 2, 2
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %19)
  store ptr %20, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %21 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$b7Su1hWaFih-M0M9hMk6nO_RD1K_GQu5WjIXQp6Q2e8", align 8
  ret ptr %21
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

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

define linkonce ptr @"__llgo_load_[]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"[]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr %2)
  store ptr %3, ptr @"[]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[]_llgo_int", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SliceOf"(ptr)

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

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 1 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %4, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 1 }, ptr %6, i64 16, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 168)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %9, align 8
  %10 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %10, align 8
  %11 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %8, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %11, align 8
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 3, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, i64 24, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  store ptr %15, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %16 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/eface.struct$RKbUG45GE4henGMAdmt0Rju0JptyR8NsX7IZLsOI0OM", align 8
  ret ptr %16
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/eface.T"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 39 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 1 }, i64 24, i64 16, i64 0, i64 1)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  %3 = call ptr @__llgo_load__llgo_string()
  %4 = call ptr @"__llgo_load__llgo_func$2_iS07vIlF2_rZqWB5eU0IvP_9HviM4MYZNkXZDvbac"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" { %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 6 }, ptr undef, ptr undef, ptr undef }, ptr %4, 1
  %6 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %5, ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke", 2
  %7 = insertvalue %"github.com/goplus/llgo/runtime/abi.Method" %6, ptr @"github.com/goplus/llgo/cl/_testrt/eface.(*T).Invoke", 3
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %9 = getelementptr %"github.com/goplus/llgo/runtime/abi.Method", ptr %8, i64 0
  store %"github.com/goplus/llgo/runtime/abi.Method" %7, ptr %9, align 8
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %8, 0
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 1, 1
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, i64 1, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/eface.T", align 8
  ret ptr %13
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

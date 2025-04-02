; ModuleID = 'github.com/goplus/llgo/cl/_testrt/len'
source_filename = "github.com/goplus/llgo/cl/_testrt/len"

%"github.com/goplus/llgo/cl/_testrt/len.data" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }

@"github.com/goplus/llgo/cl/_testrt/len.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [37 x i8] c"github.com/goplus/llgo/cl/_testrt/len", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1

define void @"github.com/goplus/llgo/cl/_testrt/len.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/len.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/len.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/len.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/len.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 0
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %1, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %2, 1
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %5)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %8)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 3
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %10, align 8
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11, 1
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %14)
  %16 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %0, i32 0, i32 3
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %16, align 8
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %17, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 56)
  %20 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 0
  %21 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 2)
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 2
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = load ptr, ptr @_llgo_string, align 8
  %26 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %26, i64 1)
  %28 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %29, align 4
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %28, ptr %27, ptr %29)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %30, align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %33 = getelementptr inbounds i64, ptr %32, i64 0
  store i64 1, ptr %33, align 4
  %34 = getelementptr inbounds i64, ptr %32, i64 1
  store i64 2, ptr %34, align 4
  %35 = getelementptr inbounds i64, ptr %32, i64 2
  store i64 3, ptr %35, align 4
  %36 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %32, 0
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %36, i64 3, 1
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %37, i64 3, 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %20, align 8
  store ptr %22, ptr %21, align 8
  store ptr %27, ptr %23, align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, ptr %31, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 0
  %40 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %39, align 8
  %41 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.String" %40, 1
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr %43)
  %45 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %46)
  %48 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %49 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %48, align 8
  %50 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %49, 1
  %51 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr %52)
  %54 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/len.data", ptr %19, i32 0, i32 3
  %55 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %54, align 8
  %56 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %55, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.ChanCap"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

define void @"github.com/goplus/llgo/cl/_testrt/len.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %11, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %13)
  %15 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %14, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %16)
  %18 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %17, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %19, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %22 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %22, align 8
  %23 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %23, align 8
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %18, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %21, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %25, align 8
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %21, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %26, i64 4, 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %27, i64 4, 2
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 37 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28)
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %29, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %30)
  store ptr %30, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

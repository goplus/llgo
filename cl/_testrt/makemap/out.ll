; ModuleID = 'github.com/goplus/llgo/cl/_testrt/makemap'
source_filename = "github.com/goplus/llgo/cl/_testrt/makemap"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/cl/_testrt/makemap.N" = type { i8, i8 }
%"github.com/goplus/llgo/runtime/abi.StructField" = type { %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/makemap.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [41 x i8] c"github.com/goplus/llgo/cl/_testrt/makemap", align 1
@5 = private unnamed_addr constant [5 x i8] c"hello", align 1
@6 = private unnamed_addr constant [5 x i8] c"world", align 1
@7 = private unnamed_addr constant [4 x i8] c"llgo", align 1
@8 = private unnamed_addr constant [1 x i8] c":", align 1
@"map[_llgo_string]_llgo_int" = linkonce global ptr null, align 8
@9 = private unnamed_addr constant [2 x i8] c"go", align 1
@10 = private unnamed_addr constant [7 x i8] c"bad key", align 1
@11 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@_llgo_any = linkonce global ptr null, align 8
@"map[_llgo_any]_llgo_int" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [2 x i8] c"N1", align 1
@"[1]_llgo_int" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [81 x i8] c"type assertion interface{} -> github.com/goplus/llgo/cl/_testrt/makemap.N1 failed", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [1 x i8] c"K", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [1 x i8] c"N", align 1
@_llgo_int8 = linkonce global ptr null, align 8
@"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A" = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [2 x i8] c"n1", align 1
@17 = private unnamed_addr constant [2 x i8] c"n2", align 1
@"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [80 x i8] c"type assertion interface{} -> github.com/goplus/llgo/cl/_testrt/makemap.K failed", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [2 x i8] c"K2", align 1
@"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = linkonce global ptr null, align 8
@"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N" = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [81 x i8] c"type assertion interface{} -> github.com/goplus/llgo/cl/_testrt/makemap.K2 failed", align 1
@"chan _llgo_int" = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [4 x i8] c"chan", align 1
@"map[chan _llgo_int]_llgo_int" = linkonce global ptr null, align 8
@"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [1 x i8] c"M", align 1
@"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string" = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testrt/makemap.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"()
  call void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make1"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %4, ptr %3, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %6, align 8
  %7 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %7, ptr %3, ptr %8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %9, align 8
  %10 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %10, ptr %3, ptr %11)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %12, align 8
  %13 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %13, ptr %3, ptr %14)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %18, align 4
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %17, ptr %3, ptr %18)
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %21 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %22 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, ptr %22, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %23 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %20, ptr %23, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %24 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %24, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %26 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %26, ptr %25)
  %27 = load { i1, ptr, ptr }, ptr %26, align 8
  %28 = extractvalue { i1, ptr, ptr } %27, 0
  br i1 %28, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %29 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %101, 1
  %30 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %101, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %29)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 }, ptr %31, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %31)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %32 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %30, ptr %32, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %33 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %3)
  %34 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %34, i64 %33)
  %36 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %36, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %38 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %38, ptr %37)
  %39 = load { i1, ptr, ptr }, ptr %38, align 8
  %40 = extractvalue { i1, ptr, ptr } %39, 0
  br i1 %40, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %41 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %109, 1
  %42 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %109, 2
  %43 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %42, ptr %44, align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %43, ptr %35, ptr %44)
  store i64 %41, ptr %45, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %46 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %47, align 8
  %48 = alloca { ptr, i1 }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %48, ptr %46, ptr %35, ptr %47)
  %49 = load { ptr, i1 }, ptr %48, align 8
  %50 = extractvalue { ptr, i1 } %49, 0
  %51 = load i64, ptr %50, align 4
  %52 = extractvalue { ptr, i1 } %49, 1
  %53 = insertvalue { i64, i1 } undef, i64 %51, 0
  %54 = insertvalue { i64, i1 } %53, i1 %52, 1
  %55 = extractvalue { i64, i1 } %54, 0
  %56 = extractvalue { i64, i1 } %54, 1
  %57 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %57, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %55)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %56)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %58 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %59 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %59, align 8
  %60 = alloca { ptr, i1 }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %60, ptr %58, ptr %35, ptr %59)
  %61 = load { ptr, i1 }, ptr %60, align 8
  %62 = extractvalue { ptr, i1 } %61, 0
  %63 = load i64, ptr %62, align 4
  %64 = extractvalue { ptr, i1 } %61, 1
  %65 = insertvalue { i64, i1 } undef, i64 %63, 0
  %66 = insertvalue { i64, i1 } %65, i1 %64, 1
  %67 = extractvalue { i64, i1 } %66, 0
  %68 = extractvalue { i64, i1 } %66, 1
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %69, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %67)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %70 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %71, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr %70, ptr %35, ptr %71)
  %72 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %73, align 8
  %74 = alloca { ptr, i1 }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %74, ptr %72, ptr %35, ptr %73)
  %75 = load { ptr, i1 }, ptr %74, align 8
  %76 = extractvalue { ptr, i1 } %75, 0
  %77 = load i64, ptr %76, align 4
  %78 = extractvalue { ptr, i1 } %75, 1
  %79 = insertvalue { i64, i1 } undef, i64 %77, 0
  %80 = insertvalue { i64, i1 } %79, i1 %78, 1
  %81 = extractvalue { i64, i1 } %80, 0
  %82 = extractvalue { i64, i1 } %80, 1
  br i1 %82, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %83 = load ptr, ptr @_llgo_string, align 8
  %84 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr %84, align 8
  %85 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %83, 0
  %86 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %85, ptr %84, 1
  %87 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %86, ptr %87, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %87)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %88 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %35)
  %89 = icmp ne i64 %88, 2
  br i1 %89, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %90 = load ptr, ptr @_llgo_string, align 8
  %91 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr %91, align 8
  %92 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %90, 0
  %93 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %92, ptr %91, 1
  %94 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %93, ptr %94, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %94)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %95 = extractvalue { i1, ptr, ptr } %27, 1
  %96 = extractvalue { i1, ptr, ptr } %27, 2
  %97 = load i64, ptr %95, align 4
  %98 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %96, align 8
  %99 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %97, 1
  %100 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %99, %"github.com/goplus/llgo/runtime/internal/runtime.String" %98, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %101 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %100, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %102 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %101, 0
  br i1 %102, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %103 = extractvalue { i1, ptr, ptr } %39, 1
  %104 = extractvalue { i1, ptr, ptr } %39, 2
  %105 = load i64, ptr %103, align 4
  %106 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %104, align 8
  %107 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %105, 1
  %108 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %107, %"github.com/goplus/llgo/runtime/internal/runtime.String" %106, 2
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %109 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %108, %_llgo_14 ], [ zeroinitializer, %_llgo_15 ]
  %110 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %109, 0
  br i1 %110, label %_llgo_5, label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %1)
  %3 = icmp eq ptr %1, null
  %4 = icmp ne ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %6 = load ptr, ptr @_llgo_any, align 8
  %7 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %7, i64 0)
  %9 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store i64 1, ptr %10, align 4
  %11 = load [1 x i64], ptr %9, align 4
  %12 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %13 = extractvalue [1 x i64] %11, 0
  %14 = inttoptr i64 %13 to ptr
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  %17 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %17, ptr %8, ptr %18)
  store i64 100, ptr %19, align 4
  %20 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %20, i8 0, i64 8, i1 false)
  %21 = getelementptr inbounds i64, ptr %20, i64 0
  store i64 2, ptr %21, align 4
  %22 = load [1 x i64], ptr %20, align 4
  %23 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %24 = extractvalue [1 x i64] %22, 0
  %25 = inttoptr i64 %24 to ptr
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  %28 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %29, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %28, ptr %8, ptr %29)
  store i64 200, ptr %30, align 4
  %31 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %31, i8 0, i64 8, i1 false)
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 3, ptr %32, align 4
  %33 = load [1 x i64], ptr %31, align 4
  %34 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %35 = extractvalue [1 x i64] %33, 0
  %36 = inttoptr i64 %35 to ptr
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  %39 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %39, ptr %8, ptr %40)
  store i64 300, ptr %41, align 4
  %42 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %42, i8 0, i64 8, i1 false)
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 2, ptr %43, align 4
  %44 = load [1 x i64], ptr %42, align 4
  %45 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %46 = extractvalue [1 x i64] %44, 0
  %47 = inttoptr i64 %46 to ptr
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %45, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  %50 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %51, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %50, ptr %8, ptr %51)
  store i64 -200, ptr %52, align 4
  %53 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %53, ptr %8)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %55 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %55, ptr %54)
  %56 = load { i1, ptr, ptr }, ptr %55, align 8
  %57 = extractvalue { i1, ptr, ptr } %56, 0
  br i1 %57, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %58 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %69, 1
  %59 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %69, 2
  %60 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, 0
  %61 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %62 = icmp eq ptr %60, %61
  br i1 %62, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %63 = extractvalue { i1, ptr, ptr } %56, 1
  %64 = extractvalue { i1, ptr, ptr } %56, 2
  %65 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %63, align 8
  %66 = load i64, ptr %64, align 4
  %67 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %65, 1
  %68 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %67, i64 %66, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %69 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %68, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %70 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %69, 0
  br i1 %70, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %71 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %58, 1
  %72 = ptrtoint ptr %71 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %73 = load ptr, ptr @_llgo_string, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 81 }, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %74, 1
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %77, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %77)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make3"() {
_llgo_0:
  %0 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 2, i1 false)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %0, i64 0
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %1, i32 0, i32 1
  store i8 1, ptr %2, align 1
  store i8 2, ptr %3, align 1
  %4 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %0, align 1
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %4, ptr %6, align 1
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr %6, 1
  %9 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %9, i8 0, i64 2, i1 false)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %9, i64 0
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %10, i32 0, i32 1
  store i8 1, ptr %11, align 1
  store i8 2, ptr %12, align 1
  %13 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %9, align 1
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %13, ptr %15, align 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %18, align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17, ptr %19, align 8
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %18, ptr %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %21, i64 0)
  %23 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %23, i8 0, i64 2, i1 false)
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %23, i64 0
  %25 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %24, i32 0, i32 1
  store i8 1, ptr %25, align 1
  store i8 2, ptr %26, align 1
  %27 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %23, align 1
  %28 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %27, ptr %29, align 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, ptr %29, 1
  %32 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %33, align 8
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %32, ptr %22, ptr %33)
  store i64 100, ptr %34, align 4
  %35 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %35, i8 0, i64 2, i1 false)
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %35, i64 0
  %37 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %36, i32 0, i32 0
  %38 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %36, i32 0, i32 1
  store i8 3, ptr %37, align 1
  store i8 4, ptr %38, align 1
  %39 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %35, align 1
  %40 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %39, ptr %41, align 1
  %42 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %40, 0
  %43 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %42, ptr %41, 1
  %44 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %45 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %43, ptr %45, align 8
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %44, ptr %22, ptr %45)
  store i64 200, ptr %46, align 4
  %47 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %47, ptr %22)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %49 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %49, ptr %48)
  %50 = load { i1, ptr, ptr }, ptr %49, align 8
  %51 = extractvalue { i1, ptr, ptr } %50, 0
  br i1 %51, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %52 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 1
  %53 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 2
  %54 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, 0
  %55 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %57 = extractvalue { i1, ptr, ptr } %50, 1
  %58 = extractvalue { i1, ptr, ptr } %50, 2
  %59 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %57, align 8
  %60 = load i64, ptr %58, align 4
  %61 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %59, 1
  %62 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %61, i64 %60, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %63 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %62, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %64 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %63, 0
  br i1 %64, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %65 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %52, 1
  %66 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %65, align 1
  %67 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %67, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %66, ptr %67, align 1
  %68 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %67, i64 0
  %69 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %68, align 1
  %70 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %69, 0
  %71 = sext i8 %70 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %53)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %72 = load ptr, ptr @_llgo_string, align 8
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 80 }, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %72, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %73, 1
  %76 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %76, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %76)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make4"() {
_llgo_0:
  %0 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds ptr, ptr %0, i64 0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %2, i32 0, i32 1
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store ptr %2, ptr %1, align 8
  %5 = load [1 x ptr], ptr %0, align 8
  %6 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %7 = extractvalue [1 x ptr] %5, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %7, 1
  %10 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %10, i8 0, i64 8, i1 false)
  %11 = getelementptr inbounds ptr, ptr %10, i64 0
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %13 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %12, i32 0, i32 1
  store i8 1, ptr %13, align 1
  store i8 2, ptr %14, align 1
  store ptr %12, ptr %11, align 8
  %15 = load [1 x ptr], ptr %10, align 8
  %16 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %17 = extractvalue [1 x ptr] %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, ptr %20, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19, ptr %21, align 8
  %22 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %20, ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %23, i64 0)
  %25 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %25, i8 0, i64 8, i1 false)
  %26 = getelementptr inbounds ptr, ptr %25, i64 0
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %28 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %27, i32 0, i32 1
  store i8 1, ptr %28, align 1
  store i8 2, ptr %29, align 1
  store ptr %27, ptr %26, align 8
  %30 = load [1 x ptr], ptr %25, align 8
  %31 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %32 = extractvalue [1 x ptr] %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %31, 0
  %34 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, ptr %32, 1
  %35 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %36 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %34, ptr %36, align 8
  %37 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %35, ptr %24, ptr %36)
  store i64 100, ptr %37, align 4
  %38 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %38, i8 0, i64 8, i1 false)
  %39 = getelementptr inbounds ptr, ptr %38, i64 0
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %41 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %40, i32 0, i32 1
  store i8 3, ptr %41, align 1
  store i8 4, ptr %42, align 1
  store ptr %40, ptr %39, align 8
  %43 = load [1 x ptr], ptr %38, align 8
  %44 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %45 = extractvalue [1 x ptr] %43, 0
  %46 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %44, 0
  %47 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %46, ptr %45, 1
  %48 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %47, ptr %49, align 8
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %48, ptr %24, ptr %49)
  store i64 200, ptr %50, align 4
  %51 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %51, ptr %24)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %53 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %53, ptr %52)
  %54 = load { i1, ptr, ptr }, ptr %53, align 8
  %55 = extractvalue { i1, ptr, ptr } %54, 0
  br i1 %55, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %56 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %67, 1
  %57 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %67, 2
  %58 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 0
  %59 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %61 = extractvalue { i1, ptr, ptr } %54, 1
  %62 = extractvalue { i1, ptr, ptr } %54, 2
  %63 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %61, align 8
  %64 = load i64, ptr %62, align 4
  %65 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %63, 1
  %66 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %65, i64 %64, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %67 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %66, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %68 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %67, 0
  br i1 %68, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %69 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 1
  %70 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %69, i32 0, i32 0
  %71 = load i8, ptr %70, align 1
  %72 = sext i8 %71 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %72)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %57)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %73 = load ptr, ptr @_llgo_string, align 8
  %74 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 81 }, ptr %74, align 8
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %73, 0
  %76 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %75, ptr %74, 1
  %77 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %76, ptr %77, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %77)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = load ptr, ptr @"chan _llgo_int", align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %0, 1
  %4 = load ptr, ptr @"chan _llgo_int", align 8
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %0, 1
  %7 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6, ptr %8, align 8
  %9 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr %7, ptr %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = load ptr, ptr @"chan _llgo_int", align 8
  %11 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %11, i64 0)
  %13 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %14, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %13, ptr %12, ptr %14)
  store i64 100, ptr %15, align 4
  %16 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %17, align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %16, ptr %12, ptr %17)
  store i64 200, ptr %18, align 4
  %19 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %19, ptr %12)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %21 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %21, ptr %20)
  %22 = load { i1, ptr, ptr }, ptr %21, align 8
  %23 = extractvalue { i1, ptr, ptr } %22, 0
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %24 = extractvalue { i1, ptr, i64 } %32, 1
  %25 = extractvalue { i1, ptr, i64 } %32, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %26 = extractvalue { i1, ptr, ptr } %22, 1
  %27 = extractvalue { i1, ptr, ptr } %22, 2
  %28 = load ptr, ptr %26, align 8
  %29 = load i64, ptr %27, align 4
  %30 = insertvalue { i1, ptr, i64 } { i1 true, ptr undef, i64 undef }, ptr %28, 1
  %31 = insertvalue { i1, ptr, i64 } %30, i64 %29, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %32 = phi { i1, ptr, i64 } [ %31, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %33 = extractvalue { i1, ptr, i64 } %32, 0
  br i1 %33, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %2, ptr %1, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %4, align 8
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %5, ptr %1)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %7, ptr %6)
  %8 = load { i1, ptr, ptr }, ptr %7, align 8
  %9 = extractvalue { i1, ptr, ptr } %8, 0
  br i1 %9, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %10 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 1
  %11 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %11, ptr %12, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %13 = extractvalue { i1, ptr, ptr } %8, 1
  %14 = extractvalue { i1, ptr, ptr } %8, 2
  %15 = load i64, ptr %13, align 4
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %14, align 8
  %17 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %15, 1
  %18 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %17, %"github.com/goplus/llgo/runtime/internal/runtime.String" %16, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %18, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %20 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %19, 0
  br i1 %20, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %1 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %1, i64 2)
  %3 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %3, ptr %2, ptr %4)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %5, align 8
  %6 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %6, ptr %2, ptr %7)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %8, align 8
  %9 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %9, ptr %2)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = alloca { i1, ptr, ptr }, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %11, ptr %10)
  %12 = load { i1, ptr, ptr }, ptr %11, align 8
  %13 = extractvalue { i1, ptr, ptr } %12, 0
  br i1 %13, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %14 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %28, 1
  %15 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %28, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  %16 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %15, ptr %16, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %17 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %18, align 4
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %17, ptr %2, ptr %18)
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %21 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %20, ptr %21, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %22 = extractvalue { i1, ptr, ptr } %12, 1
  %23 = extractvalue { i1, ptr, ptr } %12, 2
  %24 = load i64, ptr %22, align 4
  %25 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %23, align 8
  %26 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %24, 1
  %27 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %26, %"github.com/goplus/llgo/runtime/internal/runtime.String" %25, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %28 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %27, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %29 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %28, 0
  br i1 %29, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.init$after"() {
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
  %12 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %13 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %13, align 8
  %14 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %14, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %12, ptr %13, ptr %11, i64 0, ptr %14, i1 false)
  %15 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %12, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %16)
  %18 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %19 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %19, align 8
  %20 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %20, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %18, ptr %19, ptr %17, i64 8, ptr %20, i1 false)
  %21 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %18, align 8
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %22)
  %24 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %26, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %24, ptr %25, ptr %23, i64 72, ptr %26, i1 false)
  %27 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %24, align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %29 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %30 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %30, align 8
  %31 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %31, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %29, ptr %30, ptr %28, i64 200, ptr %31, i1 false)
  %32 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %29, align 8
  %33 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %34 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %33, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %15, ptr %34, align 8
  %35 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %33, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %21, ptr %35, align 8
  %36 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %33, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %27, ptr %36, align 8
  %37 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %33, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %32, ptr %37, align 8
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %33, 0
  %39 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %38, i64 4, 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %39, i64 4, 2
  %41 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %41, align 8
  %42 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %40, ptr %42, align 8
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %41, i64 208, ptr %42)
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %43, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %44)
  store ptr %44, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %45 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %49 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %49)
  %51 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %52 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %52, align 8
  %53 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %53, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %51, ptr %52, ptr %50, i64 0, ptr %53, i1 false)
  %54 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %51, align 8
  %55 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %56 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %55)
  %57 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %58 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %58, align 8
  %59 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %59, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %57, ptr %58, ptr %56, i64 8, ptr %59, i1 false)
  %60 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %57, align 8
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %62 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %61)
  %63 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %64 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %64, align 8
  %65 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %65, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %63, ptr %64, ptr %62, i64 136, ptr %65, i1 false)
  %66 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %63, align 8
  %67 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %68 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %69 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %69, align 8
  %70 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %70, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %68, ptr %69, ptr %67, i64 200, ptr %70, i1 false)
  %71 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %68, align 8
  %72 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %73 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %54, ptr %73, align 8
  %74 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %60, ptr %74, align 8
  %75 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %66, ptr %75, align 8
  %76 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %72, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %71, ptr %76, align 8
  %77 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %72, 0
  %78 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %77, i64 4, 1
  %79 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %78, i64 4, 2
  %80 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %80, align 8
  %81 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %79, ptr %81, align 8
  %82 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %80, i64 208, ptr %81)
  %83 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %47, ptr %48, ptr %82, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %83)
  store ptr %83, ptr @"map[_llgo_string]_llgo_int", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %84 = load ptr, ptr @_llgo_any, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %86 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %87 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %86, 0
  %88 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %87, i64 0, 1
  %89 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %88, i64 0, 2
  %90 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %89, ptr %91, align 8
  %92 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %90, ptr %91)
  store ptr %92, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %93 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %95 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %96 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %95, 0
  %97 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %96, i64 0, 1
  %98 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %97, i64 0, 2
  %99 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %98, ptr %100, align 8
  %101 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %99, ptr %100)
  %102 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %103 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %104 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %103)
  %105 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %106 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %106, align 8
  %107 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %107, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %105, ptr %106, ptr %104, i64 0, ptr %107, i1 false)
  %108 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %105, align 8
  %109 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %110 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %109, 0
  %111 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %110, i64 0, 1
  %112 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %111, i64 0, 2
  %113 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %113, align 8
  %114 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %112, ptr %114, align 8
  %115 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr %113, ptr %114)
  %116 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %115)
  %117 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %118 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %118, align 8
  %119 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %119, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %117, ptr %118, ptr %116, i64 8, ptr %119, i1 false)
  %120 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %117, align 8
  %121 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %122 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %121)
  %123 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %124 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %125, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %123, ptr %124, ptr %122, i64 136, ptr %125, i1 false)
  %126 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %123, align 8
  %127 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %128 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %129 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %129, align 8
  %130 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %130, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %128, ptr %129, ptr %127, i64 200, ptr %130, i1 false)
  %131 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %128, align 8
  %132 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %133 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %108, ptr %133, align 8
  %134 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %120, ptr %134, align 8
  %135 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %126, ptr %135, align 8
  %136 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %132, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %131, ptr %136, align 8
  %137 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %132, 0
  %138 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %137, i64 4, 1
  %139 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %138, i64 4, 2
  %140 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %140, align 8
  %141 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %139, ptr %141, align 8
  %142 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %140, i64 208, ptr %141)
  %143 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %101, ptr %102, ptr %142, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %143)
  store ptr %143, ptr @"map[_llgo_any]_llgo_int", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %144 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %144, align 8
  %145 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 2 }, ptr %145, align 8
  %146 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %144, ptr %145, i64 17, i64 8, i64 0, i64 0)
  %147 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %146, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %149 = load ptr, ptr @"[1]_llgo_int", align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %151 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %152 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %151)
  store ptr %152, ptr @"[1]_llgo_int", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %153 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %148, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %154 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %154, align 8
  %155 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %155, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %146, ptr %153, ptr %154, ptr %155)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %156 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %156, align 8
  %157 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 }, ptr %157, align 8
  %158 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %156, ptr %157, i64 17, i64 2, i64 0, i64 0)
  %159 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %158, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %161 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %161, align 8
  %162 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %162, align 8
  %163 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %161, ptr %162, i64 25, i64 2, i64 0, i64 0)
  %164 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %163, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %166 = load ptr, ptr @_llgo_int8, align 8
  %167 = icmp eq ptr %166, null
  br i1 %167, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %168 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  store ptr %168, ptr @_llgo_int8, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %169 = load ptr, ptr @_llgo_int8, align 8
  %170 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %171 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %172 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, ptr %172, align 8
  %173 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %173, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %171, ptr %172, ptr %170, i64 0, ptr %173, i1 false)
  %174 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %171, align 8
  %175 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %176 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %177 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, ptr %177, align 8
  %178 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %178, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %176, ptr %177, ptr %175, i64 1, ptr %178, i1 false)
  %179 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %181 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %180, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %174, ptr %181, align 8
  %182 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %180, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %179, ptr %182, align 8
  %183 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %180, 0
  %184 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %183, i64 2, 1
  %185 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %184, i64 2, 2
  %186 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %186, align 8
  %187 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %185, ptr %187, align 8
  %188 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %186, i64 2, ptr %187)
  store ptr %188, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %189 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br i1 %165, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %190 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %190, align 8
  %191 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %191, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %163, ptr %189, ptr %190, ptr %191)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %192 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %193 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %193, align 8
  %194 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %194, align 8
  %195 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %193, ptr %194, i64 25, i64 2, i64 0, i64 0)
  %196 = load ptr, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %198 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %195)
  store ptr %198, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %199 = load ptr, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br i1 %160, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %200 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %200, align 8
  %201 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %201, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %158, ptr %199, ptr %200, ptr %201)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %202 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %202, align 8
  %203 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, ptr %203, align 8
  %204 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %202, ptr %203, i64 17, i64 8, i64 0, i64 0)
  %205 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %206 = icmp eq ptr %205, null
  br i1 %206, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %204)
  store ptr %204, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %207 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %207, align 8
  %208 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %208, align 8
  %209 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %207, ptr %208, i64 25, i64 2, i64 0, i64 0)
  %210 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %211 = icmp eq ptr %210, null
  br i1 %211, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %212 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %209)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %212)
  store ptr %212, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %213 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %214 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %214, align 8
  %215 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %215, align 8
  %216 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %214, ptr %215, i64 25, i64 2, i64 0, i64 0)
  %217 = load ptr, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %219 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %216)
  %220 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %219)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %220)
  store ptr %220, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %221 = load ptr, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br i1 %206, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %222 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %222, align 8
  %223 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %223, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %204, ptr %221, ptr %222, ptr %223)
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %224 = load ptr, ptr @"chan _llgo_int", align 8
  %225 = icmp eq ptr %224, null
  br i1 %225, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %226 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %227 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %227, align 8
  %228 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, ptr %227, ptr %226)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %228)
  store ptr %228, ptr @"chan _llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %229 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %231 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %232 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %232, align 8
  %233 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, ptr %232, ptr %231)
  %234 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %235 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %236 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %235)
  %237 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %238 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %238, align 8
  %239 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %239, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %237, ptr %238, ptr %236, i64 0, ptr %239, i1 false)
  %240 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %237, align 8
  %241 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %242 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %242, align 8
  %243 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, ptr %242, ptr %241)
  %244 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %243)
  %245 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %246 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %246, align 8
  %247 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %247, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %245, ptr %246, ptr %244, i64 8, ptr %247, i1 false)
  %248 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %245, align 8
  %249 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %250 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %249)
  %251 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %252 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %252, align 8
  %253 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %253, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %251, ptr %252, ptr %250, i64 72, ptr %253, i1 false)
  %254 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %251, align 8
  %255 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %256 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %257 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %257, align 8
  %258 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %258, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %256, ptr %257, ptr %255, i64 136, ptr %258, i1 false)
  %259 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %256, align 8
  %260 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %261 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %260, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %240, ptr %261, align 8
  %262 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %260, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %248, ptr %262, align 8
  %263 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %260, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %254, ptr %263, align 8
  %264 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %260, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %259, ptr %264, align 8
  %265 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %260, 0
  %266 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %265, i64 4, 1
  %267 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %266, i64 4, 2
  %268 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %268, align 8
  %269 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %267, ptr %269, align 8
  %270 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %268, i64 144, ptr %269)
  %271 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %233, ptr %234, ptr %270, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %271)
  store ptr %271, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %272 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %272, align 8
  %273 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 1 }, ptr %273, align 8
  %274 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %272, ptr %273, i64 21, i64 8, i64 0, i64 0)
  %275 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %274)
  store ptr %274, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %277 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  br i1 %276, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %278 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %278, align 8
  %279 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %279, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %274, ptr %277, ptr %278, ptr %279)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %280 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %280, align 8
  %281 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %281, align 8
  %282 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %280, ptr %281, i64 2, i64 8, i64 0, i64 0)
  %283 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %283, align 8
  %284 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, ptr %284, align 8
  %285 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %283, ptr %284, i64 2, i64 8, i64 0, i64 0)
  %286 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %287 = icmp eq ptr %286, null
  br i1 %287, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %288 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %289 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %290 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %289)
  %291 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %292 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %292, align 8
  %293 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %293, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %291, ptr %292, ptr %290, i64 0, ptr %293, i1 false)
  %294 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %291, align 8
  %295 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %285)
  %296 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %297 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %297, align 8
  %298 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %298, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %296, ptr %297, ptr %295, i64 8, ptr %298, i1 false)
  %299 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %296, align 8
  %300 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %301 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %300)
  %302 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %303 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %303, align 8
  %304 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %304, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %302, ptr %303, ptr %301, i64 72, ptr %304, i1 false)
  %305 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %302, align 8
  %306 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %307 = alloca %"github.com/goplus/llgo/runtime/abi.StructField", align 8
  %308 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %308, align 8
  %309 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, ptr %309, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr %307, ptr %308, ptr %306, i64 200, ptr %309, i1 false)
  %310 = load %"github.com/goplus/llgo/runtime/abi.StructField", ptr %307, align 8
  %311 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %312 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %311, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %294, ptr %312, align 8
  %313 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %311, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %299, ptr %313, align 8
  %314 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %311, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %305, ptr %314, align 8
  %315 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %311, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %310, ptr %315, align 8
  %316 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %311, 0
  %317 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %316, i64 4, 1
  %318 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %317, i64 4, 2
  %319 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, ptr %319, align 8
  %320 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %318, ptr %320, align 8
  %321 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr %319, i64 208, ptr %320)
  %322 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %282, ptr %288, ptr %321, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %322)
  store ptr %322, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(ptr, i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(ptr, ptr, ptr, i64, ptr, i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64, ptr, ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

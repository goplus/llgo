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
  %0 = call ptr @__llgo_load__llgo_int()
  %1 = call ptr @__llgo_load__llgo_string()
  %2 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %5, align 4
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %4, ptr %3, ptr %5)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %6, align 8
  %7 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %7, ptr %3, ptr %8)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %9, align 8
  %10 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %10, ptr %3, ptr %11)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %12, align 8
  %13 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %13, ptr %3, ptr %14)
  %16 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %15, align 8
  %17 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %18, align 4
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %17, ptr %3, ptr %18)
  %20 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %19, align 8
  %21 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %22 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %22, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %24 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %23)
  %25 = extractvalue { i1, ptr, ptr } %24, 0
  br i1 %25, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %26 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 1
  %27 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @8, i64 1 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %27)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %28 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %3)
  %29 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %29, i64 %28)
  %31 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %31, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %33 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %32)
  %34 = extractvalue { i1, ptr, ptr } %33, 0
  br i1 %34, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %35 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %96, 1
  %36 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %96, 2
  %37 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %36, ptr %38, align 8
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %37, ptr %30, ptr %38)
  store i64 %35, ptr %39, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %40 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %41, align 8
  %42 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %40, ptr %30, ptr %41)
  %43 = extractvalue { ptr, i1 } %42, 0
  %44 = load i64, ptr %43, align 4
  %45 = extractvalue { ptr, i1 } %42, 1
  %46 = insertvalue { i64, i1 } undef, i64 %44, 0
  %47 = insertvalue { i64, i1 } %46, i1 %45, 1
  %48 = extractvalue { i64, i1 } %47, 0
  %49 = extractvalue { i64, i1 } %47, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %49)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %50 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 }, ptr %51, align 8
  %52 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %50, ptr %30, ptr %51)
  %53 = extractvalue { ptr, i1 } %52, 0
  %54 = load i64, ptr %53, align 4
  %55 = extractvalue { ptr, i1 } %52, 1
  %56 = insertvalue { i64, i1 } undef, i64 %54, 0
  %57 = insertvalue { i64, i1 } %56, i1 %55, 1
  %58 = extractvalue { i64, i1 } %57, 0
  %59 = extractvalue { i64, i1 } %57, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @9, i64 2 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %59)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %60 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %61 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %61, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr %60, ptr %30, ptr %61)
  %62 = call ptr @"__llgo_load_map[_llgo_string]_llgo_int"()
  %63 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @7, i64 4 }, ptr %63, align 8
  %64 = call { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr %62, ptr %30, ptr %63)
  %65 = extractvalue { ptr, i1 } %64, 0
  %66 = load i64, ptr %65, align 4
  %67 = extractvalue { ptr, i1 } %64, 1
  %68 = insertvalue { i64, i1 } undef, i64 %66, 0
  %69 = insertvalue { i64, i1 } %68, i1 %67, 1
  %70 = extractvalue { i64, i1 } %69, 0
  %71 = extractvalue { i64, i1 } %69, 1
  br i1 %71, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %72 = call ptr @__llgo_load__llgo_string()
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @10, i64 7 }, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %72, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %73, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %76 = call i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr %30)
  %77 = icmp ne i64 %76, 2
  br i1 %77, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %78 = call ptr @__llgo_load__llgo_string()
  %79 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @11, i64 7 }, ptr %79, align 8
  %80 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %78, 0
  %81 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %80, ptr %79, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %81)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %82 = extractvalue { i1, ptr, ptr } %24, 1
  %83 = extractvalue { i1, ptr, ptr } %24, 2
  %84 = load i64, ptr %82, align 4
  %85 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %83, align 8
  %86 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %84, 1
  %87 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %86, %"github.com/goplus/llgo/runtime/internal/runtime.String" %85, 2
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %88 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %87, %_llgo_11 ], [ zeroinitializer, %_llgo_12 ]
  %89 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %88, 0
  br i1 %89, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %90 = extractvalue { i1, ptr, ptr } %33, 1
  %91 = extractvalue { i1, ptr, ptr } %33, 2
  %92 = load i64, ptr %90, align 4
  %93 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %91, align 8
  %94 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %92, 1
  %95 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %94, %"github.com/goplus/llgo/runtime/internal/runtime.String" %93, 2
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %96 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %95, %_llgo_14 ], [ zeroinitializer, %_llgo_15 ]
  %97 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %96, 0
  br i1 %97, label %_llgo_5, label %_llgo_6
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make2"() {
_llgo_0:
  %0 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
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
  %6 = call ptr @__llgo_load__llgo_any()
  %7 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %7, i64 0)
  %9 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store i64 1, ptr %10, align 4
  %11 = load [1 x i64], ptr %9, align 4
  %12 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"()
  %13 = extractvalue [1 x i64] %11, 0
  %14 = inttoptr i64 %13 to ptr
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  %17 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %17, ptr %8, ptr %18)
  store i64 100, ptr %19, align 4
  %20 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %20, i8 0, i64 8, i1 false)
  %21 = getelementptr inbounds i64, ptr %20, i64 0
  store i64 2, ptr %21, align 4
  %22 = load [1 x i64], ptr %20, align 4
  %23 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"()
  %24 = extractvalue [1 x i64] %22, 0
  %25 = inttoptr i64 %24 to ptr
  %26 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %23, 0
  %27 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %26, ptr %25, 1
  %28 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %29 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %27, ptr %29, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %28, ptr %8, ptr %29)
  store i64 200, ptr %30, align 4
  %31 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %31, i8 0, i64 8, i1 false)
  %32 = getelementptr inbounds i64, ptr %31, i64 0
  store i64 3, ptr %32, align 4
  %33 = load [1 x i64], ptr %31, align 4
  %34 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"()
  %35 = extractvalue [1 x i64] %33, 0
  %36 = inttoptr i64 %35 to ptr
  %37 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %34, 0
  %38 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %37, ptr %36, 1
  %39 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %40 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %38, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %39, ptr %8, ptr %40)
  store i64 300, ptr %41, align 4
  %42 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %42, i8 0, i64 8, i1 false)
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 2, ptr %43, align 4
  %44 = load [1 x i64], ptr %42, align 4
  %45 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"()
  %46 = extractvalue [1 x i64] %44, 0
  %47 = inttoptr i64 %46 to ptr
  %48 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %45, 0
  %49 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %48, ptr %47, 1
  %50 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %51 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, ptr %51, align 8
  %52 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %50, ptr %8, ptr %51)
  store i64 -200, ptr %52, align 4
  %53 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %54 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %53, ptr %8)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %55 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %54)
  %56 = extractvalue { i1, ptr, ptr } %55, 0
  br i1 %56, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %57 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 1
  %58 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 2
  %59 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, 0
  %60 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"()
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %62 = extractvalue { i1, ptr, ptr } %55, 1
  %63 = extractvalue { i1, ptr, ptr } %55, 2
  %64 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %62, align 8
  %65 = load i64, ptr %63, align 4
  %66 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %64, 1
  %67 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %66, i64 %65, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %68 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %67, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %69 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %68, 0
  br i1 %69, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %70 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %57, 1
  %71 = ptrtoint ptr %70 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %72 = call ptr @__llgo_load__llgo_string()
  %73 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @13, i64 81 }, ptr %73, align 8
  %74 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %72, 0
  %75 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %74, ptr %73, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %75)
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
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"()
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
  %14 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %13, ptr %15, align 1
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  %18 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %19 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %20 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %19, i64 0)
  %21 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %21, i8 0, i64 2, i1 false)
  %22 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %21, i64 0
  %23 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %22, i32 0, i32 0
  %24 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %22, i32 0, i32 1
  store i8 1, ptr %23, align 1
  store i8 2, ptr %24, align 1
  %25 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %21, align 1
  %26 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"()
  %27 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %25, ptr %27, align 1
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %26, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %28, ptr %27, 1
  %30 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %31, align 8
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %30, ptr %20, ptr %31)
  store i64 100, ptr %32, align 4
  %33 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %33, i8 0, i64 2, i1 false)
  %34 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %33, i64 0
  %35 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %34, i32 0, i32 1
  store i8 3, ptr %35, align 1
  store i8 4, ptr %36, align 1
  %37 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %33, align 1
  %38 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"()
  %39 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 2)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %37, ptr %39, align 1
  %40 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %38, 0
  %41 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %40, ptr %39, 1
  %42 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %43 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %42, ptr %20, ptr %43)
  store i64 200, ptr %44, align 4
  %45 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %46 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %45, ptr %20)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %47 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %46)
  %48 = extractvalue { i1, ptr, ptr } %47, 0
  br i1 %48, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %49 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 1
  %50 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 2
  %51 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 0
  %52 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"()
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %54 = extractvalue { i1, ptr, ptr } %47, 1
  %55 = extractvalue { i1, ptr, ptr } %47, 2
  %56 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %54, align 8
  %57 = load i64, ptr %55, align 4
  %58 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %56, 1
  %59 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %58, i64 %57, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %60 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %59, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %61 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %60, 0
  br i1 %61, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %62 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %49, 1
  %63 = load [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], ptr %62, align 1
  %64 = alloca [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"], align 8
  call void @llvm.memset(ptr %64, i8 0, i64 2, i1 false)
  store [1 x %"github.com/goplus/llgo/cl/_testrt/makemap.N"] %63, ptr %64, align 1
  %65 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %64, i64 0
  %66 = load %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %65, align 1
  %67 = extractvalue %"github.com/goplus/llgo/cl/_testrt/makemap.N" %66, 0
  %68 = sext i8 %67 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %50)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %69 = call ptr @__llgo_load__llgo_string()
  %70 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @18, i64 80 }, ptr %70, align 8
  %71 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %69, 0
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %71, ptr %70, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %72)
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
  %6 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"()
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
  %16 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"()
  %17 = extractvalue [1 x ptr] %15, 0
  %18 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %16, 0
  %19 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %18, ptr %17, 1
  %20 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %9, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %19)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %20)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %21 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %21, i64 0)
  %23 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %23, i8 0, i64 8, i1 false)
  %24 = getelementptr inbounds ptr, ptr %23, i64 0
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %26 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %25, i32 0, i32 0
  %27 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %25, i32 0, i32 1
  store i8 1, ptr %26, align 1
  store i8 2, ptr %27, align 1
  store ptr %25, ptr %24, align 8
  %28 = load [1 x ptr], ptr %23, align 8
  %29 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"()
  %30 = extractvalue [1 x ptr] %28, 0
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %30, 1
  %33 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %34 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, ptr %34, align 8
  %35 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %33, ptr %22, ptr %34)
  store i64 100, ptr %35, align 4
  %36 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %36, i8 0, i64 8, i1 false)
  %37 = getelementptr inbounds ptr, ptr %36, i64 0
  %38 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 2)
  %39 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %38, i32 0, i32 0
  %40 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %38, i32 0, i32 1
  store i8 3, ptr %39, align 1
  store i8 4, ptr %40, align 1
  store ptr %38, ptr %37, align 8
  %41 = load [1 x ptr], ptr %36, align 8
  %42 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"()
  %43 = extractvalue [1 x ptr] %41, 0
  %44 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %42, 0
  %45 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %44, ptr %43, 1
  %46 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %47 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %45, ptr %47, align 8
  %48 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %46, ptr %22, ptr %47)
  store i64 200, ptr %48, align 4
  %49 = call ptr @"__llgo_load_map[_llgo_any]_llgo_int"()
  %50 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %49, ptr %22)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %51 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %50)
  %52 = extractvalue { i1, ptr, ptr } %51, 0
  br i1 %52, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %53 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %64, 1
  %54 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %64, 2
  %55 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, 0
  %56 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"()
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %58 = extractvalue { i1, ptr, ptr } %51, 1
  %59 = extractvalue { i1, ptr, ptr } %51, 2
  %60 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %58, align 8
  %61 = load i64, ptr %59, align 4
  %62 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } { i1 true, %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, i64 undef }, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %60, 1
  %63 = insertvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %62, i64 %61, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %64 = phi { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } [ %63, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %65 = extractvalue { i1, %"github.com/goplus/llgo/runtime/internal/runtime.eface", i64 } %64, 0
  br i1 %65, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %66 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %53, 1
  %67 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testrt/makemap.N", ptr %66, i32 0, i32 0
  %68 = load i8, ptr %67, align 1
  %69 = sext i8 %68 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %69)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %54)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %70 = call ptr @__llgo_load__llgo_string()
  %71 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @20, i64 81 }, ptr %71, align 8
  %72 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %70, 0
  %73 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %72, ptr %71, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %73)
  unreachable
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make5"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = call ptr @"__llgo_load_chan _llgo_int"()
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %1, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %0, 1
  %4 = call ptr @"__llgo_load_chan _llgo_int"()
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %4, 0
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, ptr %0, 1
  %7 = call i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, %"github.com/goplus/llgo/runtime/internal/runtime.eface" %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %8 = call ptr @"__llgo_load_chan _llgo_int"()
  %9 = call ptr @"__llgo_load_map[chan _llgo_int]_llgo_int"()
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %9, i64 0)
  %11 = call ptr @"__llgo_load_map[chan _llgo_int]_llgo_int"()
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %12, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %11, ptr %10, ptr %12)
  store i64 100, ptr %13, align 4
  %14 = call ptr @"__llgo_load_map[chan _llgo_int]_llgo_int"()
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %15, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %14, ptr %10, ptr %15)
  store i64 200, ptr %16, align 4
  %17 = call ptr @"__llgo_load_map[chan _llgo_int]_llgo_int"()
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %17, ptr %10)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %19 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %18)
  %20 = extractvalue { i1, ptr, ptr } %19, 0
  br i1 %20, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %21 = extractvalue { i1, ptr, i64 } %29, 1
  %22 = extractvalue { i1, ptr, i64 } %29, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %23 = extractvalue { i1, ptr, ptr } %19, 1
  %24 = extractvalue { i1, ptr, ptr } %19, 2
  %25 = load ptr, ptr %23, align 8
  %26 = load i64, ptr %24, align 4
  %27 = insertvalue { i1, ptr, i64 } { i1 true, ptr undef, i64 undef }, ptr %25, 1
  %28 = insertvalue { i1, ptr, i64 } %27, i64 %26, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %29 = phi { i1, ptr, i64 } [ %28, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %30 = extractvalue { i1, ptr, i64 } %29, 0
  br i1 %30, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make6"() {
_llgo_0:
  %0 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.M"()
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %3, align 4
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %2, ptr %1, ptr %3)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %4, align 8
  %5 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.M"()
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %5, ptr %1)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %7 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %6)
  %8 = extractvalue { i1, ptr, ptr } %7, 0
  br i1 %8, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %9 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %17, 1
  %10 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %17, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %11 = extractvalue { i1, ptr, ptr } %7, 1
  %12 = extractvalue { i1, ptr, ptr } %7, 2
  %13 = load i64, ptr %11, align 4
  %14 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %12, align 8
  %15 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %13, 1
  %16 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %15, %"github.com/goplus/llgo/runtime/internal/runtime.String" %14, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %17 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %16, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %18 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %17, 0
  br i1 %18, label %_llgo_2, label %_llgo_3
}

define void @"github.com/goplus/llgo/cl/_testrt/makemap.make7"() {
_llgo_0:
  %0 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"()
  %1 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"()
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr %1, i64 2)
  %3 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"()
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %4, align 4
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %3, ptr %2, ptr %4)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @5, i64 5 }, ptr %5, align 8
  %6 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"()
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr %6, ptr %2, ptr %7)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @6, i64 5 }, ptr %8, align 8
  %9 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"()
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr %9, ptr %2)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = call { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr %10)
  %12 = extractvalue { i1, ptr, ptr } %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %13 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %25, 1
  %14 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %25, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %15 = call ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"()
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr %15, ptr %2, ptr %16)
  %18 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %18)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %19 = extractvalue { i1, ptr, ptr } %11, 1
  %20 = extractvalue { i1, ptr, ptr } %11, 2
  %21 = load i64, ptr %19, align 4
  %22 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %20, align 8
  %23 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } { i1 true, i64 undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" undef }, i64 %21, 1
  %24 = insertvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %23, %"github.com/goplus/llgo/runtime/internal/runtime.String" %22, 2
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %25 = phi { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } [ %24, %_llgo_4 ], [ zeroinitializer, %_llgo_5 ]
  %26 = extractvalue { i1, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String" } %25, 0
  br i1 %26, label %_llgo_2, label %_llgo_3
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

define linkonce ptr @"__llgo_load_map[_llgo_int]_llgo_string"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %4)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %5, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %7)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %8, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %11, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %13, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 4, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 4, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %23, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  ret ptr %25
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/runtime/internal/runtime.MapLen"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/runtime/internal/runtime.MapIterNext"(ptr)

define linkonce ptr @"__llgo_load_map[_llgo_string]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %4)
  %6 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %5, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %7)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %8, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %11, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %13, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %16 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %6, ptr %16, align 8
  %17 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %9, ptr %17, align 8
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %12, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %15, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %15, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %20, i64 4, 1
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %21, i64 4, 2
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %23, i64 12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"map[_llgo_string]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  ret ptr %25
}

declare { ptr, i1 } @"github.com/goplus/llgo/runtime/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

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
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  store ptr %6, ptr @_llgo_any, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_any, align 8
  ret ptr %7
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load_map[_llgo_any]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %3, i64 0, 1
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %4, i64 0, 2
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %5)
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %8)
  %10 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %9, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 0)
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %11, 0
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %12, i64 0, 1
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 0, 2
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Interface"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14)
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %15)
  %17 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %16, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %18)
  %20 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %19, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %21 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %22 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %21, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %24 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %10, ptr %24, align 8
  %25 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %17, ptr %25, align 8
  %26 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %20, ptr %26, align 8
  %27 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %23, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %22, ptr %27, align 8
  %28 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %23, 0
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %28, i64 4, 1
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %29, i64 4, 2
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %30)
  %32 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %6, ptr %7, ptr %31, i64 24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %32)
  store ptr %32, ptr @"map[_llgo_any]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %33 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  ret ptr %33
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @12, i64 2 }, i64 17, i64 8, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  %3 = call ptr @"__llgo_load_[1]_llgo_int"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N1", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

define linkonce ptr @"__llgo_load_[1]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"[1]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %2)
  store ptr %3, ptr @"[1]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[1]_llgo_int", align 8
  ret ptr %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @14, i64 1 }, i64 17, i64 2, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  %3 = call ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"()
  %4 = call ptr @"__llgo_load_[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K", align 8
  ret ptr %5
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 25, i64 2, i64 0, i64 0)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %3 = call ptr @__llgo_load__llgo_int8()
  %4 = call ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  ret ptr %5
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

define linkonce ptr @"__llgo_load_github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A"() {
_llgo_0:
  %0 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %3 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @16, i64 2 }, ptr %2, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 35)
  %5 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @17, i64 2 }, ptr %4, i64 1, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 112)
  %7 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %6, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %3, ptr %7, align 8
  %8 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %6, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %5, ptr %8, align 8
  %9 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %6, 0
  %10 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %9, i64 2, 1
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %10, i64 2, 2
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 2, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %11)
  store ptr %12, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %13 = load ptr, ptr @"github.com/goplus/llgo/cl/_testrt/makemap.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  ret ptr %13
}

define linkonce ptr @"__llgo_load_[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"() {
_llgo_0:
  %0 = load ptr, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 25, i64 2, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %2)
  store ptr %3, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"[1]_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  ret ptr %4
}

declare i1 @"github.com/goplus/llgo/runtime/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/runtime/internal/runtime.eface", %"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @19, i64 2 }, i64 17, i64 8, i64 0, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  %3 = call ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"()
  %4 = call ptr @"__llgo_load_[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %4, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.K2", align 8
  ret ptr %5
}

define linkonce ptr @"__llgo_load_*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"() {
_llgo_0:
  %0 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 25, i64 2, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr)

define linkonce ptr @"__llgo_load_[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N"() {
_llgo_0:
  %0 = load ptr, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 25, i64 2, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.PointerTo"(ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 1, ptr %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %4)
  store ptr %4, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @"[1]*_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N", align 8
  ret ptr %5
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewChan"(i64, i64)

define linkonce ptr @"__llgo_load_chan _llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"chan _llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %3)
  store ptr %3, ptr @"chan _llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"chan _llgo_int", align 8
  ret ptr %4
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr)

define linkonce ptr @"__llgo_load_map[chan _llgo_int]_llgo_int"() {
_llgo_0:
  %0 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %2)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %5)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %6, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @21, i64 4 }, ptr %8)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %9)
  %11 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %10, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %12)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %13, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %16 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %15, i64 136, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 224)
  %18 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 0
  store %"github.com/goplus/llgo/runtime/abi.StructField" %7, ptr %18, align 8
  %19 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 1
  store %"github.com/goplus/llgo/runtime/abi.StructField" %11, ptr %19, align 8
  %20 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 2
  store %"github.com/goplus/llgo/runtime/abi.StructField" %14, ptr %20, align 8
  %21 = getelementptr %"github.com/goplus/llgo/runtime/abi.StructField", ptr %17, i64 3
  store %"github.com/goplus/llgo/runtime/abi.StructField" %16, ptr %21, align 8
  %22 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %17, 0
  %23 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22, i64 4, 1
  %24 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %23, i64 4, 2
  %25 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 144, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %24)
  %26 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %3, ptr %4, ptr %25, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %26)
  store ptr %26, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %27 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  ret ptr %27
}

define linkonce ptr @"__llgo_load__llgo_github.com/goplus/llgo/cl/_testrt/makemap.M"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @22, i64 1 }, i64 21, i64 8, i64 0, i64 0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %2)
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  %3 = call ptr @"__llgo_load_map[_llgo_int]_llgo_string"()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %3, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %4 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/makemap.M", align 8
  ret ptr %4
}

define linkonce ptr @"__llgo_load_map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 2, i64 8, i64 0, i64 0)
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @15, i64 1 }, i64 2, i64 8, i64 0, i64 0)
  %4 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %5 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 40)
  %6 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %5)
  %7 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %6, i64 0, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %8 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %3)
  %9 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, ptr %8, i64 8, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %10 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  %11 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 8, ptr %10)
  %12 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 5 }, ptr %11, i64 72, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 58)
  %14 = call %"github.com/goplus/llgo/runtime/abi.StructField" @"github.com/goplus/llgo/runtime/internal/runtime.StructField"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 8 }, ptr %13, i64 200, %"github.com/goplus/llgo/runtime/internal/runtime.String" zeroinitializer, i1 false)
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
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Struct"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 41 }, i64 208, %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %22)
  %24 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.MapOf"(ptr %2, ptr %4, ptr %23, i64 4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetDirectIface"(ptr %24)
  store ptr %24, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %25 = load ptr, ptr @"map[_llgo_github.com/goplus/llgo/cl/_testrt/makemap.N]_llgo_string", align 8
  ret ptr %25
}

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

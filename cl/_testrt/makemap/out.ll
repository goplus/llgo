; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%main.N = type { i8, i8 }
%"github.com/goplus/llgo/internal/abi.StructField" = type { %"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1 }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@_llgo_string = linkonce global ptr null, align 8
@"map[_llgo_int]_llgo_string" = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"topbits", align 1
@1 = private unnamed_addr constant [4 x i8] c"keys", align 1
@2 = private unnamed_addr constant [5 x i8] c"elems", align 1
@3 = private unnamed_addr constant [8 x i8] c"overflow", align 1
@4 = private unnamed_addr constant [4 x i8] c"main", align 1
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
@_llgo_main.N1 = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [7 x i8] c"main.N1", align 1
@"[1]_llgo_int" = linkonce global ptr null, align 8
@13 = private unnamed_addr constant [2 x i8] c"N1", align 1
@14 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_main.K = linkonce global ptr null, align 8
@15 = private unnamed_addr constant [6 x i8] c"main.K", align 1
@_llgo_main.N = linkonce global ptr null, align 8
@16 = private unnamed_addr constant [6 x i8] c"main.N", align 1
@_llgo_int8 = linkonce global ptr null, align 8
@"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [2 x i8] c"n1", align 1
@18 = private unnamed_addr constant [2 x i8] c"n2", align 1
@19 = private unnamed_addr constant [1 x i8] c"N", align 1
@"[1]_llgo_main.N" = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [1 x i8] c"K", align 1
@_llgo_main.K2 = linkonce global ptr null, align 8
@21 = private unnamed_addr constant [7 x i8] c"main.K2", align 1
@"*_llgo_main.N" = linkonce global ptr null, align 8
@"[1]*_llgo_main.N" = linkonce global ptr null, align 8
@22 = private unnamed_addr constant [2 x i8] c"K2", align 1
@"chan _llgo_int" = linkonce global ptr null, align 8
@23 = private unnamed_addr constant [4 x i8] c"chan", align 1
@"map[chan _llgo_int]_llgo_int" = linkonce global ptr null, align 8
@_llgo_main.M = linkonce global ptr null, align 8
@24 = private unnamed_addr constant [6 x i8] c"main.M", align 1
@25 = private unnamed_addr constant [1 x i8] c"M", align 1
@"map[_llgo_main.N]_llgo_string" = linkonce global ptr null, align 8

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
  call void @main.make1()
  call void @main.make2()
  call void @main.make3()
  call void @main.make4()
  call void @main.make5()
  call void @main.make6()
  call void @main.make7()
  ret i32 0
}

define void @main.make1() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %8, ptr %3, ptr %9)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %10, align 8
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @6, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 5, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %16, align 4
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %15, ptr %3, ptr %16)
  store %"github.com/goplus/llgo/internal/runtime.String" %14, ptr %17, align 8
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 0
  store ptr @7, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %18, i32 0, i32 1
  store i64 4, ptr %20, align 4
  %21 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %22 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %23, align 4
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %22, ptr %3, ptr %23)
  store %"github.com/goplus/llgo/internal/runtime.String" %21, ptr %24, align 8
  %25 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %26, align 4
  %27 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %25, ptr %3, ptr %26)
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %27, align 8
  %29 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %30, align 4
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %29, ptr %3, ptr %30)
  %32 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %31, align 8
  %33 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %34 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %34, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %36 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %35)
  %37 = extractvalue { i1, ptr, ptr } %36, 0
  br i1 %37, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %38 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %154, 1
  %39 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %154, 2
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 0
  store ptr @8, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %40, i32 0, i32 1
  store i64 1, ptr %42, align 4
  %43 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %40, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %39)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %44 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %3)
  %45 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %45, i64 %44)
  %47 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %47, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %49 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %48)
  %50 = extractvalue { i1, ptr, ptr } %49, 0
  br i1 %50, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %51 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %170, 1
  %52 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %170, 2
  %53 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %52, ptr %54, align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %53, ptr %46, ptr %54)
  store i64 %51, ptr %55, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 0
  store ptr @7, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %56, align 8
  %60 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %59, ptr %61, align 8
  %62 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %60, ptr %46, ptr %61)
  %63 = extractvalue { ptr, i1 } %62, 0
  %64 = load i64, ptr %63, align 4
  %65 = extractvalue { ptr, i1 } %62, 1
  %66 = alloca { i64, i1 }, align 8
  %67 = getelementptr inbounds { i64, i1 }, ptr %66, i32 0, i32 0
  store i64 %64, ptr %67, align 4
  %68 = getelementptr inbounds { i64, i1 }, ptr %66, i32 0, i32 1
  store i1 %65, ptr %68, align 1
  %69 = load { i64, i1 }, ptr %66, align 4
  %70 = extractvalue { i64, i1 } %69, 0
  %71 = extractvalue { i64, i1 } %69, 1
  %72 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 0
  store ptr @7, ptr %73, align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %72, i32 0, i32 1
  store i64 4, ptr %74, align 4
  %75 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %72, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %75)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %71)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %76 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %77 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 0
  store ptr @9, ptr %77, align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %76, i32 0, i32 1
  store i64 2, ptr %78, align 4
  %79 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %76, align 8
  %80 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %79, ptr %81, align 8
  %82 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %80, ptr %46, ptr %81)
  %83 = extractvalue { ptr, i1 } %82, 0
  %84 = load i64, ptr %83, align 4
  %85 = extractvalue { ptr, i1 } %82, 1
  %86 = alloca { i64, i1 }, align 8
  %87 = getelementptr inbounds { i64, i1 }, ptr %86, i32 0, i32 0
  store i64 %84, ptr %87, align 4
  %88 = getelementptr inbounds { i64, i1 }, ptr %86, i32 0, i32 1
  store i1 %85, ptr %88, align 1
  %89 = load { i64, i1 }, ptr %86, align 4
  %90 = extractvalue { i64, i1 } %89, 0
  %91 = extractvalue { i64, i1 } %89, 1
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 0
  store ptr @9, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 2, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %95)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %90)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %91)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr @7, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 4, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %101 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %101, align 8
  call void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr %100, ptr %46, ptr %101)
  %102 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 0
  store ptr @7, ptr %103, align 8
  %104 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %102, i32 0, i32 1
  store i64 4, ptr %104, align 4
  %105 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %102, align 8
  %106 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %107 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %105, ptr %107, align 8
  %108 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %106, ptr %46, ptr %107)
  %109 = extractvalue { ptr, i1 } %108, 0
  %110 = load i64, ptr %109, align 4
  %111 = extractvalue { ptr, i1 } %108, 1
  %112 = alloca { i64, i1 }, align 8
  %113 = getelementptr inbounds { i64, i1 }, ptr %112, i32 0, i32 0
  store i64 %110, ptr %113, align 4
  %114 = getelementptr inbounds { i64, i1 }, ptr %112, i32 0, i32 1
  store i1 %111, ptr %114, align 1
  %115 = load { i64, i1 }, ptr %112, align 4
  %116 = extractvalue { i64, i1 } %115, 0
  %117 = extractvalue { i64, i1 } %115, 1
  br i1 %117, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @10, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 7, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = load ptr, ptr @_llgo_string, align 8
  %123 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %123, align 8
  %124 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %125 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 0
  store ptr %122, ptr %125, align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, i32 0, i32 1
  store ptr %123, ptr %126, align 8
  %127 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %124, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %127)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %128 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %46)
  %129 = icmp ne i64 %128, 2
  br i1 %129, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %130 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %131 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 0
  store ptr @11, ptr %131, align 8
  %132 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %130, i32 0, i32 1
  store i64 7, ptr %132, align 4
  %133 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %130, align 8
  %134 = load ptr, ptr @_llgo_string, align 8
  %135 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %133, ptr %135, align 8
  %136 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, i32 0, i32 0
  store ptr %134, ptr %137, align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, i32 0, i32 1
  store ptr %135, ptr %138, align 8
  %139 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %136, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %139)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %140 = extractvalue { i1, ptr, ptr } %36, 1
  %141 = extractvalue { i1, ptr, ptr } %36, 2
  %142 = load i64, ptr %140, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %144 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %145 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %144, i32 0, i32 0
  store i1 true, ptr %145, align 1
  %146 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %144, i32 0, i32 1
  store i64 %142, ptr %146, align 4
  %147 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %144, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %143, ptr %147, align 8
  %148 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %144, align 8
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  %149 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %150 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %149, i32 0, i32 0
  store i1 false, ptr %150, align 1
  %151 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %149, i32 0, i32 1
  store i64 0, ptr %151, align 4
  %152 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %149, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %152, align 8
  %153 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %149, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %154 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %148, %_llgo_11 ], [ %153, %_llgo_12 ]
  %155 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %154, 0
  br i1 %155, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %156 = extractvalue { i1, ptr, ptr } %49, 1
  %157 = extractvalue { i1, ptr, ptr } %49, 2
  %158 = load i64, ptr %156, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %160 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %161 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %160, i32 0, i32 0
  store i1 true, ptr %161, align 1
  %162 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %160, i32 0, i32 1
  store i64 %158, ptr %162, align 4
  %163 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %160, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %163, align 8
  %164 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %160, align 8
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  %165 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %166 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %165, i32 0, i32 0
  store i1 false, ptr %166, align 1
  %167 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %165, i32 0, i32 1
  store i64 0, ptr %167, align 4
  %168 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %165, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %168, align 8
  %169 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %165, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %170 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %164, %_llgo_14 ], [ %169, %_llgo_15 ]
  %171 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %170, 0
  br i1 %171, label %_llgo_5, label %_llgo_6
}

define void @main.make2() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %1)
  %3 = icmp eq ptr %1, null
  %4 = icmp ne ptr %1, null
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %5 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %6 = load ptr, ptr @_llgo_any, align 8
  %7 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %7, i64 0)
  %9 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %9, i8 0, i64 8, i1 false)
  %10 = getelementptr inbounds i64, ptr %9, i64 0
  store i64 1, ptr %10, align 4
  %11 = load [1 x i64], ptr %9, align 4
  %12 = load ptr, ptr @_llgo_main.N1, align 8
  %13 = extractvalue [1 x i64] %11, 0
  %14 = inttoptr i64 %13 to ptr
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, i32 0, i32 0
  store ptr %12, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, i32 0, i32 1
  store ptr %14, ptr %17, align 8
  %18 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %15, align 8
  %19 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %18, ptr %20, align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %19, ptr %8, ptr %20)
  store i64 100, ptr %21, align 4
  %22 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %22, i8 0, i64 8, i1 false)
  %23 = getelementptr inbounds i64, ptr %22, i64 0
  store i64 2, ptr %23, align 4
  %24 = load [1 x i64], ptr %22, align 4
  %25 = load ptr, ptr @_llgo_main.N1, align 8
  %26 = extractvalue [1 x i64] %24, 0
  %27 = inttoptr i64 %26 to ptr
  %28 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %29 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 0
  store ptr %25, ptr %29, align 8
  %30 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, i32 0, i32 1
  store ptr %27, ptr %30, align 8
  %31 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %28, align 8
  %32 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %31, ptr %33, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %32, ptr %8, ptr %33)
  store i64 200, ptr %34, align 4
  %35 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %35, i8 0, i64 8, i1 false)
  %36 = getelementptr inbounds i64, ptr %35, i64 0
  store i64 3, ptr %36, align 4
  %37 = load [1 x i64], ptr %35, align 4
  %38 = load ptr, ptr @_llgo_main.N1, align 8
  %39 = extractvalue [1 x i64] %37, 0
  %40 = inttoptr i64 %39 to ptr
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, i32 0, i32 0
  store ptr %38, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, i32 0, i32 1
  store ptr %40, ptr %43, align 8
  %44 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %41, align 8
  %45 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %44, ptr %46, align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %45, ptr %8, ptr %46)
  store i64 300, ptr %47, align 4
  %48 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %48, i8 0, i64 8, i1 false)
  %49 = getelementptr inbounds i64, ptr %48, i64 0
  store i64 2, ptr %49, align 4
  %50 = load [1 x i64], ptr %48, align 4
  %51 = load ptr, ptr @_llgo_main.N1, align 8
  %52 = extractvalue [1 x i64] %50, 0
  %53 = inttoptr i64 %52 to ptr
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 0
  store ptr %51, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 1
  store ptr %53, ptr %56, align 8
  %57 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, align 8
  %58 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %57, ptr %59, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %58, ptr %8, ptr %59)
  store i64 -200, ptr %60, align 4
  %61 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %61, ptr %8)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %63 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %62)
  %64 = extractvalue { i1, ptr, ptr } %63, 0
  br i1 %64, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %65 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 1
  %66 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 2
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %65, 0
  %68 = load ptr, ptr @_llgo_main.N1, align 8
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %70 = extractvalue { i1, ptr, ptr } %63, 1
  %71 = extractvalue { i1, ptr, ptr } %63, 2
  %72 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %70, align 8
  %73 = load i64, ptr %71, align 4
  %74 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %75 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %74, i32 0, i32 0
  store i1 true, ptr %75, align 1
  %76 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %74, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %72, ptr %76, align 8
  %77 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %74, i32 0, i32 2
  store i64 %73, ptr %77, align 4
  %78 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %74, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %79 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %80 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %79, i32 0, i32 0
  store i1 false, ptr %80, align 1
  %81 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %79, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %81, align 8
  %82 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %79, i32 0, i32 2
  store i64 0, ptr %82, align 4
  %83 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %79, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %84 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %78, %_llgo_4 ], [ %83, %_llgo_5 ]
  %85 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 0
  br i1 %85, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %86 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %65, 1
  %87 = ptrtoint ptr %86 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %87)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr @14, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 21, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = load ptr, ptr @_llgo_string, align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %91, ptr %93, align 8
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, i32 0, i32 0
  store ptr %92, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, i32 0, i32 1
  store ptr %93, ptr %96, align 8
  %97 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %94, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %97)
  unreachable
}

define void @main.make3() {
_llgo_0:
  %0 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 2, i1 false)
  %1 = getelementptr inbounds %main.N, ptr %0, i64 0
  %2 = getelementptr inbounds %main.N, ptr %1, i32 0, i32 0
  %3 = getelementptr inbounds %main.N, ptr %1, i32 0, i32 1
  store i8 1, ptr %2, align 1
  store i8 2, ptr %3, align 1
  %4 = load [1 x %main.N], ptr %0, align 1
  %5 = load ptr, ptr @_llgo_main.K, align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %4, ptr %6, align 1
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %6, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %11 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %11, i8 0, i64 2, i1 false)
  %12 = getelementptr inbounds %main.N, ptr %11, i64 0
  %13 = getelementptr inbounds %main.N, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds %main.N, ptr %12, i32 0, i32 1
  store i8 1, ptr %13, align 1
  store i8 2, ptr %14, align 1
  %15 = load [1 x %main.N], ptr %11, align 1
  %16 = load ptr, ptr @_llgo_main.K, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %15, ptr %17, align 1
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %16, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr %17, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  %22 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %10, %"github.com/goplus/llgo/internal/runtime.eface" %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %23 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %23, i64 0)
  %25 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %25, i8 0, i64 2, i1 false)
  %26 = getelementptr inbounds %main.N, ptr %25, i64 0
  %27 = getelementptr inbounds %main.N, ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds %main.N, ptr %26, i32 0, i32 1
  store i8 1, ptr %27, align 1
  store i8 2, ptr %28, align 1
  %29 = load [1 x %main.N], ptr %25, align 1
  %30 = load ptr, ptr @_llgo_main.K, align 8
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %29, ptr %31, align 1
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 0
  store ptr %30, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, i32 0, i32 1
  store ptr %31, ptr %34, align 8
  %35 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %32, align 8
  %36 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %37 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %35, ptr %37, align 8
  %38 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %36, ptr %24, ptr %37)
  store i64 100, ptr %38, align 4
  %39 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %39, i8 0, i64 2, i1 false)
  %40 = getelementptr inbounds %main.N, ptr %39, i64 0
  %41 = getelementptr inbounds %main.N, ptr %40, i32 0, i32 0
  %42 = getelementptr inbounds %main.N, ptr %40, i32 0, i32 1
  store i8 3, ptr %41, align 1
  store i8 4, ptr %42, align 1
  %43 = load [1 x %main.N], ptr %39, align 1
  %44 = load ptr, ptr @_llgo_main.K, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %43, ptr %45, align 1
  %46 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %47 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i32 0, i32 0
  store ptr %44, ptr %47, align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, i32 0, i32 1
  store ptr %45, ptr %48, align 8
  %49 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %46, align 8
  %50 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %49, ptr %51, align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %50, ptr %24, ptr %51)
  store i64 200, ptr %52, align 4
  %53 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %54 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %53, ptr %24)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %55 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %54)
  %56 = extractvalue { i1, ptr, ptr } %55, 0
  br i1 %56, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %57 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %76, 1
  %58 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %76, 2
  %59 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %57, 0
  %60 = load ptr, ptr @_llgo_main.K, align 8
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %62 = extractvalue { i1, ptr, ptr } %55, 1
  %63 = extractvalue { i1, ptr, ptr } %55, 2
  %64 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %62, align 8
  %65 = load i64, ptr %63, align 4
  %66 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %67 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %66, i32 0, i32 0
  store i1 true, ptr %67, align 1
  %68 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %66, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %64, ptr %68, align 8
  %69 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %66, i32 0, i32 2
  store i64 %65, ptr %69, align 4
  %70 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %66, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %71 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %72 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %71, i32 0, i32 0
  store i1 false, ptr %72, align 1
  %73 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %71, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %73, align 8
  %74 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %71, i32 0, i32 2
  store i64 0, ptr %74, align 4
  %75 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %71, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %76 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %70, %_llgo_4 ], [ %75, %_llgo_5 ]
  %77 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %76, 0
  br i1 %77, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %78 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %57, 1
  %79 = load [1 x %main.N], ptr %78, align 1
  %80 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %80, i8 0, i64 2, i1 false)
  store [1 x %main.N] %79, ptr %80, align 1
  %81 = getelementptr inbounds %main.N, ptr %80, i64 0
  %82 = load %main.N, ptr %81, align 1
  %83 = extractvalue %main.N %82, 0
  %84 = sext i8 %83 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %84)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %58)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %85 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 0
  store ptr @14, ptr %86, align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %85, i32 0, i32 1
  store i64 21, ptr %87, align 4
  %88 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %85, align 8
  %89 = load ptr, ptr @_llgo_string, align 8
  %90 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %88, ptr %90, align 8
  %91 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, i32 0, i32 0
  store ptr %89, ptr %92, align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, i32 0, i32 1
  store ptr %90, ptr %93, align 8
  %94 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %91, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %94)
  unreachable
}

define void @main.make4() {
_llgo_0:
  %0 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %0, i8 0, i64 8, i1 false)
  %1 = getelementptr inbounds ptr, ptr %0, i64 0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %3 = getelementptr inbounds %main.N, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %main.N, ptr %2, i32 0, i32 1
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  store ptr %2, ptr %1, align 8
  %5 = load [1 x ptr], ptr %0, align 8
  %6 = load ptr, ptr @_llgo_main.K2, align 8
  %7 = extractvalue [1 x ptr] %5, 0
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  %12 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds ptr, ptr %12, i64 0
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %15 = getelementptr inbounds %main.N, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %main.N, ptr %14, i32 0, i32 1
  store i8 1, ptr %15, align 1
  store i8 2, ptr %16, align 1
  store ptr %14, ptr %13, align 8
  %17 = load [1 x ptr], ptr %12, align 8
  %18 = load ptr, ptr @_llgo_main.K2, align 8
  %19 = extractvalue [1 x ptr] %17, 0
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %20, i32 0, i32 0
  store ptr %18, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %20, i32 0, i32 1
  store ptr %19, ptr %22, align 8
  %23 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %20, align 8
  %24 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %11, %"github.com/goplus/llgo/internal/runtime.eface" %23)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %25 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %25, i64 0)
  %27 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds ptr, ptr %27, i64 0
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %30 = getelementptr inbounds %main.N, ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %main.N, ptr %29, i32 0, i32 1
  store i8 1, ptr %30, align 1
  store i8 2, ptr %31, align 1
  store ptr %29, ptr %28, align 8
  %32 = load [1 x ptr], ptr %27, align 8
  %33 = load ptr, ptr @_llgo_main.K2, align 8
  %34 = extractvalue [1 x ptr] %32, 0
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 0
  store ptr %33, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, i32 0, i32 1
  store ptr %34, ptr %37, align 8
  %38 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %35, align 8
  %39 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %38, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %39, ptr %26, ptr %40)
  store i64 100, ptr %41, align 4
  %42 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %42, i8 0, i64 8, i1 false)
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %45 = getelementptr inbounds %main.N, ptr %44, i32 0, i32 0
  %46 = getelementptr inbounds %main.N, ptr %44, i32 0, i32 1
  store i8 3, ptr %45, align 1
  store i8 4, ptr %46, align 1
  store ptr %44, ptr %43, align 8
  %47 = load [1 x ptr], ptr %42, align 8
  %48 = load ptr, ptr @_llgo_main.K2, align 8
  %49 = extractvalue [1 x ptr] %47, 0
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 0
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 1
  store ptr %49, ptr %52, align 8
  %53 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, align 8
  %54 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %53, ptr %55, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %54, ptr %26, ptr %55)
  store i64 200, ptr %56, align 4
  %57 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %57, ptr %26)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %59 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %58)
  %60 = extractvalue { i1, ptr, ptr } %59, 0
  br i1 %60, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %61 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %80, 1
  %62 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %80, 2
  %63 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %61, 0
  %64 = load ptr, ptr @_llgo_main.K2, align 8
  %65 = icmp eq ptr %63, %64
  br i1 %65, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %66 = extractvalue { i1, ptr, ptr } %59, 1
  %67 = extractvalue { i1, ptr, ptr } %59, 2
  %68 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, align 8
  %69 = load i64, ptr %67, align 4
  %70 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %71 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %70, i32 0, i32 0
  store i1 true, ptr %71, align 1
  %72 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %70, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %68, ptr %72, align 8
  %73 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %70, i32 0, i32 2
  store i64 %69, ptr %73, align 4
  %74 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %70, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %75 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %76 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %75, i32 0, i32 0
  store i1 false, ptr %76, align 1
  %77 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %75, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %77, align 8
  %78 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %75, i32 0, i32 2
  store i64 0, ptr %78, align 4
  %79 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %75, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %80 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %74, %_llgo_4 ], [ %79, %_llgo_5 ]
  %81 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %80, 0
  br i1 %81, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %82 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %61, 1
  %83 = getelementptr inbounds %main.N, ptr %82, i32 0, i32 0
  %84 = load i8, ptr %83, align 1
  %85 = sext i8 %84 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %85)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %62)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %86 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %87 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 0
  store ptr @14, ptr %87, align 8
  %88 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %86, i32 0, i32 1
  store i64 21, ptr %88, align 4
  %89 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %86, align 8
  %90 = load ptr, ptr @_llgo_string, align 8
  %91 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %89, ptr %91, align 8
  %92 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %93 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %92, i32 0, i32 0
  store ptr %90, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %92, i32 0, i32 1
  store ptr %91, ptr %94, align 8
  %95 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %92, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %95)
  unreachable
}

define void @main.make5() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = load ptr, ptr @"chan _llgo_int", align 8
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, i32 0, i32 1
  store ptr %0, ptr %4, align 8
  %5 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %2, align 8
  %6 = load ptr, ptr @"chan _llgo_int", align 8
  %7 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %8 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %7, align 8
  %11 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %5, %"github.com/goplus/llgo/internal/runtime.eface" %10)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %11)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %12 = load ptr, ptr @"chan _llgo_int", align 8
  %13 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %13, i64 0)
  %15 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %16, align 8
  %17 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %15, ptr %14, ptr %16)
  store i64 100, ptr %17, align 4
  %18 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %19, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %18, ptr %14, ptr %19)
  store i64 200, ptr %20, align 4
  %21 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %21, ptr %14)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %23 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %22)
  %24 = extractvalue { i1, ptr, ptr } %23, 0
  br i1 %24, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %25 = extractvalue { i1, ptr, i64 } %41, 1
  %26 = extractvalue { i1, ptr, i64 } %41, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %27 = extractvalue { i1, ptr, ptr } %23, 1
  %28 = extractvalue { i1, ptr, ptr } %23, 2
  %29 = load ptr, ptr %27, align 8
  %30 = load i64, ptr %28, align 4
  %31 = alloca { i1, ptr, i64 }, align 8
  %32 = getelementptr inbounds { i1, ptr, i64 }, ptr %31, i32 0, i32 0
  store i1 true, ptr %32, align 1
  %33 = getelementptr inbounds { i1, ptr, i64 }, ptr %31, i32 0, i32 1
  store ptr %29, ptr %33, align 8
  %34 = getelementptr inbounds { i1, ptr, i64 }, ptr %31, i32 0, i32 2
  store i64 %30, ptr %34, align 4
  %35 = load { i1, ptr, i64 }, ptr %31, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %36 = alloca { i1, ptr, i64 }, align 8
  %37 = getelementptr inbounds { i1, ptr, i64 }, ptr %36, i32 0, i32 0
  store i1 false, ptr %37, align 1
  %38 = getelementptr inbounds { i1, ptr, i64 }, ptr %36, i32 0, i32 1
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds { i1, ptr, i64 }, ptr %36, i32 0, i32 2
  store i64 0, ptr %39, align 4
  %40 = load { i1, ptr, i64 }, ptr %36, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %41 = phi { i1, ptr, i64 } [ %35, %_llgo_4 ], [ %40, %_llgo_5 ]
  %42 = extractvalue { i1, ptr, i64 } %41, 0
  br i1 %42, label %_llgo_2, label %_llgo_3
}

define void @main.make6() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @5, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @_llgo_main.M, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %6, ptr %1, ptr %7)
  store %"github.com/goplus/llgo/internal/runtime.String" %5, ptr %8, align 8
  %9 = load ptr, ptr @_llgo_main.M, align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %9, ptr %1)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %11 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %10)
  %12 = extractvalue { i1, ptr, ptr } %11, 0
  br i1 %12, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %13 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %29, 1
  %14 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %29, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %15 = extractvalue { i1, ptr, ptr } %11, 1
  %16 = extractvalue { i1, ptr, ptr } %11, 2
  %17 = load i64, ptr %15, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %19 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %20 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %19, i32 0, i32 0
  store i1 true, ptr %20, align 1
  %21 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %19, i32 0, i32 1
  store i64 %17, ptr %21, align 4
  %22 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %19, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %18, ptr %22, align 8
  %23 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %19, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %24 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %25 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %24, i32 0, i32 0
  store i1 false, ptr %25, align 1
  %26 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %24, i32 0, i32 1
  store i64 0, ptr %26, align 4
  %27 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %24, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %27, align 8
  %28 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %24, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %29 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %23, %_llgo_4 ], [ %28, %_llgo_5 ]
  %30 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %29, 0
  br i1 %30, label %_llgo_2, label %_llgo_3
}

define void @main.make7() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.N, align 8
  %1 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %1, i64 2)
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @5, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 5, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %8, align 4
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %7, ptr %2, ptr %8)
  store %"github.com/goplus/llgo/internal/runtime.String" %6, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @6, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 5, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %15, align 4
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %14, ptr %2, ptr %15)
  store %"github.com/goplus/llgo/internal/runtime.String" %13, ptr %16, align 8
  %17 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %17, ptr %2)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %19 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %18)
  %20 = extractvalue { i1, ptr, ptr } %19, 0
  br i1 %20, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %21 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %41, 1
  %22 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %41, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %22)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %23 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %24, align 4
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %23, ptr %2, ptr %24)
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %27 = extractvalue { i1, ptr, ptr } %19, 1
  %28 = extractvalue { i1, ptr, ptr } %19, 2
  %29 = load i64, ptr %27, align 4
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %28, align 8
  %31 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %32 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %31, i32 0, i32 0
  store i1 true, ptr %32, align 1
  %33 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %31, i32 0, i32 1
  store i64 %29, ptr %33, align 4
  %34 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %31, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %30, ptr %34, align 8
  %35 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %31, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %36 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %37 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %36, i32 0, i32 0
  store i1 false, ptr %37, align 1
  %38 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %36, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %39, align 8
  %40 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %36, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %41 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %35, %_llgo_4 ], [ %40, %_llgo_5 ]
  %42 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %41, 0
  br i1 %42, label %_llgo_2, label %_llgo_3
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %3 = load ptr, ptr @_llgo_string, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %5 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %5, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %10 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 0
  store ptr @0, ptr %11, align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %10, i32 0, i32 1
  store i64 7, ptr %12, align 4
  %13 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %10, align 8
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 0
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %14, i32 0, i32 1
  store i64 0, ptr %16, align 4
  %17 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %14, align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %18)
  %20 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %13, ptr %19, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %17, i1 false)
  %21 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 0
  store ptr @1, ptr %22, align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %21, i32 0, i32 1
  store i64 4, ptr %23, align 4
  %24 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %21, align 8
  %25 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %26 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 0
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %25, i32 0, i32 1
  store i64 0, ptr %27, align 4
  %28 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %29)
  %31 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %24, ptr %30, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %28, i1 false)
  %32 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %33 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 0
  store ptr @2, ptr %33, align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %32, i32 0, i32 1
  store i64 5, ptr %34, align 4
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %32, align 8
  %36 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 0
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %36, i32 0, i32 1
  store i64 0, ptr %38, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %36, align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %40)
  %42 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %35, ptr %41, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %39, i1 false)
  %43 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 0
  store ptr @3, ptr %44, align 8
  %45 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %43, i32 0, i32 1
  store i64 8, ptr %45, align 4
  %46 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %43, align 8
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr null, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 0, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %52 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %46, ptr %51, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %50, i1 false)
  %53 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 0
  store ptr @4, ptr %54, align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %53, i32 0, i32 1
  store i64 4, ptr %55, align 4
  %56 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %53, align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %58 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %20, ptr %58, align 8
  %59 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %31, ptr %59, align 8
  %60 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %42, ptr %60, align 8
  %61 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %57, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %52, ptr %61, align 8
  %62 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %63 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 0
  store ptr %57, ptr %63, align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 1
  store i64 4, ptr %64, align 4
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, i32 0, i32 2
  store i64 4, ptr %65, align 4
  %66 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %62, align 8
  %67 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %56, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %66)
  %68 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %8, ptr %9, ptr %67, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %68)
  store ptr %68, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %69 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %73 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %74 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 0
  store ptr @0, ptr %74, align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %73, i32 0, i32 1
  store i64 7, ptr %75, align 4
  %76 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %73, align 8
  %77 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %78 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 0
  store ptr null, ptr %78, align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %77, i32 0, i32 1
  store i64 0, ptr %79, align 4
  %80 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %77, align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %82 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %81)
  %83 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %76, ptr %82, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %80, i1 false)
  %84 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %85 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 0
  store ptr @1, ptr %85, align 8
  %86 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %84, i32 0, i32 1
  store i64 4, ptr %86, align 4
  %87 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %84, align 8
  %88 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %89 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 0
  store ptr null, ptr %89, align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %88, i32 0, i32 1
  store i64 0, ptr %90, align 4
  %91 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %88, align 8
  %92 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %92)
  %94 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %87, ptr %93, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %91, i1 false)
  %95 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 0
  store ptr @2, ptr %96, align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %95, i32 0, i32 1
  store i64 5, ptr %97, align 4
  %98 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %95, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 0
  store ptr null, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %99, i32 0, i32 1
  store i64 0, ptr %101, align 4
  %102 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %99, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %104 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %103)
  %105 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %98, ptr %104, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %102, i1 false)
  %106 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %107 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 0
  store ptr @3, ptr %107, align 8
  %108 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %106, i32 0, i32 1
  store i64 8, ptr %108, align 4
  %109 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %106, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr null, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 0, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %115 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %109, ptr %114, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %113, i1 false)
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @4, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 4, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %121 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %120, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %83, ptr %121, align 8
  %122 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %120, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %94, ptr %122, align 8
  %123 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %120, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %105, ptr %123, align 8
  %124 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %120, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %115, ptr %124, align 8
  %125 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %126 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 0
  store ptr %120, ptr %126, align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 1
  store i64 4, ptr %127, align 4
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, i32 0, i32 2
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %125, align 8
  %130 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %119, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %129)
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %71, ptr %72, ptr %130, i64 12)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %131)
  store ptr %131, ptr @"map[_llgo_string]_llgo_int", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %132 = load ptr, ptr @_llgo_any, align 8
  %133 = icmp eq ptr %132, null
  br i1 %133, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %134 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %135 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 0
  store ptr %134, ptr %136, align 8
  %137 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 1
  store i64 0, ptr %137, align 4
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, i32 0, i32 2
  store i64 0, ptr %138, align 4
  %139 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %135, align 8
  %140 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %141 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 0
  store ptr @4, ptr %141, align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %140, i32 0, i32 1
  store i64 4, ptr %142, align 4
  %143 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %140, align 8
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr null, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 0, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %143, %"github.com/goplus/llgo/internal/runtime.String" %147, %"github.com/goplus/llgo/internal/runtime.Slice" %139)
  store ptr %148, ptr @_llgo_any, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %149 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %150 = icmp eq ptr %149, null
  br i1 %150, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %151 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %152 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 0
  store ptr %151, ptr %153, align 8
  %154 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 1
  store i64 0, ptr %154, align 4
  %155 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, i32 0, i32 2
  store i64 0, ptr %155, align 4
  %156 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %152, align 8
  %157 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 0
  store ptr @4, ptr %158, align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %157, i32 0, i32 1
  store i64 4, ptr %159, align 4
  %160 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %157, align 8
  %161 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %162 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %161, i32 0, i32 0
  store ptr null, ptr %162, align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %161, i32 0, i32 1
  store i64 0, ptr %163, align 4
  %164 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %161, align 8
  %165 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %160, %"github.com/goplus/llgo/internal/runtime.String" %164, %"github.com/goplus/llgo/internal/runtime.Slice" %156)
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 0
  store ptr @0, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %167, i32 0, i32 1
  store i64 7, ptr %169, align 4
  %170 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  %171 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %172 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 0
  store ptr null, ptr %172, align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %171, i32 0, i32 1
  store i64 0, ptr %173, align 4
  %174 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %171, align 8
  %175 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %176 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %175)
  %177 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %170, ptr %176, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %174, i1 false)
  %178 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %179 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 0
  store ptr @1, ptr %179, align 8
  %180 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %178, i32 0, i32 1
  store i64 4, ptr %180, align 4
  %181 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %178, align 8
  %182 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %183 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 0
  store ptr null, ptr %183, align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %182, i32 0, i32 1
  store i64 0, ptr %184, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %182, align 8
  %186 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %187, i32 0, i32 0
  store ptr %186, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %187, i32 0, i32 1
  store i64 0, ptr %189, align 4
  %190 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %187, i32 0, i32 2
  store i64 0, ptr %190, align 4
  %191 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %187, align 8
  %192 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %193 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 0
  store ptr @4, ptr %193, align 8
  %194 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %192, i32 0, i32 1
  store i64 4, ptr %194, align 4
  %195 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %192, align 8
  %196 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %197 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 0
  store ptr null, ptr %197, align 8
  %198 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %196, i32 0, i32 1
  store i64 0, ptr %198, align 4
  %199 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %196, align 8
  %200 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %195, %"github.com/goplus/llgo/internal/runtime.String" %199, %"github.com/goplus/llgo/internal/runtime.Slice" %191)
  %201 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %200)
  %202 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %181, ptr %201, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %185, i1 false)
  %203 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %204 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 0
  store ptr @2, ptr %204, align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %203, i32 0, i32 1
  store i64 5, ptr %205, align 4
  %206 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %203, align 8
  %207 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %208 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 0
  store ptr null, ptr %208, align 8
  %209 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %207, i32 0, i32 1
  store i64 0, ptr %209, align 4
  %210 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %207, align 8
  %211 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %212 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %211)
  %213 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %206, ptr %212, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %210, i1 false)
  %214 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 0
  store ptr @3, ptr %215, align 8
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %214, i32 0, i32 1
  store i64 8, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %214, align 8
  %218 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %219 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 0
  store ptr null, ptr %219, align 8
  %220 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %218, i32 0, i32 1
  store i64 0, ptr %220, align 4
  %221 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %218, align 8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %223 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %217, ptr %222, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %221, i1 false)
  %224 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %225 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 0
  store ptr @4, ptr %225, align 8
  %226 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %224, i32 0, i32 1
  store i64 4, ptr %226, align 4
  %227 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %224, align 8
  %228 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %229 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %177, ptr %229, align 8
  %230 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %202, ptr %230, align 8
  %231 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %213, ptr %231, align 8
  %232 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %228, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %223, ptr %232, align 8
  %233 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 0
  store ptr %228, ptr %234, align 8
  %235 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 1
  store i64 4, ptr %235, align 4
  %236 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, i32 0, i32 2
  store i64 4, ptr %236, align 4
  %237 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %233, align 8
  %238 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %227, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %237)
  %239 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %165, ptr %166, ptr %238, i64 24)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %239)
  store ptr %239, ptr @"map[_llgo_any]_llgo_int", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %240 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %241 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 0
  store ptr @12, ptr %241, align 8
  %242 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %240, i32 0, i32 1
  store i64 7, ptr %242, align 4
  %243 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %240, align 8
  %244 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %243, i64 17, i64 8, i64 0, i64 0)
  %245 = load ptr, ptr @_llgo_main.N1, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %244, ptr @_llgo_main.N1, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %247 = load ptr, ptr @"[1]_llgo_int", align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %249 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %250 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %249)
  store ptr %250, ptr @"[1]_llgo_int", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %251 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %246, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %252 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %253 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 0
  store ptr @4, ptr %253, align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %252, i32 0, i32 1
  store i64 4, ptr %254, align 4
  %255 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %252, align 8
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @13, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 2, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %244, %"github.com/goplus/llgo/internal/runtime.String" %255, %"github.com/goplus/llgo/internal/runtime.String" %259, ptr %251, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr @15, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 6, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %263, i64 17, i64 2, i64 0, i64 0)
  %265 = load ptr, ptr @_llgo_main.K, align 8
  %266 = icmp eq ptr %265, null
  br i1 %266, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %264, ptr @_llgo_main.K, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr @16, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 6, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %270, i64 25, i64 2, i64 0, i64 0)
  %272 = load ptr, ptr @_llgo_main.N, align 8
  %273 = icmp eq ptr %272, null
  br i1 %273, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %271, ptr @_llgo_main.N, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %274 = load ptr, ptr @_llgo_int8, align 8
  %275 = icmp eq ptr %274, null
  br i1 %275, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %276 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %276, ptr @_llgo_int8, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %277 = load ptr, ptr @_llgo_int8, align 8
  %278 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 0
  store ptr @17, ptr %279, align 8
  %280 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %278, i32 0, i32 1
  store i64 2, ptr %280, align 4
  %281 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %278, align 8
  %282 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %283 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 0
  store ptr null, ptr %283, align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %282, i32 0, i32 1
  store i64 0, ptr %284, align 4
  %285 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %282, align 8
  %286 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %287 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %281, ptr %286, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %285, i1 false)
  %288 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %289 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 0
  store ptr @18, ptr %289, align 8
  %290 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %288, i32 0, i32 1
  store i64 2, ptr %290, align 4
  %291 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %288, align 8
  %292 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 0
  store ptr null, ptr %293, align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %292, i32 0, i32 1
  store i64 0, ptr %294, align 4
  %295 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %292, align 8
  %296 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %297 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %291, ptr %296, i64 1, %"github.com/goplus/llgo/internal/runtime.String" %295, i1 false)
  %298 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 0
  store ptr @4, ptr %299, align 8
  %300 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %298, i32 0, i32 1
  store i64 4, ptr %300, align 4
  %301 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %298, align 8
  %302 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %303 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %302, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %287, ptr %303, align 8
  %304 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %302, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %297, ptr %304, align 8
  %305 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %306 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 0
  store ptr %302, ptr %306, align 8
  %307 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 1
  store i64 2, ptr %307, align 4
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, i32 0, i32 2
  store i64 2, ptr %308, align 4
  %309 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %305, align 8
  %310 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %301, i64 2, %"github.com/goplus/llgo/internal/runtime.Slice" %309)
  store ptr %310, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %311 = load ptr, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br i1 %273, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %312 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %313 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 0
  store ptr @4, ptr %313, align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %312, i32 0, i32 1
  store i64 4, ptr %314, align 4
  %315 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %312, align 8
  %316 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %317 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 0
  store ptr @19, ptr %317, align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %316, i32 0, i32 1
  store i64 1, ptr %318, align 4
  %319 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %316, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %271, %"github.com/goplus/llgo/internal/runtime.String" %315, %"github.com/goplus/llgo/internal/runtime.String" %319, ptr %311, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %320 = load ptr, ptr @_llgo_main.N, align 8
  %321 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %322 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 0
  store ptr @16, ptr %322, align 8
  %323 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %321, i32 0, i32 1
  store i64 6, ptr %323, align 4
  %324 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %321, align 8
  %325 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %324, i64 25, i64 2, i64 0, i64 0)
  %326 = load ptr, ptr @"[1]_llgo_main.N", align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %325)
  store ptr %328, ptr @"[1]_llgo_main.N", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %329 = load ptr, ptr @"[1]_llgo_main.N", align 8
  br i1 %266, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %330 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 0
  store ptr @4, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 1
  store i64 4, ptr %332, align 4
  %333 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %330, align 8
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 0
  store ptr @20, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 1
  store i64 1, ptr %336, align 4
  %337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %334, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %264, %"github.com/goplus/llgo/internal/runtime.String" %333, %"github.com/goplus/llgo/internal/runtime.String" %337, ptr %329, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 0
  store ptr @21, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 1
  store i64 7, ptr %340, align 4
  %341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %338, align 8
  %342 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %341, i64 17, i64 8, i64 0, i64 0)
  %343 = load ptr, ptr @_llgo_main.K2, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %342)
  store ptr %342, ptr @_llgo_main.K2, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %345 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %346 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 0
  store ptr @16, ptr %346, align 8
  %347 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %345, i32 0, i32 1
  store i64 6, ptr %347, align 4
  %348 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %345, align 8
  %349 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %348, i64 25, i64 2, i64 0, i64 0)
  %350 = load ptr, ptr @"*_llgo_main.N", align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %352 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %349)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %352)
  store ptr %352, ptr @"*_llgo_main.N", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %353 = load ptr, ptr @"*_llgo_main.N", align 8
  %354 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 0
  store ptr @16, ptr %355, align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %354, i32 0, i32 1
  store i64 6, ptr %356, align 4
  %357 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %354, align 8
  %358 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %357, i64 25, i64 2, i64 0, i64 0)
  %359 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  %360 = icmp eq ptr %359, null
  br i1 %360, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %358)
  %362 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %361)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %362)
  store ptr %362, ptr @"[1]*_llgo_main.N", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %363 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  br i1 %344, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %364 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %365 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 0
  store ptr @4, ptr %365, align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %364, i32 0, i32 1
  store i64 4, ptr %366, align 4
  %367 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %364, align 8
  %368 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %369 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %368, i32 0, i32 0
  store ptr @22, ptr %369, align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %368, i32 0, i32 1
  store i64 2, ptr %370, align 4
  %371 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %368, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %342, %"github.com/goplus/llgo/internal/runtime.String" %367, %"github.com/goplus/llgo/internal/runtime.String" %371, ptr %363, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %372 = load ptr, ptr @"chan _llgo_int", align 8
  %373 = icmp eq ptr %372, null
  br i1 %373, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %374 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 0
  store ptr @23, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 1
  store i64 4, ptr %376, align 4
  %377 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %374, align 8
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %379 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %377, ptr %378)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %379)
  store ptr %379, ptr @"chan _llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %380 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 0
  store ptr @23, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 1
  store i64 4, ptr %384, align 4
  %385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %382, align 8
  %386 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %387 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %385, ptr %386)
  %388 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %389 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %390 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %389, i32 0, i32 0
  store ptr @0, ptr %390, align 8
  %391 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %389, i32 0, i32 1
  store i64 7, ptr %391, align 4
  %392 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %389, align 8
  %393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 0
  store ptr null, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 1
  store i64 0, ptr %395, align 4
  %396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %393, align 8
  %397 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %398 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %397)
  %399 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %392, ptr %398, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %396, i1 false)
  %400 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %401 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %400, i32 0, i32 0
  store ptr @1, ptr %401, align 8
  %402 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %400, i32 0, i32 1
  store i64 4, ptr %402, align 4
  %403 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %400, align 8
  %404 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 0
  store ptr null, ptr %405, align 8
  %406 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %404, i32 0, i32 1
  store i64 0, ptr %406, align 4
  %407 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %404, align 8
  %408 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %409 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %408, i32 0, i32 0
  store ptr @23, ptr %409, align 8
  %410 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %408, i32 0, i32 1
  store i64 4, ptr %410, align 4
  %411 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %408, align 8
  %412 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %413 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %411, ptr %412)
  %414 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %413)
  %415 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %403, ptr %414, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %407, i1 false)
  %416 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %417 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %416, i32 0, i32 0
  store ptr @2, ptr %417, align 8
  %418 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %416, i32 0, i32 1
  store i64 5, ptr %418, align 4
  %419 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %416, align 8
  %420 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %421 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 0
  store ptr null, ptr %421, align 8
  %422 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %420, i32 0, i32 1
  store i64 0, ptr %422, align 4
  %423 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %420, align 8
  %424 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %425 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %424)
  %426 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %419, ptr %425, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %423, i1 false)
  %427 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %428 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 0
  store ptr @3, ptr %428, align 8
  %429 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %427, i32 0, i32 1
  store i64 8, ptr %429, align 4
  %430 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %427, align 8
  %431 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %432 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 0
  store ptr null, ptr %432, align 8
  %433 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %431, i32 0, i32 1
  store i64 0, ptr %433, align 4
  %434 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %431, align 8
  %435 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %436 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %430, ptr %435, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %434, i1 false)
  %437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %437, i32 0, i32 0
  store ptr @4, ptr %438, align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %437, i32 0, i32 1
  store i64 4, ptr %439, align 4
  %440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %437, align 8
  %441 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %442 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %399, ptr %442, align 8
  %443 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %415, ptr %443, align 8
  %444 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %426, ptr %444, align 8
  %445 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %441, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %436, ptr %445, align 8
  %446 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %447 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 0
  store ptr %441, ptr %447, align 8
  %448 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 1
  store i64 4, ptr %448, align 4
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, i32 0, i32 2
  store i64 4, ptr %449, align 4
  %450 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %446, align 8
  %451 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %440, i64 144, %"github.com/goplus/llgo/internal/runtime.Slice" %450)
  %452 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %387, ptr %388, ptr %451, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %452)
  store ptr %452, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %453 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 0
  store ptr @24, ptr %454, align 8
  %455 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %453, i32 0, i32 1
  store i64 6, ptr %455, align 4
  %456 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %453, align 8
  %457 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %456, i64 21, i64 8, i64 0, i64 0)
  %458 = load ptr, ptr @_llgo_main.M, align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %457)
  store ptr %457, ptr @_llgo_main.M, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %460 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  br i1 %459, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %461 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %462 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %461, i32 0, i32 0
  store ptr @4, ptr %462, align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %461, i32 0, i32 1
  store i64 4, ptr %463, align 4
  %464 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %461, align 8
  %465 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 0
  store ptr @25, ptr %466, align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 1
  store i64 1, ptr %467, align 4
  %468 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %465, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %457, %"github.com/goplus/llgo/internal/runtime.String" %464, %"github.com/goplus/llgo/internal/runtime.String" %468, ptr %460, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 0
  store ptr @16, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 1
  store i64 6, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %469, align 8
  %473 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %472, i64 2, i64 8, i64 0, i64 0)
  %474 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %474, i32 0, i32 0
  store ptr @16, ptr %475, align 8
  %476 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %474, i32 0, i32 1
  store i64 6, ptr %476, align 4
  %477 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %474, align 8
  %478 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %477, i64 2, i64 8, i64 0, i64 0)
  %479 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %480 = icmp eq ptr %479, null
  br i1 %480, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %481 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %482 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %483 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 0
  store ptr @0, ptr %483, align 8
  %484 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %482, i32 0, i32 1
  store i64 7, ptr %484, align 4
  %485 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %482, align 8
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 0
  store ptr null, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 1
  store i64 0, ptr %488, align 4
  %489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %486, align 8
  %490 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %491 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %490)
  %492 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %485, ptr %491, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %489, i1 false)
  %493 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %494 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 0
  store ptr @1, ptr %494, align 8
  %495 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %493, i32 0, i32 1
  store i64 4, ptr %495, align 4
  %496 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %493, align 8
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr null, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 0, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %478)
  %502 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %496, ptr %501, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %500, i1 false)
  %503 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %504 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %503, i32 0, i32 0
  store ptr @2, ptr %504, align 8
  %505 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %503, i32 0, i32 1
  store i64 5, ptr %505, align 4
  %506 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %503, align 8
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr null, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 0, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %512 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %511)
  %513 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %506, ptr %512, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %510, i1 false)
  %514 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %515 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %514, i32 0, i32 0
  store ptr @3, ptr %515, align 8
  %516 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %514, i32 0, i32 1
  store i64 8, ptr %516, align 4
  %517 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %514, align 8
  %518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 0
  store ptr null, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 1
  store i64 0, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %518, align 8
  %522 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %523 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %517, ptr %522, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %521, i1 false)
  %524 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %525 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 0
  store ptr @4, ptr %525, align 8
  %526 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %524, i32 0, i32 1
  store i64 4, ptr %526, align 4
  %527 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %524, align 8
  %528 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %529 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %528, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %492, ptr %529, align 8
  %530 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %528, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %502, ptr %530, align 8
  %531 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %528, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %513, ptr %531, align 8
  %532 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %528, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %523, ptr %532, align 8
  %533 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %534 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 0
  store ptr %528, ptr %534, align 8
  %535 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 1
  store i64 4, ptr %535, align 4
  %536 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, i32 0, i32 2
  store i64 4, ptr %536, align 4
  %537 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %533, align 8
  %538 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %527, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %537)
  %539 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %473, ptr %481, ptr %538, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %539)
  store ptr %539, ptr @"map[_llgo_main.N]_llgo_string", align 8
  br label %_llgo_48

_llgo_48:                                         ; preds = %_llgo_47, %_llgo_46
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String", i64, %"github.com/goplus/llgo/internal/runtime.Slice")

declare %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String", ptr, i64, %"github.com/goplus/llgo/internal/runtime.String", i1)

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr, ptr, ptr)

declare i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr, ptr)

declare { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr)

declare { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr, ptr, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.Slice")

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64, %"github.com/goplus/llgo/internal/runtime.String", ptr)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

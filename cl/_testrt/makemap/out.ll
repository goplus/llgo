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
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %10, ptr %3, ptr %11)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %12, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @6, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 5, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = load ptr, ptr @_llgo_int, align 8
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %20, align 4
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %19, ptr %3, ptr %20)
  store %"github.com/goplus/llgo/internal/runtime.String" %16, ptr %21, align 8
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 0
  store ptr @7, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %22, i32 0, i32 1
  store i64 4, ptr %24, align 4
  %25 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %22, align 8
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @_llgo_string, align 8
  %28 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %29, align 4
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %28, ptr %3, ptr %29)
  store %"github.com/goplus/llgo/internal/runtime.String" %25, ptr %30, align 8
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = load ptr, ptr @_llgo_string, align 8
  %33 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %34, align 4
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %33, ptr %3, ptr %34)
  %36 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %37 = load ptr, ptr @_llgo_int, align 8
  %38 = load ptr, ptr @_llgo_string, align 8
  %39 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %40, align 4
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %39, ptr %3, ptr %40)
  %42 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %43 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %42)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %44 = load ptr, ptr @_llgo_int, align 8
  %45 = load ptr, ptr @_llgo_string, align 8
  %46 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %46, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %48 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %47)
  %49 = extractvalue { i1, ptr, ptr } %48, 0
  br i1 %49, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %50 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %180, 1
  %51 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %180, 2
  %52 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %53 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 0
  store ptr @8, ptr %53, align 8
  %54 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %52, i32 0, i32 1
  store i64 1, ptr %54, align 4
  %55 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %52, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %50)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %55)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %51)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %56 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %3)
  %57 = load ptr, ptr @_llgo_string, align 8
  %58 = load ptr, ptr @_llgo_int, align 8
  %59 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %59, i64 %56)
  %61 = load ptr, ptr @_llgo_int, align 8
  %62 = load ptr, ptr @_llgo_string, align 8
  %63 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %63, ptr %3)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %65 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %64)
  %66 = extractvalue { i1, ptr, ptr } %65, 0
  br i1 %66, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %67 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %196, 1
  %68 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %196, 2
  %69 = load ptr, ptr @_llgo_string, align 8
  %70 = load ptr, ptr @_llgo_int, align 8
  %71 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %72 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %68, ptr %72, align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %71, ptr %60, ptr %72)
  store i64 %67, ptr %73, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @7, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 4, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  %78 = load ptr, ptr @_llgo_string, align 8
  %79 = load ptr, ptr @_llgo_int, align 8
  %80 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %81 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %77, ptr %81, align 8
  %82 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %80, ptr %60, ptr %81)
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
  store ptr @7, ptr %93, align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %92, i32 0, i32 1
  store i64 4, ptr %94, align 4
  %95 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %92, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %95)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %90)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %91)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 0
  store ptr @9, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %96, i32 0, i32 1
  store i64 2, ptr %98, align 4
  %99 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %96, align 8
  %100 = load ptr, ptr @_llgo_string, align 8
  %101 = load ptr, ptr @_llgo_int, align 8
  %102 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %99, ptr %103, align 8
  %104 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %102, ptr %60, ptr %103)
  %105 = extractvalue { ptr, i1 } %104, 0
  %106 = load i64, ptr %105, align 4
  %107 = extractvalue { ptr, i1 } %104, 1
  %108 = alloca { i64, i1 }, align 8
  %109 = getelementptr inbounds { i64, i1 }, ptr %108, i32 0, i32 0
  store i64 %106, ptr %109, align 4
  %110 = getelementptr inbounds { i64, i1 }, ptr %108, i32 0, i32 1
  store i1 %107, ptr %110, align 1
  %111 = load { i64, i1 }, ptr %108, align 4
  %112 = extractvalue { i64, i1 } %111, 0
  %113 = extractvalue { i64, i1 } %111, 1
  %114 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %115 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 0
  store ptr @9, ptr %115, align 8
  %116 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %114, i32 0, i32 1
  store i64 2, ptr %116, align 4
  %117 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %114, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %117)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %112)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %113)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %118 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %119 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 0
  store ptr @7, ptr %119, align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %118, i32 0, i32 1
  store i64 4, ptr %120, align 4
  %121 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %118, align 8
  %122 = load ptr, ptr @_llgo_string, align 8
  %123 = load ptr, ptr @_llgo_int, align 8
  %124 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %121, ptr %125, align 8
  call void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr %124, ptr %60, ptr %125)
  %126 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %127 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 0
  store ptr @7, ptr %127, align 8
  %128 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %126, i32 0, i32 1
  store i64 4, ptr %128, align 4
  %129 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %126, align 8
  %130 = load ptr, ptr @_llgo_string, align 8
  %131 = load ptr, ptr @_llgo_int, align 8
  %132 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %129, ptr %133, align 8
  %134 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %132, ptr %60, ptr %133)
  %135 = extractvalue { ptr, i1 } %134, 0
  %136 = load i64, ptr %135, align 4
  %137 = extractvalue { ptr, i1 } %134, 1
  %138 = alloca { i64, i1 }, align 8
  %139 = getelementptr inbounds { i64, i1 }, ptr %138, i32 0, i32 0
  store i64 %136, ptr %139, align 4
  %140 = getelementptr inbounds { i64, i1 }, ptr %138, i32 0, i32 1
  store i1 %137, ptr %140, align 1
  %141 = load { i64, i1 }, ptr %138, align 4
  %142 = extractvalue { i64, i1 } %141, 0
  %143 = extractvalue { i64, i1 } %141, 1
  br i1 %143, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %144 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %145 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 0
  store ptr @10, ptr %145, align 8
  %146 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %144, i32 0, i32 1
  store i64 7, ptr %146, align 4
  %147 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %144, align 8
  %148 = load ptr, ptr @_llgo_string, align 8
  %149 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %147, ptr %149, align 8
  %150 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %151 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 0
  store ptr %148, ptr %151, align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, i32 0, i32 1
  store ptr %149, ptr %152, align 8
  %153 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %150, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %153)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %154 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %60)
  %155 = icmp ne i64 %154, 2
  br i1 %155, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %156 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %157 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 0
  store ptr @11, ptr %157, align 8
  %158 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %156, i32 0, i32 1
  store i64 7, ptr %158, align 4
  %159 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %156, align 8
  %160 = load ptr, ptr @_llgo_string, align 8
  %161 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %159, ptr %161, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, i32 0, i32 0
  store ptr %160, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, i32 0, i32 1
  store ptr %161, ptr %164, align 8
  %165 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %162, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %165)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %166 = extractvalue { i1, ptr, ptr } %48, 1
  %167 = extractvalue { i1, ptr, ptr } %48, 2
  %168 = load i64, ptr %166, align 4
  %169 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %167, align 8
  %170 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %171 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %170, i32 0, i32 0
  store i1 true, ptr %171, align 1
  %172 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %170, i32 0, i32 1
  store i64 %168, ptr %172, align 4
  %173 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %170, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %169, ptr %173, align 8
  %174 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %170, align 8
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  %175 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %176 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %175, i32 0, i32 0
  store i1 false, ptr %176, align 1
  %177 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %175, i32 0, i32 1
  store i64 0, ptr %177, align 4
  %178 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %175, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %178, align 8
  %179 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %175, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %180 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %174, %_llgo_11 ], [ %179, %_llgo_12 ]
  %181 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %180, 0
  br i1 %181, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %182 = extractvalue { i1, ptr, ptr } %65, 1
  %183 = extractvalue { i1, ptr, ptr } %65, 2
  %184 = load i64, ptr %182, align 4
  %185 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %186 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %187 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %186, i32 0, i32 0
  store i1 true, ptr %187, align 1
  %188 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %186, i32 0, i32 1
  store i64 %184, ptr %188, align 4
  %189 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %186, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %185, ptr %189, align 8
  %190 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %186, align 8
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  %191 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %192 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %191, i32 0, i32 0
  store i1 false, ptr %192, align 1
  %193 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %191, i32 0, i32 1
  store i64 0, ptr %193, align 4
  %194 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %191, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %194, align 8
  %195 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %191, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %196 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %190, %_llgo_14 ], [ %195, %_llgo_15 ]
  %197 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %196, 0
  br i1 %197, label %_llgo_5, label %_llgo_6
}

define void @main.make2() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %2, i64 0)
  %4 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr %3)
  %5 = icmp eq ptr %3, null
  %6 = icmp ne ptr %3, null
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %3)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %4)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %5)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %6)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %7 = call i64 @"github.com/goplus/llgo/internal/runtime.MapLen"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %8 = load ptr, ptr @_llgo_any, align 8
  %9 = load ptr, ptr @_llgo_int, align 8
  %10 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %10, i64 0)
  %12 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds i64, ptr %12, i64 0
  store i64 1, ptr %13, align 4
  %14 = load [1 x i64], ptr %12, align 4
  %15 = load ptr, ptr @_llgo_main.N1, align 8
  %16 = extractvalue [1 x i64] %14, 0
  %17 = inttoptr i64 %16 to ptr
  %18 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %19 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 0
  store ptr %15, ptr %19, align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, i32 0, i32 1
  store ptr %17, ptr %20, align 8
  %21 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %18, align 8
  %22 = load ptr, ptr @_llgo_any, align 8
  %23 = load ptr, ptr @_llgo_int, align 8
  %24 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %21, ptr %25, align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %24, ptr %11, ptr %25)
  store i64 100, ptr %26, align 4
  %27 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds i64, ptr %27, i64 0
  store i64 2, ptr %28, align 4
  %29 = load [1 x i64], ptr %27, align 4
  %30 = load ptr, ptr @_llgo_main.N1, align 8
  %31 = extractvalue [1 x i64] %29, 0
  %32 = inttoptr i64 %31 to ptr
  %33 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %34 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 0
  store ptr %30, ptr %34, align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, i32 0, i32 1
  store ptr %32, ptr %35, align 8
  %36 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %33, align 8
  %37 = load ptr, ptr @_llgo_any, align 8
  %38 = load ptr, ptr @_llgo_int, align 8
  %39 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %40 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %36, ptr %40, align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %39, ptr %11, ptr %40)
  store i64 200, ptr %41, align 4
  %42 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %42, i8 0, i64 8, i1 false)
  %43 = getelementptr inbounds i64, ptr %42, i64 0
  store i64 3, ptr %43, align 4
  %44 = load [1 x i64], ptr %42, align 4
  %45 = load ptr, ptr @_llgo_main.N1, align 8
  %46 = extractvalue [1 x i64] %44, 0
  %47 = inttoptr i64 %46 to ptr
  %48 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 0
  store ptr %45, ptr %49, align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, i32 0, i32 1
  store ptr %47, ptr %50, align 8
  %51 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %48, align 8
  %52 = load ptr, ptr @_llgo_any, align 8
  %53 = load ptr, ptr @_llgo_int, align 8
  %54 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %55 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %51, ptr %55, align 8
  %56 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %54, ptr %11, ptr %55)
  store i64 300, ptr %56, align 4
  %57 = alloca [1 x i64], align 8
  call void @llvm.memset(ptr %57, i8 0, i64 8, i1 false)
  %58 = getelementptr inbounds i64, ptr %57, i64 0
  store i64 2, ptr %58, align 4
  %59 = load [1 x i64], ptr %57, align 4
  %60 = load ptr, ptr @_llgo_main.N1, align 8
  %61 = extractvalue [1 x i64] %59, 0
  %62 = inttoptr i64 %61 to ptr
  %63 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %64 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 0
  store ptr %60, ptr %64, align 8
  %65 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, i32 0, i32 1
  store ptr %62, ptr %65, align 8
  %66 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %63, align 8
  %67 = load ptr, ptr @_llgo_any, align 8
  %68 = load ptr, ptr @_llgo_int, align 8
  %69 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %66, ptr %70, align 8
  %71 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %69, ptr %11, ptr %70)
  store i64 -200, ptr %71, align 4
  %72 = load ptr, ptr @_llgo_any, align 8
  %73 = load ptr, ptr @_llgo_int, align 8
  %74 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %74, ptr %11)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %76 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %75)
  %77 = extractvalue { i1, ptr, ptr } %76, 0
  br i1 %77, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %78 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %97, 1
  %79 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %97, 2
  %80 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %78, 0
  %81 = load ptr, ptr @_llgo_main.N1, align 8
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %83 = extractvalue { i1, ptr, ptr } %76, 1
  %84 = extractvalue { i1, ptr, ptr } %76, 2
  %85 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %83, align 8
  %86 = load i64, ptr %84, align 4
  %87 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %88 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 0
  store i1 true, ptr %88, align 1
  %89 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %85, ptr %89, align 8
  %90 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 2
  store i64 %86, ptr %90, align 4
  %91 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %92 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %93 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %92, i32 0, i32 0
  store i1 false, ptr %93, align 1
  %94 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %92, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %94, align 8
  %95 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %92, i32 0, i32 2
  store i64 0, ptr %95, align 4
  %96 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %92, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %97 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %91, %_llgo_4 ], [ %96, %_llgo_5 ]
  %98 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %97, 0
  br i1 %98, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %99 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %78, 1
  %100 = ptrtoint ptr %99 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %100)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %79)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %101 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 0
  store ptr @14, ptr %102, align 8
  %103 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %101, i32 0, i32 1
  store i64 21, ptr %103, align 4
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
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %110)
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
  %23 = load ptr, ptr @_llgo_any, align 8
  %24 = load ptr, ptr @_llgo_int, align 8
  %25 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %25, i64 0)
  %27 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %27, i8 0, i64 2, i1 false)
  %28 = getelementptr inbounds %main.N, ptr %27, i64 0
  %29 = getelementptr inbounds %main.N, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds %main.N, ptr %28, i32 0, i32 1
  store i8 1, ptr %29, align 1
  store i8 2, ptr %30, align 1
  %31 = load [1 x %main.N], ptr %27, align 1
  %32 = load ptr, ptr @_llgo_main.K, align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %31, ptr %33, align 1
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 0
  store ptr %32, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 1
  store ptr %33, ptr %36, align 8
  %37 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, align 8
  %38 = load ptr, ptr @_llgo_any, align 8
  %39 = load ptr, ptr @_llgo_int, align 8
  %40 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %37, ptr %41, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %40, ptr %26, ptr %41)
  store i64 100, ptr %42, align 4
  %43 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %43, i8 0, i64 2, i1 false)
  %44 = getelementptr inbounds %main.N, ptr %43, i64 0
  %45 = getelementptr inbounds %main.N, ptr %44, i32 0, i32 0
  %46 = getelementptr inbounds %main.N, ptr %44, i32 0, i32 1
  store i8 3, ptr %45, align 1
  store i8 4, ptr %46, align 1
  %47 = load [1 x %main.N], ptr %43, align 1
  %48 = load ptr, ptr @_llgo_main.K, align 8
  %49 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %47, ptr %49, align 1
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 0
  store ptr %48, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 1
  store ptr %49, ptr %52, align 8
  %53 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, align 8
  %54 = load ptr, ptr @_llgo_any, align 8
  %55 = load ptr, ptr @_llgo_int, align 8
  %56 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %53, ptr %57, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %56, ptr %26, ptr %57)
  store i64 200, ptr %58, align 4
  %59 = load ptr, ptr @_llgo_any, align 8
  %60 = load ptr, ptr @_llgo_int, align 8
  %61 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %61, ptr %26)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %63 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %62)
  %64 = extractvalue { i1, ptr, ptr } %63, 0
  br i1 %64, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %65 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 1
  %66 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 2
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %65, 0
  %68 = load ptr, ptr @_llgo_main.K, align 8
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
  %87 = load [1 x %main.N], ptr %86, align 1
  %88 = alloca [1 x %main.N], align 8
  call void @llvm.memset(ptr %88, i8 0, i64 2, i1 false)
  store [1 x %main.N] %87, ptr %88, align 1
  %89 = getelementptr inbounds %main.N, ptr %88, i64 0
  %90 = load %main.N, ptr %89, align 1
  %91 = extractvalue %main.N %90, 0
  %92 = sext i8 %91 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %92)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr @14, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 21, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = load ptr, ptr @_llgo_string, align 8
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %96, ptr %98, align 8
  %99 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 0
  store ptr %97, ptr %100, align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, i32 0, i32 1
  store ptr %98, ptr %101, align 8
  %102 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %99, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %102)
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
  %25 = load ptr, ptr @_llgo_any, align 8
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %27, i64 0)
  %29 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %29, i8 0, i64 8, i1 false)
  %30 = getelementptr inbounds ptr, ptr %29, i64 0
  %31 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %32 = getelementptr inbounds %main.N, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds %main.N, ptr %31, i32 0, i32 1
  store i8 1, ptr %32, align 1
  store i8 2, ptr %33, align 1
  store ptr %31, ptr %30, align 8
  %34 = load [1 x ptr], ptr %29, align 8
  %35 = load ptr, ptr @_llgo_main.K2, align 8
  %36 = extractvalue [1 x ptr] %34, 0
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, i32 0, i32 0
  store ptr %35, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, i32 0, i32 1
  store ptr %36, ptr %39, align 8
  %40 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %37, align 8
  %41 = load ptr, ptr @_llgo_any, align 8
  %42 = load ptr, ptr @_llgo_int, align 8
  %43 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %40, ptr %44, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %43, ptr %28, ptr %44)
  store i64 100, ptr %45, align 4
  %46 = alloca [1 x ptr], align 8
  call void @llvm.memset(ptr %46, i8 0, i64 8, i1 false)
  %47 = getelementptr inbounds ptr, ptr %46, i64 0
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %49 = getelementptr inbounds %main.N, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds %main.N, ptr %48, i32 0, i32 1
  store i8 3, ptr %49, align 1
  store i8 4, ptr %50, align 1
  store ptr %48, ptr %47, align 8
  %51 = load [1 x ptr], ptr %46, align 8
  %52 = load ptr, ptr @_llgo_main.K2, align 8
  %53 = extractvalue [1 x ptr] %51, 0
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 0
  store ptr %52, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, i32 0, i32 1
  store ptr %53, ptr %56, align 8
  %57 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %54, align 8
  %58 = load ptr, ptr @_llgo_any, align 8
  %59 = load ptr, ptr @_llgo_int, align 8
  %60 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %57, ptr %61, align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %60, ptr %28, ptr %61)
  store i64 200, ptr %62, align 4
  %63 = load ptr, ptr @_llgo_any, align 8
  %64 = load ptr, ptr @_llgo_int, align 8
  %65 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %65, ptr %28)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %67 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %66)
  %68 = extractvalue { i1, ptr, ptr } %67, 0
  br i1 %68, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %69 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %88, 1
  %70 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %88, 2
  %71 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %69, 0
  %72 = load ptr, ptr @_llgo_main.K2, align 8
  %73 = icmp eq ptr %71, %72
  br i1 %73, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %74 = extractvalue { i1, ptr, ptr } %67, 1
  %75 = extractvalue { i1, ptr, ptr } %67, 2
  %76 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %74, align 8
  %77 = load i64, ptr %75, align 4
  %78 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %79 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %78, i32 0, i32 0
  store i1 true, ptr %79, align 1
  %80 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %78, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %76, ptr %80, align 8
  %81 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %78, i32 0, i32 2
  store i64 %77, ptr %81, align 4
  %82 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %78, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %83 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %84 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %83, i32 0, i32 0
  store i1 false, ptr %84, align 1
  %85 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %83, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %85, align 8
  %86 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %83, i32 0, i32 2
  store i64 0, ptr %86, align 4
  %87 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %83, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %88 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %82, %_llgo_4 ], [ %87, %_llgo_5 ]
  %89 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %88, 0
  br i1 %89, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %90 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %69, 1
  %91 = getelementptr inbounds %main.N, ptr %90, i32 0, i32 0
  %92 = load i8, ptr %91, align 1
  %93 = sext i8 %92 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %93)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @14, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 21, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = load ptr, ptr @_llgo_string, align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %97, ptr %99, align 8
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, i32 0, i32 0
  store ptr %98, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, i32 0, i32 1
  store ptr %99, ptr %102, align 8
  %103 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %100, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %103)
  unreachable
}

define void @main.make5() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64 8, i64 0)
  %1 = load ptr, ptr @_llgo_int, align 8
  %2 = load ptr, ptr @"chan _llgo_int", align 8
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 0
  store ptr %2, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, i32 0, i32 1
  store ptr %0, ptr %5, align 8
  %6 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %3, align 8
  %7 = load ptr, ptr @_llgo_int, align 8
  %8 = load ptr, ptr @"chan _llgo_int", align 8
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 0
  store ptr %8, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 1
  store ptr %0, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, align 8
  %13 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %6, %"github.com/goplus/llgo/internal/runtime.eface" %12)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %13)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %14 = load ptr, ptr @_llgo_int, align 8
  %15 = load ptr, ptr @"chan _llgo_int", align 8
  %16 = load ptr, ptr @_llgo_int, align 8
  %17 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %17, i64 0)
  %19 = load ptr, ptr @_llgo_int, align 8
  %20 = load ptr, ptr @"chan _llgo_int", align 8
  %21 = load ptr, ptr @_llgo_int, align 8
  %22 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %23, align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %22, ptr %18, ptr %23)
  store i64 100, ptr %24, align 4
  %25 = load ptr, ptr @_llgo_int, align 8
  %26 = load ptr, ptr @"chan _llgo_int", align 8
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %29, align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %28, ptr %18, ptr %29)
  store i64 200, ptr %30, align 4
  %31 = load ptr, ptr @_llgo_int, align 8
  %32 = load ptr, ptr @"chan _llgo_int", align 8
  %33 = load ptr, ptr @_llgo_int, align 8
  %34 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %34, ptr %18)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %36 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %35)
  %37 = extractvalue { i1, ptr, ptr } %36, 0
  br i1 %37, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %38 = extractvalue { i1, ptr, i64 } %54, 1
  %39 = extractvalue { i1, ptr, i64 } %54, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %38)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %39)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %40 = extractvalue { i1, ptr, ptr } %36, 1
  %41 = extractvalue { i1, ptr, ptr } %36, 2
  %42 = load ptr, ptr %40, align 8
  %43 = load i64, ptr %41, align 4
  %44 = alloca { i1, ptr, i64 }, align 8
  %45 = getelementptr inbounds { i1, ptr, i64 }, ptr %44, i32 0, i32 0
  store i1 true, ptr %45, align 1
  %46 = getelementptr inbounds { i1, ptr, i64 }, ptr %44, i32 0, i32 1
  store ptr %42, ptr %46, align 8
  %47 = getelementptr inbounds { i1, ptr, i64 }, ptr %44, i32 0, i32 2
  store i64 %43, ptr %47, align 4
  %48 = load { i1, ptr, i64 }, ptr %44, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %49 = alloca { i1, ptr, i64 }, align 8
  %50 = getelementptr inbounds { i1, ptr, i64 }, ptr %49, i32 0, i32 0
  store i1 false, ptr %50, align 1
  %51 = getelementptr inbounds { i1, ptr, i64 }, ptr %49, i32 0, i32 1
  store ptr null, ptr %51, align 8
  %52 = getelementptr inbounds { i1, ptr, i64 }, ptr %49, i32 0, i32 2
  store i64 0, ptr %52, align 4
  %53 = load { i1, ptr, i64 }, ptr %49, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %54 = phi { i1, ptr, i64 } [ %48, %_llgo_4 ], [ %53, %_llgo_5 ]
  %55 = extractvalue { i1, ptr, i64 } %54, 0
  br i1 %55, label %_llgo_2, label %_llgo_3
}

define void @main.make6() {
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
  %8 = load ptr, ptr @_llgo_main.M, align 8
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %9, align 4
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %8, ptr %3, ptr %9)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %10, align 8
  %11 = load ptr, ptr @_llgo_main.M, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %11, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %13 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %12)
  %14 = extractvalue { i1, ptr, ptr } %13, 0
  br i1 %14, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %15 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %31, 1
  %16 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %31, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %15)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %17 = extractvalue { i1, ptr, ptr } %13, 1
  %18 = extractvalue { i1, ptr, ptr } %13, 2
  %19 = load i64, ptr %17, align 4
  %20 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %18, align 8
  %21 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %22 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, i32 0, i32 0
  store i1 true, ptr %22, align 1
  %23 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, i32 0, i32 1
  store i64 %19, ptr %23, align 4
  %24 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %20, ptr %24, align 8
  %25 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %21, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %26 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %27 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %26, i32 0, i32 0
  store i1 false, ptr %27, align 1
  %28 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %26, i32 0, i32 1
  store i64 0, ptr %28, align 4
  %29 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %26, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %29, align 8
  %30 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %26, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %31 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %25, %_llgo_4 ], [ %30, %_llgo_5 ]
  %32 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %31, 0
  br i1 %32, label %_llgo_2, label %_llgo_3
}

define void @main.make7() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_main.N, align 8
  %1 = load ptr, ptr @_llgo_string, align 8
  %2 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %2, i64 2)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @5, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 5, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = load ptr, ptr @_llgo_main.N, align 8
  %9 = load ptr, ptr @_llgo_string, align 8
  %10 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %11 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %11, align 4
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %10, ptr %3, ptr %11)
  store %"github.com/goplus/llgo/internal/runtime.String" %7, ptr %12, align 8
  %13 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %14 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 0
  store ptr @6, ptr %14, align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %13, i32 0, i32 1
  store i64 5, ptr %15, align 4
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %13, align 8
  %17 = load ptr, ptr @_llgo_main.N, align 8
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %20, align 4
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %19, ptr %3, ptr %20)
  store %"github.com/goplus/llgo/internal/runtime.String" %16, ptr %21, align 8
  %22 = load ptr, ptr @_llgo_main.N, align 8
  %23 = load ptr, ptr @_llgo_string, align 8
  %24 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %24, ptr %3)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %26 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %25)
  %27 = extractvalue { i1, ptr, ptr } %26, 0
  br i1 %27, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %28 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %50, 1
  %29 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %50, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %28)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %29)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  %30 = load ptr, ptr @_llgo_main.N, align 8
  %31 = load ptr, ptr @_llgo_string, align 8
  %32 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %33, align 4
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %32, ptr %3, ptr %33)
  %35 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %34, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %35)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %36 = extractvalue { i1, ptr, ptr } %26, 1
  %37 = extractvalue { i1, ptr, ptr } %26, 2
  %38 = load i64, ptr %36, align 4
  %39 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %40 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %41 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %40, i32 0, i32 0
  store i1 true, ptr %41, align 1
  %42 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %40, i32 0, i32 1
  store i64 %38, ptr %42, align 4
  %43 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %40, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %39, ptr %43, align 8
  %44 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %40, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %45 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %46 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %45, i32 0, i32 0
  store i1 false, ptr %46, align 1
  %47 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %45, i32 0, i32 1
  store i64 0, ptr %47, align 4
  %48 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %45, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %48, align 8
  %49 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %45, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %50 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %44, %_llgo_4 ], [ %49, %_llgo_5 ]
  %51 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %50, 0
  br i1 %51, label %_llgo_2, label %_llgo_3
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
  %247 = load ptr, ptr @_llgo_int, align 8
  %248 = load ptr, ptr @"[1]_llgo_int", align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %250 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %251 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %250)
  store ptr %251, ptr @"[1]_llgo_int", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %252 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %246, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @4, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 4, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  %257 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 0
  store ptr @13, ptr %258, align 8
  %259 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %257, i32 0, i32 1
  store i64 2, ptr %259, align 4
  %260 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %257, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %244, %"github.com/goplus/llgo/internal/runtime.String" %256, %"github.com/goplus/llgo/internal/runtime.String" %260, ptr %252, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %261 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 0
  store ptr @15, ptr %262, align 8
  %263 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %261, i32 0, i32 1
  store i64 6, ptr %263, align 4
  %264 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %261, align 8
  %265 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %264, i64 17, i64 2, i64 0, i64 0)
  %266 = load ptr, ptr @_llgo_main.K, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %265, ptr @_llgo_main.K, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %268 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 0
  store ptr @16, ptr %269, align 8
  %270 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %268, i32 0, i32 1
  store i64 6, ptr %270, align 4
  %271 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %268, align 8
  %272 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %271, i64 25, i64 2, i64 0, i64 0)
  %273 = load ptr, ptr @_llgo_main.N, align 8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %272, ptr @_llgo_main.N, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %275 = load ptr, ptr @_llgo_int8, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %277 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  store ptr %277, ptr @_llgo_int8, align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %278 = load ptr, ptr @_llgo_int8, align 8
  %279 = load ptr, ptr @_llgo_int8, align 8
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @17, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 2, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr null, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 1
  store i64 0, ptr %286, align 4
  %287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %284, align 8
  %288 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %289 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %283, ptr %288, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %287, i1 false)
  %290 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 0
  store ptr @18, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %290, i32 0, i32 1
  store i64 2, ptr %292, align 4
  %293 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %290, align 8
  %294 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 0
  store ptr null, ptr %295, align 8
  %296 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %294, i32 0, i32 1
  store i64 0, ptr %296, align 4
  %297 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %294, align 8
  %298 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %299 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %293, ptr %298, i64 1, %"github.com/goplus/llgo/internal/runtime.String" %297, i1 false)
  %300 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %301 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 0
  store ptr @4, ptr %301, align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %300, i32 0, i32 1
  store i64 4, ptr %302, align 4
  %303 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %300, align 8
  %304 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %305 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %304, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %289, ptr %305, align 8
  %306 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %304, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %299, ptr %306, align 8
  %307 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %308 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 0
  store ptr %304, ptr %308, align 8
  %309 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 1
  store i64 2, ptr %309, align 4
  %310 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, i32 0, i32 2
  store i64 2, ptr %310, align 4
  %311 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %307, align 8
  %312 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %303, i64 2, %"github.com/goplus/llgo/internal/runtime.Slice" %311)
  store ptr %312, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %313 = load ptr, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br i1 %274, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 0
  store ptr @4, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 1
  store i64 4, ptr %316, align 4
  %317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %314, align 8
  %318 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 0
  store ptr @19, ptr %319, align 8
  %320 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %318, i32 0, i32 1
  store i64 1, ptr %320, align 4
  %321 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %318, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %272, %"github.com/goplus/llgo/internal/runtime.String" %317, %"github.com/goplus/llgo/internal/runtime.String" %321, ptr %313, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %322 = load ptr, ptr @_llgo_main.N, align 8
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr @16, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 6, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %326, i64 25, i64 2, i64 0, i64 0)
  %328 = load ptr, ptr @"[1]_llgo_main.N", align 8
  %329 = icmp eq ptr %328, null
  br i1 %329, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %330 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %327)
  store ptr %330, ptr @"[1]_llgo_main.N", align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %331 = load ptr, ptr @"[1]_llgo_main.N", align 8
  br i1 %267, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %332 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 0
  store ptr @4, ptr %333, align 8
  %334 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %332, i32 0, i32 1
  store i64 4, ptr %334, align 4
  %335 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %332, align 8
  %336 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %337 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 0
  store ptr @20, ptr %337, align 8
  %338 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %336, i32 0, i32 1
  store i64 1, ptr %338, align 4
  %339 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %336, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %265, %"github.com/goplus/llgo/internal/runtime.String" %335, %"github.com/goplus/llgo/internal/runtime.String" %339, ptr %331, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 0
  store ptr @21, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 1
  store i64 7, ptr %342, align 4
  %343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %340, align 8
  %344 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %343, i64 17, i64 8, i64 0, i64 0)
  %345 = load ptr, ptr @_llgo_main.K2, align 8
  %346 = icmp eq ptr %345, null
  br i1 %346, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %344)
  store ptr %344, ptr @_llgo_main.K2, align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %347 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %348 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %347, i32 0, i32 0
  store ptr @16, ptr %348, align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %347, i32 0, i32 1
  store i64 6, ptr %349, align 4
  %350 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %347, align 8
  %351 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %350, i64 25, i64 2, i64 0, i64 0)
  %352 = load ptr, ptr @"*_llgo_main.N", align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %351)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %354)
  store ptr %354, ptr @"*_llgo_main.N", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %355 = load ptr, ptr @"*_llgo_main.N", align 8
  %356 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 0
  store ptr @16, ptr %357, align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %356, i32 0, i32 1
  store i64 6, ptr %358, align 4
  %359 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %356, align 8
  %360 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %359, i64 25, i64 2, i64 0, i64 0)
  %361 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %363 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %360)
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %363)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %364)
  store ptr %364, ptr @"[1]*_llgo_main.N", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %365 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  br i1 %346, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 0
  store ptr @4, ptr %367, align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 1
  store i64 4, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %366, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr @22, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 2, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %344, %"github.com/goplus/llgo/internal/runtime.String" %369, %"github.com/goplus/llgo/internal/runtime.String" %373, ptr %365, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %374 = load ptr, ptr @"chan _llgo_int", align 8
  %375 = icmp eq ptr %374, null
  br i1 %375, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @23, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 4, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %381 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %379, ptr %380)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %381)
  store ptr %381, ptr @"chan _llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %382 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %383 = icmp eq ptr %382, null
  br i1 %383, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  %384 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %385 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 0
  store ptr @23, ptr %385, align 8
  %386 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %384, i32 0, i32 1
  store i64 4, ptr %386, align 4
  %387 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %384, align 8
  %388 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %389 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %387, ptr %388)
  %390 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %391 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %392 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 0
  store ptr @0, ptr %392, align 8
  %393 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %391, i32 0, i32 1
  store i64 7, ptr %393, align 4
  %394 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %391, align 8
  %395 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 0
  store ptr null, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %395, i32 0, i32 1
  store i64 0, ptr %397, align 4
  %398 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %395, align 8
  %399 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %400 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %399)
  %401 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %394, ptr %400, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %398, i1 false)
  %402 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %403 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %402, i32 0, i32 0
  store ptr @1, ptr %403, align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %402, i32 0, i32 1
  store i64 4, ptr %404, align 4
  %405 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %402, align 8
  %406 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %407 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %406, i32 0, i32 0
  store ptr null, ptr %407, align 8
  %408 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %406, i32 0, i32 1
  store i64 0, ptr %408, align 4
  %409 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %406, align 8
  %410 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %411 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 0
  store ptr @23, ptr %411, align 8
  %412 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %410, i32 0, i32 1
  store i64 4, ptr %412, align 4
  %413 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %410, align 8
  %414 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %415 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %413, ptr %414)
  %416 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %415)
  %417 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %405, ptr %416, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %409, i1 false)
  %418 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %419 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %418, i32 0, i32 0
  store ptr @2, ptr %419, align 8
  %420 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %418, i32 0, i32 1
  store i64 5, ptr %420, align 4
  %421 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %418, align 8
  %422 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %423 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 0
  store ptr null, ptr %423, align 8
  %424 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %422, i32 0, i32 1
  store i64 0, ptr %424, align 4
  %425 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %422, align 8
  %426 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %427 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %426)
  %428 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %421, ptr %427, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %425, i1 false)
  %429 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 0
  store ptr @3, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 1
  store i64 8, ptr %431, align 4
  %432 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %429, align 8
  %433 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %434 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %433, i32 0, i32 0
  store ptr null, ptr %434, align 8
  %435 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %433, i32 0, i32 1
  store i64 0, ptr %435, align 4
  %436 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %433, align 8
  %437 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %438 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %432, ptr %437, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %436, i1 false)
  %439 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %440 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %439, i32 0, i32 0
  store ptr @4, ptr %440, align 8
  %441 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %439, i32 0, i32 1
  store i64 4, ptr %441, align 4
  %442 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %439, align 8
  %443 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %444 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %443, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %401, ptr %444, align 8
  %445 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %443, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %417, ptr %445, align 8
  %446 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %443, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %428, ptr %446, align 8
  %447 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %443, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %438, ptr %447, align 8
  %448 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %448, i32 0, i32 0
  store ptr %443, ptr %449, align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %448, i32 0, i32 1
  store i64 4, ptr %450, align 4
  %451 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %448, i32 0, i32 2
  store i64 4, ptr %451, align 4
  %452 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %448, align 8
  %453 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %442, i64 144, %"github.com/goplus/llgo/internal/runtime.Slice" %452)
  %454 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %389, ptr %390, ptr %453, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %454)
  store ptr %454, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %455 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %456 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %455, i32 0, i32 0
  store ptr @24, ptr %456, align 8
  %457 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %455, i32 0, i32 1
  store i64 6, ptr %457, align 4
  %458 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %455, align 8
  %459 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %458, i64 21, i64 8, i64 0, i64 0)
  %460 = load ptr, ptr @_llgo_main.M, align 8
  %461 = icmp eq ptr %460, null
  br i1 %461, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %459)
  store ptr %459, ptr @_llgo_main.M, align 8
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %462 = load ptr, ptr @_llgo_int, align 8
  %463 = load ptr, ptr @_llgo_string, align 8
  %464 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  br i1 %461, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %465 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %466 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 0
  store ptr @4, ptr %466, align 8
  %467 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %465, i32 0, i32 1
  store i64 4, ptr %467, align 4
  %468 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %465, align 8
  %469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 0
  store ptr @25, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 1
  store i64 1, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %469, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %459, %"github.com/goplus/llgo/internal/runtime.String" %468, %"github.com/goplus/llgo/internal/runtime.String" %472, ptr %464, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 0
  store ptr @16, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 1
  store i64 6, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %473, align 8
  %477 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %476, i64 2, i64 8, i64 0, i64 0)
  %478 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %479 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 0
  store ptr @16, ptr %479, align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %478, i32 0, i32 1
  store i64 6, ptr %480, align 4
  %481 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %478, align 8
  %482 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %481, i64 2, i64 8, i64 0, i64 0)
  %483 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %484 = icmp eq ptr %483, null
  br i1 %484, label %_llgo_47, label %_llgo_48

_llgo_47:                                         ; preds = %_llgo_46
  %485 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %486 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %487 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 0
  store ptr @0, ptr %487, align 8
  %488 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %486, i32 0, i32 1
  store i64 7, ptr %488, align 4
  %489 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %486, align 8
  %490 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %490, i32 0, i32 0
  store ptr null, ptr %491, align 8
  %492 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %490, i32 0, i32 1
  store i64 0, ptr %492, align 4
  %493 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %490, align 8
  %494 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %495 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %494)
  %496 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %489, ptr %495, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %493, i1 false)
  %497 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %498 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 0
  store ptr @1, ptr %498, align 8
  %499 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %497, i32 0, i32 1
  store i64 4, ptr %499, align 4
  %500 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %497, align 8
  %501 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %502 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 0
  store ptr null, ptr %502, align 8
  %503 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %501, i32 0, i32 1
  store i64 0, ptr %503, align 4
  %504 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %501, align 8
  %505 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %482)
  %506 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %500, ptr %505, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %504, i1 false)
  %507 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %508 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 0
  store ptr @2, ptr %508, align 8
  %509 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %507, i32 0, i32 1
  store i64 5, ptr %509, align 4
  %510 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %507, align 8
  %511 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %512 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 0
  store ptr null, ptr %512, align 8
  %513 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %511, i32 0, i32 1
  store i64 0, ptr %513, align 4
  %514 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %511, align 8
  %515 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %516 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %515)
  %517 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %510, ptr %516, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %514, i1 false)
  %518 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %519 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 0
  store ptr @3, ptr %519, align 8
  %520 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %518, i32 0, i32 1
  store i64 8, ptr %520, align 4
  %521 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %518, align 8
  %522 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %523 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 0
  store ptr null, ptr %523, align 8
  %524 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %522, i32 0, i32 1
  store i64 0, ptr %524, align 4
  %525 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %522, align 8
  %526 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %527 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %521, ptr %526, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %525, i1 false)
  %528 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %529 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 0
  store ptr @4, ptr %529, align 8
  %530 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %528, i32 0, i32 1
  store i64 4, ptr %530, align 4
  %531 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %528, align 8
  %532 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %533 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %532, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %496, ptr %533, align 8
  %534 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %532, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %506, ptr %534, align 8
  %535 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %532, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %517, ptr %535, align 8
  %536 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %532, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %527, ptr %536, align 8
  %537 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %538 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 0
  store ptr %532, ptr %538, align 8
  %539 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 1
  store i64 4, ptr %539, align 4
  %540 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, i32 0, i32 2
  store i64 4, ptr %540, align 4
  %541 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %537, align 8
  %542 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %531, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %541)
  %543 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %477, ptr %485, ptr %542, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %543)
  store ptr %543, ptr @"map[_llgo_main.N]_llgo_string", align 8
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

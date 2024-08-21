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
@"[1]_llgo_int" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [2 x i8] c"N1", align 1
@13 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_main.K = linkonce global ptr null, align 8
@_llgo_main.N = linkonce global ptr null, align 8
@"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A" = linkonce global ptr null, align 8
@14 = private unnamed_addr constant [2 x i8] c"n1", align 1
@15 = private unnamed_addr constant [2 x i8] c"n2", align 1
@16 = private unnamed_addr constant [1 x i8] c"N", align 1
@"[1]_llgo_main.N" = linkonce global ptr null, align 8
@17 = private unnamed_addr constant [1 x i8] c"K", align 1
@_llgo_main.K2 = linkonce global ptr null, align 8
@"*_llgo_main.N" = linkonce global ptr null, align 8
@"[1]*_llgo_main.N" = linkonce global ptr null, align 8
@18 = private unnamed_addr constant [2 x i8] c"K2", align 1
@"chan _llgo_int" = linkonce global ptr null, align 8
@19 = private unnamed_addr constant [4 x i8] c"chan", align 1
@"map[chan _llgo_int]_llgo_int" = linkonce global ptr null, align 8
@_llgo_main.M = linkonce global ptr null, align 8
@20 = private unnamed_addr constant [1 x i8] c"M", align 1
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
  %43 = load i64, ptr %3, align 4
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
  %56 = load i64, ptr %3, align 4
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
  %154 = load i64, ptr %60, align 4
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
  %4 = load i64, ptr %3, align 4
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
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %7 = load ptr, ptr @_llgo_any, align 8
  %8 = load ptr, ptr @_llgo_int, align 8
  %9 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %10 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %9, i64 0)
  %11 = alloca [1 x i64], align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %11, i64 8)
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
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %24, ptr %10, ptr %25)
  store i64 100, ptr %26, align 4
  %27 = alloca [1 x i64], align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %27, i64 8)
  %29 = getelementptr inbounds i64, ptr %28, i64 0
  store i64 2, ptr %29, align 4
  %30 = load [1 x i64], ptr %28, align 4
  %31 = load ptr, ptr @_llgo_main.N1, align 8
  %32 = extractvalue [1 x i64] %30, 0
  %33 = inttoptr i64 %32 to ptr
  %34 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %35 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 0
  store ptr %31, ptr %35, align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, i32 0, i32 1
  store ptr %33, ptr %36, align 8
  %37 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %34, align 8
  %38 = load ptr, ptr @_llgo_any, align 8
  %39 = load ptr, ptr @_llgo_int, align 8
  %40 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %41 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %37, ptr %41, align 8
  %42 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %40, ptr %10, ptr %41)
  store i64 200, ptr %42, align 4
  %43 = alloca [1 x i64], align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %43, i64 8)
  %45 = getelementptr inbounds i64, ptr %44, i64 0
  store i64 3, ptr %45, align 4
  %46 = load [1 x i64], ptr %44, align 4
  %47 = load ptr, ptr @_llgo_main.N1, align 8
  %48 = extractvalue [1 x i64] %46, 0
  %49 = inttoptr i64 %48 to ptr
  %50 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 0
  store ptr %47, ptr %51, align 8
  %52 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, i32 0, i32 1
  store ptr %49, ptr %52, align 8
  %53 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %50, align 8
  %54 = load ptr, ptr @_llgo_any, align 8
  %55 = load ptr, ptr @_llgo_int, align 8
  %56 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %57 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %53, ptr %57, align 8
  %58 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %56, ptr %10, ptr %57)
  store i64 300, ptr %58, align 4
  %59 = alloca [1 x i64], align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %59, i64 8)
  %61 = getelementptr inbounds i64, ptr %60, i64 0
  store i64 2, ptr %61, align 4
  %62 = load [1 x i64], ptr %60, align 4
  %63 = load ptr, ptr @_llgo_main.N1, align 8
  %64 = extractvalue [1 x i64] %62, 0
  %65 = inttoptr i64 %64 to ptr
  %66 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %67 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, i32 0, i32 0
  store ptr %63, ptr %67, align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, i32 0, i32 1
  store ptr %65, ptr %68, align 8
  %69 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %66, align 8
  %70 = load ptr, ptr @_llgo_any, align 8
  %71 = load ptr, ptr @_llgo_int, align 8
  %72 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %73 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %69, ptr %73, align 8
  %74 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %72, ptr %10, ptr %73)
  store i64 -200, ptr %74, align 4
  %75 = load ptr, ptr @_llgo_any, align 8
  %76 = load ptr, ptr @_llgo_int, align 8
  %77 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %78 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %77, ptr %10)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %79 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %78)
  %80 = extractvalue { i1, ptr, ptr } %79, 0
  br i1 %80, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %81 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %100, 1
  %82 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %100, 2
  %83 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %81, 0
  %84 = load ptr, ptr @_llgo_main.N1, align 8
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %86 = extractvalue { i1, ptr, ptr } %79, 1
  %87 = extractvalue { i1, ptr, ptr } %79, 2
  %88 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %86, align 8
  %89 = load i64, ptr %87, align 4
  %90 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %91 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %90, i32 0, i32 0
  store i1 true, ptr %91, align 1
  %92 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %90, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %88, ptr %92, align 8
  %93 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %90, i32 0, i32 2
  store i64 %89, ptr %93, align 4
  %94 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %90, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %95 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %96 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %95, i32 0, i32 0
  store i1 false, ptr %96, align 1
  %97 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %95, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %97, align 8
  %98 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %95, i32 0, i32 2
  store i64 0, ptr %98, align 4
  %99 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %95, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %100 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %94, %_llgo_4 ], [ %99, %_llgo_5 ]
  %101 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %100, 0
  br i1 %101, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %102 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %81, 1
  %103 = ptrtoint ptr %102 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %103)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %82)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr @13, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 21, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = load ptr, ptr @_llgo_string, align 8
  %109 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %107, ptr %109, align 8
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %110, i32 0, i32 0
  store ptr %108, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %110, i32 0, i32 1
  store ptr %109, ptr %112, align 8
  %113 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %110, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %113)
  unreachable
}

define void @main.make3() {
_llgo_0:
  %0 = alloca [1 x %main.N], align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 2)
  %2 = getelementptr inbounds %main.N, ptr %1, i64 0
  %3 = getelementptr inbounds %main.N, ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %main.N, ptr %2, i32 0, i32 1
  store i8 1, ptr %3, align 1
  store i8 2, ptr %4, align 1
  %5 = load [1 x %main.N], ptr %1, align 1
  %6 = load ptr, ptr @_llgo_main.K, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %5, ptr %7, align 1
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  %12 = alloca [1 x %main.N], align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %12, i64 2)
  %14 = getelementptr inbounds %main.N, ptr %13, i64 0
  %15 = getelementptr inbounds %main.N, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds %main.N, ptr %14, i32 0, i32 1
  store i8 1, ptr %15, align 1
  store i8 2, ptr %16, align 1
  %17 = load [1 x %main.N], ptr %13, align 1
  %18 = load ptr, ptr @_llgo_main.K, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %17, ptr %19, align 1
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
  %29 = alloca [1 x %main.N], align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %29, i64 2)
  %31 = getelementptr inbounds %main.N, ptr %30, i64 0
  %32 = getelementptr inbounds %main.N, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds %main.N, ptr %31, i32 0, i32 1
  store i8 1, ptr %32, align 1
  store i8 2, ptr %33, align 1
  %34 = load [1 x %main.N], ptr %30, align 1
  %35 = load ptr, ptr @_llgo_main.K, align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %34, ptr %36, align 1
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
  %46 = alloca [1 x %main.N], align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %46, i64 2)
  %48 = getelementptr inbounds %main.N, ptr %47, i64 0
  %49 = getelementptr inbounds %main.N, ptr %48, i32 0, i32 0
  %50 = getelementptr inbounds %main.N, ptr %48, i32 0, i32 1
  store i8 3, ptr %49, align 1
  store i8 4, ptr %50, align 1
  %51 = load [1 x %main.N], ptr %47, align 1
  %52 = load ptr, ptr @_llgo_main.K, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %51, ptr %53, align 1
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
  %72 = load ptr, ptr @_llgo_main.K, align 8
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
  %91 = load [1 x %main.N], ptr %90, align 1
  %92 = alloca [1 x %main.N], align 8
  %93 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %92, i64 2)
  store [1 x %main.N] %91, ptr %93, align 1
  %94 = getelementptr inbounds %main.N, ptr %93, i64 0
  %95 = load %main.N, ptr %94, align 1
  %96 = extractvalue %main.N %95, 0
  %97 = sext i8 %96 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %97)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %70)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr @13, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 21, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  %102 = load ptr, ptr @_llgo_string, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %101, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 1
  store ptr %103, ptr %106, align 8
  %107 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %107)
  unreachable
}

define void @main.make4() {
_llgo_0:
  %0 = alloca [1 x ptr], align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %0, i64 8)
  %2 = getelementptr inbounds ptr, ptr %1, i64 0
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %4 = getelementptr inbounds %main.N, ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %main.N, ptr %3, i32 0, i32 1
  store i8 1, ptr %4, align 1
  store i8 2, ptr %5, align 1
  store ptr %3, ptr %2, align 8
  %6 = load [1 x ptr], ptr %1, align 8
  %7 = load ptr, ptr @_llgo_main.K2, align 8
  %8 = extractvalue [1 x ptr] %6, 0
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 0
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, i32 0, i32 1
  store ptr %8, ptr %11, align 8
  %12 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %9, align 8
  %13 = alloca [1 x ptr], align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %13, i64 8)
  %15 = getelementptr inbounds ptr, ptr %14, i64 0
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %17 = getelementptr inbounds %main.N, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds %main.N, ptr %16, i32 0, i32 1
  store i8 1, ptr %17, align 1
  store i8 2, ptr %18, align 1
  store ptr %16, ptr %15, align 8
  %19 = load [1 x ptr], ptr %14, align 8
  %20 = load ptr, ptr @_llgo_main.K2, align 8
  %21 = extractvalue [1 x ptr] %19, 0
  %22 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %23 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 0
  store ptr %20, ptr %23, align 8
  %24 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, i32 0, i32 1
  store ptr %21, ptr %24, align 8
  %25 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %22, align 8
  %26 = call i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface" %12, %"github.com/goplus/llgo/internal/runtime.eface" %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %27 = load ptr, ptr @_llgo_any, align 8
  %28 = load ptr, ptr @_llgo_int, align 8
  %29 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %29, i64 0)
  %31 = alloca [1 x ptr], align 8
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %31, i64 8)
  %33 = getelementptr inbounds ptr, ptr %32, i64 0
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %35 = getelementptr inbounds %main.N, ptr %34, i32 0, i32 0
  %36 = getelementptr inbounds %main.N, ptr %34, i32 0, i32 1
  store i8 1, ptr %35, align 1
  store i8 2, ptr %36, align 1
  store ptr %34, ptr %33, align 8
  %37 = load [1 x ptr], ptr %32, align 8
  %38 = load ptr, ptr @_llgo_main.K2, align 8
  %39 = extractvalue [1 x ptr] %37, 0
  %40 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, i32 0, i32 0
  store ptr %38, ptr %41, align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, i32 0, i32 1
  store ptr %39, ptr %42, align 8
  %43 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %40, align 8
  %44 = load ptr, ptr @_llgo_any, align 8
  %45 = load ptr, ptr @_llgo_int, align 8
  %46 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %43, ptr %47, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %46, ptr %30, ptr %47)
  store i64 100, ptr %48, align 4
  %49 = alloca [1 x ptr], align 8
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %49, i64 8)
  %51 = getelementptr inbounds ptr, ptr %50, i64 0
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %53 = getelementptr inbounds %main.N, ptr %52, i32 0, i32 0
  %54 = getelementptr inbounds %main.N, ptr %52, i32 0, i32 1
  store i8 3, ptr %53, align 1
  store i8 4, ptr %54, align 1
  store ptr %52, ptr %51, align 8
  %55 = load [1 x ptr], ptr %50, align 8
  %56 = load ptr, ptr @_llgo_main.K2, align 8
  %57 = extractvalue [1 x ptr] %55, 0
  %58 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 0
  store ptr %56, ptr %59, align 8
  %60 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, i32 0, i32 1
  store ptr %57, ptr %60, align 8
  %61 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %58, align 8
  %62 = load ptr, ptr @_llgo_any, align 8
  %63 = load ptr, ptr @_llgo_int, align 8
  %64 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %61, ptr %65, align 8
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %64, ptr %30, ptr %65)
  store i64 200, ptr %66, align 4
  %67 = load ptr, ptr @_llgo_any, align 8
  %68 = load ptr, ptr @_llgo_int, align 8
  %69 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %70 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %69, ptr %30)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %71 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %70)
  %72 = extractvalue { i1, ptr, ptr } %71, 0
  br i1 %72, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %73 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %92, 1
  %74 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %92, 2
  %75 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %73, 0
  %76 = load ptr, ptr @_llgo_main.K2, align 8
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %78 = extractvalue { i1, ptr, ptr } %71, 1
  %79 = extractvalue { i1, ptr, ptr } %71, 2
  %80 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %78, align 8
  %81 = load i64, ptr %79, align 4
  %82 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %83 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %82, i32 0, i32 0
  store i1 true, ptr %83, align 1
  %84 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %82, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %80, ptr %84, align 8
  %85 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %82, i32 0, i32 2
  store i64 %81, ptr %85, align 4
  %86 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %82, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %87 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %88 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 0
  store i1 false, ptr %88, align 1
  %89 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %89, align 8
  %90 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, i32 0, i32 2
  store i64 0, ptr %90, align 4
  %91 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %87, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %92 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %86, %_llgo_4 ], [ %91, %_llgo_5 ]
  %93 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %92, 0
  br i1 %93, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %94 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %73, 1
  %95 = getelementptr inbounds %main.N, ptr %94, i32 0, i32 0
  %96 = load i8, ptr %95, align 1
  %97 = sext i8 %96 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %97)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %74)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %98 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %99 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 0
  store ptr @13, ptr %99, align 8
  %100 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %98, i32 0, i32 1
  store i64 21, ptr %100, align 4
  %101 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %98, align 8
  %102 = load ptr, ptr @_llgo_string, align 8
  %103 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %101, ptr %103, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 0
  store ptr %102, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, i32 0, i32 1
  store ptr %103, ptr %106, align 8
  %107 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %104, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %107)
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
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %14, i64 0)
  %16 = load ptr, ptr @"chan _llgo_int", align 8
  %17 = load ptr, ptr @_llgo_int, align 8
  %18 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %19, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %18, ptr %15, ptr %19)
  store i64 100, ptr %20, align 4
  %21 = load ptr, ptr @"chan _llgo_int", align 8
  %22 = load ptr, ptr @_llgo_int, align 8
  %23 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %24, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %23, ptr %15, ptr %24)
  store i64 200, ptr %25, align 4
  %26 = load ptr, ptr @"chan _llgo_int", align 8
  %27 = load ptr, ptr @_llgo_int, align 8
  %28 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %28, ptr %15)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %30 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %29)
  %31 = extractvalue { i1, ptr, ptr } %30, 0
  br i1 %31, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %32 = extractvalue { i1, ptr, i64 } %48, 1
  %33 = extractvalue { i1, ptr, i64 } %48, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %33)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %34 = extractvalue { i1, ptr, ptr } %30, 1
  %35 = extractvalue { i1, ptr, ptr } %30, 2
  %36 = load ptr, ptr %34, align 8
  %37 = load i64, ptr %35, align 4
  %38 = alloca { i1, ptr, i64 }, align 8
  %39 = getelementptr inbounds { i1, ptr, i64 }, ptr %38, i32 0, i32 0
  store i1 true, ptr %39, align 1
  %40 = getelementptr inbounds { i1, ptr, i64 }, ptr %38, i32 0, i32 1
  store ptr %36, ptr %40, align 8
  %41 = getelementptr inbounds { i1, ptr, i64 }, ptr %38, i32 0, i32 2
  store i64 %37, ptr %41, align 4
  %42 = load { i1, ptr, i64 }, ptr %38, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %43 = alloca { i1, ptr, i64 }, align 8
  %44 = getelementptr inbounds { i1, ptr, i64 }, ptr %43, i32 0, i32 0
  store i1 false, ptr %44, align 1
  %45 = getelementptr inbounds { i1, ptr, i64 }, ptr %43, i32 0, i32 1
  store ptr null, ptr %45, align 8
  %46 = getelementptr inbounds { i1, ptr, i64 }, ptr %43, i32 0, i32 2
  store i64 0, ptr %46, align 4
  %47 = load { i1, ptr, i64 }, ptr %43, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %48 = phi { i1, ptr, i64 } [ %42, %_llgo_4 ], [ %47, %_llgo_5 ]
  %49 = extractvalue { i1, ptr, i64 } %48, 0
  br i1 %49, label %_llgo_2, label %_llgo_3
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
  %240 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 8, i64 0, i64 0)
  %241 = load ptr, ptr @_llgo_main.N1, align 8
  %242 = icmp eq ptr %241, null
  br i1 %242, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  store ptr %240, ptr @_llgo_main.N1, align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %243 = load ptr, ptr @_llgo_int, align 8
  %244 = load ptr, ptr @"[1]_llgo_int", align 8
  %245 = icmp eq ptr %244, null
  br i1 %245, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %246 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %247 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %246)
  store ptr %247, ptr @"[1]_llgo_int", align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %248 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %242, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %249 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %250 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %249, i32 0, i32 0
  store ptr @4, ptr %250, align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %249, i32 0, i32 1
  store i64 4, ptr %251, align 4
  %252 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %249, align 8
  %253 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %254 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 0
  store ptr @12, ptr %254, align 8
  %255 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %253, i32 0, i32 1
  store i64 2, ptr %255, align 4
  %256 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %253, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %240, %"github.com/goplus/llgo/internal/runtime.String" %252, %"github.com/goplus/llgo/internal/runtime.String" %256, ptr %248, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %257 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 2, i64 0, i64 0)
  %258 = load ptr, ptr @_llgo_main.K, align 8
  %259 = icmp eq ptr %258, null
  br i1 %259, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  store ptr %257, ptr @_llgo_main.K, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %260 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 0, i64 0)
  %261 = load ptr, ptr @_llgo_main.N, align 8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  store ptr %260, ptr @_llgo_main.N, align 8
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %263 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %264 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 0
  store ptr @14, ptr %264, align 8
  %265 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %263, i32 0, i32 1
  store i64 2, ptr %265, align 4
  %266 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %263, align 8
  %267 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 0
  store ptr null, ptr %268, align 8
  %269 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %267, i32 0, i32 1
  store i64 0, ptr %269, align 4
  %270 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %267, align 8
  %271 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %272 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %266, ptr %271, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %270, i1 false)
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 0
  store ptr @15, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %273, i32 0, i32 1
  store i64 2, ptr %275, align 4
  %276 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %273, align 8
  %277 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %278 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 0
  store ptr null, ptr %278, align 8
  %279 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %277, i32 0, i32 1
  store i64 0, ptr %279, align 4
  %280 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %277, align 8
  %281 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %282 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %276, ptr %281, i64 1, %"github.com/goplus/llgo/internal/runtime.String" %280, i1 false)
  %283 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %284 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 0
  store ptr @4, ptr %284, align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %283, i32 0, i32 1
  store i64 4, ptr %285, align 4
  %286 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %283, align 8
  %287 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %288 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %287, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %272, ptr %288, align 8
  %289 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %287, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %282, ptr %289, align 8
  %290 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %291 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %290, i32 0, i32 0
  store ptr %287, ptr %291, align 8
  %292 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %290, i32 0, i32 1
  store i64 2, ptr %292, align 4
  %293 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %290, i32 0, i32 2
  store i64 2, ptr %293, align 4
  %294 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %290, align 8
  %295 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %286, i64 2, %"github.com/goplus/llgo/internal/runtime.Slice" %294)
  store ptr %295, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %296 = load ptr, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br i1 %262, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 0
  store ptr @4, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 1
  store i64 4, ptr %299, align 4
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %297, align 8
  %301 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %302 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 0
  store ptr @16, ptr %302, align 8
  %303 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %301, i32 0, i32 1
  store i64 1, ptr %303, align 4
  %304 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %301, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %260, %"github.com/goplus/llgo/internal/runtime.String" %300, %"github.com/goplus/llgo/internal/runtime.String" %304, ptr %296, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %305 = load ptr, ptr @_llgo_main.N, align 8
  %306 = load ptr, ptr @"[1]_llgo_main.N", align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %308 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %260)
  store ptr %308, ptr @"[1]_llgo_main.N", align 8
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %309 = load ptr, ptr @"[1]_llgo_main.N", align 8
  br i1 %259, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %310 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %311 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 0
  store ptr @4, ptr %311, align 8
  %312 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %310, i32 0, i32 1
  store i64 4, ptr %312, align 4
  %313 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %310, align 8
  %314 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 0
  store ptr @17, ptr %315, align 8
  %316 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %314, i32 0, i32 1
  store i64 1, ptr %316, align 4
  %317 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %314, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %257, %"github.com/goplus/llgo/internal/runtime.String" %313, %"github.com/goplus/llgo/internal/runtime.String" %317, ptr %309, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %318 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 8, i64 0, i64 0)
  %319 = load ptr, ptr @_llgo_main.K2, align 8
  %320 = icmp eq ptr %319, null
  br i1 %320, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %318)
  store ptr %318, ptr @_llgo_main.K2, align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %321 = load ptr, ptr @"*_llgo_main.N", align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %323 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %260)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %323)
  store ptr %323, ptr @"*_llgo_main.N", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %324 = load ptr, ptr @"*_llgo_main.N", align 8
  %325 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %260)
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %327)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %328)
  store ptr %328, ptr @"[1]*_llgo_main.N", align 8
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %329 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  br i1 %320, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %330 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %331 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 0
  store ptr @4, ptr %331, align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %330, i32 0, i32 1
  store i64 4, ptr %332, align 4
  %333 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %330, align 8
  %334 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %335 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 0
  store ptr @18, ptr %335, align 8
  %336 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %334, i32 0, i32 1
  store i64 2, ptr %336, align 4
  %337 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %334, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %318, %"github.com/goplus/llgo/internal/runtime.String" %333, %"github.com/goplus/llgo/internal/runtime.String" %337, ptr %329, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %338 = load ptr, ptr @"chan _llgo_int", align 8
  %339 = icmp eq ptr %338, null
  br i1 %339, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %340 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %341 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 0
  store ptr @19, ptr %341, align 8
  %342 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %340, i32 0, i32 1
  store i64 4, ptr %342, align 4
  %343 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %340, align 8
  %344 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %345 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %343, ptr %344)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %345)
  store ptr %345, ptr @"chan _llgo_int", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  %346 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %347 = icmp eq ptr %346, null
  br i1 %347, label %_llgo_39, label %_llgo_40

_llgo_39:                                         ; preds = %_llgo_38
  %348 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %349 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %348, i32 0, i32 0
  store ptr @19, ptr %349, align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %348, i32 0, i32 1
  store i64 4, ptr %350, align 4
  %351 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %348, align 8
  %352 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %353 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %351, ptr %352)
  %354 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %355 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %356 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %355, i32 0, i32 0
  store ptr @0, ptr %356, align 8
  %357 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %355, i32 0, i32 1
  store i64 7, ptr %357, align 4
  %358 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %355, align 8
  %359 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %360 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 0
  store ptr null, ptr %360, align 8
  %361 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %359, i32 0, i32 1
  store i64 0, ptr %361, align 4
  %362 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %359, align 8
  %363 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %364 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %363)
  %365 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %358, ptr %364, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %362, i1 false)
  %366 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 0
  store ptr @1, ptr %367, align 8
  %368 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %366, i32 0, i32 1
  store i64 4, ptr %368, align 4
  %369 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %366, align 8
  %370 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 0
  store ptr null, ptr %371, align 8
  %372 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %370, i32 0, i32 1
  store i64 0, ptr %372, align 4
  %373 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %370, align 8
  %374 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %375 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 0
  store ptr @19, ptr %375, align 8
  %376 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %374, i32 0, i32 1
  store i64 4, ptr %376, align 4
  %377 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %374, align 8
  %378 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %379 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %377, ptr %378)
  %380 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %379)
  %381 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %369, ptr %380, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %373, i1 false)
  %382 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %383 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 0
  store ptr @2, ptr %383, align 8
  %384 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %382, i32 0, i32 1
  store i64 5, ptr %384, align 4
  %385 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %382, align 8
  %386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 0
  store ptr null, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 1
  store i64 0, ptr %388, align 4
  %389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %386, align 8
  %390 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %391 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %390)
  %392 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %385, ptr %391, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %389, i1 false)
  %393 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %394 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 0
  store ptr @3, ptr %394, align 8
  %395 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %393, i32 0, i32 1
  store i64 8, ptr %395, align 4
  %396 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %393, align 8
  %397 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 0
  store ptr null, ptr %398, align 8
  %399 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %397, i32 0, i32 1
  store i64 0, ptr %399, align 4
  %400 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %397, align 8
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %402 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %396, ptr %401, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %400, i1 false)
  %403 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %404 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %403, i32 0, i32 0
  store ptr @4, ptr %404, align 8
  %405 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %403, i32 0, i32 1
  store i64 4, ptr %405, align 4
  %406 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %403, align 8
  %407 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %408 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %407, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %365, ptr %408, align 8
  %409 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %407, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %381, ptr %409, align 8
  %410 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %407, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %392, ptr %410, align 8
  %411 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %407, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %402, ptr %411, align 8
  %412 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %413 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 0
  store ptr %407, ptr %413, align 8
  %414 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 1
  store i64 4, ptr %414, align 4
  %415 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, i32 0, i32 2
  store i64 4, ptr %415, align 4
  %416 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %412, align 8
  %417 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %406, i64 144, %"github.com/goplus/llgo/internal/runtime.Slice" %416)
  %418 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %353, ptr %354, ptr %417, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %418)
  store ptr %418, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_40

_llgo_40:                                         ; preds = %_llgo_39, %_llgo_38
  %419 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 21, i64 8, i64 0, i64 0)
  %420 = load ptr, ptr @_llgo_main.M, align 8
  %421 = icmp eq ptr %420, null
  br i1 %421, label %_llgo_41, label %_llgo_42

_llgo_41:                                         ; preds = %_llgo_40
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %419)
  store ptr %419, ptr @_llgo_main.M, align 8
  br label %_llgo_42

_llgo_42:                                         ; preds = %_llgo_41, %_llgo_40
  %422 = load ptr, ptr @_llgo_int, align 8
  %423 = load ptr, ptr @_llgo_string, align 8
  %424 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  br i1 %421, label %_llgo_43, label %_llgo_44

_llgo_43:                                         ; preds = %_llgo_42
  %425 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %426 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 0
  store ptr @4, ptr %426, align 8
  %427 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %425, i32 0, i32 1
  store i64 4, ptr %427, align 4
  %428 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %425, align 8
  %429 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %430 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 0
  store ptr @20, ptr %430, align 8
  %431 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %429, i32 0, i32 1
  store i64 1, ptr %431, align 4
  %432 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %429, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %419, %"github.com/goplus/llgo/internal/runtime.String" %428, %"github.com/goplus/llgo/internal/runtime.String" %432, ptr %424, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_44

_llgo_44:                                         ; preds = %_llgo_43, %_llgo_42
  %433 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 2, i64 8, i64 0, i64 0)
  %434 = load ptr, ptr @"map[_llgo_main.N]_llgo_string", align 8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %_llgo_45, label %_llgo_46

_llgo_45:                                         ; preds = %_llgo_44
  %436 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %437 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %438 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %437, i32 0, i32 0
  store ptr @0, ptr %438, align 8
  %439 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %437, i32 0, i32 1
  store i64 7, ptr %439, align 4
  %440 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %437, align 8
  %441 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %442 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 0
  store ptr null, ptr %442, align 8
  %443 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %441, i32 0, i32 1
  store i64 0, ptr %443, align 4
  %444 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %441, align 8
  %445 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %446 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %445)
  %447 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %440, ptr %446, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %444, i1 false)
  %448 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %449 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 0
  store ptr @1, ptr %449, align 8
  %450 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %448, i32 0, i32 1
  store i64 4, ptr %450, align 4
  %451 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %448, align 8
  %452 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %453 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %452, i32 0, i32 0
  store ptr null, ptr %453, align 8
  %454 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %452, i32 0, i32 1
  store i64 0, ptr %454, align 4
  %455 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %452, align 8
  %456 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %433)
  %457 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %451, ptr %456, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %455, i1 false)
  %458 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %459 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 0
  store ptr @2, ptr %459, align 8
  %460 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %458, i32 0, i32 1
  store i64 5, ptr %460, align 4
  %461 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %458, align 8
  %462 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %463 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 0
  store ptr null, ptr %463, align 8
  %464 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %462, i32 0, i32 1
  store i64 0, ptr %464, align 4
  %465 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %462, align 8
  %466 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %467 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %466)
  %468 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %461, ptr %467, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %465, i1 false)
  %469 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %470 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 0
  store ptr @3, ptr %470, align 8
  %471 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %469, i32 0, i32 1
  store i64 8, ptr %471, align 4
  %472 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %469, align 8
  %473 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %474 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 0
  store ptr null, ptr %474, align 8
  %475 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %473, i32 0, i32 1
  store i64 0, ptr %475, align 4
  %476 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %473, align 8
  %477 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %478 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %472, ptr %477, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %476, i1 false)
  %479 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %480 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 0
  store ptr @4, ptr %480, align 8
  %481 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %479, i32 0, i32 1
  store i64 4, ptr %481, align 4
  %482 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %479, align 8
  %483 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %484 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %483, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %447, ptr %484, align 8
  %485 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %483, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %457, ptr %485, align 8
  %486 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %483, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %468, ptr %486, align 8
  %487 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %483, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %478, ptr %487, align 8
  %488 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %489 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 0
  store ptr %483, ptr %489, align 8
  %490 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 1
  store i64 4, ptr %490, align 4
  %491 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, i32 0, i32 2
  store i64 4, ptr %491, align 4
  %492 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %488, align 8
  %493 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %482, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %492)
  %494 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %433, ptr %436, ptr %493, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %494)
  store ptr %494, ptr @"map[_llgo_main.N]_llgo_string", align 8
  br label %_llgo_46

_llgo_46:                                         ; preds = %_llgo_45, %_llgo_44
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

declare ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64, i64, i64, i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare i1 @"github.com/goplus/llgo/internal/runtime.EfaceEqual"(%"github.com/goplus/llgo/internal/runtime.eface", %"github.com/goplus/llgo/internal/runtime.eface")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr)

declare ptr @"github.com/goplus/llgo/internal/runtime.NewChan"(i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64, %"github.com/goplus/llgo/internal/runtime.String", ptr)

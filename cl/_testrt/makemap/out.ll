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
@_llgo_string = linkonce global ptr null, align 8
@11 = private unnamed_addr constant [7 x i8] c"bad len", align 1
@"map[_llgo_any]_llgo_int" = linkonce global ptr null, align 8
@_llgo_main.N1 = linkonce global ptr null, align 8
@_llgo_int = linkonce global ptr null, align 8
@"[1]_llgo_int" = linkonce global ptr null, align 8
@12 = private unnamed_addr constant [2 x i8] c"N1", align 1
@13 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_main.K = linkonce global ptr null, align 8
@_llgo_main.N = linkonce global ptr null, align 8
@"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A" = global ptr null, align 8
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
  ret i32 0
}

define void @main.make1() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @5, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %7, align 4
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %6, ptr %1, ptr %7)
  store %"github.com/goplus/llgo/internal/runtime.String" %5, ptr %8, align 8
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @6, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 5, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %14 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %14, align 4
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %13, ptr %1, ptr %14)
  store %"github.com/goplus/llgo/internal/runtime.String" %12, ptr %15, align 8
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @7, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 4, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 3, ptr %21, align 4
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %20, ptr %1, ptr %21)
  store %"github.com/goplus/llgo/internal/runtime.String" %19, ptr %22, align 8
  %23 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 1, ptr %24, align 4
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %23, ptr %1, ptr %24)
  %26 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %25, align 8
  %27 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store i64 2, ptr %28, align 4
  %29 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAccess1"(ptr %27, ptr %1, ptr %28)
  %30 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %29, align 8
  %31 = load i64, ptr %1, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %26)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %30)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %31)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %32 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %32, ptr %1)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %34 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %33)
  %35 = extractvalue { i1, ptr, ptr } %34, 0
  br i1 %35, label %_llgo_11, label %_llgo_12

_llgo_2:                                          ; preds = %_llgo_13
  %36 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %152, 1
  %37 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %152, 2
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 0
  store ptr @8, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %38, i32 0, i32 1
  store i64 1, ptr %40, align 4
  %41 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %38, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %36)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %41)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_13
  %42 = load i64, ptr %1, align 4
  %43 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %43, i64 %42)
  %45 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %45, ptr %1)
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_5, %_llgo_3
  %47 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %46)
  %48 = extractvalue { i1, ptr, ptr } %47, 0
  br i1 %48, label %_llgo_14, label %_llgo_15

_llgo_5:                                          ; preds = %_llgo_16
  %49 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %168, 1
  %50 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %168, 2
  %51 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %52 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %50, ptr %52, align 8
  %53 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %51, ptr %44, ptr %52)
  store i64 %49, ptr %53, align 4
  br label %_llgo_4

_llgo_6:                                          ; preds = %_llgo_16
  %54 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %55 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 0
  store ptr @7, ptr %55, align 8
  %56 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %54, i32 0, i32 1
  store i64 4, ptr %56, align 4
  %57 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %54, align 8
  %58 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %57, ptr %59, align 8
  %60 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %58, ptr %44, ptr %59)
  %61 = extractvalue { ptr, i1 } %60, 0
  %62 = load i64, ptr %61, align 4
  %63 = extractvalue { ptr, i1 } %60, 1
  %64 = alloca { i64, i1 }, align 8
  %65 = getelementptr inbounds { i64, i1 }, ptr %64, i32 0, i32 0
  store i64 %62, ptr %65, align 4
  %66 = getelementptr inbounds { i64, i1 }, ptr %64, i32 0, i32 1
  store i1 %63, ptr %66, align 1
  %67 = load { i64, i1 }, ptr %64, align 4
  %68 = extractvalue { i64, i1 } %67, 0
  %69 = extractvalue { i64, i1 } %67, 1
  %70 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %71 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 0
  store ptr @7, ptr %71, align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %70, i32 0, i32 1
  store i64 4, ptr %72, align 4
  %73 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %70, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %73)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %69)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %74 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %75 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 0
  store ptr @9, ptr %75, align 8
  %76 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %74, i32 0, i32 1
  store i64 2, ptr %76, align 4
  %77 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %74, align 8
  %78 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %79 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %77, ptr %79, align 8
  %80 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %78, ptr %44, ptr %79)
  %81 = extractvalue { ptr, i1 } %80, 0
  %82 = load i64, ptr %81, align 4
  %83 = extractvalue { ptr, i1 } %80, 1
  %84 = alloca { i64, i1 }, align 8
  %85 = getelementptr inbounds { i64, i1 }, ptr %84, i32 0, i32 0
  store i64 %82, ptr %85, align 4
  %86 = getelementptr inbounds { i64, i1 }, ptr %84, i32 0, i32 1
  store i1 %83, ptr %86, align 1
  %87 = load { i64, i1 }, ptr %84, align 4
  %88 = extractvalue { i64, i1 } %87, 0
  %89 = extractvalue { i64, i1 } %87, 1
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @9, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 2, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %93)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %88)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %89)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %94 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 0
  store ptr @7, ptr %95, align 8
  %96 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %94, i32 0, i32 1
  store i64 4, ptr %96, align 4
  %97 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %94, align 8
  %98 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %99 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %97, ptr %99, align 8
  call void @"github.com/goplus/llgo/internal/runtime.MapDelete"(ptr %98, ptr %44, ptr %99)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @7, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 4, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %105 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %103, ptr %105, align 8
  %106 = call { ptr, i1 } @"github.com/goplus/llgo/internal/runtime.MapAccess2"(ptr %104, ptr %44, ptr %105)
  %107 = extractvalue { ptr, i1 } %106, 0
  %108 = load i64, ptr %107, align 4
  %109 = extractvalue { ptr, i1 } %106, 1
  %110 = alloca { i64, i1 }, align 8
  %111 = getelementptr inbounds { i64, i1 }, ptr %110, i32 0, i32 0
  store i64 %108, ptr %111, align 4
  %112 = getelementptr inbounds { i64, i1 }, ptr %110, i32 0, i32 1
  store i1 %109, ptr %112, align 1
  %113 = load { i64, i1 }, ptr %110, align 4
  %114 = extractvalue { i64, i1 } %113, 0
  %115 = extractvalue { i64, i1 } %113, 1
  br i1 %115, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %116 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %117 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 0
  store ptr @10, ptr %117, align 8
  %118 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %116, i32 0, i32 1
  store i64 7, ptr %118, align 4
  %119 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %116, align 8
  %120 = load ptr, ptr @_llgo_string, align 8
  %121 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %119, ptr %121, align 8
  %122 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %123 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 0
  store ptr %120, ptr %123, align 8
  %124 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, i32 0, i32 1
  store ptr %121, ptr %124, align 8
  %125 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %122, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %125)
  unreachable

_llgo_8:                                          ; preds = %_llgo_6
  %126 = load i64, ptr %44, align 4
  %127 = icmp ne i64 %126, 2
  br i1 %127, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %128 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %129 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 0
  store ptr @11, ptr %129, align 8
  %130 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %128, i32 0, i32 1
  store i64 7, ptr %130, align 4
  %131 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %128, align 8
  %132 = load ptr, ptr @_llgo_string, align 8
  %133 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %131, ptr %133, align 8
  %134 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 0
  store ptr %132, ptr %135, align 8
  %136 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, i32 0, i32 1
  store ptr %133, ptr %136, align 8
  %137 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %134, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %137)
  unreachable

_llgo_10:                                         ; preds = %_llgo_8
  ret void

_llgo_11:                                         ; preds = %_llgo_1
  %138 = extractvalue { i1, ptr, ptr } %34, 1
  %139 = extractvalue { i1, ptr, ptr } %34, 2
  %140 = load i64, ptr %138, align 4
  %141 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %139, align 8
  %142 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %143 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %142, i32 0, i32 0
  store i1 true, ptr %143, align 1
  %144 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %142, i32 0, i32 1
  store i64 %140, ptr %144, align 4
  %145 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %142, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %141, ptr %145, align 8
  %146 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %142, align 8
  br label %_llgo_13

_llgo_12:                                         ; preds = %_llgo_1
  %147 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %148 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %147, i32 0, i32 0
  store i1 false, ptr %148, align 1
  %149 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %147, i32 0, i32 1
  store i64 0, ptr %149, align 4
  %150 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %147, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %150, align 8
  %151 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %147, align 8
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12, %_llgo_11
  %152 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %146, %_llgo_11 ], [ %151, %_llgo_12 ]
  %153 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %152, 0
  br i1 %153, label %_llgo_2, label %_llgo_3

_llgo_14:                                         ; preds = %_llgo_4
  %154 = extractvalue { i1, ptr, ptr } %47, 1
  %155 = extractvalue { i1, ptr, ptr } %47, 2
  %156 = load i64, ptr %154, align 4
  %157 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %155, align 8
  %158 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %159 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %158, i32 0, i32 0
  store i1 true, ptr %159, align 1
  %160 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %158, i32 0, i32 1
  store i64 %156, ptr %160, align 4
  %161 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %158, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" %157, ptr %161, align 8
  %162 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %158, align 8
  br label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_4
  %163 = alloca { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, align 8
  %164 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %163, i32 0, i32 0
  store i1 false, ptr %164, align 1
  %165 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %163, i32 0, i32 1
  store i64 0, ptr %165, align 4
  %166 = getelementptr inbounds { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %163, i32 0, i32 2
  store %"github.com/goplus/llgo/internal/runtime.String" zeroinitializer, ptr %166, align 8
  %167 = load { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" }, ptr %163, align 8
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %168 = phi { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } [ %162, %_llgo_14 ], [ %167, %_llgo_15 ]
  %169 = extractvalue { i1, i64, %"github.com/goplus/llgo/internal/runtime.String" } %168, 0
  br i1 %169, label %_llgo_5, label %_llgo_6
}

define void @main.make2() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %0, i64 0)
  %2 = load i64, ptr %1, align 4
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
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr null)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 true)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 false)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %5 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %6 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %5, i64 0)
  %7 = alloca [1 x i64], align 8
  %8 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %7, i64 8)
  %9 = getelementptr inbounds i64, ptr %8, i64 0
  store i64 1, ptr %9, align 4
  %10 = load [1 x i64], ptr %8, align 4
  %11 = load ptr, ptr @_llgo_main.N1, align 8
  %12 = extractvalue [1 x i64] %10, 0
  %13 = inttoptr i64 %12 to ptr
  %14 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %15 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 0
  store ptr %11, ptr %15, align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, i32 0, i32 1
  store ptr %13, ptr %16, align 8
  %17 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %14, align 8
  %18 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %17, ptr %19, align 8
  %20 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %18, ptr %6, ptr %19)
  store i64 100, ptr %20, align 4
  %21 = alloca [1 x i64], align 8
  %22 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %21, i64 8)
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
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %32, ptr %6, ptr %33)
  store i64 200, ptr %34, align 4
  %35 = alloca [1 x i64], align 8
  %36 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %35, i64 8)
  %37 = getelementptr inbounds i64, ptr %36, i64 0
  store i64 3, ptr %37, align 4
  %38 = load [1 x i64], ptr %36, align 4
  %39 = load ptr, ptr @_llgo_main.N1, align 8
  %40 = extractvalue [1 x i64] %38, 0
  %41 = inttoptr i64 %40 to ptr
  %42 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 0
  store ptr %39, ptr %43, align 8
  %44 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, i32 0, i32 1
  store ptr %41, ptr %44, align 8
  %45 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %42, align 8
  %46 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %47 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %45, ptr %47, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %46, ptr %6, ptr %47)
  store i64 300, ptr %48, align 4
  %49 = alloca [1 x i64], align 8
  %50 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %49, i64 8)
  %51 = getelementptr inbounds i64, ptr %50, i64 0
  store i64 2, ptr %51, align 4
  %52 = load [1 x i64], ptr %50, align 4
  %53 = load ptr, ptr @_llgo_main.N1, align 8
  %54 = extractvalue [1 x i64] %52, 0
  %55 = inttoptr i64 %54 to ptr
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, i32 0, i32 0
  store ptr %53, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, i32 0, i32 1
  store ptr %55, ptr %58, align 8
  %59 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %56, align 8
  %60 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %59, ptr %61, align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %60, ptr %6, ptr %61)
  store i64 -200, ptr %62, align 4
  %63 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %64 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %63, ptr %6)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %65 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %64)
  %66 = extractvalue { i1, ptr, ptr } %65, 0
  br i1 %66, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %67 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %86, 1
  %68 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %86, 2
  %69 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %67, 0
  %70 = load ptr, ptr @_llgo_main.N1, align 8
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %_llgo_7, label %_llgo_8

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %72 = extractvalue { i1, ptr, ptr } %65, 1
  %73 = extractvalue { i1, ptr, ptr } %65, 2
  %74 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %72, align 8
  %75 = load i64, ptr %73, align 4
  %76 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %77 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %76, i32 0, i32 0
  store i1 true, ptr %77, align 1
  %78 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %76, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" %74, ptr %78, align 8
  %79 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %76, i32 0, i32 2
  store i64 %75, ptr %79, align 4
  %80 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %76, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %81 = alloca { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, align 8
  %82 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %81, i32 0, i32 0
  store i1 false, ptr %82, align 1
  %83 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %81, i32 0, i32 1
  store %"github.com/goplus/llgo/internal/runtime.eface" zeroinitializer, ptr %83, align 8
  %84 = getelementptr inbounds { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %81, i32 0, i32 2
  store i64 0, ptr %84, align 4
  %85 = load { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 }, ptr %81, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %86 = phi { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } [ %80, %_llgo_4 ], [ %85, %_llgo_5 ]
  %87 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %86, 0
  br i1 %87, label %_llgo_2, label %_llgo_3

_llgo_7:                                          ; preds = %_llgo_2
  %88 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %67, 1
  %89 = ptrtoint ptr %88 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %89)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %68)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @13, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 21, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = load ptr, ptr @_llgo_string, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %99)
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
  %25 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %26 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %25, i64 0)
  %27 = alloca [1 x %main.N], align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %27, i64 2)
  %29 = getelementptr inbounds %main.N, ptr %28, i64 0
  %30 = getelementptr inbounds %main.N, ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %main.N, ptr %29, i32 0, i32 1
  store i8 1, ptr %30, align 1
  store i8 2, ptr %31, align 1
  %32 = load [1 x %main.N], ptr %28, align 1
  %33 = load ptr, ptr @_llgo_main.K, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 2)
  store [1 x %main.N] %32, ptr %34, align 1
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
  %42 = alloca [1 x %main.N], align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %42, i64 2)
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
  %64 = load ptr, ptr @_llgo_main.K, align 8
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
  %83 = load [1 x %main.N], ptr %82, align 1
  %84 = alloca [1 x %main.N], align 8
  %85 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %84, i64 2)
  store [1 x %main.N] %83, ptr %85, align 1
  %86 = getelementptr inbounds %main.N, ptr %85, i64 0
  %87 = load %main.N, ptr %86, align 1
  %88 = extractvalue %main.N %87, 0
  %89 = sext i8 %88 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %89)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %62)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @13, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 21, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = load ptr, ptr @_llgo_string, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %99)
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
  %27 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %27, i64 0)
  %29 = alloca [1 x ptr], align 8
  %30 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %29, i64 8)
  %31 = getelementptr inbounds ptr, ptr %30, i64 0
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocZ"(i64 2)
  %33 = getelementptr inbounds %main.N, ptr %32, i32 0, i32 0
  %34 = getelementptr inbounds %main.N, ptr %32, i32 0, i32 1
  store i8 1, ptr %33, align 1
  store i8 2, ptr %34, align 1
  store ptr %32, ptr %31, align 8
  %35 = load [1 x ptr], ptr %30, align 8
  %36 = load ptr, ptr @_llgo_main.K2, align 8
  %37 = extractvalue [1 x ptr] %35, 0
  %38 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 0
  store ptr %36, ptr %39, align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, i32 0, i32 1
  store ptr %37, ptr %40, align 8
  %41 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %38, align 8
  %42 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %43 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %41, ptr %43, align 8
  %44 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %42, ptr %28, ptr %43)
  store i64 100, ptr %44, align 4
  %45 = alloca [1 x ptr], align 8
  %46 = call ptr @"github.com/goplus/llgo/internal/runtime.Zeroinit"(ptr %45, i64 8)
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
  %58 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %59 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.eface" %57, ptr %59, align 8
  %60 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %58, ptr %28, ptr %59)
  store i64 200, ptr %60, align 4
  %61 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %61, ptr %28)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_7, %_llgo_0
  %63 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %62)
  %64 = extractvalue { i1, ptr, ptr } %63, 0
  br i1 %64, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %65 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 1
  %66 = extractvalue { i1, %"github.com/goplus/llgo/internal/runtime.eface", i64 } %84, 2
  %67 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %65, 0
  %68 = load ptr, ptr @_llgo_main.K2, align 8
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
  %87 = getelementptr inbounds %main.N, ptr %86, i32 0, i32 0
  %88 = load i8, ptr %87, align 1
  %89 = sext i8 %88 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %89)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %66)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_8:                                          ; preds = %_llgo_2
  %90 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 0
  store ptr @13, ptr %91, align 8
  %92 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %90, i32 0, i32 1
  store i64 21, ptr %92, align 4
  %93 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %90, align 8
  %94 = load ptr, ptr @_llgo_string, align 8
  %95 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %93, ptr %95, align 8
  %96 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %97 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 0
  store ptr %94, ptr %97, align 8
  %98 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, i32 0, i32 1
  store ptr %95, ptr %98, align 8
  %99 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %96, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %99)
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
  %12 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.MakeMap"(ptr %12, i64 0)
  %14 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %15 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %15, align 8
  %16 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %14, ptr %13, ptr %15)
  store i64 100, ptr %16, align 4
  %17 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %18 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 8)
  store ptr %0, ptr %18, align 8
  %19 = call ptr @"github.com/goplus/llgo/internal/runtime.MapAssign"(ptr %17, ptr %13, ptr %18)
  store i64 200, ptr %19, align 4
  %20 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %21 = call ptr @"github.com/goplus/llgo/internal/runtime.NewMapIter"(ptr %20, ptr %13)
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %22 = call { i1, ptr, ptr } @"github.com/goplus/llgo/internal/runtime.MapIterNext"(ptr %21)
  %23 = extractvalue { i1, ptr, ptr } %22, 0
  br i1 %23, label %_llgo_4, label %_llgo_5

_llgo_2:                                          ; preds = %_llgo_6
  %24 = extractvalue { i1, ptr, i64 } %40, 1
  %25 = extractvalue { i1, ptr, i64 } %40, 2
  call void @"github.com/goplus/llgo/internal/runtime.PrintPointer"(ptr %24)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %25)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_6
  ret void

_llgo_4:                                          ; preds = %_llgo_1
  %26 = extractvalue { i1, ptr, ptr } %22, 1
  %27 = extractvalue { i1, ptr, ptr } %22, 2
  %28 = load ptr, ptr %26, align 8
  %29 = load i64, ptr %27, align 4
  %30 = alloca { i1, ptr, i64 }, align 8
  %31 = getelementptr inbounds { i1, ptr, i64 }, ptr %30, i32 0, i32 0
  store i1 true, ptr %31, align 1
  %32 = getelementptr inbounds { i1, ptr, i64 }, ptr %30, i32 0, i32 1
  store ptr %28, ptr %32, align 8
  %33 = getelementptr inbounds { i1, ptr, i64 }, ptr %30, i32 0, i32 2
  store i64 %29, ptr %33, align 4
  %34 = load { i1, ptr, i64 }, ptr %30, align 8
  br label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_1
  %35 = alloca { i1, ptr, i64 }, align 8
  %36 = getelementptr inbounds { i1, ptr, i64 }, ptr %35, i32 0, i32 0
  store i1 false, ptr %36, align 1
  %37 = getelementptr inbounds { i1, ptr, i64 }, ptr %35, i32 0, i32 1
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds { i1, ptr, i64 }, ptr %35, i32 0, i32 2
  store i64 0, ptr %38, align 4
  %39 = load { i1, ptr, i64 }, ptr %35, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %40 = phi { i1, ptr, i64 } [ %34, %_llgo_4 ], [ %39, %_llgo_5 ]
  %41 = extractvalue { i1, ptr, i64 } %40, 0
  br i1 %41, label %_llgo_2, label %_llgo_3
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @"map[_llgo_int]_llgo_string", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %3 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %4 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 0
  store ptr @0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %4, i32 0, i32 1
  store i64 7, ptr %6, align 4
  %7 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %4, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 0
  store ptr null, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %8, i32 0, i32 1
  store i64 0, ptr %10, align 4
  %11 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %8, align 8
  %12 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %13 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %12)
  %14 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %7, ptr %13, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %11, i1 false)
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @1, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 4, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 0, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %24 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %23)
  %25 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %18, ptr %24, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %22, i1 false)
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 0
  store ptr @2, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %26, i32 0, i32 1
  store i64 5, ptr %28, align 4
  %29 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %26, align 8
  %30 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %31 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 0
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %30, i32 0, i32 1
  store i64 0, ptr %32, align 4
  %33 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %34 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %35 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %34)
  %36 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %29, ptr %35, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %33, i1 false)
  %37 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %38 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 0
  store ptr @3, ptr %38, align 8
  %39 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %37, i32 0, i32 1
  store i64 8, ptr %39, align 4
  %40 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %37, align 8
  %41 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %42 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 0
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %41, i32 0, i32 1
  store i64 0, ptr %43, align 4
  %44 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %41, align 8
  %45 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %46 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %40, ptr %45, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %44, i1 false)
  %47 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %48 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 0
  store ptr @4, ptr %48, align 8
  %49 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %47, i32 0, i32 1
  store i64 4, ptr %49, align 4
  %50 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %47, align 8
  %51 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %52 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %14, ptr %52, align 8
  %53 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %25, ptr %53, align 8
  %54 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %36, ptr %54, align 8
  %55 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %51, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %46, ptr %55, align 8
  %56 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %57 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 0
  store ptr %51, ptr %57, align 8
  %58 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 1
  store i64 4, ptr %58, align 4
  %59 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, i32 0, i32 2
  store i64 4, ptr %59, align 4
  %60 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %56, align 8
  %61 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %50, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %60)
  %62 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %2, ptr %3, ptr %61, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %62)
  store ptr %62, ptr @"map[_llgo_int]_llgo_string", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %63 = load ptr, ptr @"map[_llgo_string]_llgo_int", align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %65 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %66 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %67 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %68 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 0
  store ptr @0, ptr %68, align 8
  %69 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %67, i32 0, i32 1
  store i64 7, ptr %69, align 4
  %70 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %67, align 8
  %71 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %72 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 0
  store ptr null, ptr %72, align 8
  %73 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %71, i32 0, i32 1
  store i64 0, ptr %73, align 4
  %74 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %71, align 8
  %75 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %76 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %75)
  %77 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %70, ptr %76, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %74, i1 false)
  %78 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %79 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 0
  store ptr @1, ptr %79, align 8
  %80 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %78, i32 0, i32 1
  store i64 4, ptr %80, align 4
  %81 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %78, align 8
  %82 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %83 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 0
  store ptr null, ptr %83, align 8
  %84 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %82, i32 0, i32 1
  store i64 0, ptr %84, align 4
  %85 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %82, align 8
  %86 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  %87 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %86)
  %88 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %81, ptr %87, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %85, i1 false)
  %89 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %90 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 0
  store ptr @2, ptr %90, align 8
  %91 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %89, i32 0, i32 1
  store i64 5, ptr %91, align 4
  %92 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %89, align 8
  %93 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %94 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 0
  store ptr null, ptr %94, align 8
  %95 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %93, i32 0, i32 1
  store i64 0, ptr %95, align 4
  %96 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %93, align 8
  %97 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %98 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %97)
  %99 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %92, ptr %98, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %96, i1 false)
  %100 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %101 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 0
  store ptr @3, ptr %101, align 8
  %102 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %100, i32 0, i32 1
  store i64 8, ptr %102, align 4
  %103 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %100, align 8
  %104 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %105 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 0
  store ptr null, ptr %105, align 8
  %106 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %104, i32 0, i32 1
  store i64 0, ptr %106, align 4
  %107 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %104, align 8
  %108 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %109 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %103, ptr %108, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %107, i1 false)
  %110 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %111 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 0
  store ptr @4, ptr %111, align 8
  %112 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %110, i32 0, i32 1
  store i64 4, ptr %112, align 4
  %113 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %110, align 8
  %114 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %115 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %77, ptr %115, align 8
  %116 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %88, ptr %116, align 8
  %117 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %99, ptr %117, align 8
  %118 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %114, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %109, ptr %118, align 8
  %119 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %120 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 0
  store ptr %114, ptr %120, align 8
  %121 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 1
  store i64 4, ptr %121, align 4
  %122 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, i32 0, i32 2
  store i64 4, ptr %122, align 4
  %123 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %119, align 8
  %124 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %113, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %123)
  %125 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %65, ptr %66, ptr %124, i64 12)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %125)
  store ptr %125, ptr @"map[_llgo_string]_llgo_int", align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %126 = load ptr, ptr @_llgo_string, align 8
  %127 = icmp eq ptr %126, null
  br i1 %127, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %128 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %128, ptr @_llgo_string, align 8
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %129 = load ptr, ptr @"map[_llgo_any]_llgo_int", align 8
  %130 = icmp eq ptr %129, null
  br i1 %130, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  %131 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %132 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %133 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 0
  store ptr %131, ptr %133, align 8
  %134 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 1
  store i64 0, ptr %134, align 4
  %135 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, i32 0, i32 2
  store i64 0, ptr %135, align 4
  %136 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %132, align 8
  %137 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %138 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 0
  store ptr @4, ptr %138, align 8
  %139 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %137, i32 0, i32 1
  store i64 4, ptr %139, align 4
  %140 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %137, align 8
  %141 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %142 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 0
  store ptr null, ptr %142, align 8
  %143 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %141, i32 0, i32 1
  store i64 0, ptr %143, align 4
  %144 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %141, align 8
  %145 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %140, %"github.com/goplus/llgo/internal/runtime.String" %144, %"github.com/goplus/llgo/internal/runtime.Slice" %136)
  %146 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %147 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %148 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 0
  store ptr @0, ptr %148, align 8
  %149 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %147, i32 0, i32 1
  store i64 7, ptr %149, align 4
  %150 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %147, align 8
  %151 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %152 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 0
  store ptr null, ptr %152, align 8
  %153 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %151, i32 0, i32 1
  store i64 0, ptr %153, align 4
  %154 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %151, align 8
  %155 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %156 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %155)
  %157 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %150, ptr %156, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %154, i1 false)
  %158 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %159 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 0
  store ptr @1, ptr %159, align 8
  %160 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %158, i32 0, i32 1
  store i64 4, ptr %160, align 4
  %161 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %158, align 8
  %162 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %163 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 0
  store ptr null, ptr %163, align 8
  %164 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %162, i32 0, i32 1
  store i64 0, ptr %164, align 4
  %165 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %162, align 8
  %166 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 0)
  %167 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %168 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 0
  store ptr %166, ptr %168, align 8
  %169 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 1
  store i64 0, ptr %169, align 4
  %170 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, i32 0, i32 2
  store i64 0, ptr %170, align 4
  %171 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %167, align 8
  %172 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %173 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 0
  store ptr @4, ptr %173, align 8
  %174 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %172, i32 0, i32 1
  store i64 4, ptr %174, align 4
  %175 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %172, align 8
  %176 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %177 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 0
  store ptr null, ptr %177, align 8
  %178 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %176, i32 0, i32 1
  store i64 0, ptr %178, align 4
  %179 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %176, align 8
  %180 = call ptr @"github.com/goplus/llgo/internal/runtime.Interface"(%"github.com/goplus/llgo/internal/runtime.String" %175, %"github.com/goplus/llgo/internal/runtime.String" %179, %"github.com/goplus/llgo/internal/runtime.Slice" %171)
  %181 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %180)
  %182 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %161, ptr %181, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %165, i1 false)
  %183 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %184 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 0
  store ptr @2, ptr %184, align 8
  %185 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %183, i32 0, i32 1
  store i64 5, ptr %185, align 4
  %186 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %183, align 8
  %187 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %188 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 0
  store ptr null, ptr %188, align 8
  %189 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %187, i32 0, i32 1
  store i64 0, ptr %189, align 4
  %190 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %187, align 8
  %191 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %192 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %191)
  %193 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %186, ptr %192, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %190, i1 false)
  %194 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %195 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 0
  store ptr @3, ptr %195, align 8
  %196 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %194, i32 0, i32 1
  store i64 8, ptr %196, align 4
  %197 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %194, align 8
  %198 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %199 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 0
  store ptr null, ptr %199, align 8
  %200 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %198, i32 0, i32 1
  store i64 0, ptr %200, align 4
  %201 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %198, align 8
  %202 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %203 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %197, ptr %202, i64 200, %"github.com/goplus/llgo/internal/runtime.String" %201, i1 false)
  %204 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %205 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 0
  store ptr @4, ptr %205, align 8
  %206 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %204, i32 0, i32 1
  store i64 4, ptr %206, align 4
  %207 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %204, align 8
  %208 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %209 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %157, ptr %209, align 8
  %210 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %182, ptr %210, align 8
  %211 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %193, ptr %211, align 8
  %212 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %208, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %203, ptr %212, align 8
  %213 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %214 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 0
  store ptr %208, ptr %214, align 8
  %215 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 1
  store i64 4, ptr %215, align 4
  %216 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, i32 0, i32 2
  store i64 4, ptr %216, align 4
  %217 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %213, align 8
  %218 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %207, i64 208, %"github.com/goplus/llgo/internal/runtime.Slice" %217)
  %219 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %145, ptr %146, ptr %218, i64 24)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %219)
  store ptr %219, ptr @"map[_llgo_any]_llgo_int", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %220 = load ptr, ptr @_llgo_main.N1, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %222 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 8, i64 0, i64 0)
  store ptr %222, ptr @_llgo_main.N1, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %223 = load ptr, ptr @_llgo_int, align 8
  %224 = icmp eq ptr %223, null
  br i1 %224, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %225 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %225, ptr @_llgo_int, align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %226 = load ptr, ptr @_llgo_int, align 8
  %227 = load ptr, ptr @"[1]_llgo_int", align 8
  %228 = icmp eq ptr %227, null
  br i1 %228, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %229 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %230 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %229)
  store ptr %230, ptr @"[1]_llgo_int", align 8
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  %231 = load ptr, ptr @"[1]_llgo_int", align 8
  br i1 %221, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %232 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %233 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 0
  store ptr @4, ptr %233, align 8
  %234 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %232, i32 0, i32 1
  store i64 4, ptr %234, align 4
  %235 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %232, align 8
  %236 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %237 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 0
  store ptr @12, ptr %237, align 8
  %238 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %236, i32 0, i32 1
  store i64 2, ptr %238, align 4
  %239 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %236, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %222, %"github.com/goplus/llgo/internal/runtime.String" %235, %"github.com/goplus/llgo/internal/runtime.String" %239, ptr %231, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  %240 = load ptr, ptr @_llgo_main.K, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %_llgo_17, label %_llgo_18

_llgo_17:                                         ; preds = %_llgo_16
  %242 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 2, i64 0, i64 0)
  store ptr %242, ptr @_llgo_main.K, align 8
  br label %_llgo_18

_llgo_18:                                         ; preds = %_llgo_17, %_llgo_16
  %243 = load ptr, ptr @_llgo_main.N, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %_llgo_19, label %_llgo_20

_llgo_19:                                         ; preds = %_llgo_18
  %245 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 25, i64 2, i64 0, i64 0)
  store ptr %245, ptr @_llgo_main.N, align 8
  br label %_llgo_20

_llgo_20:                                         ; preds = %_llgo_19, %_llgo_18
  %246 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %247 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 0
  store ptr @14, ptr %247, align 8
  %248 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %246, i32 0, i32 1
  store i64 2, ptr %248, align 4
  %249 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %246, align 8
  %250 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %251 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 0
  store ptr null, ptr %251, align 8
  %252 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %250, i32 0, i32 1
  store i64 0, ptr %252, align 4
  %253 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %250, align 8
  %254 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %255 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %249, ptr %254, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %253, i1 false)
  %256 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %257 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 0
  store ptr @15, ptr %257, align 8
  %258 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %256, i32 0, i32 1
  store i64 2, ptr %258, align 4
  %259 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %256, align 8
  %260 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %261 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 0
  store ptr null, ptr %261, align 8
  %262 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %260, i32 0, i32 1
  store i64 0, ptr %262, align 4
  %263 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %260, align 8
  %264 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 35)
  %265 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %259, ptr %264, i64 1, %"github.com/goplus/llgo/internal/runtime.String" %263, i1 false)
  %266 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %267 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 0
  store ptr @4, ptr %267, align 8
  %268 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %266, i32 0, i32 1
  store i64 4, ptr %268, align 4
  %269 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %266, align 8
  %270 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 112)
  %271 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %270, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %255, ptr %271, align 8
  %272 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %270, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %265, ptr %272, align 8
  %273 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %274 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %273, i32 0, i32 0
  store ptr %270, ptr %274, align 8
  %275 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %273, i32 0, i32 1
  store i64 2, ptr %275, align 4
  %276 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %273, i32 0, i32 2
  store i64 2, ptr %276, align 4
  %277 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %273, align 8
  %278 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %269, i64 2, %"github.com/goplus/llgo/internal/runtime.Slice" %277)
  store ptr %278, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  %279 = load ptr, ptr @"main.struct$e65EDK9vxC36Nz3YTgO1ulssLlNH03Bva_WWaCjH-4A", align 8
  br i1 %244, label %_llgo_21, label %_llgo_22

_llgo_21:                                         ; preds = %_llgo_20
  %280 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %281 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 0
  store ptr @4, ptr %281, align 8
  %282 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %280, i32 0, i32 1
  store i64 4, ptr %282, align 4
  %283 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %280, align 8
  %284 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %285 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 0
  store ptr @16, ptr %285, align 8
  %286 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %284, i32 0, i32 1
  store i64 1, ptr %286, align 4
  %287 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %284, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %245, %"github.com/goplus/llgo/internal/runtime.String" %283, %"github.com/goplus/llgo/internal/runtime.String" %287, ptr %279, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_22

_llgo_22:                                         ; preds = %_llgo_21, %_llgo_20
  %288 = load ptr, ptr @_llgo_main.N, align 8
  %289 = load ptr, ptr @"[1]_llgo_main.N", align 8
  %290 = icmp eq ptr %289, null
  br i1 %290, label %_llgo_23, label %_llgo_24

_llgo_23:                                         ; preds = %_llgo_22
  %291 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %245)
  store ptr %291, ptr @"[1]_llgo_main.N", align 8
  br label %_llgo_24

_llgo_24:                                         ; preds = %_llgo_23, %_llgo_22
  %292 = load ptr, ptr @"[1]_llgo_main.N", align 8
  br i1 %241, label %_llgo_25, label %_llgo_26

_llgo_25:                                         ; preds = %_llgo_24
  %293 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %294 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 0
  store ptr @4, ptr %294, align 8
  %295 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %293, i32 0, i32 1
  store i64 4, ptr %295, align 4
  %296 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %293, align 8
  %297 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %298 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 0
  store ptr @17, ptr %298, align 8
  %299 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %297, i32 0, i32 1
  store i64 1, ptr %299, align 4
  %300 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %297, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %242, %"github.com/goplus/llgo/internal/runtime.String" %296, %"github.com/goplus/llgo/internal/runtime.String" %300, ptr %292, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_26

_llgo_26:                                         ; preds = %_llgo_25, %_llgo_24
  %301 = load ptr, ptr @_llgo_main.K2, align 8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %_llgo_27, label %_llgo_28

_llgo_27:                                         ; preds = %_llgo_26
  %303 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(i64 17, i64 8, i64 0, i64 0)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %303)
  store ptr %303, ptr @_llgo_main.K2, align 8
  br label %_llgo_28

_llgo_28:                                         ; preds = %_llgo_27, %_llgo_26
  %304 = load ptr, ptr @"*_llgo_main.N", align 8
  %305 = icmp eq ptr %304, null
  br i1 %305, label %_llgo_29, label %_llgo_30

_llgo_29:                                         ; preds = %_llgo_28
  %306 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %245)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %306)
  store ptr %306, ptr @"*_llgo_main.N", align 8
  br label %_llgo_30

_llgo_30:                                         ; preds = %_llgo_29, %_llgo_28
  %307 = load ptr, ptr @"*_llgo_main.N", align 8
  %308 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  %309 = icmp eq ptr %308, null
  br i1 %309, label %_llgo_31, label %_llgo_32

_llgo_31:                                         ; preds = %_llgo_30
  %310 = call ptr @"github.com/goplus/llgo/internal/runtime.PointerTo"(ptr %245)
  %311 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 1, ptr %310)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %311)
  store ptr %311, ptr @"[1]*_llgo_main.N", align 8
  br label %_llgo_32

_llgo_32:                                         ; preds = %_llgo_31, %_llgo_30
  %312 = load ptr, ptr @"[1]*_llgo_main.N", align 8
  br i1 %302, label %_llgo_33, label %_llgo_34

_llgo_33:                                         ; preds = %_llgo_32
  %313 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %314 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 0
  store ptr @4, ptr %314, align 8
  %315 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %313, i32 0, i32 1
  store i64 4, ptr %315, align 4
  %316 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %313, align 8
  %317 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %318 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 0
  store ptr @18, ptr %318, align 8
  %319 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %317, i32 0, i32 1
  store i64 2, ptr %319, align 4
  %320 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %317, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %303, %"github.com/goplus/llgo/internal/runtime.String" %316, %"github.com/goplus/llgo/internal/runtime.String" %320, ptr %312, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_34

_llgo_34:                                         ; preds = %_llgo_33, %_llgo_32
  %321 = load ptr, ptr @"chan _llgo_int", align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %_llgo_35, label %_llgo_36

_llgo_35:                                         ; preds = %_llgo_34
  %323 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %324 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 0
  store ptr @19, ptr %324, align 8
  %325 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %323, i32 0, i32 1
  store i64 4, ptr %325, align 4
  %326 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %323, align 8
  %327 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %328 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %326, ptr %327)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %328)
  store ptr %328, ptr @"chan _llgo_int", align 8
  br label %_llgo_36

_llgo_36:                                         ; preds = %_llgo_35, %_llgo_34
  %329 = load ptr, ptr @"map[chan _llgo_int]_llgo_int", align 8
  %330 = icmp eq ptr %329, null
  br i1 %330, label %_llgo_37, label %_llgo_38

_llgo_37:                                         ; preds = %_llgo_36
  %331 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %332 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 0
  store ptr @19, ptr %332, align 8
  %333 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %331, i32 0, i32 1
  store i64 4, ptr %333, align 4
  %334 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %331, align 8
  %335 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %336 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %334, ptr %335)
  %337 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %338 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %339 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 0
  store ptr @0, ptr %339, align 8
  %340 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %338, i32 0, i32 1
  store i64 7, ptr %340, align 4
  %341 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %338, align 8
  %342 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %343 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %342, i32 0, i32 0
  store ptr null, ptr %343, align 8
  %344 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %342, i32 0, i32 1
  store i64 0, ptr %344, align 4
  %345 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %342, align 8
  %346 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 40)
  %347 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %346)
  %348 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %341, ptr %347, i64 0, %"github.com/goplus/llgo/internal/runtime.String" %345, i1 false)
  %349 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %350 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 0
  store ptr @1, ptr %350, align 8
  %351 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %349, i32 0, i32 1
  store i64 4, ptr %351, align 4
  %352 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %349, align 8
  %353 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %354 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 0
  store ptr null, ptr %354, align 8
  %355 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %353, i32 0, i32 1
  store i64 0, ptr %355, align 4
  %356 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %353, align 8
  %357 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %358 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 0
  store ptr @19, ptr %358, align 8
  %359 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %357, i32 0, i32 1
  store i64 4, ptr %359, align 4
  %360 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %357, align 8
  %361 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %362 = call ptr @"github.com/goplus/llgo/internal/runtime.ChanOf"(i64 3, %"github.com/goplus/llgo/internal/runtime.String" %360, ptr %361)
  %363 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %362)
  %364 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %352, ptr %363, i64 8, %"github.com/goplus/llgo/internal/runtime.String" %356, i1 false)
  %365 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %366 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 0
  store ptr @2, ptr %366, align 8
  %367 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %365, i32 0, i32 1
  store i64 5, ptr %367, align 4
  %368 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %365, align 8
  %369 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %370 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 0
  store ptr null, ptr %370, align 8
  %371 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %369, i32 0, i32 1
  store i64 0, ptr %371, align 4
  %372 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %369, align 8
  %373 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %374 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 8, ptr %373)
  %375 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %368, ptr %374, i64 72, %"github.com/goplus/llgo/internal/runtime.String" %372, i1 false)
  %376 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %377 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 0
  store ptr @3, ptr %377, align 8
  %378 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %376, i32 0, i32 1
  store i64 8, ptr %378, align 4
  %379 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %376, align 8
  %380 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %381 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 0
  store ptr null, ptr %381, align 8
  %382 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %380, i32 0, i32 1
  store i64 0, ptr %382, align 4
  %383 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %380, align 8
  %384 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 58)
  %385 = call %"github.com/goplus/llgo/internal/abi.StructField" @"github.com/goplus/llgo/internal/runtime.StructField"(%"github.com/goplus/llgo/internal/runtime.String" %379, ptr %384, i64 136, %"github.com/goplus/llgo/internal/runtime.String" %383, i1 false)
  %386 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %387 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 0
  store ptr @4, ptr %387, align 8
  %388 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %386, i32 0, i32 1
  store i64 4, ptr %388, align 4
  %389 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %386, align 8
  %390 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 224)
  %391 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %390, i64 0
  store %"github.com/goplus/llgo/internal/abi.StructField" %348, ptr %391, align 8
  %392 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %390, i64 1
  store %"github.com/goplus/llgo/internal/abi.StructField" %364, ptr %392, align 8
  %393 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %390, i64 2
  store %"github.com/goplus/llgo/internal/abi.StructField" %375, ptr %393, align 8
  %394 = getelementptr %"github.com/goplus/llgo/internal/abi.StructField", ptr %390, i64 3
  store %"github.com/goplus/llgo/internal/abi.StructField" %385, ptr %394, align 8
  %395 = alloca %"github.com/goplus/llgo/internal/runtime.Slice", align 8
  %396 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %395, i32 0, i32 0
  store ptr %390, ptr %396, align 8
  %397 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %395, i32 0, i32 1
  store i64 4, ptr %397, align 4
  %398 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.Slice", ptr %395, i32 0, i32 2
  store i64 4, ptr %398, align 4
  %399 = load %"github.com/goplus/llgo/internal/runtime.Slice", ptr %395, align 8
  %400 = call ptr @"github.com/goplus/llgo/internal/runtime.Struct"(%"github.com/goplus/llgo/internal/runtime.String" %389, i64 144, %"github.com/goplus/llgo/internal/runtime.Slice" %399)
  %401 = call ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr %336, ptr %337, ptr %400, i64 4)
  call void @"github.com/goplus/llgo/internal/runtime.SetDirectIface"(ptr %401)
  store ptr %401, ptr @"map[chan _llgo_int]_llgo_int", align 8
  br label %_llgo_38

_llgo_38:                                         ; preds = %_llgo_37, %_llgo_36
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.MapOf"(ptr, ptr, ptr, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

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

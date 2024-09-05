; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [6 x i8] c"main.T", align 1
@_llgo_string = linkonce global ptr null, align 8
@2 = private unnamed_addr constant [4 x i8] c"main", align 1
@3 = private unnamed_addr constant [1 x i8] c"T", align 1
@4 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_main.A = linkonce global ptr null, align 8
@5 = private unnamed_addr constant [6 x i8] c"main.A", align 1
@_llgo_int = linkonce global ptr null, align 8
@"[2]_llgo_int" = linkonce global ptr null, align 8
@6 = private unnamed_addr constant [1 x i8] c"A", align 1

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
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @0, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 5, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = load ptr, ptr @_llgo_main.T, align 8
  %7 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %5, ptr %7, align 8
  %8 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 0
  store ptr %6, ptr %9, align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, i32 0, i32 1
  store ptr %7, ptr %10, align 8
  %11 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %8, align 8
  %12 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 0
  %13 = load ptr, ptr @_llgo_main.T, align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %15 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 1
  %16 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %16)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %17 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 0
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %20 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 0
  store ptr @4, ptr %21, align 8
  %22 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %20, i32 0, i32 1
  store i64 21, ptr %22, align 4
  %23 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %20, align 8
  %24 = load ptr, ptr @_llgo_string, align 8
  %25 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/internal/runtime.String" %23, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %27 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 0
  store ptr %24, ptr %27, align 8
  %28 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, i32 0, i32 1
  store ptr %25, ptr %28, align 8
  %29 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %26, align 8
  call void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface" %29)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %30 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %11, 1
  %31 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %30, align 8
  %32 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %33 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, i32 0, i32 0
  store %"github.com/goplus/llgo/internal/runtime.String" %31, ptr %33, align 8
  %34 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, i32 0, i32 1
  store i1 true, ptr %34, align 1
  %35 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %32, align 8
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  %36 = alloca { %"github.com/goplus/llgo/internal/runtime.String", i1 }, align 8
  %37 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %36, i32 0, i32 0
  store { ptr, i64 } zeroinitializer, ptr %37, align 8
  %38 = getelementptr inbounds { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %36, i32 0, i32 1
  store i1 false, ptr %38, align 1
  %39 = load { %"github.com/goplus/llgo/internal/runtime.String", i1 }, ptr %36, align 8
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %40 = phi { %"github.com/goplus/llgo/internal/runtime.String", i1 } [ %35, %_llgo_3 ], [ %39, %_llgo_4 ]
  %41 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %40, 0
  %42 = extractvalue { %"github.com/goplus/llgo/internal/runtime.String", i1 } %40, 1
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %41)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %42)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  %43 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %43, i8 0, i64 16, i1 false)
  %44 = getelementptr inbounds i64, ptr %43, i64 0
  %45 = getelementptr inbounds i64, ptr %43, i64 1
  store i64 1, ptr %44, align 4
  store i64 2, ptr %45, align 4
  %46 = load [2 x i64], ptr %43, align 4
  %47 = load ptr, ptr @_llgo_main.A, align 8
  %48 = call ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64 16)
  store [2 x i64] %46, ptr %48, align 4
  %49 = alloca %"github.com/goplus/llgo/internal/runtime.eface", align 8
  %50 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 0
  store ptr %47, ptr %50, align 8
  %51 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, i32 0, i32 1
  store ptr %48, ptr %51, align 8
  %52 = load %"github.com/goplus/llgo/internal/runtime.eface", ptr %49, align 8
  %53 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %53, i8 0, i64 16, i1 false)
  %54 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %52, 0
  %55 = load ptr, ptr @_llgo_main.A, align 8
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %57 = extractvalue %"github.com/goplus/llgo/internal/runtime.eface" %52, 1
  %58 = load [2 x i64], ptr %57, align 4
  %59 = alloca { [2 x i64], i1 }, align 8
  %60 = getelementptr inbounds { [2 x i64], i1 }, ptr %59, i32 0, i32 0
  store [2 x i64] %58, ptr %60, align 4
  %61 = getelementptr inbounds { [2 x i64], i1 }, ptr %59, i32 0, i32 1
  store i1 true, ptr %61, align 1
  %62 = load { [2 x i64], i1 }, ptr %59, align 4
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  %63 = alloca { [2 x i64], i1 }, align 8
  %64 = getelementptr inbounds { [2 x i64], i1 }, ptr %63, i32 0, i32 0
  store [2 x i64] zeroinitializer, ptr %64, align 4
  %65 = getelementptr inbounds { [2 x i64], i1 }, ptr %63, i32 0, i32 1
  store i1 false, ptr %65, align 1
  %66 = load { [2 x i64], i1 }, ptr %63, align 4
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %67 = phi { [2 x i64], i1 } [ %62, %_llgo_6 ], [ %66, %_llgo_7 ]
  %68 = extractvalue { [2 x i64], i1 } %67, 0
  store [2 x i64] %68, ptr %53, align 4
  %69 = extractvalue { [2 x i64], i1 } %67, 1
  %70 = getelementptr inbounds i64, ptr %53, i64 0
  %71 = load i64, ptr %70, align 4
  %72 = getelementptr inbounds i64, ptr %53, i64 1
  %73 = load i64, ptr %72, align 4
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %71)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %73)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %69)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %1 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 0
  store ptr @1, ptr %1, align 8
  %2 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %0, i32 0, i32 1
  store i64 6, ptr %2, align 4
  %3 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %0, align 8
  %4 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %3, i64 24, i64 16, i64 0, i64 0)
  %5 = load ptr, ptr @_llgo_main.T, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %4, ptr @_llgo_main.T, align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %7 = load ptr, ptr @_llgo_string, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %9 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 24)
  store ptr %9, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %10 = load ptr, ptr @_llgo_string, align 8
  br i1 %6, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %11 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %12 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 0
  store ptr @2, ptr %12, align 8
  %13 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %11, i32 0, i32 1
  store i64 4, ptr %13, align 4
  %14 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %11, align 8
  %15 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %16 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 0
  store ptr @3, ptr %16, align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %15, i32 0, i32 1
  store i64 1, ptr %17, align 4
  %18 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %15, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %4, %"github.com/goplus/llgo/internal/runtime.String" %14, %"github.com/goplus/llgo/internal/runtime.String" %18, ptr %10, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %19 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %20 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 0
  store ptr @5, ptr %20, align 8
  %21 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %19, i32 0, i32 1
  store i64 6, ptr %21, align 4
  %22 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %19, align 8
  %23 = call ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String" %22, i64 17, i64 16, i64 0, i64 0)
  %24 = load ptr, ptr @_llgo_main.A, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %23, ptr @_llgo_main.A, align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %26 = load ptr, ptr @_llgo_int, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %28 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  store ptr %28, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %29 = load ptr, ptr @_llgo_int, align 8
  %30 = load ptr, ptr @"[2]_llgo_int", align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %32 = call ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64 34)
  %33 = call ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64 2, ptr %32)
  store ptr %33, ptr @"[2]_llgo_int", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %34 = load ptr, ptr @"[2]_llgo_int", align 8
  br i1 %25, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %35 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %36 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 0
  store ptr @2, ptr %36, align 8
  %37 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %35, i32 0, i32 1
  store i64 4, ptr %37, align 4
  %38 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %35, align 8
  %39 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %40 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 0
  store ptr @6, ptr %40, align 8
  %41 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %39, i32 0, i32 1
  store i64 1, ptr %41, align 4
  %42 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %39, align 8
  call void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr %23, %"github.com/goplus/llgo/internal/runtime.String" %38, %"github.com/goplus/llgo/internal/runtime.String" %42, ptr %34, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/internal/runtime.NewNamed"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.InitNamed"(ptr, %"github.com/goplus/llgo/internal/runtime.String", %"github.com/goplus/llgo/internal/runtime.String", ptr, %"github.com/goplus/llgo/internal/runtime.Slice", %"github.com/goplus/llgo/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.Panic"(%"github.com/goplus/llgo/internal/runtime.eface")

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

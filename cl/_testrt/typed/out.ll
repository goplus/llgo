; ModuleID = 'github.com/goplus/llgo/cl/_testrt/typed'
source_filename = "github.com/goplus/llgo/cl/_testrt/typed"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testrt/typed.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [39 x i8] c"github.com/goplus/llgo/cl/_testrt/typed", align 1
@2 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [70 x i8] c"type assertion any -> github.com/goplus/llgo/cl/_testrt/typed.T failed", align 1
@"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"A", align 1
@_llgo_int = linkonce global ptr null, align 8
@"[2]_llgo_int" = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testrt/typed.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/typed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/typed.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testrt/typed.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/typed.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T", align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %8, ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %11 = load ptr, ptr @_llgo_string, align 8
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %13 = load ptr, ptr @_llgo_string, align 8
  %14 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 70 }, ptr %14, align 8
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %13, 0
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %15, ptr %14, 1
  %17 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.eface", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %17, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr %17)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %19 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %18, align 8
  %20 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %19, 0
  %21 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %20, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %22 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %21, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %23 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %22, 0
  %24 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %22, 1
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %23, ptr %25, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr %25)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %26 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %26, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds i64, ptr %26, i64 0
  %28 = getelementptr inbounds i64, ptr %26, i64 1
  store i64 1, ptr %27, align 4
  store i64 2, ptr %28, align 4
  %29 = load [2 x i64], ptr %26, align 4
  %30 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", align 8
  %31 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store [2 x i64] %29, ptr %31, align 4
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %30, 0
  %33 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, ptr %31, 1
  %34 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %34, i8 0, i64 16, i1 false)
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, 0
  %36 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", align 8
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %38 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %33, 1
  %39 = load [2 x i64], ptr %38, align 4
  %40 = insertvalue { [2 x i64], i1 } undef, [2 x i64] %39, 0
  %41 = insertvalue { [2 x i64], i1 } %40, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %42 = phi { [2 x i64], i1 } [ %41, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %43 = extractvalue { [2 x i64], i1 } %42, 0
  store [2 x i64] %43, ptr %34, align 4
  %44 = extractvalue { [2 x i64], i1 } %42, 1
  %45 = getelementptr inbounds i64, ptr %34, i64 0
  %46 = load i64, ptr %45, align 4
  %47 = getelementptr inbounds i64, ptr %34, i64 1
  %48 = load i64, ptr %47, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %46)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %48)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %44)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/typed.init$after"() {
_llgo_0:
  %0 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %0, align 8
  %1 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, ptr %1, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %0, ptr %1, i64 24, i64 16, i64 0, i64 0)
  %3 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T", align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %2, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.T", align 8
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  %5 = load ptr, ptr @_llgo_string, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %_llgo_3, label %_llgo_4

_llgo_3:                                          ; preds = %_llgo_2
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 24)
  store ptr %7, ptr @_llgo_string, align 8
  br label %_llgo_4

_llgo_4:                                          ; preds = %_llgo_3, %_llgo_2
  %8 = load ptr, ptr @_llgo_string, align 8
  br i1 %4, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %9, align 8
  %10 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %10, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %2, ptr %8, ptr %9, ptr %10)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 39 }, ptr %11, align 8
  %12 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, ptr %12, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr %11, ptr %12, i64 17, i64 16, i64 0, i64 0)
  %14 = load ptr, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %13, ptr @"_llgo_github.com/goplus/llgo/cl/_testrt/typed.A", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %16 = load ptr, ptr @_llgo_int, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %18 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %18, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %19 = load ptr, ptr @_llgo_int, align 8
  %20 = load ptr, ptr @"[2]_llgo_int", align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %22 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %23 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 2, ptr %22)
  store ptr %23, ptr @"[2]_llgo_int", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %24 = load ptr, ptr @"[2]_llgo_int", align 8
  br i1 %15, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  %25 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %25, align 8
  %26 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store { ptr, i64, i64 } zeroinitializer, ptr %26, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %13, ptr %24, ptr %25, ptr %26)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(ptr, ptr, i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, ptr, ptr)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/typed'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/typed"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/compiler/cl/_testrt/typed.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.T" = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [48 x i8] c"github.com/goplus/llgo/compiler/cl/_testrt/typed", align 1
@2 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.A" = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"A", align 1
@_llgo_int = linkonce global ptr null, align 8
@"[2]_llgo_int" = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typed.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typed.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/typed.init$guard", align 1
  call void @"github.com/goplus/llgo/compiler/cl/_testrt/typed.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typed.main"() {
_llgo_0:
  %0 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.T", align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %1, align 8
  %2 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %0, 0
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %2, ptr %1, 1
  %4 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %5 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.T", align 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %8 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %7, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 0
  %10 = load ptr, ptr @_llgo_string, align 8
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %13, align 8
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %12, 0
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %14, ptr %13, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %15)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %16 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, 1
  %17 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %16, align 8
  %18 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } undef, %"github.com/goplus/llgo/runtime/internal/runtime.String" %17, 0
  %19 = insertvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %18, i1 true, 1
  br label %_llgo_5

_llgo_4:                                          ; preds = %_llgo_1
  br label %_llgo_5

_llgo_5:                                          ; preds = %_llgo_4, %_llgo_3
  %20 = phi { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } [ %19, %_llgo_3 ], [ zeroinitializer, %_llgo_4 ]
  %21 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %20, 0
  %22 = extractvalue { %"github.com/goplus/llgo/runtime/internal/runtime.String", i1 } %20, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %21)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %22)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %23 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %23, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds i64, ptr %23, i64 0
  %25 = getelementptr inbounds i64, ptr %23, i64 1
  store i64 1, ptr %24, align 4
  store i64 2, ptr %25, align 4
  %26 = load [2 x i64], ptr %23, align 4
  %27 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.A", align 8
  %28 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store [2 x i64] %26, ptr %28, align 4
  %29 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %27, 0
  %30 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %29, ptr %28, 1
  %31 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %31, i8 0, i64 16, i1 false)
  %32 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, 0
  %33 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.A", align 8
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %35 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %30, 1
  %36 = load [2 x i64], ptr %35, align 4
  %37 = insertvalue { [2 x i64], i1 } undef, [2 x i64] %36, 0
  %38 = insertvalue { [2 x i64], i1 } %37, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %39 = phi { [2 x i64], i1 } [ %38, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %40 = extractvalue { [2 x i64], i1 } %39, 0
  store [2 x i64] %40, ptr %31, align 4
  %41 = extractvalue { [2 x i64], i1 } %39, 1
  %42 = getelementptr inbounds i64, ptr %31, i64 0
  %43 = load i64, ptr %42, align 4
  %44 = getelementptr inbounds i64, ptr %31, i64 1
  %45 = load i64, ptr %44, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %41)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/typed.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 24, i64 16, i64 0, i64 0)
  %1 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.T", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.T", align 8
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
  %6 = load ptr, ptr @_llgo_string, align 8
  br i1 %2, label %_llgo_5, label %_llgo_6

_llgo_5:                                          ; preds = %_llgo_4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %0, ptr %6, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_6

_llgo_6:                                          ; preds = %_llgo_5, %_llgo_4
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 48 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, i64 17, i64 16, i64 0, i64 0)
  %8 = load ptr, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.A", align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %7, ptr @"_llgo_github.com/goplus/llgo/compiler/cl/_testrt/typed.A", align 8
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %_llgo_9, label %_llgo_10

_llgo_9:                                          ; preds = %_llgo_8
  %12 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %12, ptr @_llgo_int, align 8
  br label %_llgo_10

_llgo_10:                                         ; preds = %_llgo_9, %_llgo_8
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = load ptr, ptr @"[2]_llgo_int", align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %_llgo_11, label %_llgo_12

_llgo_11:                                         ; preds = %_llgo_10
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  %17 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64 2, ptr %16)
  store ptr %17, ptr @"[2]_llgo_int", align 8
  br label %_llgo_12

_llgo_12:                                         ; preds = %_llgo_11, %_llgo_10
  %18 = load ptr, ptr @"[2]_llgo_int", align 8
  br i1 %9, label %_llgo_13, label %_llgo_14

_llgo_13:                                         ; preds = %_llgo_12
  call void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr %7, ptr %18, { ptr, i64, i64 } zeroinitializer, { ptr, i64, i64 } zeroinitializer)
  br label %_llgo_14

_llgo_14:                                         ; preds = %_llgo_13, %_llgo_12
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String", %"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64, i64, i64)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.InitNamed"(ptr, ptr, %"github.com/goplus/llgo/runtime/internal/runtime.Slice", %"github.com/goplus/llgo/runtime/internal/runtime.Slice")

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset(ptr nocapture writeonly, i8, i64, i1 immarg) #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.ArrayOf"(i64, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }

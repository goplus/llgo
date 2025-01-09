; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [5 x i8] c"hello", align 1
@_llgo_main.T = linkonce global ptr null, align 8
@1 = private unnamed_addr constant [4 x i8] c"main", align 1
@2 = private unnamed_addr constant [1 x i8] c"T", align 1
@_llgo_string = linkonce global ptr null, align 8
@3 = private unnamed_addr constant [21 x i8] c"type assertion failed", align 1
@_llgo_main.A = linkonce global ptr null, align 8
@4 = private unnamed_addr constant [1 x i8] c"A", align 1
@_llgo_int = linkonce global ptr null, align 8
@"[2]_llgo_int" = linkonce global ptr null, align 8

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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = load ptr, ptr @_llgo_main.T, align 8
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 5 }, ptr %3, align 8
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %5 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %3, 1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 0
  %7 = load ptr, ptr @_llgo_main.T, align 8
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 1
  %10 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %9, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 0
  %12 = load ptr, ptr @_llgo_string, align 8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %_llgo_3, label %_llgo_4

_llgo_2:                                          ; preds = %_llgo_0
  %14 = load ptr, ptr @_llgo_string, align 8
  %15 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @3, i64 21 }, ptr %15, align 8
  %16 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %14, 0
  %17 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %16, ptr %15, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %17)
  unreachable

_llgo_3:                                          ; preds = %_llgo_1
  %18 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %5, 1
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
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %23)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %24)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %25 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %25, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds i64, ptr %25, i64 0
  %27 = getelementptr inbounds i64, ptr %25, i64 1
  store i64 1, ptr %26, align 4
  store i64 2, ptr %27, align 4
  %28 = load [2 x i64], ptr %25, align 4
  %29 = load ptr, ptr @_llgo_main.A, align 8
  %30 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store [2 x i64] %28, ptr %30, align 4
  %31 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %29, 0
  %32 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %31, ptr %30, 1
  %33 = alloca [2 x i64], align 8
  call void @llvm.memset(ptr %33, i8 0, i64 16, i1 false)
  %34 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, 0
  %35 = load ptr, ptr @_llgo_main.A, align 8
  %36 = icmp eq ptr %34, %35
  br i1 %36, label %_llgo_6, label %_llgo_7

_llgo_6:                                          ; preds = %_llgo_5
  %37 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %32, 1
  %38 = load [2 x i64], ptr %37, align 4
  %39 = insertvalue { [2 x i64], i1 } undef, [2 x i64] %38, 0
  %40 = insertvalue { [2 x i64], i1 } %39, i1 true, 1
  br label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_5
  br label %_llgo_8

_llgo_8:                                          ; preds = %_llgo_7, %_llgo_6
  %41 = phi { [2 x i64], i1 } [ %40, %_llgo_6 ], [ zeroinitializer, %_llgo_7 ]
  %42 = extractvalue { [2 x i64], i1 } %41, 0
  store [2 x i64] %42, ptr %33, align 4
  %43 = extractvalue { [2 x i64], i1 } %41, 1
  %44 = getelementptr inbounds i64, ptr %33, i64 0
  %45 = load i64, ptr %44, align 4
  %46 = getelementptr inbounds i64, ptr %33, i64 1
  %47 = load i64, ptr %46, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %45)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %47)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %43)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

define void @"main.init$after"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @2, i64 1 }, i64 24, i64 16, i64 0, i64 0)
  %1 = load ptr, ptr @_llgo_main.T, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  store ptr %0, ptr @_llgo_main.T, align 8
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
  %7 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.NewNamed"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 4 }, %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @4, i64 1 }, i64 17, i64 16, i64 0, i64 0)
  %8 = load ptr, ptr @_llgo_main.A, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %_llgo_7, label %_llgo_8

_llgo_7:                                          ; preds = %_llgo_6
  store ptr %7, ptr @_llgo_main.A, align 8
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

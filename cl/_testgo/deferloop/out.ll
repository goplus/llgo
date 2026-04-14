; ModuleID = 'github.com/goplus/llgo/cl/_testgo/deferloop'
source_filename = "github.com/goplus/llgo/cl/_testgo/deferloop"

%"github.com/goplus/llgo/runtime/internal/runtime.Defer" = type { ptr, i64, ptr, ptr, ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/deferloop.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [4 x i8] c"loop", align 1

define void @"github.com/goplus/llgo/cl/_testgo/deferloop.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/deferloop.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/deferloop.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/deferloop.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()
  %1 = alloca i8, i64 196, align 1
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 48)
  %3 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 0
  store ptr %1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  store i64 0, ptr %4, align 4
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 2
  store ptr %0, ptr %5, align 8
  %6 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferloop.main", %_llgo_6), ptr %6, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %2)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 3
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 4
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, i32 0, i32 5
  store ptr null, ptr %10, align 8
  %11 = call i32 @sigsetjmp(ptr %1, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %_llgo_5, label %_llgo_8

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_5
  %13 = phi i64 [ 0, %_llgo_5 ], [ %21, %_llgo_2 ]
  %14 = icmp slt i64 %13, 3
  br i1 %14, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %15 = load ptr, ptr %10, align 8
  %16 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 40)
  %17 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }, ptr %16, i32 0, i32 1
  store i64 0, ptr %18, align 4
  %19 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }, ptr %16, i32 0, i32 2
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 4 }, ptr %19, align 8
  %20 = getelementptr inbounds { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }, ptr %16, i32 0, i32 3
  store i64 %13, ptr %20, align 4
  store ptr %16, ptr %10, align 8
  %21 = add i64 %13, 1
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferloop.main", %_llgo_9), ptr %9, align 8
  br label %_llgo_6

_llgo_4:                                          ; preds = %_llgo_7
  ret void

_llgo_5:                                          ; preds = %_llgo_0
  br label %_llgo_1

_llgo_6:                                          ; preds = %_llgo_8, %_llgo_3
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferloop.main", %_llgo_7), ptr %8, align 8
  %22 = load i64, ptr %7, align 4
  br label %_llgo_10

_llgo_7:                                          ; preds = %_llgo_8, %_llgo_11
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr %0)
  br label %_llgo_4

_llgo_8:                                          ; preds = %_llgo_0
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferloop.main", %_llgo_7), ptr %9, align 8
  %23 = load ptr, ptr %8, align 8
  indirectbr ptr %23, [label %_llgo_7, label %_llgo_6]

_llgo_9:                                          ; preds = %_llgo_11
  ret void

_llgo_10:                                         ; preds = %_llgo_16, %_llgo_6
  %24 = load ptr, ptr %10, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %_llgo_12, label %_llgo_11

_llgo_11:                                         ; preds = %_llgo_13, %_llgo_10
  %26 = load %"github.com/goplus/llgo/runtime/internal/runtime.Defer", ptr %2, align 8
  %27 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Defer" %26, 2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr %27)
  %28 = load ptr, ptr %9, align 8
  indirectbr ptr %28, [label %_llgo_7, label %_llgo_9]

_llgo_12:                                         ; preds = %_llgo_10
  %29 = load { ptr, i64 }, ptr %24, align 8
  %30 = extractvalue { ptr, i64 } %29, 1
  br label %_llgo_13

_llgo_13:                                         ; preds = %_llgo_12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %_llgo_14, label %_llgo_11

_llgo_14:                                         ; preds = %_llgo_13
  store ptr blockaddress(@"github.com/goplus/llgo/cl/_testgo/deferloop.main", %_llgo_6), ptr %8, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %_llgo_15, label %_llgo_16

_llgo_15:                                         ; preds = %_llgo_14
  %34 = load ptr, ptr %10, align 8
  %35 = load { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 }, ptr %34, align 8
  %36 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 } %35, 0
  store ptr %36, ptr %10, align 8
  %37 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 } %35, 2
  %38 = extractvalue { ptr, i64, %"github.com/goplus/llgo/runtime/internal/runtime.String", i64 } %35, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %37)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %38)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr %34)
  br label %_llgo_16

_llgo_16:                                         ; preds = %_llgo_15, %_llgo_14
  br label %_llgo_10
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.GetThreadDefer"()

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.SetThreadDefer"(ptr)

; Function Attrs: returns_twice
declare i32 @sigsetjmp(ptr, i32) #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Rethrow"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.FreeDeferNode"(ptr)

attributes #0 = { returns_twice }

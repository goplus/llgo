; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.array = global [8 x i8] zeroinitializer, align 1
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8
@0 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1

define i8 @main.index(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i64
  %2 = icmp slt i64 %1, 0
  %3 = icmp sge i64 %1, 8
  %4 = or i1 %3, %2
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %4)
  %5 = getelementptr inbounds i8, ptr @main.array, i64 %1
  %6 = load i8, ptr %5, align 1
  ret i8 %6
}

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  call void @"unicode/utf8.init"()
  store i8 1, ptr @main.array, align 1
  store i8 2, ptr getelementptr inbounds (i8, ptr @main.array, i64 1), align 1
  store i8 3, ptr getelementptr inbounds (i8, ptr @main.array, i64 2), align 1
  store i8 4, ptr getelementptr inbounds (i8, ptr @main.array, i64 3), align 1
  store i8 5, ptr getelementptr inbounds (i8, ptr @main.array, i64 4), align 1
  store i8 6, ptr getelementptr inbounds (i8, ptr @main.array, i64 5), align 1
  store i8 7, ptr getelementptr inbounds (i8, ptr @main.array, i64 6), align 1
  store i8 8, ptr getelementptr inbounds (i8, ptr @main.array, i64 7), align 1
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
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %2 = phi i64 [ 0, %_llgo_0 ], [ %18, %_llgo_2 ]
  %3 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 0
  store ptr @0, ptr %4, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %3, i32 0, i32 1
  store i64 7, ptr %5, align 4
  %6 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %3, align 8
  %7 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %6, 1
  %8 = icmp slt i64 %2, %7
  br i1 %8, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %9 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %10 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 0
  store ptr @0, ptr %10, align 8
  %11 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %9, i32 0, i32 1
  store i64 7, ptr %11, align 4
  %12 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %9, align 8
  %13 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %12, 1
  %14 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %12, i64 %2, i64 %13)
  %15 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %14)
  %16 = extractvalue { i32, i64 } %15, 0
  %17 = extractvalue { i32, i64 } %15, 1
  %18 = add i64 %2, %17
  %19 = sext i32 %16 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %19)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %20 = call i8 @main.index(i8 2)
  %21 = icmp eq i8 %20, 3
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %21)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0
}

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.StringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

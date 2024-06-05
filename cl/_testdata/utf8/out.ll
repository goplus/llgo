; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.array = global [8 x i8] undef
@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [8 x i8] c"\E4\B8\ADabcd\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"\E4\B8\ADabcd\00", align 1

define i8 @main.index(i8 %0) {
_llgo_0:
  %1 = icmp slt i8 %0, 0
  call void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1 %1)
  %2 = zext i8 %0 to i64
  %3 = getelementptr inbounds i8, ptr @main.array, i64 %2
  %4 = load i8, ptr %3, align 1
  ret i8 %4
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
  br label %_llgo_3

_llgo_1:                                          ; preds = %_llgo_3
  %2 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %3 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 0
  store ptr @1, ptr %3, align 8
  %4 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %2, i32 0, i32 1
  store i64 7, ptr %4, align 4
  %5 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %2, align 8
  %6 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %5, 1
  %7 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %5, i64 %15, i64 %6)
  %8 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %7)
  %9 = extractvalue { i32, i64 } %8, 0
  %10 = extractvalue { i32, i64 } %8, 1
  %11 = add i64 %15, %10
  %12 = sext i32 %9 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  %13 = call i8 @main.index(i8 2)
  %14 = icmp eq i8 %13, 3
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %14)
  call void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8 10)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %15 = phi i64 [ 0, %_llgo_0 ], [ %11, %_llgo_1 ]
  %16 = alloca %"github.com/goplus/llgo/internal/runtime.String", align 8
  %17 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 0
  store ptr @0, ptr %17, align 8
  %18 = getelementptr inbounds %"github.com/goplus/llgo/internal/runtime.String", ptr %16, i32 0, i32 1
  store i64 7, ptr %18, align 4
  %19 = load %"github.com/goplus/llgo/internal/runtime.String", ptr %16, align 8
  %20 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %19, 1
  %21 = icmp slt i64 %15, %20
  br i1 %21, label %_llgo_1, label %_llgo_2
}

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

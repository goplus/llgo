; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/internal/runtime.String" = type { ptr, i64 }

@main.array = global [8 x i8] undef
@"main.init$guard" = global ptr null
@__llgo_argc = global ptr null
@__llgo_argv = global ptr null
@0 = private unnamed_addr constant [8 x i8] c"\E4\B8\ADabcd\00", align 1
@1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"\E4\B8\ADabcd\00", align 1

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
  %2 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @0, i64 7)
  %3 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %2, 1
  %4 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String" %2, i64 %14, i64 %3)
  %5 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String" %4)
  %6 = extractvalue { i32, i64 } %5, 0
  %7 = extractvalue { i32, i64 } %5, 1
  %8 = add i64 %14, %7
  %9 = sext i32 %6 to i64
  call void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64 %9)
  %10 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @1, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %10)
  br label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_3
  %11 = call i8 @main.index(i8 2)
  %12 = icmp eq i8 %11, 3
  call void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1 %12)
  %13 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @2, i64 1)
  call void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String" %13)
  ret i32 0

_llgo_3:                                          ; preds = %_llgo_1, %_llgo_0
  %14 = phi i64 [ 0, %_llgo_0 ], [ %8, %_llgo_1 ]
  %15 = call %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr @3, i64 7)
  %16 = extractvalue %"github.com/goplus/llgo/internal/runtime.String" %15, 1
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %_llgo_1, label %_llgo_2
}

declare void @"github.com/goplus/llgo/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.init"()

declare void @"github.com/goplus/llgo/internal/runtime.init"()

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewString"(ptr, i64)

declare %"github.com/goplus/llgo/internal/runtime.String" @"github.com/goplus/llgo/internal/runtime.NewStringSlice"(%"github.com/goplus/llgo/internal/runtime.String", i64, i64)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/internal/runtime.PrintString"(%"github.com/goplus/llgo/internal/runtime.String")

declare void @"github.com/goplus/llgo/internal/runtime.PrintBool"(i1)

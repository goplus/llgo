; ModuleID = 'main'
source_filename = "main"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@main.array = global [8 x i8] zeroinitializer, align 1
@"main.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1

define i8 @main.index(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i64
  %2 = icmp slt i64 %1, 0
  %3 = icmp sge i64 %1, 8
  %4 = or i1 %3, %2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %4)
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

define void @main.main() {
_llgo_0:
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %0 = phi i64 [ 0, %_llgo_0 ], [ %6, %_llgo_2 ]
  %1 = icmp slt i64 %0, 7
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %2 = call %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, i64 %0, i64 7)
  %3 = call { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" %2)
  %4 = extractvalue { i32, i64 } %3, 0
  %5 = extractvalue { i32, i64 } %3, 1
  %6 = add i64 %0, %5
  %7 = sext i32 %4 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %7)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %8 = call i8 @main.index(i8 2)
  %9 = icmp eq i8 %8, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.init"()

declare %"github.com/goplus/llgo/runtime/internal/runtime.String" @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(%"github.com/goplus/llgo/runtime/internal/runtime.String", i64, i64)

declare { i32, i64 } @"unicode/utf8.DecodeRuneInString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

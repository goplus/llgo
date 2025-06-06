; ModuleID = 'github.com/goplus/llgo/cl/_testdata/utf8'
source_filename = "github.com/goplus/llgo/cl/_testdata/utf8"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testdata/utf8.array" = global [8 x i8] zeroinitializer, align 1
@"github.com/goplus/llgo/cl/_testdata/utf8.init$guard" = global i1 false, align 1
@0 = private unnamed_addr constant [7 x i8] c"\E4\B8\ADabcd", align 1

define i8 @"github.com/goplus/llgo/cl/_testdata/utf8.index"(i8 %0) {
_llgo_0:
  %1 = sext i8 %0 to i64
  %2 = icmp slt i64 %1, 0
  %3 = icmp sge i64 %1, 8
  %4 = or i1 %3, %2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %4)
  %5 = getelementptr inbounds i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 %1
  %6 = load i8, ptr %5, align 1
  ret i8 %6
}

define void @"github.com/goplus/llgo/cl/_testdata/utf8.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.init$guard", align 1
  call void @"unicode/utf8.init"()
  store i8 1, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", align 1
  store i8 2, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 1), align 1
  store i8 3, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 2), align 1
  store i8 4, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 3), align 1
  store i8 5, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 4), align 1
  store i8 6, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 5), align 1
  store i8 7, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 6), align 1
  store i8 8, ptr getelementptr inbounds (i8, ptr @"github.com/goplus/llgo/cl/_testdata/utf8.array", i64 7), align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/utf8.main"() {
_llgo_0:
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %0 = phi i64 [ 0, %_llgo_0 ], [ %10, %_llgo_2 ]
  %1 = icmp slt i64 %0, 7
  br i1 %1, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %2 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  %3 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 7 }, ptr %3, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr %2, ptr %3, i64 %0, i64 7)
  %4 = load %"github.com/goplus/llgo/runtime/internal/runtime.String", ptr %2, align 8
  %5 = alloca { i32, i64 }, align 8
  %6 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.String", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" %4, ptr %6, align 8
  call void @"unicode/utf8.DecodeRuneInString"(ptr %5, ptr %6)
  %7 = load { i32, i64 }, ptr %5, align 4
  %8 = extractvalue { i32, i64 } %7, 0
  %9 = extractvalue { i32, i64 } %7, 1
  %10 = add i64 %0, %9
  %11 = sext i32 %8 to i64
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %11)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  br label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  %12 = call i8 @"github.com/goplus/llgo/cl/_testdata/utf8.index"(i8 2)
  %13 = icmp eq i8 %12, 3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %13)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare void @"unicode/utf8.init"()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.StringSlice"(ptr, ptr, i64, i64)

declare void @"unicode/utf8.DecodeRuneInString"(ptr, ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

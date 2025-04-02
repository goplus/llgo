; ModuleID = 'github.com/goplus/llgo/cl/_testdata/vargs'
source_filename = "github.com/goplus/llgo/cl/_testdata/vargs"

%"github.com/goplus/llgo/runtime/internal/runtime.eface" = type { ptr, ptr }
%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }
%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testdata/vargs.init$guard" = global i1 false, align 1
@_llgo_int = linkonce global ptr null, align 8
@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@1 = private unnamed_addr constant [40 x i8] c"type assertion interface{} -> int failed", align 1
@_llgo_string = linkonce global ptr null, align 8

define void @"github.com/goplus/llgo/cl/_testdata/vargs.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testdata/vargs.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testdata/vargs.init$guard", align 1
  call void @"github.com/goplus/llgo/cl/_testdata/vargs.init$after"()
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/vargs.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 48)
  %1 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, i64 0
  %2 = load ptr, ptr @_llgo_int, align 8
  %3 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %2, 0
  %4 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %3, ptr inttoptr (i64 1 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %4, ptr %1, align 8
  %5 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, i64 1
  %6 = load ptr, ptr @_llgo_int, align 8
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %6, 0
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %7, ptr inttoptr (i64 2 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %8, ptr %5, align 8
  %9 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %0, i64 2
  %10 = load ptr, ptr @_llgo_int, align 8
  %11 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %10, 0
  %12 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, ptr inttoptr (i64 3 to ptr), 1
  store %"github.com/goplus/llgo/runtime/internal/runtime.eface" %12, ptr %9, align 8
  %13 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %14 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %13, i64 3, 1
  %15 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %14, i64 3, 2
  call void @"github.com/goplus/llgo/cl/_testdata/vargs.test"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %15)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testdata/vargs.test"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0) {
_llgo_0:
  %1 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_4, %_llgo_0
  %2 = phi i64 [ -1, %_llgo_0 ], [ %3, %_llgo_4 ]
  %3 = add i64 %2, 1
  %4 = icmp slt i64 %3, %1
  br i1 %4, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %5 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %7 = icmp slt i64 %3, 0
  %8 = icmp sge i64 %3, %6
  %9 = or i1 %8, %7
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %9)
  %10 = getelementptr inbounds %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %5, i64 %3
  %11 = load %"github.com/goplus/llgo/runtime/internal/runtime.eface", ptr %10, align 8
  %12 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 0
  %13 = load ptr, ptr @_llgo_int, align 8
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %_llgo_4, label %_llgo_5

_llgo_3:                                          ; preds = %_llgo_1
  ret void

_llgo_4:                                          ; preds = %_llgo_2
  %15 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %11, 1
  %16 = ptrtoint ptr %15 to i64
  %17 = call i32 (ptr, ...) @printf(ptr @0, i64 %16)
  br label %_llgo_1

_llgo_5:                                          ; preds = %_llgo_2
  %18 = load ptr, ptr @_llgo_string, align 8
  %19 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64 16)
  store %"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 40 }, ptr %19, align 8
  %20 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" undef, ptr %18, 0
  %21 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.eface" %20, ptr %19, 1
  call void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface" %21)
  unreachable
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define void @"github.com/goplus/llgo/cl/_testdata/vargs.init$after"() {
_llgo_0:
  %0 = load ptr, ptr @_llgo_int, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %_llgo_1, label %_llgo_2

_llgo_1:                                          ; preds = %_llgo_0
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64 34)
  store ptr %2, ptr @_llgo_int, align 8
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
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.Basic"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocU"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.Panic"(%"github.com/goplus/llgo/runtime/internal/runtime.eface")

declare i32 @printf(ptr, ...)

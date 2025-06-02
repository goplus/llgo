; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tpindex'
source_filename = "github.com/goplus/llgo/cl/_testgo/tpindex"

%"github.com/goplus/llgo/runtime/internal/runtime.Slice" = type { ptr, i64, i64 }

@"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tpindex.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tpindex.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tpindex.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 40)
  %1 = getelementptr inbounds i64, ptr %0, i64 0
  store i64 1, ptr %1, align 4
  %2 = getelementptr inbounds i64, ptr %0, i64 1
  store i64 3, ptr %2, align 4
  %3 = getelementptr inbounds i64, ptr %0, i64 2
  store i64 5, ptr %3, align 4
  %4 = getelementptr inbounds i64, ptr %0, i64 3
  store i64 2, ptr %4, align 4
  %5 = getelementptr inbounds i64, ptr %0, i64 4
  store i64 4, ptr %5, align 4
  %6 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" undef, ptr %0, 0
  %7 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %6, i64 5, 1
  %8 = insertvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, i64 5, 2
  %9 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %9, align 8
  %10 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(ptr %9, i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %11 = alloca %"github.com/goplus/llgo/runtime/internal/runtime.Slice", align 8
  store %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, ptr %11, align 8
  %12 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(ptr %11, i64 6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %12)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(ptr %0, i64 %1) {
_llgo_0:
  %2 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %3 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %2, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %4 = phi i64 [ -1, %_llgo_0 ], [ %5, %_llgo_2 ]
  %5 = add i64 %4, 1
  %6 = icmp slt i64 %5, %3
  br i1 %6, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %7 = load %"github.com/goplus/llgo/runtime/internal/runtime.Slice", ptr %0, align 8
  %8 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 0
  %9 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %7, 1
  %10 = icmp slt i64 %5, 0
  %11 = icmp sge i64 %5, %9
  %12 = or i1 %11, %10
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %12)
  %13 = getelementptr inbounds i64, ptr %8, i64 %5
  %14 = load i64, ptr %13, align 4
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %_llgo_4, label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 -1

_llgo_4:                                          ; preds = %_llgo_2
  ret i64 %5
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

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
  %9 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = call i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %8, i64 6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

define linkonce i64 @"github.com/goplus/llgo/cl/_testgo/tpindex.index[int]"(%"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, i64 %1) {
_llgo_0:
  %2 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  br label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_2, %_llgo_0
  %3 = phi i64 [ -1, %_llgo_0 ], [ %4, %_llgo_2 ]
  %4 = add i64 %3, 1
  %5 = icmp slt i64 %4, %2
  br i1 %5, label %_llgo_2, label %_llgo_3

_llgo_2:                                          ; preds = %_llgo_1
  %6 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 0
  %7 = extractvalue %"github.com/goplus/llgo/runtime/internal/runtime.Slice" %0, 1
  %8 = icmp slt i64 %4, 0
  %9 = icmp sge i64 %4, %7
  %10 = or i1 %9, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1 %10)
  %11 = getelementptr inbounds i64, ptr %6, i64 %4
  %12 = load i64, ptr %11, align 4
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %_llgo_4, label %_llgo_1

_llgo_3:                                          ; preds = %_llgo_1
  ret i64 -1

_llgo_4:                                          ; preds = %_llgo_2
  ret i64 %4
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertIndexRange"(i1)

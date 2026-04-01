; ModuleID = 'github.com/goplus/llgo/cl/_testrt/funcaddr'
source_filename = "github.com/goplus/llgo/cl/_testrt/funcaddr"

@"github.com/goplus/llgo/cl/_testrt/funcaddr.init$guard" = global i1 false, align 1

define i64 @"github.com/goplus/llgo/cl/_testrt/funcaddr.add"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

define void @"github.com/goplus/llgo/cl/_testrt/funcaddr.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/funcaddr.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.add", ptr %0, align 8
  %1 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 8)
  store ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.main$1", ptr %1, align 8
  %2 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %2)
  %3 = load ptr, ptr %0, align 8
  %4 = icmp eq ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.add", %3
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %5 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %5)
  %6 = load ptr, ptr %0, align 8
  %7 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %7)
  %8 = load ptr, ptr %0, align 8
  %9 = icmp eq ptr %6, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %10 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = icmp eq ptr %1, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = icmp eq ptr %11, %13
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %14)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcaddr.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

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
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr @"github.com/goplus/llgo/cl/_testrt/funcaddr.add", %2
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %3)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %4, %5
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %6)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  %7 = load ptr, ptr %1, align 8
  %8 = load ptr, ptr %1, align 8
  %9 = icmp eq ptr %7, %8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1 %9)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define i64 @"github.com/goplus/llgo/cl/_testrt/funcaddr.main$1"(i64 %0, i64 %1) {
_llgo_0:
  %2 = add i64 %0, %1
  ret i64 %2
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintBool"(i1)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

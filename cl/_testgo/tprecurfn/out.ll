; ModuleID = 'github.com/goplus/llgo/cl/_testgo/tprecurfn'
source_filename = "github.com/goplus/llgo/cl/_testgo/tprecurfn"

%"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]" = type { { ptr, ptr }, ptr }

@"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/tprecurfn.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main"() {
_llgo_0:
  %0 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %1 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %1)
  %2 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %0, i32 0, i32 1
  %3 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64 24)
  %4 = icmp eq ptr %3, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %4)
  %5 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %3, i32 0, i32 0
  store { ptr, ptr } { ptr @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1", ptr null }, ptr %5, align 8
  store ptr %3, ptr %2, align 8
  %6 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %6)
  %7 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %0, i32 0, i32 1
  %8 = icmp eq ptr %7, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %8)
  %9 = load ptr, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %10)
  %11 = getelementptr inbounds %"github.com/goplus/llgo/cl/_testgo/tprecurfn.My[int]", ptr %9, i32 0, i32 0
  %12 = icmp eq ptr %11, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %12)
  %13 = load { ptr, ptr }, ptr %11, align 8
  %14 = extractvalue { ptr, ptr } %13, 1
  %15 = extractvalue { ptr, ptr } %13, 0
  call void %15(ptr %14, i64 100)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(i64 %0) {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.AllocZ"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

define linkonce void @"__llgo_stub.github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(ptr %0, i64 %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/cl/_testgo/tprecurfn.main$1"(i64 %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

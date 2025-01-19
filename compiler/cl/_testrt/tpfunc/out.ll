; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/tpfunc'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/tpfunc"

@"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 16)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64 8)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main$1"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main$2"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main$3"(ptr %0) {
_llgo_0:
  %1 = load i64, ptr %0, align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %1)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define linkonce void @"__llgo_stub.github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main$1"(ptr %0, ptr %1) {
_llgo_0:
  tail call void @"github.com/goplus/llgo/compiler/cl/_testrt/tpfunc.main$1"(ptr %1)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintUint"(i64)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

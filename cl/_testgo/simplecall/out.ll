; ModuleID = 'github.com/goplus/llgo/cl/_testgo/simplecall'
source_filename = "github.com/goplus/llgo/cl/_testgo/simplecall"

%"github.com/goplus/llgo/runtime/internal/runtime.String" = type { ptr, i64 }

@"github.com/goplus/llgo/cl/_testgo/simplecall.counter" = global i64 0, align 8
@"github.com/goplus/llgo/cl/_testgo/simplecall.init$guard" = global i1 false, align 1
@"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/simplecall.main$1" = private constant { ptr, i64 } { ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.main$1", i64 0 }
@0 = private unnamed_addr constant [14 x i8] c"after callFunc", align 1
@1 = private unnamed_addr constant [24 x i8] c"closure called, counter:", align 1

define void @"github.com/goplus/llgo/cl/_testgo/simplecall.callFunc"(ptr %0) {
_llgo_0:
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr i8, ptr %0, i64 16
  call void asm sideeffect "mov x26, $0", "r,~{x26},~{memory}"(ptr %2)
  call void %1()
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/simplecall.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.init$guard", align 1
  store i64 0, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.counter", align 4
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/simplecall.main"() {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testgo/simplecall.callFunc"(ptr @"__llgo_closure_const$github.com/goplus/llgo/cl/_testgo/simplecall.main$1")
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @0, i64 14 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

define void @"github.com/goplus/llgo/cl/_testgo/simplecall.main$1"() {
_llgo_0:
  %0 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.counter", align 4
  %1 = add i64 %0, 1
  store i64 %1, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.counter", align 4
  %2 = load i64, ptr @"github.com/goplus/llgo/cl/_testgo/simplecall.counter", align 4
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String" { ptr @1, i64 24 })
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 32)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64 %2)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintString"(%"github.com/goplus/llgo/runtime/internal/runtime.String")

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintInt"(i64)

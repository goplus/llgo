; ModuleID = 'github.com/goplus/llgo/cl/_testrt/stacksave'
source_filename = "github.com/goplus/llgo/cl/_testrt/stacksave"

@"github.com/goplus/llgo/cl/_testrt/stacksave.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/stacksave.init"() {
_llgo_0:
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 false)
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/stacksave.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/stacksave.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/stacksave.main"() {
_llgo_0:
  %0 = alloca ptr, align 8
  %1 = call ptr @llvm.stacksave()
  store ptr %1, ptr %0, align 8
  %2 = call ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr null)
  %3 = icmp eq ptr %0, null
  call void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1 %3)
  %4 = load ptr, ptr %0, align 8
  store ptr null, ptr %0, align 8
  call void @runtime.TouchConservativeSlot(ptr %0, i64 8)
  call void @runtime.ClobberPointerRegs()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %4)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr %2)
  ret void
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.AssertNilDeref"(i1)

declare void @unsafe.init()

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #0

declare ptr @"github.com/goplus/llgo/runtime/internal/runtime.SwapRecoverToken"(ptr)

declare void @runtime.TouchConservativeSlot(ptr, i64)

declare void @runtime.ClobberPointerRegs()

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.RestoreRecoverToken"(ptr)

attributes #0 = { nocallback nofree nosync nounwind willreturn }

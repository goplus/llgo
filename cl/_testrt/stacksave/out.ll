; ModuleID = 'github.com/goplus/llgo/cl/_testrt/stacksave'
source_filename = "github.com/goplus/llgo/cl/_testrt/stacksave"

@"github.com/goplus/llgo/cl/_testrt/stacksave.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/stacksave.init"() {
_llgo_0:
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
  %0 = call ptr @llvm.stacksave()
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr %0)
  call void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8 10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave() #0

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintPointer"(ptr)

declare void @"github.com/goplus/llgo/runtime/internal/runtime.PrintByte"(i8)

attributes #0 = { nocallback nofree nosync nounwind willreturn }

; ModuleID = 'main'
source_filename = "main"

@_bar_x = external global ptr
@_bar_y = external global ptr
@"main.init$guard" = global ptr null

define void @main.init() {
_llgo_0:
  %0 = load i1, ptr @"main.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"main.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @main() {
_llgo_0:
  call void @"github.com/goplus/llgo/internal/runtime.init"()
  call void @main.init()
  %0 = load { [16 x i8], [2 x ptr] }, ptr @_bar_x, align 8
  %1 = load { [16 x i8] }, ptr @_bar_y, align 1
  ret void
}

declare void @"github.com/goplus/llgo/internal/runtime.init"()

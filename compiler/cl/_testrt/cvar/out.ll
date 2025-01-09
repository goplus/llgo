; ModuleID = 'main'
source_filename = "main"

@_bar_x = external global { [16 x i8], [2 x ptr] }, align 8
@_bar_y = external global { [16 x i8] }, align 1
@"main.init$guard" = global i1 false, align 1
@__llgo_argc = global i32 0, align 4
@__llgo_argv = global ptr null, align 8

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

define i32 @main(i32 %0, ptr %1) {
_llgo_0:
  store i32 %0, ptr @__llgo_argc, align 4
  store ptr %1, ptr @__llgo_argv, align 8
  call void @"github.com/goplus/llgo/runtime/internal/runtime.init"()
  call void @main.init()
  %2 = load { [16 x i8], [2 x ptr] }, ptr @_bar_x, align 8
  %3 = load { [16 x i8] }, ptr @_bar_y, align 1
  ret i32 0
}

declare void @"github.com/goplus/llgo/runtime/internal/runtime.init"()

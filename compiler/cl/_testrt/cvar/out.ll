; ModuleID = 'github.com/goplus/llgo/compiler/cl/_testrt/cvar'
source_filename = "github.com/goplus/llgo/compiler/cl/_testrt/cvar"

@_bar_x = external global { [16 x i8], [2 x ptr] }, align 8
@_bar_y = external global { [16 x i8] }, align 1
@"github.com/goplus/llgo/compiler/cl/_testrt/cvar.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/compiler/cl/_testrt/cvar.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/cvar.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/compiler/cl/_testrt/cvar.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/compiler/cl/_testrt/cvar.main"() {
_llgo_0:
  %0 = load { [16 x i8], [2 x ptr] }, ptr @_bar_x, align 8
  %1 = load { [16 x i8] }, ptr @_bar_y, align 1
  ret void
}

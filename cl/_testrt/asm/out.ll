; ModuleID = 'github.com/goplus/llgo/cl/_testrt/asm'
source_filename = "github.com/goplus/llgo/cl/_testrt/asm"

@"github.com/goplus/llgo/cl/_testrt/asm.init$guard" = global i1 false, align 1

define void @"github.com/goplus/llgo/cl/_testrt/asm.init"() {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/asm.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/asm.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

define void @"github.com/goplus/llgo/cl/_testrt/asm.main"() {
_llgo_0:
  call void asm sideeffect "nop", ""()
  ret void
}

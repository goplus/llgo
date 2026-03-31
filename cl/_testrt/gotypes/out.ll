; ModuleID = 'github.com/goplus/llgo/cl/_testrt/gotypes'
source_filename = "github.com/goplus/llgo/cl/_testrt/gotypes"

%"github.com/goplus/llgo/runtime/internal/runtime.iface" = type { ptr, ptr }

@"github.com/goplus/llgo/cl/_testrt/gotypes.init$guard" = global i1 false, align 1

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testrt/gotypes.foo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" %0) #0 {
_llgo_0:
  ret void
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testrt/gotypes.init"() #0 {
_llgo_0:
  %0 = load i1, ptr @"github.com/goplus/llgo/cl/_testrt/gotypes.init$guard", align 1
  br i1 %0, label %_llgo_2, label %_llgo_1

_llgo_1:                                          ; preds = %_llgo_0
  store i1 true, ptr @"github.com/goplus/llgo/cl/_testrt/gotypes.init$guard", align 1
  br label %_llgo_2

_llgo_2:                                          ; preds = %_llgo_1, %_llgo_0
  ret void
}

; Function Attrs: null_pointer_is_valid
define void @"github.com/goplus/llgo/cl/_testrt/gotypes.main"() #0 {
_llgo_0:
  call void @"github.com/goplus/llgo/cl/_testrt/gotypes.foo"(%"github.com/goplus/llgo/runtime/internal/runtime.iface" zeroinitializer)
  ret void
}

attributes #0 = { null_pointer_is_valid }
